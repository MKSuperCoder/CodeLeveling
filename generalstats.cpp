#include "generalstats.h"
#include <QDebug>

GeneralStats::GeneralStats(QObject *parent)
    : QObject(parent),
    m_algorithmMastery(0),
    m_problemSolving(0),
    m_concentration(0),
    m_knowledge(0),
    m_stamina(0) {}

int GeneralStats::algorithmMastery() const {
    return m_algorithmMastery;
}

int GeneralStats::problemSolving() const {
    return m_problemSolving;
}

int GeneralStats::concentration() const {
    return m_concentration;
}

int GeneralStats::knowledge() const {
    return m_knowledge;
}

int GeneralStats::stamina() const {
    return m_stamina;
}

void GeneralStats::increaseAlgorithmMastery(int amount) {
    m_algorithmMastery += amount;
    emit statChanged("Algorithm-Mastery", m_algorithmMastery);
    qDebug() << "Increased Algorithm-Mastery by" << amount << ". New value:" << m_algorithmMastery;
}

void GeneralStats::increaseProblemSolving(int amount) {
    m_problemSolving += amount;
    emit statChanged("Problem-Solving", m_problemSolving);
    qDebug() << "Increased Problem-Solving by" << amount << ". New value:" << m_problemSolving;
}

void GeneralStats::increaseConcentration(int amount) {
    m_concentration += amount;
    emit statChanged("Concentration", m_concentration);
    qDebug() << "Increased Concentration by" << amount << ". New value:" << m_concentration;
}

void GeneralStats::increaseKnowledge(int amount) {
    m_knowledge += amount;
    emit statChanged("Knowledge", m_knowledge);
    qDebug() << "Increased Knowledge by" << amount << ". New value:" << m_knowledge;
}

void GeneralStats::increaseStamina(int amount) {
    m_stamina += amount;
    emit statChanged("Stamina", m_stamina);
    qDebug() << "Increased Stamina by" << amount << ". New value:" << m_stamina;
}

