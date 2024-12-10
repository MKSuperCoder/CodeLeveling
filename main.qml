import QtQuick 2.15 //This provides essential QML types like ApplicationWindow, Rectangle, Text, and animations
import QtQuick.Controls 2.15 // This includes UI controls like Button and StackView
import LogicHandler 1.0 // This imports the LogicHandler C++ class registered with QML (qmlRegisterType in C++)
import QtMultimedia 5.15 // This imports audio and multimedia functionality

//This is the main window of the application
ApplicationWindow {
    id: mainWindow //This identifies the window as mainWindow for referencing in code
    visible: true //This ensures the window is shown
    width: 640 //This sets the width of the window
    height: 480 //This sets the height of the window
    title: "Code Leveling" //This is the window title

    //This is a container for navigating between views (pages) in a stack-like manner
    StackView {
           id: stackView
           //This makes the stack view fill the entire ApplicationWindow
           anchors.fill: parent
           //This loads StartMenu.qml as the first page of the stack
           initialItem: Qt.resolvedUrl("qrc:/StartMenu.qml")
    }

    //This creates the background for the appliaction
    Rectangle {
        //This ensures the rectangle covers the entire window
        anchors.fill: parent
        //This sets a dark blue backgroudn color
        color: "#000044" // Dark blue background

        //This creates an instance of the LogicHandler C++ class for handling logic such as buttoon click actions.
        LogicHandler {
            id: logicHandler // This allows referencing this instance in QML
        }

        //This displays welcome messages with dynamic content
        Text {
            id: changingText //This identifies the text as changingText
            text: "[WELCOME, <font color='#11b076'>CODER</font>]" //This is the initial message using HTML-styled formatting
            color: "white"
            font.pixelSize: 28
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter //This centers the text in the window
            anchors.verticalCenter: parent.verticalCenter
            textFormat: Text.StyledText //This enables HTML-styled formatting

            //This creates a sequence of animations and actions
            SequentialAnimation {
                loops: 1
                running: true

                //This pauses for a duration
                PauseAnimation { duration: 3000 }
                //This changes the text dynamically
                ScriptAction {
                    script: changingText.text = "Are you tired of being the " +
                                                "<font color='red'>WORST</font> programmer on the planet?"
                }
                PauseAnimation { duration: 4000 }
                ScriptAction {
                    script: changingText.text = "Do you want to become the " +
                                                "<font color='#11b076'>BEST</font> programmer ever?"
                }
                PauseAnimation { duration: 4000 }
                ScriptAction { script: buttonContainer.visible = true }
            }
        }

        //This contains yes and no buttons
        Rectangle {
            id: buttonContainer
            visible: false //Initially hidden until the animation sequence ends
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            y: changingText.y + 200 // Increased the offset to place the buttons lower

            Column {
                y: 30
                spacing: 20
                anchors.horizontalCenter: parent.horizontalCenter

                Button {
                    text: "Yes"
                    font.pixelSize: 20
                    background: Rectangle {
                        color: "green"
                        radius: 8
                    }
                    // This calls logicHandler.handleYesClicked(mainWindow) in C++ to navigate to a new page and close the current window
                    onClicked: logicHandler.handleNavigation("SignupPage.qml", mainWindow)
                }

                Button {
                    text: "No"
                    font.pixelSize: 20
                    background: Rectangle {
                        color: "blue"
                        radius: 8
                    }
                    // This calls the logicHandler.handleNOClicked() in C++ to exit the application
                    onClicked: logicHandler.handleNoClicked(mainWindow)
                }
            }
        }
    }
}
