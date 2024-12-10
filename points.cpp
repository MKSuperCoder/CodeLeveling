#include "points.h"
#include <QDebug>

Points::Points(QObject *parent)
    : QObject(parent), m_currentPoints(0) {
    // Initialize default stats
    m_stats = {
        {"Strength", 1},
        {"Logic", 1},
        {"Stamina", 1},
        {"Knowledge", 1}
    };
}

int Points::currentPoints() const {
    return m_currentPoints;
}

void Points::setCurrentPoints(int points) {
    if (m_currentPoints != points) {
        m_currentPoints = points;
        emit pointsChanged();
    }
}

void Points::earnPoints(int points) {
    setCurrentPoints(m_currentPoints + points);
    qDebug() << "Earned" << points << "points! Current total:" << m_currentPoints;
}

void Points::upgradeStat(const QString &stat, int cost) {
    if (!m_stats.contains(stat)) {
        qDebug() << "Stat" << stat << "does not exist!";
        return;
    }

    if (m_currentPoints >= cost) {
        m_currentPoints -= cost;
        m_stats[stat] += 1;
        emit pointsChanged();
        emit statChanged(stat, m_stats[stat]);
        qDebug() << "Upgraded" << stat << "to" << m_stats[stat] << "for" << cost << "points.";
    } else {
        qDebug() << "Not enough points to upgrade" << stat << ". Current points:" << m_currentPoints;
    }
}

int Points::statValue(const QString &stat) const {
    if (m_stats.contains(stat)) {
        return m_stats.value(stat);
    }
    return 0;
}
