#include "startmenu.h"
#include <QDebug>
#include <QCoreApplication>

StartMenu::StartMenu(QObject *parent) : QObject(parent) {}

void StartMenu::startTraining() {
    qDebug() << "Start Training clicked";
    emit trainingStarted();
}

void StartMenu::openSettings() {
    qDebug() << "Settings clicked";
    emit settingsOpened();
}

void StartMenu::quitApplication() {
    qDebug() << "Quit clicked";
    QCoreApplication::quit();
}
