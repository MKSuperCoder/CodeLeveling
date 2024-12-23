import QtQuick 2.15
import QtQuick.Controls 2.15
import LogicHandler 1.0

ApplicationWindow {
    visible: true
    id: mainWindow
    width: 400
    height: 600
    title: "Training Ground"

    LogicHandler {
        id: logicHandler
    }

    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0.0
                color: "#0000FF" // Blue
            }
            GradientStop {
                position: 1.0
                color: "#FFFFFF" // White
            }
        }

        Column {
            anchors.centerIn: parent
            spacing: 20

            Text {
                text: "Training Ground"
                font.pixelSize: 24
                font.bold: true
                color: "#333333"
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                text: "Daily Quests"
                width: 200
                height: 50
                font.pixelSize: 16
                onClicked: {
                    logicHandler.handleNavigation("Quest.qml")
                    console.log("Daily Quests button clicked")
                }
            }

            Button {
                text: "Side Quests"
                width: 200
                height: 50
                font.pixelSize: 16
                onClicked:  {
                    logicHandler.handleNavigation("SideQuest.qml")
                    console.log("Side Quests button clicked")
                }
            }

            Button {
                text: "Target Skills \n(Under Construction)"
                width: 200
                height: 80
                font.pixelSize: 12
                onClicked: console.log("Target Skills button clicked")
            }
        }
    }
}
