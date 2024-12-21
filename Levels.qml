import QtQuick 2.15
import QtQuick.Controls 2.15
import LogicHandler 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 740
    height: 700
    title: "Code Leveling"

    LogicHandler {
        id: logicHandler // This allows referencing this instance in QML
    }
    Rectangle {
        width: 740
        height: 716
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
            x: 307
            y: 8
            text: "Levels"
            font.bold: true
            font.pixelSize: 60
            color: "white"
        }


            // Daily Quest Section
        Text {
            x: 62
            y: 106
            width: 108
            height: 35
            text: "Level 1:"
            font.pixelSize: 40
            font.bold: true
            color: "white"
            horizontalAlignment: Text.AlignHCenter
        }

            // Goals Header

            // Dynamic Goals List

            // Caution Section

            // Timer Icon Section
            // Back Button
        Button {
            y: 660
            text: "Close"
            anchors.horizontalCenterOffset: 0
            width: 100
            height: 40
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: logicHandler.handleNavigation("StartMenu.qml", mainWindow)
        }

        Text {
            x: 62
            y: 160
            width: 108
            height: 35
            color: "#ffffff"
            text: "Level 2:"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 62
            y: 214
            width: 108
            height: 35
            color: "#ffffff"
            text: "Level 3:"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 62
            y: 266
            width: 108
            height: 35
            color: "#ffffff"
            text: "Level 4:"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 62
            y: 316
            width: 108
            height: 35
            color: "#ffffff"
            text: "Level 5:"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 62
            y: 370
            width: 108
            height: 35
            color: "#ffffff"
            text: "Level 6:"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 62
            y: 418
            width: 108
            height: 35
            color: "#ffffff"
            text: "Level 7:"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 62
            y: 468
            width: 108
            height: 35
            color: "#ffffff"
            text: "Level 8:"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 62
            y: 516
            width: 108
            height: 35
            color: "#ffffff"
            text: "Level 9:"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 62
            y: 570
            width: 108
            height: 35
            color: "#ffffff"
            text: "Level 10:"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 281
            y: 106
            width: 108
            height: 35
            color: "#ffffff"
            text: "Code Peasant"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 281
            y: 160
            width: 108
            height: 35
            color: "#1a1717"
            text: "Syntax Squire"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 307
            y: 214
            width: 108
            height: 35
            color: "#dfeb1c"
            text: "Algorithm Knight"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 253
            y: 266
            width: 108
            height: 35
            color: "#0df38b"
            text: "Code Baron"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 307
            y: 316
            width: 108
            height: 35
            color: "#e3153c"
            text: "Debugging Duke"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 307
            y: 370
            width: 108
            height: 35
            color: "#78dae5"
            text: "Design Archduke"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 296
            y: 418
            width: 108
            height: 35
            color: "#7c53f0"
            text: "Script Sovereign"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 253
            y: 468
            width: 108
            height: 35
            color: "#57cbed"
            text: "Logic Prince"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Text {
            x: 274
            y: 516
            width: 108
            height: 35
            color: "#e9149a"
            text: "Architect King"
            font.pixelSize: 40
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

            Text {
                x: 316
                y: 570
                width: 108
                height: 35
                color: "#4c48f4"
                text: "Coding Monarch"
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Text {
                x: 577
                y: 106
                width: 108
                height: 35
                color: "#ffffff"
                text: "10 Points"
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Text {
                x: 577
                y: 160
                width: 108
                height: 35
                color: "#1a1717"
                text: "20 Points"
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Text {
                x: 577
                y: 214
                width: 108
                height: 35
                color: "#dfeb1c"
                text: "30 Points"
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Text {
                x: 577
                y: 266
                width: 108
                height: 35
                color: "#0df38b"
                text: "40 Points"
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Text {
                x: 577
                y: 316
                width: 108
                height: 35
                color: "#e3153c"
                text: "50 Points"
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Text {
                x: 577
                y: 370
                width: 108
                height: 35
                color: "#78dae5"
                text: "60 Points"
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Text {
                x: 577
                y: 418
                width: 108
                height: 35
                color: "#7c53f0"
                text: "70 Points"
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Text {
                x: 577
                y: 468
                width: 108
                height: 48
                color: "#57cbed"
                text: "80 Points"
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Text {
                x: 577
                y: 522
                width: 108
                height: 35
                color: "#e9149a"
                text: "90 Points"
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Text {
                x: 577
                y: 570
                width: 108
                height: 35
                color: "#4c48f4"
                text: "100 Points"
                font.pixelSize: 40
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }
        }
    }

