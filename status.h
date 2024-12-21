#ifndef STATUS_H
#define STATUS_H

#include <QObject>
#include <QString>
class Status : public QObject {
    Q_OBJECT
    Q_PROPERTY(QString username READ username WRITE setUsername NOTIFY usernameChanged)
    Q_PROPERTY(QString title READ title WRITE setTitle NOTIFY titleChanged)

    Q_PROPERTY(int points READ points WRITE setPoints NOTIFY pointsChanged)


    Q_PROPERTY(int algorithmMastery READ algorithmMastery NOTIFY statsChanged)
    Q_PROPERTY(int problemSolving READ problemSolving NOTIFY statsChanged)
    Q_PROPERTY(int concentration READ concentration NOTIFY statsChanged)
    Q_PROPERTY(int knowledge READ knowledge NOTIFY statsChanged)
    Q_PROPERTY(int stamina READ stamina NOTIFY statsChanged)

    Q_PROPERTY(int arrayMastery READ arrayMastery NOTIFY statsChanged)
    Q_PROPERTY(int vectorMastery READ vectorMastery NOTIFY statsChanged)
    Q_PROPERTY(int classesMastery READ classesMastery NOTIFY statsChanged)
    Q_PROPERTY(int pointersMastery READ pointersMastery NOTIFY statsChanged)

public:
    explicit Status(QObject *parent = nullptr);
    ~Status();

    // Username
    QString username() const;
    void setUsername(const QString &username);

    // Title
    QString title() const;
    void setTitle(const QString &title);
    int points() const;
    void setPoints(int points);

    // General Stats
    int algorithmMastery() const;
    int problemSolving() const;
    int concentration() const;
    int knowledge() const;
    int stamina() const;

    // Technical Stats
    int arrayMastery() const;
    int vectorMastery() const;
    int classesMastery() const;
    int pointersMastery() const;

public slots:
    void incrementAlgorithmMastery();
    void incrementProblemSolving();
    void incrementConcentration();
    void incrementKnowledge();
    void incrementStamina();

    void incrementArrayMastery();
    void incrementVectorMastery();
    void incrementClassesMastery();
    void incrementPointersMastery();

signals:
    void usernameChanged();
    void titleChanged();
    void pointsChanged();
    void statsChanged();


private:
    QString m_username;
    QString m_title;
    int m_points;

    // General Stats
    int m_algorithmMastery;
    int m_problemSolving;
    int m_concentration;
    int m_knowledge;
    int m_stamina;

    // Technical Stats
    int m_arrayMastery;
    int m_vectorMastery;
    int m_classesMastery;
    int m_pointersMastery;
};

#endif // STATUS_H
