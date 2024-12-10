import QtQuick
import QtQuick.Controls 2.15

ApplicationWindow {
    id: compilerWindow
    visible: true
    width: 640
    height: 480
    title: "Compiler"

    Rectangle {
        anchors.fill: parent
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        color: "#001d4a" // Background color

        // Title Section
        Rectangle {
            width: parent.width
            height: 60
            color: "#002366"
            anchors.top: parent.top

        Text {
                text: "Code Compiler"
                font.pixelSize: 24
                font.bold: true
                color: "white"
                anchors.centerIn: parent
            }
        }

        // Main Content Section
        Rectangle {
            // Code Editor
            TextArea {
                id: codeEditor
                x: 13
                y: 66
                width: 300
                height: 250
                font.pixelSize: 16
                placeholderText: "Write your code here..."
                wrapMode: TextEdit.NoWrap
                color: "white"
                background: Rectangle {
                    color: "#002850"
                }
            }
            TextArea {
                id: codingProblem
                x: 332
                y: 66
                width: 300
                height: 250
                font.pixelSize: 16
                placeholderText: "Write your code here..."
                wrapMode: TextEdit.NoWrap
                color: "white"
                background: Rectangle {
                    color: "#002850"
                }
            }

            // Buttons
            TextArea {
                id: outputArea
                x: 8
                y: 328
                width: 624
                height: 144
                readOnly: true
                font.pixelSize: 16
                placeholderText: "Output will appear here..."
                color: "white"
                background: Rectangle {
                    color: "#002850"
                }
            }

            Button {
                x: 352
                y: 432
                text: "Clear"
                font.pixelSize: 16
                onClicked: {
                    codeEditor.text = ""
                    outputArea.text = ""
                }
            }


            Button {
                x: 213
                y: 432
                text: "Run"
                font.pixelSize: 16
                onClicked: {
                    // Pass code to backend logic
                    logicHandler.runCode(codeEditor.text)
                }
            }
        }
    }
}
