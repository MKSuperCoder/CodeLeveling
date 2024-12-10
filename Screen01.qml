

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
    color: "#030449"

    Text {
        width: 396
        height: 111
        color: "#fcf7f7"
        text: qsTr("[WELCOME,")
        anchors.verticalCenterOffset: -33
        anchors.horizontalCenterOffset: -206
        font.pointSize: 60
        anchors.centerIn: parent
        font.family: Constants.font.family
    }

    Text {
        width: 252
        height: 111
        color: "#11b076"
        text: qsTr("CODER]")
        font.pointSize: 60
        font.family: Constants.font.family
        anchors.verticalCenterOffset: -33
        anchors.horizontalCenterOffset: 143
        anchors.centerIn: parent
    }
}
