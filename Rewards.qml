import QtQuick 2.15
import QtQuick.Controls 2.15
import LogicHandler 1.0


ApplicationWindow {
    id: mainWindow
    visible: true
    width: 400
    height: 484
    title: "Rewards"

    LogicHandler {
        id: logicHandler
    }
    Rectangle {
        width: 400
        height: 484
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
            x: 145
            y: 20
            text: "Rewards"
            font.bold: true
            font.pixelSize: 28
            color: "white"
        }

        // Daily Quest Section
        Text {
            x: 38
            y: 81
            text: "You've got rewards! Congratulations!"
            font.pixelSize: 18
            font.bold: true
            color: "white"
            horizontalAlignment: Text.AlignHCenter
        }

        Rectangle {
            id: questionSection
            x: 30
            y: 142
            width: 341
            height: 212
            color: "#0d1e35"
            TextEdit {
                id: textEdit
                anchors.fill: parent
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                anchors.topMargin: 8
                anchors.bottomMargin: 175
                color: "#eedfdf"
                text: "1. +5 Array-Mastery Points"
                font.pixelSize: 12
                wrapMode: TextEdit.WordWrap
            }

            TextEdit {
                id: textEdit1
                color: "#eedfdf"
                text: "2.. +5 Problem-Solving"
                anchors.fill: parent
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                anchors.topMargin: 43
                anchors.bottomMargin: 140
                font.pixelSize: 12
                wrapMode: TextEdit.WordWrap
            }

            TextEdit {
                id: textEdit2
                color: "#eedfdf"
                text: "3. +5 Stamina"
                anchors.fill: parent
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                anchors.topMargin: 78
                anchors.bottomMargin: 105
                font.pixelSize: 12
                wrapMode: TextEdit.WordWrap
            }

            TextEdit {
                id: textEdit3
                color: "#eedfdf"
                text: "4.. +5 Concentration\n"
                anchors.fill: parent
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                anchors.topMargin: 113
                anchors.bottomMargin: 70
                font.pixelSize: 12
                wrapMode: TextEdit.WordWrap
            }

            TextEdit {
                id: textEdit4
                color: "#eedfdf"
                text: "5.. New Level \n"
                anchors.fill: parent
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                anchors.topMargin: 148
                anchors.bottomMargin: 35
                font.pixelSize: 12
                wrapMode: TextEdit.WordWrap
            }
        }

        Button {
            y: 422
            width: 100
            height: 40
            text: "Yes"
            anchors.horizontalCenterOffset: -5
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: logicHandler.handleNavigation("statuss.qml", mainWindow)
        }

        Text {
            x: 111
            y: 373
            color: "#ffffff"
            text: "Accept these rewards?"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            font.bold: false
        }
    }
}
