import QtQuick 2.15
import QtQuick.Controls 2.15
import DatabaseManager 1.0
import LogicHandler 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: "Styled Login Page"
    LogicHandler {
        id: logichandler
    }

    DatabaseManager {
        id: databaseManager
    }

    // Background gradient
    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#002f4f" } // Deep blue
            GradientStop { position: 1.0; color: "#001f33" } // Darker blue
        }

        // Login container
        Rectangle {
            id: loginBox
            width: parent.width * 0.6
            height: parent.height * 0.5
            anchors.centerIn: parent
            color: "#003b57" // Subtle blue-green
            radius: 20
            border.color: "#1ed760" // Green border
            border.width: 3
            opacity: 0.95

            // Inner content
            Column {
                anchors.centerIn: parent
                spacing: 15


                Text {
                    text: "Login"
                    font.pixelSize: 24
                    font.bold: true
                    color: "#ffcc00" // Gold-yellow
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                // Username field
                TextField {
                    id: usernameField
                    placeholderText: "Enter username"
                    width: 150
                    font.pixelSize: 14
                    background: Rectangle {
                        color: "#001f33" // Dark blue
                        radius: 30
                        border.color: "#1ed760" // Bright green
                        border.width: 2
                    }
                    padding: 10
                }

                // Password field
                TextField {
                    id: passwordField
                    placeholderText: "Enter password"
                    echoMode: TextInput.Password
                    width: 150
                    font.pixelSize: 14
                    background: Rectangle {
                        color: "#001f33"
                        radius: 30
                        border.color: "#1ed760"
                        border.width: 2
                    }
                    padding: 10
                }

                // Login button
                Button {
                    text: "Login"
                    font.pixelSize: 16
                    width: 100
                    height: 40
                    background: Rectangle {
                        color: "#1ed760" // Bright green
                        radius: 10
                    }
                    onClicked: {
                                       if (databaseManager.validateUser(usernameField.text, passwordField.text)) {
                                           logichandler.handleNavigation("StartMenu.qml", mainWindow); // Navigate to StartMenu.qml
                                           console.log("Login successful!");
                                       } else {
                                           console.log("Invalid username or password!");
                                       }
                                   }
                }
            }
        }
    }
}
