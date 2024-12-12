#ifndef DATABASEMANAGER_H
#define DATABASEMANAGER_H

#include <QObject>
#include <QString>
#include <QSqlDatabase>

class DatabaseManager : public QObject {
    Q_OBJECT

public:
    explicit DatabaseManager(QObject *parent = nullptr);
    ~DatabaseManager();

    Q_INVOKABLE bool storeUser(const QString &username, const QString &password, const QString &email);
    Q_INVOKABLE bool validateUser(const QString &username, const QString &password);
    Q_INVOKABLE QString getUsername();

private:
    QSqlDatabase db;
};

#endif // DATABASEMANAGER_H
