#include "filehandler.h"
#include <QDebug>

FileHandler::FileHandler(QObject *parent) : QObject(parent) {}

QString FileHandler::questionFilePath() const {
    return m_questionFilePath;
}

void FileHandler::setQuestionFilePath(const QString &filePath) {
    if (m_questionFilePath != filePath) {
        m_questionFilePath = filePath;
        emit questionFilePathChanged();
    }
}

QString FileHandler::exampleOutputFilePath() const {
    return m_exampleOutputFilePath;
}

void FileHandler::setExampleOutputFilePath(const QString &filePath) {
    if (m_exampleOutputFilePath != filePath) {
        m_exampleOutputFilePath = filePath;
        emit exampleOutputFilePathChanged();
    }
}

QString FileHandler::readQuestion() {
    if (m_questionFilePath.isEmpty()) {
        qWarning() << "Question file path is empty!";
        return QString();
    }

    QFile file(m_questionFilePath);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qWarning() << "Error opening question file:" << file.errorString();
        return QString();
    }

    QTextStream in(&file);
    QString content = in.readAll();
    file.close();

    qDebug() << "Question Content:\n" << content;
    return content.trimmed(); // Trim and return the content
}

QString FileHandler::readExampleOutput() {
    if (m_exampleOutputFilePath.isEmpty()) {
        qWarning() << "Example output file path is empty!";
        return QString();
    }

    QFile file(m_exampleOutputFilePath);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qWarning() << "Error opening example output file:" << file.errorString();
        return QString();
    }

    QTextStream in(&file);
    QString content = in.readAll();
    file.close();

    qDebug() << "Example Output Content:\n" << content;
    return content.trimmed(); // Trim and return the content
}
