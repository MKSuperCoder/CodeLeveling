#ifndef CONSTANTS_H
#define CONSTANTS_H

#include <QObject>

class Constants : public QObject {
    Q_OBJECT
    Q_PROPERTY(int width READ width CONSTANT)
    Q_PROPERTY(int height READ height CONSTANT)
    Q_PROPERTY(QString fontFamily READ fontFamily CONSTANT)

public:
    explicit Constants(QObject *parent = nullptr) : QObject(parent) {}

    int width() const { return 800; }
    int height() const { return 600; }
    QString fontFamily() const { return "Arial"; }
};

#endif // CONSTANTS_H
