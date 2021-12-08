import QtQuick 2.0
import "../Basic"

Item {
    anchors.fill: parent
    readonly property color blueNormal: "#1890ff"
    readonly property color blueHover: "#40a9ff"
    readonly property color bluePressed: "#096dd9"
    Column {
        anchors.centerIn: parent

        BasicButton{
            id: cricleButton
            height: 80
            width: 80
            radius: width / 2
            text: "hello"
            textColor: "red"

            borderColor: "black"
            onClicked: {
                console.log(text)
            }
        }

        BasicButton{
            id: cricleButton2
            height: 80
            width: 80
            radius: width / 2
            text: "hello2"
            textColor: "blue"
            borderColor: "black"

            onClicked: {
                console.log(text)
            }
        }
    }
}


