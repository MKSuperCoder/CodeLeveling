#include "goalsmodel.h"

// Constructor
GoalsModel::GoalsModel(QObject *parent)
    : QObject(parent)
{
    // Initialize default goals
    m_goals = {
        "- Solve 5 coding challenges [0/5]",
        "- Read and learn a coding concept [0/1]",
        "- Write comments for 2 functions in a project [0/2]",
        "- Debug and fix 1 piece of buggy code [0/1]",
        "- Watch 1 tutorial video on data structures [0/1]"
    };
}

// Getter for goals
QStringList GoalsModel::goals() const
{
    return m_goals;
}

// Setter for goals
void GoalsModel::setGoals(const QStringList &goals)
{
    if (m_goals != goals) {
        m_goals = goals;
        emit goalsChanged(); // Notify QML of the change
    }
}
