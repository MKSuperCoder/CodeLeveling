#ifndef STARTMENU_H
#define STARTMENU_H

#include <QObject>

class StartMenu : public QObject {
    Q_OBJECT
public:
    explicit StartMenu(QObject *parent = nullptr);

    Q_INVOKABLE void startTraining();
    Q_INVOKABLE void openSettings();
    Q_INVOKABLE void quitApplication();

signals:
    void trainingStarted();
    void settingsOpened();
    void applicationQuit();
};

#endif // STARTMENU_H
