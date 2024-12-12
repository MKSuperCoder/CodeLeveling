
#include "databasemanager.h"
#include <QSqlQuery>
#include <QSqlError>
#include <QDebug>
#include <QCryptographicHash>


DatabaseManager::DatabaseManager(QObject *parent) : QObject(parent) {
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("users.db");

    if (!db.open()) {
        qWarning() << "Database connection failed:" << db.lastError().text();
    } else {
        qDebug() << "Connected to database!";

        // Create the users table if it doesn't exist
        QSqlQuery query;
        if (!query.exec("CREATE TABLE IF NOT EXISTS users ("
                        "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                        "username TEXT UNIQUE, "
                        "password TEXT, "
                        "email TEXT UNIQUE)")) {
            qWarning() << "Failed to create users table:" << query.lastError().text();
        }
    }
}


DatabaseManager::~DatabaseManager() {
    if (db.isOpen()) {
        db.close();
    }
}

bool DatabaseManager::validateUser(const QString &username, const QString &password) {
    QSqlQuery query(db);

    // Hash the entered password
    QString hashedPassword = QString::fromUtf8(QCryptographicHash::hash(password.toUtf8(), QCryptographicHash::Sha256).toHex());

    query.prepare("SELECT COUNT(*) FROM users WHERE username = ? AND password = ?");
    query.addBindValue(username);
    query.addBindValue(hashedPassword);

    if (!query.exec() || !query.next()) {
        qWarning() << "Failed to validate user:" << query.lastError().text();
        return false;
    }

    return query.value(0).toInt() > 0;
}

bool DatabaseManager::storeUser(const QString &username, const QString &password, const QString &email) {
    QSqlQuery query(db);

    // Check if username or email already exists
    query.prepare("SELECT COUNT(*) FROM users WHERE username = ? OR email = ?");
    query.addBindValue(username);
    query.addBindValue(email);

    if (!query.exec() || !query.next()) {
        qWarning() << "Failed to check for duplicate user:" << query.lastError().text();
        return false;
    }

    if (query.value(0).toInt() > 0) {
        qDebug() << "Username or email already exists!";
        return false;
    }

    // Hash the password before storing it
    QString hashedPassword = QString::fromUtf8(QCryptographicHash::hash(password.toUtf8(), QCryptographicHash::Sha256).toHex());

    // Insert the new user
    query.prepare("INSERT INTO users (username, password, email) VALUES (?, ?, ?)");
    query.addBindValue(username);
    query.addBindValue(hashedPassword);
    query.addBindValue(email);

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
