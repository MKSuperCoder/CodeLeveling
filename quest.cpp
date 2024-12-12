#include "quest.h"

Quest::Quest() {
    task = "undefined";
    link = "undefined";
}
Quest::Quest(const QString &task, const QString &link) : task(task), link(link) {}

void Quest::setTask(const QString &task) {
    this->task = task;
}
void Quest::setLink(const QString &link) {
    this->link = link;
}
QString Quest::getTask() const {
    return task;
}
QString Quest::getLink() const {
    return link;
}

// Load quests from file
void Quest::loadFromFile(const QString &filePath) {
    try {
        QFile file(filePath);
        if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
            throw std::runtime_error("Unable to open file for reading.");
        }

        QTextStream in(&file);
        while (!in.atEnd()) {
            QString line = in.readLine();
            qDebug() << "Loaded Quest:" << line;
        }
        file.close();
    } catch (const std::exception &e) {
        qDebug() << "Error loading quests from file:" << e.what();
    }
}

