#ifndef QUEST_H
#define QUEST_H

#include <QString>
#include <QTextStream>
#include <QFile>
#include <QDebug>
#include <QObject>
#include <QTimer>
#include <QDateTime>

// Base class
class Quest {
protected:
    QString task;
    QString link;
    bool isCompleted;

public:
    Quest();
    Quest(const QString &task, const QString &link);

    void setTask(const QString &task);
    void setLink(const QString &link);
    QString getTask() const;
    QString getLink() const;

    static void loadFromFile(const QString &filePath);
};



#endif // QUEST_H
