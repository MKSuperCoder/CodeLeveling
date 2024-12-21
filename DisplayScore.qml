import QtQuick 2.15
import QtQuick.Controls 2.15


ApplicationWindow {
    id: scoreSummaryWindow
    visible: true
    width: 500
    height: 700
    title: "Quiz Summary"

    ScoreManager {
        id: scoreManager
    }

    Rectangle {
        width: parent.width
        height: parent.height
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#1e3a5c" }
            GradientStop { position: 1.0; color: "#3a6ca5" }
        }
        anchors.fill: parent

        Column {
            anchors.centerIn: parent
            spacing: 20

            Text {
                text: "Quiz Summary"
                font.pixelSize: 30
                color: "white"
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                text: "Your Score: " + scoreManager.score
                font.pixelSize: 24
                color: "yellow"
                horizontalAlignment: Text.AlignHCenter
            }


            }
        }
    }
