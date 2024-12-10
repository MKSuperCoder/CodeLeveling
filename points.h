#ifndef POINTS_H
#define POINTS_H

#include <QObject>
#include <QMap>
#include <QString>

class Points : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int currentPoints READ currentPoints WRITE setCurrentPoints NOTIFY pointsChanged)

public:
    explicit Points(QObject *parent = nullptr);

    int currentPoints() const;
    void setCurrentPoints(int points);

    Q_INVOKABLE void earnPoints(int points);                  // Earn points
    Q_INVOKABLE void upgradeStat(const QString &stat, int cost); // Spend points to upgrade a stat
    Q_INVOKABLE int statValue(const QString &stat) const;     // Get the value of a stat

signals:
    void pointsChanged();
    void statChanged(const QString &stat, int newValue);

private:
    int m_currentPoints;              // Total points available
    QMap<QString, int> m_stats;       // Map of stats and their current values


signals:
};

#endif // POINTS_H
