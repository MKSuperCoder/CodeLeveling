#ifndef DATABASEMANAGER_H
#define DATABASEMANAGER_H

#include <QObject>
#include <QSqlDatabase>

class DatabaseManager : public QObject {
    Q_OBJECT
public:
    explicit DatabaseManager(QObject *parent = nullptr);
    ~DatabaseManager();

    Q_INVOKABLE bool validateUser(const QString &username, const QString &password); // For login validation
    Q_INVOKABLE bool storeUser(const QString &username, const QString &password, const QString &email);
    Q_INVOKABLE QString getUsername();



private:
    QSqlDatabase db;
};

#endif // DATABASEMANAGER_H
