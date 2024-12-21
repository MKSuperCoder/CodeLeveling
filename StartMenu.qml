import QtQuick 2.15
import QtQuick.Controls 2.15
import LogicHandler 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: "Start Menu"

    //This creates an instance of the LogicHandler C++ class for handling logic such as buttoon click actions.
    LogicHandler {
        id: logicHandler // This allows referencing this instance in QML
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("qrc:/StartMenu.qml")
        // Load the first page directly, rather than reloading StartMenu.qml
    }
    Rectangle {
        anchors.fill: parent
        color: "#002244"

        Column {
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Text {
                text: "{..}"
                font.pixelSize: 48
                color: "#0e13ba"
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                }

            Text {
                text: "CODE LEVELING"
                font.pixelSize: 32
                color: "#4C6FFF"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                }

            Column {
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter

                Button {
                    text: "Start Training"
                    font.pixelSize: 16
                    width: 200
                    height: 50
                    onClicked: {
                        console.log("Navigating to Quest.qml...");
                        logicHandler.handleNavigation("TrainingGround.qml", mainWindow)
                    }
                }

                Button {
                    text: "View Status"
                    font.pixelSize: 16
                    width: 200
                    height: 50
                    onClicked: {
                        console.log("Navigating to Status.qml...");
                        logicHandler.handleNavigation("statuss.qml", mainWindow)
                    }
                }

                Button {
                    text: "View Levels"
                    font.pixelSize: 16
                    width: 200
                    height: 50
                    onClicked: {
                        console.log("Navigating to Levels.qml...");
                        logicHandler.handleNavigation("Levels.qml", mainWindow)
                    }
                }

                Button {
                    text: "Quit"
                    font.pixelSize: 16
                    width: 200
                    height: 50
                    onClicked: Qt.quit()
                }
            }
        }
    }
}
