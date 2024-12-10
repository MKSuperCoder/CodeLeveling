import QtQuick 2.15
import QtQuick.Controls 2.15
import LogicHandler 1.0
import DatabaseManager 1.0
import Status 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 800
    height: 600
    title: "Code Leveling"

    DatabaseManager {
        id: databaseManager
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
            font.bold: true
            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 20
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
                Text { text: "Level: "; color: "white"; font.pixelSize: 16 }
                Text { text: "Fatigue: "; color: "white"; font.pixelSize: 16 }
                Text { text: "HP: "; color: "white"; font.pixelSize: 16 }
            }
        }

        // Points Section (Below Player Information)
        Rectangle {
            id: pointsSection
            x: 45
            y: 935
            width: playerInfo.width
            height: 50
            color: "#00194f"
            border.color: "white"
            border.width: 2
            anchors.left: playerInfo.left
            anchors.top: playerInfo.bottom
            anchors.topMargin: 20
            radius: 10

            Text {
                text: "POINTS: " + status.currentPoints
                font.pixelSize: 20
                font.bold: true
                color: "#00bfff"
                anchors.centerIn: parent
            }
        }

        // General Stats Section
        Rectangle {
            width: 1980
            height: Constants.height
            color: "#071f62"

            // Title
            Text {
                id: title
                color: "#fff6f6"
                text: qsTr("STATUS")
                font.weight: Font.Bold
                font.bold: true
                font.family: "Times New Roman"
                font.pointSize: 80
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.centerIn: parent
                anchors.verticalCenterOffset: -466
            }

            // General Stats Section
            Rectangle {
                id: generalStats
                x: 1231
                y: 121
                width: 705
                height: 400
                color: "#000045"
                border.color: "#f7f4f4"
                border.width: 5

                Column {
                    spacing: 20
                    anchors.fill: parent
                    anchors.margins: 20

                    // General Stats Title
                    Text {
                        text: qsTr("GENERAL STATS")
                        font.pixelSize: 50
                        font.bold: true
                        color: "#06bff5"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }

                    // General Stats Items (Manually Added)
                    Row {
                        spacing: 20
                        Text { text: qsTr("Algorithm-Mastery:"); font.pixelSize: 50; color: "#fdfdfd" }
                        Text { text: "0"; font.pixelSize: 50; color: "#2c3cee" }
                    }
                    Row {
                        spacing: 20
                        Text { text: qsTr("Problem-Solving:"); font.pixelSize: 50; color: "#fdfdfd" }
                        Text { text: "0"; font.pixelSize: 50; color: "#2c3cee" }
                    }
                    Row {
                        spacing: 20
                        Text { text: qsTr("Concentration:"); font.pixelSize: 50; color: "#fdfdfd" }
                        Text { text: "0"; font.pixelSize: 50; color: "#2c3cee" }
                    }
                    Row {
                        spacing: 20
                        Text { text: qsTr("Knowledge:"); font.pixelSize: 50; color: "#fdfdfd" }
                        Text { text: "0"; font.pixelSize: 50; color: "#2c3cee" }
                    }
                    Row {
                        spacing: 20
                        Text { text: qsTr("Stamina:"); font.pixelSize: 50; color: "#fdfdfd" }
                        Text { text: "0"; font.pixelSize: 50; color: "#2c3cee" }
                    }
                }
            }

            // Technical Stats Section
            Rectangle {
                id: technicalStats
                x: generalStats.x
                y: generalStats.y + generalStats.height + 50
                width: generalStats.width
                height: 400
                color: "#000045"
                border.color: "#f7f4f4"
                border.width: 5

                Column {
                    spacing: 20
                    anchors.fill: parent
                    anchors.margins: 20

                    // Technical Stats Title
                    Text {
                        text: qsTr("TECHNICAL STATS")
                        font.pixelSize: 50
                        font.bold: true
                        color: "#06bff5"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }

                    // Technical Stats Items (Manually Added)
                    Row {
                        spacing: 20
                        Text { text: qsTr("Array-Mastery:"); font.pixelSize: 50; color: "#fdfdfd" }
                        Text { text: "0"; font.pixelSize: 50; color: "#2c3cee" }
                    }
                    Row {
                        spacing: 20
                        Text { text: qsTr("Vector-Mastery:"); font.pixelSize: 50; color: "#fdfdfd" }
                        Text { text: "0"; font.pixelSize: 50; color: "#2c3cee" }
                    }
                    Row {
                        spacing: 20
                        Text { text: qsTr("Classes-Mastery:"); font.pixelSize: 50; color: "#fdfdfd" }
                        Text { text: "0"; font.pixelSize: 50; color: "#2c3cee" }
                    }
                    Row {
                        spacing: 20
                        Text { text: qsTr("Pointers-Mastery:"); font.pixelSize: 50; color: "#fdfdfd" }
                        Text { text: "0"; font.pixelSize: 50; color: "#2c3cee" }
                    }
                }
            }
        }
    }
}

