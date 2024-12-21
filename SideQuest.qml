import QtQuick 2.15
import QtQuick.Controls 2.15
import LogicHandler 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 400
    height: 600
    title: "Side Quest"

    LogicHandler {
        id: logicHandler
    }

    Rectangle {
        width: 400
        height: 600
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

        Text {
            y: 83
                text: "Side Quests"
                font.pixelSize: 24
                font.bold: true
                color: "#333333"
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenterOffset: -1
                anchors.horizontalCenter: parent.horizontalCenter
            }

        Text {
            y: 156
                text: "Choose a quest to improve your coding skills!"
                font.pixelSize: 16
                color: "#333333"
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
        }

            Button {
                x: 75
                y: 223
                text: "Learn Variables/Data Types"
                width: 250
                height: 50
                font.pixelSize: 16
                onClicked: {
                    Qt.openUrlExternally("https://cplusplus.com/doc/tutorial/variables/")
                    logicHandler.handleNavigation("sidequest1.qml", mainWindow)
                    console.log("Variables and Data Types quest selected")
                }
            }

            Button {
                x: 75
                y: 293
                text: "Understand Conditional Loops"
                width: 250
                height: 50
                font.pixelSize: 16
                onClicked: {
                    Qt.openUrlExternally("https://en.cppreference.com/w/cpp/language/for")
                    logicHandler.handleNavigation("sidequest4.qml", mainWindow)
                    console.log("Loops and Conditionals quest selected")
                }
            }

            Button {
                x: 75
                y: 360
                text: "Learn Functions Basics"
                width: 250
                height: 50
                font.pixelSize: 16
                onClicked: {
                    Qt.openUrlExternally("https://en.cppreference.com/w/cpp/language/functions")
                    logicHandler.handleNavigation("sidequest8.qml", mainWindow)
                    console.log("Functions Basics quest selected")
                }
            }

            Button {
                x: 75
                y: 505
                text: "Back"
                width: 250
                height: 50
                font.pixelSize: 16
                onClicked: {
                    logicHandler.handleNavigation("TrainingGround.qml", mainWindow)
                    console.log("Going Back..")
                }
            }
    }
}
