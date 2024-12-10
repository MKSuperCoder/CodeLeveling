#ifndef TECHNICALSTATS_H
#define TECHNICALSTATS_H

#include <QObject>
#include <QStringList>

class TechnicalStats : public QObject {
    Q_OBJECT
    Q_PROPERTY(int arrayMastery READ arrayMastery NOTIFY statChanged)
    Q_PROPERTY(int vectorMastery READ vectorMastery NOTIFY statChanged)
    Q_PROPERTY(int classesMastery READ classesMastery NOTIFY statChanged)
    Q_PROPERTY(int pointersMastery READ pointersMastery NOTIFY statChanged)

public:
    explicit TechnicalStats(QObject *parent = nullptr);

    // Getters
    int arrayMastery() const;
    int vectorMastery() const;
    int classesMastery() const;
    int pointersMastery() const;

    // Methods to increase stats
    Q_INVOKABLE void increaseArrayMastery(int amount);
    Q_INVOKABLE void increaseVectorMastery(int amount);
    Q_INVOKABLE void increaseClassesMastery(int amount);
    Q_INVOKABLE void increasePointersMastery(int amount);

signals:
    void statChanged(const QString &statName, int newValue);

private:
    int m_arrayMastery;
    int m_vectorMastery;
    int m_classesMastery;
    int m_pointersMastery;
};

#endif // TECHNICALSTATS_H
