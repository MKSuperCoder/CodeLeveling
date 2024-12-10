/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick
import QtQuick.Controls
import CodeLeveling

Rectangle {
    width: Constants.width
    height: Constants.height
    color: "#0a0d7c"


    Rectangle {
        id: rectangle1
        x: 36
        y: 153
        width: 665
        height: 570
        color: "#000045"
        border.color: "#fcf9f9"
        border.width: 5
    }

    Text {
        width: 178
        height: 100
        color: "#fff6f6"
        text: qsTr("STATUS")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        styleColor: "#ffffff"
        font.weight: Font.Bold
        font.pointSize: 80
        font.family: "Times New Roman"
        font.bold: true
        anchors.verticalCenterOffset: -466
        anchors.horizontalCenterOffset: -10
        anchors.centerIn: parent
    }

    Text {
        id: _text
        x: 75
        y: 210
        width: 170
        height: 110
        color: "#fdfcfc"
        text: qsTr("Name:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: _text1
        x: 95
        y: 290
        width: 170
        height: 110
        color: "#fdfcfc"
        text: qsTr("Job:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: _text2
        x: 85
        y: 370
        width: 170
        height: 110
        color: "#fdfcfc"
        text: qsTr("Title:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: _text3
        x: 85
        y: 441
        width: 170
        height: 110
        color: "#fdfcfc"
        text: qsTr("Level:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: _text4
        x: 65
        y: 515
        width: 170
        height: 110
        color: "#fdfcfc"
        text: qsTr("Fatigue:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Rectangle {
        id: rectangle
        x: 1175
        y: 133
        width: 705
        height: 907
        color: "#000045"
        border.color: "#f7f4f4"
        border.width: 5
    }

    Text {
        id: _text5
        x: 1268
        y: 463
        width: 170
        height: 110
        color: "#fdfdfd"
        text: qsTr("                        Knowledge:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: _text6
        x: 1300
        y: 388
        width: 170
        height: 110
        color: "#fdfdfd"
        text: qsTr("               Concentration:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: _text7
        x: 1330
        y: 308
        width: 170
        height: 110
        color: "#fdfdfd"
        text: qsTr("       Problem-Solving:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: _text8
        x: 1355
        y: 223
        width: 170
        height: 110
        color: "#fdfdfd"
        text: qsTr("Algorithm-Mastery:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: _text9
        x: 1235
        y: 538
        width: 170
        height: 110
        color: "#fdfdfd"
        text: qsTr("                                  Stamina:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: _text10
        x: 1443
        y: 137
        width: 170
        height: 110
        color: "#06bff5"
        text: qsTr("GENERAL STATS")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Tahoma"
        font.bold: true
    }

    Text {
        id: _text11
        x: 283
        y: 144
        width: 170
        height: 110
        color: "#06bff5"
        text: qsTr("PLAYER INFORMATION")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Tahoma"
        font.bold: true
    }

    Rectangle {
        id: rectangle2
        x: 1198
        y: 648
        width: 660
        height: 10
        color: "#ffffff"
    }

    Text {
        id: _text12
        x: 1443
        y: 648
        width: 170
        height: 110
        color: "#06bff5"
        text: qsTr("TECHNICAL STATS")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Tahoma"
        font.bold: true
    }

    Text {
        id: _text13
        x: 1365
        y: 718
        width: 170
        height: 110
        color: "#fdfdfd"
        text: qsTr("Array-Mastery:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: _text14
        x: 1355
        y: 788
        width: 170
        height: 110
        color: "#fdfdfd"
        text: qsTr("Vector-Mastery:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: _text15
        x: 1345
        y: 853
        width: 170
        height: 110
        color: "#fdfdfd"
        text: qsTr("Classes-Mastery:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: _text16
        x: 1340
        y: 918
        width: 170
        height: 110
        color: "#fdfdfd"
        text: qsTr("Pointers-Mastery:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Rectangle {
        id: rectangle3
        x: 41
        y: 935
        width: 330
        height: 105
        color: "#000045"
        border.color: "#ffffff"
        border.width: 5
    }

    Text {
        id: _text18
        x: 111
        y: 598
        width: 170
        height: 110
        color: "#fdfcfc"
        text: qsTr("HP:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text {
        id: _text19
        x: 90
        y: 932
        width: 170
        height: 110
        color: "#06bff5"
        text: qsTr("POINTS:")
        font.pixelSize: 50
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Tahoma"
        font.bold: true
    }
}
