#ifndef GENERALSTATS_H
#define GENERALSTATS_H

#include <QObject>
#include <QStringList>

class GeneralStats : public QObject {
    Q_OBJECT
    Q_PROPERTY(int algorithmMastery READ algorithmMastery NOTIFY statChanged)
    Q_PROPERTY(int problemSolving READ problemSolving NOTIFY statChanged)
    Q_PROPERTY(int concentration READ concentration NOTIFY statChanged)
    Q_PROPERTY(int knowledge READ knowledge NOTIFY statChanged)
    Q_PROPERTY(int stamina READ stamina NOTIFY statChanged)

public:
    explicit GeneralStats(QObject *parent = nullptr);

    // Getters
    int algorithmMastery() const;
    int problemSolving() const;
    int concentration() const;
    int knowledge() const;
    int stamina() const;

    // Methods to increase stats
    Q_INVOKABLE void increaseAlgorithmMastery(int amount);
    Q_INVOKABLE void increaseProblemSolving(int amount);
    Q_INVOKABLE void increaseConcentration(int amount);
    Q_INVOKABLE void increaseKnowledge(int amount);
    Q_INVOKABLE void increaseStamina(int amount);



signals:
    void statChanged(const QString &statName, int newValue);

private:
    int m_algorithmMastery;
    int m_problemSolving;
    int m_concentration;
    int m_knowledge;
    int m_stamina;
};

#endif // GENERALSTATS_H
