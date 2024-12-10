#include "technicalstats.h"
#include <QDebug>

TechnicalStats::TechnicalStats(QObject *parent)
    : QObject(parent),
    m_arrayMastery(0),
    m_vectorMastery(0),
    m_classesMastery(0),
    m_pointersMastery(0) {}

int TechnicalStats::arrayMastery() const {
    return m_arrayMastery;
}

int TechnicalStats::vectorMastery() const {
    return m_vectorMastery;
}

int TechnicalStats::classesMastery() const {
    return m_classesMastery;
}

int TechnicalStats::pointersMastery() const {
    return m_pointersMastery;
}

void TechnicalStats::increaseArrayMastery(int amount) {
    m_arrayMastery += amount;
    emit statChanged("Array-Mastery", m_arrayMastery);
    qDebug() << "Increased Array-Mastery by" << amount << ". New value:" << m_arrayMastery;
}

void TechnicalStats::increaseVectorMastery(int amount) {
    m_vectorMastery += amount;
    emit statChanged("Vector-Mastery", m_vectorMastery);
    qDebug() << "Increased Vector-Mastery by" << amount << ". New value:" << m_vectorMastery;
}

void TechnicalStats::increaseClassesMastery(int amount) {
    m_classesMastery += amount;
    emit statChanged("Classes-Mastery", m_classesMastery);
    qDebug() << "Increased Classes-Mastery by" << amount << ". New value:" << m_classesMastery;
}

void TechnicalStats::increasePointersMastery(int amount) {
    m_pointersMastery += amount;
    emit statChanged("Pointers-Mastery", m_pointersMastery);
    qDebug() << "Increased Pointers-Mastery by" << amount << ". New value:" << m_pointersMastery;
}
