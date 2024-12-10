#include "title.h"

Title::Title(QObject *parent)
    : QObject(parent), m_currentTitle("Code Peasant") {
    // Initialize list of titles
    m_titles = {
        "Code Peasant",
        "Syntax Squire",
        "Algorithm Knight",
        "Code Baron",
        "Debugging Duke",
        "Design Archduke",
        "Script Sovereign",
        "Logic Prince",
        "Architect King",
        "Coding Monarch",
        "Binary Emperor",
        "Digital Deity"
    };

    // Set default title
    emit titleChanged();
}

// Getter for current title
QString Title::currentTitle() const {
    return m_currentTitle;
}

// Setter for current title
void Title::setCurrentTitle(const QString &title) {
    if (m_currentTitle != title && isValidTitle(title)) {
        m_currentTitle = title;
        emit titleChanged();
    }
}

// Return the list of all available titles
QStringList Title::availableTitles() const {
    return m_titles;
}

// Validate if a given title exists in the list
bool Title::isValidTitle(const QString &title) const {
    return m_titles.contains(title);
}
