#include "databasemanager.h"
#include <QSqlQuery>
#include <QSqlError>
#include <QDebug>


DatabaseManager::DatabaseManager(QObject *parent) : QObject(parent) {
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("users.db");

    if (!db.open()) {
        qWarning() << "Database connection failed:" << db.lastError().text();
    } else {
        qDebug() << "Connected to database!";
    }
}

DatabaseManager::~DatabaseManager() {
    if (db.isOpen()) {
        db.close();
    }
}

bool DatabaseManager::validateUser(const QString &username, const QString &password) {
    QSqlQuery query(db);
    qDebug() << "Available drivers:" << QSqlDatabase::drivers();

    // Use positional placeholders instead of named placeholders
    query.prepare("SELECT COUNT(*) FROM users WHERE username = ? AND password = ?");

    // Bind parameters in the order they appear
    query.addBindValue(username);
    query.addBindValue(password);

    // Debugging
    qDebug() << "Executing query:" << query.lastQuery();
    qDebug() << "Bound username:" << username;
    qDebug() << "Bound password:" << password;

    // Execute the query
    if (!query.exec()) {
        qWarning() << "Failed to execute login query:" << query.lastError().text();
        return false;
    }

    // Check if a valid user exists
    if (query.exec() && query.next()) {
        qDebug() << "Login successful!";
        return true;
    } else {
        qDebug() << "Invalid username or password!";
        qDebug() << "Error:" << query.lastError().text();
        return false;
    }

}
bool DatabaseManager::storeUser(const QString &username, const QString &password, const QString &email) {
    QSqlQuery query(db);

    // Prepare the insert query
    query.prepare("INSERT INTO users (username, password, email) VALUES (?, ?, ?)");
    query.addBindValue(username);
    query.addBindValue(password); // Ensure you hash the password
    query.addBindValue(email);

    qDebug() << "Executing query:" << query.lastQuery();
    qDebug() << "Bound username:" << username;
    qDebug() << "Bound password:" << password;
    qDebug() << "Bound email:" << email;

    // Execute the query
    if (!query.exec()) {
        qWarning() << "Failed to insert user:" << query.lastError().text();
        return false;
    }

    qDebug() << "User registered successfully!";
    return true;
}
QString DatabaseManager::getUsername() {
    QSqlQuery query(db);

    // Fetch username (example query)
    query.prepare("SELECT username FROM users WHERE id = 1"); // Adjust query as needed

    if (!query.exec()) {
        qWarning() << "Failed to fetch username:" << query.lastError().text();
        return "Unknown";
    }

    if (query.next()) {
        return query.value(0).toString(); // Return the username
    }

    return "Unknown";
}
