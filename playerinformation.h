#ifndef PLAYERINFORMATION_H
#define PLAYERINFORMATION_H

#include <QObject>

class PlayerInformation : public QObject
{
    Q_OBJECT
public:
    explicit PlayerInformation(QObject *parent = nullptr);

signals:
};

#endif // PLAYERINFORMATION_H
