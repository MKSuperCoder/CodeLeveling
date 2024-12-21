#include "filehandler.h"
#include <QDebug>
#include <stdexcept> // For using std::runtime_error

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
    try {
        if (m_questionFilePath.isEmpty()) {
            throw std::runtime_error("Question file path is empty!");
        }

        QFile file(m_questionFilePath);
        if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
            throw std::runtime_error("Error opening question file: " + file.errorString().toStdString());
        }

        QTextStream in(&file);
        QString content = in.readAll();
        file.close();

        qDebug() << "Question Content:\n" << content;
        return content.trimmed(); // Trim and return the content
    } catch (const std::runtime_error &e) {
        qWarning() << "Exception occurred in readQuestion:" << e.what();
        return QString();
    }
}

QString FileHandler::readExampleOutput() {
    try {
        if (m_exampleOutputFilePath.isEmpty()) {
            throw std::runtime_error("Example output file path is empty!");
        }

        QFile file(m_exampleOutputFilePath);
        if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
            throw std::runtime_error("Error opening example output file: " + file.errorString().toStdString());
        }

        QTextStream in(&file);
        QString content = in.readAll();
        file.close();

        qDebug() << "Example Output Content:\n" << content;
        return content.trimmed(); // Trim and return the content
    } catch (const std::runtime_error &e) {
        qWarning() << "Exception occurred in readExampleOutput:" << e.what();
        return QString();
    }
}
