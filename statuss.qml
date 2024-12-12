import QtQuick 2.15
import QtQuick.Controls 2.15
import LogicHandler 1.0
import DatabaseManager 1.0
import Status 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: "Code Leveling"

    DatabaseManager {
        id: databaseManager
    }

    //This creates an instance of the LogicHandler C++ class for handling logic such as buttoon click actions.
    LogicHandler {
        id: logicHandler // This allows referencing this instance in QML
    }

    Status {
        id: status
    }

    Component.onCompleted: {
        // Fetch username from the database and set it in the Status class
        status.username = databaseManager.getUsername();
        console.log("General Stats: " + status.generalStats().statNames())
        console.log("Technical Stats: " + status.technicalStats().statNames())
        console.log("General Stats Object: " + status.generalStats)
        console.log("Technical Stats Object: " + status.technicalStats)
        console.log("General Stats: " + status.generalStats.statNames())
        console.log("Technical Stats: " + status.technicalStats.statNames())
    }

    // Background
    Rectangle {
        anchors.fill: parent
        color: "#002366" // Dark blue background

        // Title of the Status Page
        Text {
            text: "STATUS"
            font.pixelSize: 48
            anchors.horizontalCenterOffset: 7
            font.bold: true
            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 0
        }

        // Player Information Section
        Rectangle {
            id: playerInfo
            width: parent.width * 0.4
            height: 250
            color: "#00194f"
            border.color: "white"
            border.width: 2
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 80
            radius: 10

            Column {
                spacing: 10
                anchors.fill: parent
                anchors.margins: 15

                // Section Title
                Text {
                    text: "PLAYER INFORMATION"
                    font.pixelSize: 20
                    font.bold: true
                    color: "#00bfff"
                }

                // Player Details
                Text { text: "Name: " + status.username; color: "white"; font.pixelSize: 16 }
                Text { text: "Title: " + status.title; color: "white"; font.pixelSize: 16 }
                Text { text: "Level: " + 2; color: "white"; font.pixelSize: 16 }
                Text { text: "Fatigue: " + 0; color: "white"; font.pixelSize: 16 }
                Text { text: "HP: " + 100; color: "white"; font.pixelSize: 16 }
            }
        }

        // Points Section (Below Player Information)
        Rectangle {
            id: pointsSection
            x: 45
            y: 950
            width: playerInfo.width
            height: 50
            color: "#00194f"
            border.color: "white"
            border.width: 2
            anchors.left: playerInfo.left
            anchors.top: playerInfo.bottom
            anchors.leftMargin: 0
            anchors.topMargin: 74
            radius: 10

            Text {
                text: "POINTS: " + 20
                font.pixelSize: 20
                font.bold: true
                color: "#00bfff"
                anchors.centerIn: parent
            }
        }

        // General Stats Section
        Rectangle {
            id: generalStats
            x: 355
            width: parent.width * 0.4
            height: 170
            color: "#00194f"
            border.color: "white"
            border.width: 2
            anchors.right: parent.right
            anchors.rightMargin: 29
            anchors.top: parent.top
            anchors.topMargin: 80
            radius: 10


                // Section Title
            Text {
                x: 45
                y: 0
                text: "GENERAL STATS"
                    font.pixelSize: 20
                    font.bold: true
                    color: "#00bfff"
                }

                // General Stats Details
                Text { x: 12; y: 33; text: "Algorithm-Mastery: "; color: "white"; font.pixelSize: 16 }
                Text { x: 26; y: 55; text: "Problem-Solving: " + 5; color: "white"; font.pixelSize: 16 }
                Text { x: 45; y: 78; width: 108; height: 29; text: "Concentration: " +5; color: "white"; font.pixelSize: 16 }
                Text { x: 66; y: 103; width: 87; height: 27; text: "Knowledge: " + 5; color: "white"; font.pixelSize: 16 }
                Text { x: 89; y: 130; text: "Stamina: " + 5; color: "white"; font.pixelSize: 16 }
        }
            }

        // Technical Stats Section
        Rectangle {
            id: technicalStats
            x: 355
            y: 268
            width: generalStats.width
            height: 150
            color: "#00194f"
            border.color: "white"
            border.width: 2
            anchors.right: generalStats.right
            anchors.top: generalStats.bottom
            anchors.topMargin: 20
            radius: 10


                // Section Title
            Text {
                x: 42
                y: 3
                text: "TECHNICAL STATS"
                    font.pixelSize: 20
                    font.bold: true
                    color: "#00bfff"
                }

                // Technical Stats Details
                Text { x: 33; y: 36; text: "Array-Mastery: " + 5; color: "white"; font.pixelSize: 16 }
                Text { x: 25; y: 64; text: "Vector-Mastery: "; color: "white"; font.pixelSize: 16 }
                Text { x: 20; y: 88; text: "Classes-Mastery: "; color: "white"; font.pixelSize: 16 }
                Text { x: 14; y: 116; text: "Pointers-Mastery: "; color: "white"; font.pixelSize: 16 }
                // Back Button
                Button {
                    x: 14
                    y: 160
                    text: "Back"
                    anchors.horizontalCenterOffset: -8
                    width: 100
                    height: 40
                        anchors.horizontalCenter: parent.horizontalCenter
                        onClicked: logicHandler.handleNavigation("StartMenu.qml", mainWindow)
                    }
        }


    }



