#include "status.h"

Status::Status(QObject *parent)
    : QObject(parent),
    m_username(""),
    m_title("Code Peasant"),
    m_points(0),
    m_algorithmMastery(0),
    m_problemSolving(0),
    m_concentration(0),
    m_knowledge(0),
    m_stamina(0),
    m_arrayMastery(0),
    m_vectorMastery(0),
    m_classesMastery(0),
    m_pointersMastery(0) {}

// Destructor
Status::~Status() {}

// Getters and Setters
QString Status::username() const { return m_username; }
void Status::setUsername(const QString &username) {
    if (m_username != username) {
        m_username = username;
        emit usernameChanged();
    }
}

QString Status::title() const { return m_title; }
void Status::setTitle(const QString &title) {
    if (m_title != title) {
        m_title = title;
        emit titleChanged();
    }
}

int Status::points() const { return m_points; }
void Status::setPoints(int points) {
    if (m_points != points) {
        m_points = points;
        emit pointsChanged();
    }
}

// General Stats Getters
int Status::algorithmMastery() const { return m_algorithmMastery; }
int Status::problemSolving() const { return m_problemSolving; }
int Status::concentration() const { return m_concentration; }
int Status::knowledge() const { return m_knowledge; }
int Status::stamina() const { return m_stamina; }

// Technical Stats Getters
int Status::arrayMastery() const { return m_arrayMastery; }
int Status::vectorMastery() const { return m_vectorMastery; }
int Status::classesMastery() const { return m_classesMastery; }
int Status::pointersMastery() const { return m_pointersMastery; }

// Increment Functions
void Status::incrementAlgorithmMastery() {
    if (m_points > 0) {
        m_algorithmMastery++;
        m_points--;
        emit statsChanged();
        emit pointsChanged();
    }
}

void Status::incrementProblemSolving() {
    if (m_points > 0) {
        m_problemSolving++;
        m_points--;
        emit statsChanged();
        emit pointsChanged();
    }
}

void Status::incrementConcentration() {
    if (m_points > 0) {
        m_concentration++;
        m_points--;
        emit statsChanged();
        emit pointsChanged();
    }
}

void Status::incrementKnowledge() {
    if (m_points > 0) {
        m_knowledge++;
        m_points--;
        emit statsChanged();
        emit pointsChanged();
    }
}

void Status::incrementStamina() {
    if (m_points > 0) {
        m_stamina++;
        m_points--;
        emit statsChanged();
        emit pointsChanged();
    }
}

void Status::incrementArrayMastery() {
    if (m_points > 0) {
        m_arrayMastery++;
        m_points--;
        emit statsChanged();
        emit pointsChanged();
    }
}

void Status::incrementVectorMastery() {
    if (m_points > 0) {
        m_vectorMastery++;
        m_points--;
        emit statsChanged();
        emit pointsChanged();
    }
}

void Status::incrementClassesMastery() {
    if (m_points > 0) {
        m_classesMastery++;
        m_points--;
        emit statsChanged();
        emit pointsChanged();
    }
}

void Status::incrementPointersMastery() {
    if (m_points > 0) {
        m_pointersMastery++;
        m_points--;
        emit statsChanged();
        emit pointsChanged();
    }
}

