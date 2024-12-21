#include <QGuiApplication> //This manages application-wide resources and settings for GUI applications
#include <QQmlApplicationEngine> //This manages the loading and execution of QML files
#include "LogicHandler.h" //This is a custom C++ class that will be exposed to QML
#include <QQmlContext> //This is used for context properties that allow passign data between C++ and QML
#include "databasemanager.h"
#include "quest.h"
#include "status.h"
#include <fstream>
#include <iostream>
#include "filehandler.h"


int main(int argc, char *argv[])
{
    //This creates the main application object, handling command-line arguments
    //and system resources
    QGuiApplication app(argc, argv);


    //This instantiates the QML engine to load and display QML files
    QQmlApplicationEngine engine;

    DatabaseManager dbManager;
    engine.rootContext()->setContextProperty("DatabaseManager", &dbManager);
    qmlRegisterType<DatabaseManager>("DatabaseManager", 1, 0, "DatabaseManager");

    Status status;
    engine.rootContext()->setContextProperty("Status", &status);
    qmlRegisterType<Status>("Status", 1, 0, "Status");

    //qputenv sets up the environment variable for the application process
    // "QT_QUICK_CONTROLS_STYLE" specifices the style for Qt Quick Controls.
    //Here the "Material" design style is applied
    qputenv("QT_QUICK_CONTROLS_STYLE", "Material");

    //qmlRegisterType registers the LogicHandler C++ class with the QML engine
    //This enable QML files to instantiate and use LogicHandler as if it were a native QML type
    qmlRegisterType<LogicHandler>("LogicHandler", 1, 0, "LogicHandler");
    //com.logic is the namespace in QML for this type
    //It's entirely customizable. It serves as the namespace for your custom type when
    // it is registered with the QML engine
    //1, 0 is the version of the type
    // "LogicHandler" is the name used to reference this class in QML

    qmlRegisterType<Quest>("Quest", 1, 0, "Quest");

    // This specifies the path to the main QML file (main.qml) in the QT resource system (qrc)
    const QUrl url(QStringLiteral("qrc:/main.qml"));

    //This connects a signal from QQmlApplicationEngine that triggers when an object
    //is created from a QML file
    //If the object is null and the url matches, the application exits with an error code
    // -1. This ensures the application terminates if the QML fails to load
    // In the context of this code, an object refers to the root object of the QML
    // component that is created when the QQmlApplicationEngine loads a QML file.
    // When a QML file is loaded, it typically defines a root component (e.g., Window,
    // Rectangle, etc)/ This root component is instantiated as a no object in memory.,
    // If the QML file is successfully loaded and the root object is created, the
    //signal QQmlApplicationEngine::objectcreated is emitted, providing a pointer to that root object
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
                         if (!obj && url == objUrl)
                             QCoreApplication::exit(-1);
                     }, Qt::QueuedConnection);
    // obj is a pointer to the root object of the QML file (main.qml in this case).
    //If the obj is not nullptr, it means the QML file was successfully loaded and the root object was created.
    // If the obj is nullptr, it means the QML engine failed to load the QML file (e.g., due to a syntax error in the QML, missing resources, or a runtime error).

    //This instructs the QQmlApplication to load and render the QML file specified
    //by url
    engine.load(url);

    qmlRegisterType<FileHandler>("filehandler", 1, 0, "FileHandler");

    if (engine.rootObjects().isEmpty())
        return -1;


    //This starts the main event loop for the application, waiting for and dispatching
    // events such as user inputs and redraw requests
    return app.exec();
}

