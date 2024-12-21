import QtQuick 2.15
import QtQuick.Controls 2.15
import LogicHandler 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 500
    height: 700
    title: "Code Leveling"

    LogicHandler {
        id: logicHandler // This allows referencing this instance in QML
    }

    Rectangle {
        width: 500
        height: 700
        anchors.centerIn: parent
        radius: 20
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#0d1e35" }
            GradientStop { position: 1.0; color: "#2a4b7e" }
        }
        border.color: "#5dd0f0"
        border.width: 3
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        Text {
            x: 161
            y: 28
            text: "QUEST INFO"
            font.bold: true
            font.pixelSize: 28
            color: "white"
        }


            // Daily Quest Section
        Text {
            x: 105
            y: 104
            text: "DAILY QUEST - TRAIN TO BECOME\nA FORMIDABLE PROGRAMMER"
            font.pixelSize: 18
            font.bold: true
            color: "white"
            horizontalAlignment: Text.AlignHCenter
        }

        // Goals Header
        Text {
            x: 210
            y: 165
            text: "GOALS"
            font.pixelSize: 20
            font.bold: true
            color: "#11FF11"
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: _text
            x: 106
            y: 205
            width: 309
            height: 64
            color: "#faf0f0"
            text: qsTr("Solve coding questions")
            font.pixelSize: 26
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            MouseArea {
                id: mouseArea
                x: 5
                y: 13
                width: 301
                height: 48
                onClicked: logicHandler.handleNavigation("CodingQuestion.qml", mainWindow)
            }
        }

        CheckBox {
            id: checkBox
            x: 411
            y: 222
            width: 41
            height: 40
            text: qsTr("Check Box")
        }

        Text {
            id: _text1
            x: 106
            y: 275
            width: 309
            height: 64
            color: "#faf0f0"
            text: qsTr("Watch a video on arrays")
            font.pixelSize: 26
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

            MouseArea {
                id: mouseArea2
                x: 1
                y: 14
                width: 301
                height: 48
                onClicked: {
                    Qt.openUrlExternally("https://www.youtube.com/watch?v=QFrJQq6Iox8&t=1s")
                    logicHandler.handleNavigation("quiz.qml", mainWindow)
                }
            }
        }

        CheckBox {
            id: checkBox1
            x: 411
            y: 293
            width: 41
            height: 40
            text: qsTr("Check Box")
        }

        Text {
            id: _text3
            x: 96
            y: 345
            width: 309
            height: 64
            color: "#faf0f0"
            text: qsTr("Learn about classes")
            font.pixelSize: 26
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter

            MouseArea {
                id: mouseArea3
                x: 9
                y: 10
                width: 301
                height: 48
                onClicked: {
                    Qt.openUrlExternally("https://cplusplus.com/doc/tutorial/classes/")
                    logicHandler.handleNavigation("ClassesQuiz.qml", mainWindow)
                }
            }
        }

        CheckBox {
            id: checkBox3
            x: 411
            y: 357
            width: 41
            height: 40
            text: qsTr("Check Box")
        }


    }

        // Caution Section
    Text {
        x: 117
        y: 567
        text: "CAUTION! - IF THE DAILY QUEST\nREMAINS INCOMPLETE, PENALTIES\nWILL BE GIVEN ACCORDINGLY."
        font.pixelSize: 16
        font.bold: true
        color: "red"
        horizontalAlignment: Text.AlignHCenter
    }

        // Timer Icon Section
    Rectangle {
        y: 473
        width: 80
        height: 80
        radius: 40
        color: "transparent"
        border.color: "white"
        border.width: 2
        anchors.horizontalCenterOffset: -8
        anchors.horizontalCenter: parent.horizontalCenter

        Image {
            source: "qrc:/images/timer.png"
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 0
            anchors.centerIn: parent
            width: 50
            height: 50
        }
    }
        // Back Button
    Button {
        y: 643
        text: "Done"
        anchors.horizontalCenterOffset: -8
        width: 100
        height: 40
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                if (checkBox.checked && checkBox1.checked && checkBox3.checked) {
                    console.log("Quest completed.!")
                }
                logicHandler.handleNavigation("Rewards.qml", mainWindow)
        }
    }
}
