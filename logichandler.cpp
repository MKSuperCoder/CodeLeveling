#include "logichandler.h" // This is the header file that defines the LogicHandler class
#include <QWindow> // This provides access to window-related functionality in Qt
#include <QDebug> // This is used for logging debug messages to the console
#include <QCoreApplication> // This provides the application framework and allows for
// application-wide actions such as exiting the application

LogicHandler::LogicHandler(QObject *parent)
    : QObject(parent), m_newEngine(nullptr) {}
// QObject(parent) initializes the parent object and ensures proper memory management
// which means it will delete this object when appropriate
// m_newEngine(nullptr) initializes the pointer m_newEngine to nullptr, indicating that
// no new QQmlApplicationEngine instance has been created yet

// This function is triggered when the user wants to navigate to a specific QML page
void LogicHandler::handleNavigation(const QString &qmlFile, QObject *currentWindow)
{
    qDebug() << "Navigating to:" << qmlFile;
    // This outputs a debug message indicating the target QML file being loaded

    // This ensures only one QQmlApplicationEngine instance is created
    // If multiple instances of QQmlApplicationEngine are created, it can increase
    // memory usage and performance overhead
    if (!m_newEngine) {
        // If m_newEngine is nullptr, a new engine is created to manage and render the new QML interface
        m_newEngine = new QQmlApplicationEngine(); // Persistent engine for the new window
    }

    // Load the specified QML file from the Qt Resource System
    m_newEngine->load(QUrl(QStringLiteral("qrc:/") + qmlFile));

    // Error handling
    // If the loaded QML file has no root objects, it indicates a loading failure
    if (m_newEngine->rootObjects().isEmpty()) {
        qWarning() << "Failed to load" << qmlFile;
        return;
    }

    // Close the current window
    // This attempts to cast currentWindow to a QWindow pointer.
    // If successful, it represents the current application's window
    QWindow *window = qobject_cast<QWindow *>(currentWindow);
    if (window) {
        window->close();
    }
}

// This function is triggered when the user clicks the "No" button.
void LogicHandler::handleNoClicked()
{
    qDebug() << "User chose NO - Exiting application.";
    QCoreApplication::quit(); // Exit the application
    // This ends the event loop and releases resources
}


