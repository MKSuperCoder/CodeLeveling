import QtQuick 2.15
import QtQuick.Controls 2.15

Popup {
    id: errorPopup
    width: 300
    height: 200
    modal: true
    focus: true
    background: Rectangle {
        radius: 10
        border.color: "#ff0000" // Red border
        border.width: 2
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#ff9999" } // Light red
            GradientStop { position: 1.0; color: "#ff4d4d" } // Deeper red
        }
    }

    ScoreManager {
        id: scoreManager
    }

    Column {
        anchors.centerIn: parent
        spacing: 15

        Text {
            id: errorText
            text: "Error: Wrong Answer!"
            font.pixelSize: 18
            font.bold: true
            color: "#ffffff" // White text
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Image {
            id: errorIcon
            source: "error-icon.png" // Path to your error icon
            width: 64
            height: 64
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            id: okButton
            text: "OK"
            width: 100
            height: 40
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            background: Rectangle {
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#ff6666" } // Button gradient: lighter red
                    GradientStop { position: 1.0; color: "#ff0000" } // Button gradient: deeper red
                }
                radius: 5
            }
            onClicked:  {
                errorPopup.close()
            }
        }
    }
}
