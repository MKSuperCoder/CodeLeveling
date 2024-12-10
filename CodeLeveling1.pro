QT += quick
QT += sql

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        databasemanager.cpp \
        generalstats.cpp \
        goalsmodel.cpp \
        logichandler.cpp \
        main.cpp \
        playerinformation.cpp \
        points.cpp \
        startmenu.cpp \
        status.cpp \
        technicalstats.cpp \
        title.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    databasemanager.h \
    generalstats.h \
    goalsmodel.h \
    logichandler.h \
    playerinformation.h \
    points.h \
    startmenu.h \
    status.h \
    technicalstats.h \
    title.h
