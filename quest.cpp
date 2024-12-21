#include "quest.h"


Quest::Quest() : title("Default Quest"), description("Default Description"), reward(0) {}

Quest::Quest(const QString &task, const QString &link)
    : title(task), description(link), reward(0) {}

void Quest::startQuest() const {
    std::cout << "Quest: " << title.toStdString() << std::endl;
}

void Quest::completeQuest() const {
    std::cout << "Quest '" << title.toStdString()
    << "' completed! Rewards: " << reward << " points." << std::endl;
}


void Quest::loadFromFile(const QString &filePath) {
    QFile file(filePath);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qWarning() << "Failed to open file:" << filePath;
        return;
    }

    QTextStream in(&file);
    while (!in.atEnd()) {
        QString line = in.readLine();
        qDebug() << "Loaded Quest Data: " << line;

    }
    file.close();
}


int Quest::getReward() const {
    return reward;
}


void Quest::setReward(int r) {
    reward = r;
}


QString Quest::toString() const {
    return QString("Title: %1, Description: %2, Reward: %3")
    .arg(title).arg(description).arg(reward);
}
