#ifndef FILEHANDLER_H
#define FILEHANDLER_H

#include <QObject>
#include <QString>
#include <QFile>
#include <QTextStream>

class FileHandler : public QObject {
    Q_OBJECT
    Q_PROPERTY(QString questionFilePath READ questionFilePath WRITE setQuestionFilePath NOTIFY questionFilePathChanged)
    Q_PROPERTY(QString exampleOutputFilePath READ exampleOutputFilePath WRITE setExampleOutputFilePath NOTIFY exampleOutputFilePathChanged)

public:
    explicit FileHandler(QObject *parent = nullptr);

    QString questionFilePath() const;
    void setQuestionFilePath(const QString &filePath);

    QString exampleOutputFilePath() const;
    void setExampleOutputFilePath(const QString &filePath);

    Q_INVOKABLE QString readQuestion();   // Reads the question section
    Q_INVOKABLE QString readExampleOutput();  // Reads the example output section

signals:
    void questionFilePathChanged();
    void exampleOutputFilePathChanged();

private:
    QString m_questionFilePath;
    QString m_exampleOutputFilePath;
};

#endif // FILEHANDLER_H
