import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: scoreManager
    property int score : 3

    function incrementScore() {
        score += 1;
        return score;
    }

    function resetScore() {
        score = 0;
        return score;
    }
}

