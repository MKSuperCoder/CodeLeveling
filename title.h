#ifndef TITLE_H
#define TITLE_H

#include <QObject>
#include <QString>
#include <QStringList>

class Title : public QObject {
    Q_OBJECT
    Q_PROPERTY(QString currentTitle READ currentTitle WRITE setCurrentTitle NOTIFY titleChanged)

public:
    explicit Title(QObject *parent = nullptr);

    // Accessors
    QString currentTitle() const;
    void setCurrentTitle(const QString &title);

    Q_INVOKABLE QStringList availableTitles() const; // List of all titles
    Q_INVOKABLE bool isValidTitle(const QString &title) const; // Validate title

signals:
    void titleChanged();

private:
    QString m_currentTitle; // Current title
    QStringList m_titles;   // List of possible titles
};

#endif // TITLE_H
