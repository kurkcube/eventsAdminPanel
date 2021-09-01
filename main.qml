import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Dialogs 1.2

Window {
    width: 500
    height: 600
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id: mainArea
        x: 0
        y: 0
        width: parent.width
        height: parent.height
        color: "#394454"

        Image {
            id: loginLogo
            x:serverField1.x
            y:serverField1.y -3
            width: 321
            height: 200
            anchors.top: parent.top
            source: "qrc:/pngwing.com.png"
            fillMode: Image.PreserveAspectFit
        }

        TextField {
            id: serverField1
            x: 100
            y: 208
            width: 321
            height: 30
        }

        Rectangle{
            id: serverField1_1
            anchors.left: parent.left
            anchors.leftMargin: 10
            y:210
            color: "transparent"
            Text {
                anchors.fill: parent
                font.family: "Arial"
                font.pointSize: 14
                color:"white"
                text: qsTr("Name")
            }
        }

        TextField {
            id: serverField2
            x: 100
            y: 272
            width: 321
            height: 30
        }

        Rectangle{
            id: serverField2_2
            anchors.left: parent.left
            anchors.leftMargin: 10
            y:274
            color: "transparent"
            Text {
                anchors.fill: parent
                font.family: "Arial"
                font.pointSize: 14
                color:"white"
                text: qsTr("Type")
            }
        }

        TextField {
            id: serverField3
            x: 100
            y: 335
            width: 321
            height: 30
        }

        Rectangle{
            id: serverField3_3
            anchors.left: parent.left
            anchors.leftMargin: 10
            y:337
            color: "transparent"
            Text {
                anchors.fill: parent
                font.family: "Arial"
                font.pointSize: 14
                color:"white"
                text: qsTr("Date")
            }
        }

        TextField {
            id: serverField4
            x: 100
            y: 400
            width: 321
            height: 30
        }

        Rectangle{
            id: serverField4_4
            anchors.left: parent.left
            anchors.leftMargin: 10
            y:402
            color: "transparent"
            Text {
                anchors.fill: parent
                font.family: "Arial"
                font.pointSize: 14
                color:"white"
                text: qsTr("Location")
            }
        }

        Button {
            id: addButton
            width: 321
            height: 30
            x: 100
            text: qsTr("Click to add user")
            anchors {
                top: serverField4.bottom
                topMargin: 25
            }

            onClicked: {
                activity_creation.insertActivity(serverField1.text, serverField2.text, serverField3.text, serverField4.text);
                serverField1.text = "";
                serverField2.text = "";
                serverField3.text = "";
                serverField4.text = "";
            }
        }
    }
}
