#ifndef QUEST_H
#define QUEST_H

#include <QString>
#include <QTextStream>
#include <QFile>
#include <QDebug>
#include <QObject>
#include <QTimer>
#include <QDateTime>
#include <iostream>

class BaseQuest {
public:
    virtual ~BaseQuest() {}


    virtual void startQuest() const = 0;
    virtual void completeQuest() const = 0;
};


class Quest : public BaseQuest {
private:
    QString title;
    QString description;
    int reward;

public:

    Quest();
    Quest(const QString &task, const QString &link);


    void startQuest() const override;
    void completeQuest() const override;


    static void loadFromFile(const QString &filePath);


    int getReward() const;
    void setReward(int r);


    QString toString() const;
};


#endif // QUEST_H
