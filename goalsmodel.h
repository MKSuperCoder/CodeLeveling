#ifndef GOALSMODEL_H
#define GOALSMODEL_H

#include <QObject>
#include <QStringList>

class GoalsModel : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QStringList goals READ goals WRITE setGoals NOTIFY goalsChanged)

public:
    explicit GoalsModel(QObject *parent = nullptr);

    // Getter for the goals list
    QStringList goals() const;

    // Setter for the goals list
    void setGoals(const QStringList &goals);

signals:
    // Signal emitted when the goals list changes
    void goalsChanged();

private:
    // Private member to store the goals list
    QStringList m_goals;
};

#endif // GOALSMODEL_H
