import QtQuick 2.15
import QtQuick.Controls 2.15
import LogicHandler 1.0
import filehandler 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 500
    height: 700
    title: "Coding Questions"

    LogicHandler {
        id: logicHandler
    }
    FileHandler {
        id: filehandler
        questionFilePath: ":/CodingQuestions/.qtcreator/question5.txt"
        exampleOutputFilePath: ":/CodingQuestions/.qtcreator/exampleoutput5.txt"
    }

    Rectangle {
        width: 500
        height: 700
        color: "#000000"
        anchors.centerIn: parent
        radius: 20
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#0d1e35" }
            GradientStop { position: 1.0; color: "#2a4b7e" }
        }
        border.color: "#5dd0f0"
        border.width: 3

        Text {
            x: 161
            y: 28
            text: "Coding Challenge"
            font.bold: true
            font.pixelSize: 28
            color: "white"
        }

        // Daily Quest Section
        Text {
            x: 105
            y: 83
            text: "TRAIN TO BECOME\nA FORMIDABLE PROGRAMMER"
            font.pixelSize: 18
            font.bold: true
            color: "white"
            horizontalAlignment: Text.AlignHCenter
        }

        Rectangle {
            id: questionSection
            x: 72
            y: 150
            width: 341
            height: 212
            color: "#0d1e35"
            TextEdit {
                id: textEdit
                anchors.fill: parent
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                anchors.topMargin: 8
                anchors.bottomMargin: 102
                color: "#eedfdf"
                font.pixelSize: 13
                wrapMode: TextEdit.WordWrap
                readOnly: true
                text: filehandler.readQuestion()
            }

            Rectangle {
                id: outputSection
                x: 8
                y: 116
                width: 325
                height: 88
                color: "#19375f"
                TextEdit {
                    id: textEdit1
                    color: "#f7f1f1"
                    anchors.fill: parent
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    font.pixelSize: 13
                    wrapMode: TextEdit.WordWrap
                    readOnly: true
                    text: filehandler.readExampleOutput()
                }
            }
        }

        Rectangle {
            id: codeEditor
            x: 72
            y: 392
            width: 341
            height: 200
            color: "#19375f"
            border.color: "#0d1e35"
            border.width: 8
            TextEdit {
                width: 320
                height: 120
                id: codeTextEdit
                anchors.fill: parent
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                anchors.topMargin: 8
                anchors.bottomMargin: 8
                color: "#eedfdf"
                font.pixelSize: 11
                text: "Write your code here..."
            }
        }

        Button {
            y: 598
            width: 91
            height: 40
            text: "Run"
            anchors.horizontalCenterOffset: 103
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: logicHandler.handleNavigation("Rewards.qml", mainWindow)
        }

        Button {
            y: 598
            width: 91
            height: 40
            text: "Clear"
            anchors.horizontalCenterOffset: -121
            anchors.horizontalCenter: parent.horizontalCenter
            // not working for now
        }

        Button {
            y: 652
            width: 100
            height: 40
            text: "Back"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: logicHandler.handleNavigation("Quest.qml", mainWindow)
        }
    }
}
