#ifndef RANK_H
#define RANK_H

#include <QObject>

class Rank : public QObject
{
    Q_OBJECT
public:
    explicit Rank(QObject *parent = nullptr);

signals:

private:
    QString CodePeasant;
    QString SyntaxSquire;
    QString AlgorithmKnight;
    QString CodeBaron;
    QString DebuggingDuke;
    QString DesignArchduke;
    QString ScriptSovereign;
    QString LogicPrince;
    QString ArchitectKing;
    QString CodingMonarch;
    QString BinaryEmperor;
    QString DigitaDeity;
};


#endif // RANK_H
