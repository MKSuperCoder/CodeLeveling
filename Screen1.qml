

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import CodeLeveling
import QtQuick.Studio.DesignEffects

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#030449"

    Text {
        width: 550
        height: 107
        color: "#4449ec"
        text: "CODE LEVELING"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        anchors.verticalCenterOffset: -205
        anchors.horizontalCenterOffset: 0
        font.pointSize: 80
        anchors.centerIn: parent
        font.family: Constants.font.family
    }

    Text {
        id: _text
        x: 798
        y: 140
        width: 325
        height: 90
        color: "#0e13ba"
        text: qsTr("{...}")
        font.pixelSize: 150
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Button {
        id: button
        x: 806
        y: 483
        width: 333
        height: 114
        text: qsTr("Start Training")
        font.bold: true
        display: AbstractButton.TextOnly
        font.pointSize: 30
        icon.color: "#1875d3"
        background: Rectangle {
            color: "#4593f9"
            radius: 15
        }
    }

    Button {
        id: button1
        x: 806
        y: 615
        width: 333
        height: 114
        text: qsTr("Settings")
        icon.color: "#1875d3"
        font.pointSize: 30
        font.bold: true
        display: AbstractButton.TextOnly
        background: Rectangle {
            color: "#4593f9"
            radius: 15
        }
    }

    Button {
        id: button2
        x: 806
        y: 746
        width: 333
        height: 114
        text: qsTr("Quit")
        icon.color: "#1875d3"
        font.pointSize: 30
        font.bold: true
        display: AbstractButton.TextOnly
        background: Rectangle {
            color: "#4593f9"
            radius: 15
        }
    }
}
