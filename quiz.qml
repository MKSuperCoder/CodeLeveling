import QtQuick 2.15
import QtQuick.Controls 2.15
import LogicHandler 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 500
    height: 700
    title: "quiz"

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
            x: 215
            y: 30
            text: "Quiz"
            font.bold: true
            font.pixelSize: 28
            color: "white"
        }

        Text {
            x: 58
            y: 567
            text: "CAUTION! - IF YOU GET THIS WRONG, PENALTIES\nWILL BE GIVEN ACCORDINGLY."
            font.pixelSize: 16
            font.bold: true
            color: "red"
            horizontalAlignment: Text.AlignHCenter
        }

        Button {
            y: 631
            text: "Close"
            anchors.horizontalCenterOffset: -5
            width: 100
            height: 40
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: logicHandler.handleNavigation("StartMenu.qml", mainWindow)
        }

        TextEdit {
            id: textEdit
            x: 100
            y: 108
            width: 292
            height: 54
            color: "#f5f0f0"
            text: qsTr("What is an array?\n")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        TextEdit {
            id: textEdit1
            x: 94
            y: 154
            width: 434
            height: 65
            color: "#f5f0f0"
            text: qsTr("a) data structures that can hold multiple \nvalues of the same type\n\n")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
        }

        TextEdit {
            id: textEdit2
            x: 94
            y: 219
            width: 392
            height: 63
            color: "#f5f0f0"
            text: qsTr("b) data structures that can hold multiple \nvalues of different types\n\n")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
        }

        TextEdit {
            id: textEdit3
            x: 94
            y: 288
            width: 392
            height: 63
            color: "#f5f0f0"
            text: qsTr("c) A programmer’s best friend... until it isn't.\n")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
        }

        TextEdit {
            id: textEdit4
            x: 94
            y: 335
            width: 392
            height: 63
            color: "#f5f0f0"
            text: qsTr("d) Just a bunch of brackets having a party.\n\n")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
        }

        CheckBox {
            id: checkBox
            x: 33
            y: 154
            text: qsTr("")
        }

        CheckBox {
            id: checkBox1
            x: 33
            y: 219
            text: qsTr("")
        }

        CheckBox {
            id: checkBox2
            x: 33
            y: 283
            text: qsTr("")
        }

        CheckBox {
            id: checkBox3
            x: 33
            y: 335
            text: qsTr("")
        }

        Button {
            y: 459
            width: 165
            height: 40
            text: "Answer"
            anchors.horizontalCenterOffset: -5
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                if (checkBox.checked && !checkBox1.checked && !checkBox2.checked && !checkBox3.checked) {
                    console.log("Correct answer!");
                    logicHandler.handleNavigation("Rewards.qml", mainWindow);
                } else {
                    console.log("Wrong answer. Try again.");
                }
            }
        }
    }
}