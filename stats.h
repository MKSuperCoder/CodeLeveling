#ifndef STATS_H
#define STATS_H

#include <QObject>

class Stats : public QObject
{
    Q_OBJECT
public:
    explicit Stats(QObject *parent = nullptr);

signals:
};

#endif // STATS_H