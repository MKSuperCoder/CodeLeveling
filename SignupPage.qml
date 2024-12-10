import QtQuick 2.15
import QtQuick.Controls 2.15
import LogicHandler 1.0
import DatabaseManager 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: "Signup Page"
    // Background gradient
    LogicHandler {
        id: logicHandler
    }
    DatabaseManager {
        id: databaseManager
    }

    Rectangle {
        anchors.fill: parent
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#002f4f" } // Deep blue
            GradientStop { position: 1.0; color: "#001f33" } // Darker blue
        }

        // Sign-Up form container
        Rectangle {
            id: signUpForm
            width: parent.width * 0.6
            height: parent.height * 0.7
            anchors.centerIn: parent
            radius: 20
            color: "#003b57" // Subtle blue-green
            border.color: "#1ed760" // Bright green border
            border.width: 3
            opacity: 0.95

                // Header text
            Text {
                x: 140
                y: 20
                text: "Sign Up"
                font.pixelSize: 28
                    font.bold: true
                    color: "#ffcc00" // Gold-yellow
                    horizontalAlignment: Text.AlignHCenter
                }

                // Username field
                TextField {
                    id: usernameField
                    x: 117
                    y: 80
                    placeholderText: "Enter username"
                    placeholderTextColor: "#9acd32"
                    horizontalAlignment: Text.AlignHCenter
                    width: 150
                    font.pixelSize: 14
                    background: Rectangle {
                        color: "#001f33" // Dark blue
                        radius: 10
                        border.color: "#1ed760"
                        border.width: 2
                    }
                    padding: 10
                }

                // Email field
                TextField {
                    id: emailField
                    x: 117
                    y: 125
                    placeholderText: "Enter email"
                    placeholderTextColor: "#9acd32"
                    horizontalAlignment: Text.AlignHCenter
                    width: 150
                    font.pixelSize: 14
                    anchors.verticalCenterOffset: -23
                    anchors.horizontalCenterOffset: 0
                    background: Rectangle {
                        color: "#001f33"
                        radius: 10
                        border.color: "#1ed760"
                        border.width: 2
                    }
                    padding: 10
                }

                // Password field
                TextField {
                    id: passwordField
                    x: 117
                    y: 170
                    placeholderText: "Enter password"
                    placeholderTextColor: "#9acd32"
                    horizontalAlignment: Text.AlignHCenter
                    echoMode: TextInput.Password
                    width: 150
                    font.pixelSize: 14
                    background: Rectangle {
                        color: "#001f33"
                        radius: 10
                        border.color: "#1ed760"
                        border.width: 2
                    }
                    padding: 10
                }

                // Confirm password field
                TextField {
                    x: 117
                    y: 215
                    placeholderText: "Confirm password"
                    placeholderTextColor: "#9acd32"
                    horizontalAlignment: Text.AlignHCenter
                    echoMode: TextInput.Password
                    width: 150
                    font.pixelSize: 14
                    background: Rectangle {
                        color: "#001f33"
                        radius: 10
                        border.color: "#1ed760"
                        border.width: 2
                    }
                    padding: 10
                }

                // Sign-Up button
                Button {
                    x: 117
                    y: 263
                    text: "Sign Up"
                    font.pixelSize: 16
                    width: 150
                    height: 40
                    background: Rectangle {
                        color: "#1ed760" // Bright green
                        radius: 10
                    }
                    onClicked: {
                                        if (databaseManager.storeUser(usernameField.text, passwordField.text, emailField.text)) {
                                            logicHandler.handleNavigation("StartMenu.qml", mainWindow)
                                            console.log("Sign-Up successful!");
                                            // Navigate to the login page or main menu
                                        } else {
                                            console.log("Sign-Up failed. Username or email might already exist.");
                                        }
                        }
                    }


                // Already have an account link
                Text {
                    x: 92
                    y: 309
                    text: "Already have an account? Log In"
                    font.pixelSize: 14
                    color: "#1ed760"
                    horizontalAlignment: Text.AlignHCenter
                    MouseArea {
                        id: mouseArea
                        x: -6
                        y: 0
                        width: 209
                        height: 19
                        onClicked:  {
                            logicHandler.handleNavigation("LoginPage.qml", mainWindow)
                            console.log("Redirecting to login page...")
                    }
                }
            }
        }
    }
}
