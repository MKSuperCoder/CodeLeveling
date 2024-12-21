#ifndef LOGICHANDLER_H
#define LOGICHANDLER_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QWindow>

class LogicHandler : public QObject
{
    Q_OBJECT
public:
    explicit LogicHandler(QObject *parent = nullptr);

    Q_INVOKABLE void handleNavigation(const QString &qmlFile);
    Q_INVOKABLE void handleNavigation(const QString &qmlFile, QObject *currentWindow);
    Q_INVOKABLE void handleNoClicked();

private:
    QQmlApplicationEngine *m_newEngine;
};

#endif // LOGICHANDLER_H
