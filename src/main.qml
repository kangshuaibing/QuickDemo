import QtQuick 2.0
import QtQuick.Controls 2.12
import PropertySingleton 1.0
import ColorSingleton 1.0
import myEnum 1.0

import "./Qml/Pane"

ApplicationWindow
{
    id: mainWindow
    property bool isMax: false
    property string contentsPath: "qrc:/Qml/Contents/"
    visible: true
    width: 640
    height: 480
    title: qsTr("Minimal Qml")

    onVisibilityChanged: {
        console.log("onVisibilityChanged",visibility)
    }

    onWidthChanged: {
        PS.defaultWidth = width
    }

    onHeightChanged: {
        PS.defaultHeight = height
    }

    TitlePane{
        id: titlePlane
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 60

    }
    LeftPlane {
        id: leftPlane
        anchors {
            top: titlePlane.bottom
            left: parent.left
            bottom: parent.bottom
        }
         width: parent.width * 0.233

         onLoadHome: {
             //rightPane.source = rightPane.homeUrl
         }
         onLoadContent: {
             rightPlane.source = contentsPath + path
         }
    }
    Rectangle {
        width: 1
        anchors {
            top: leftPlane.top
            bottom: leftPlane.bottom
            right: leftPlane.right
        }
        color: PS.lineColor
    }

    RightPlane {
        id: rightPlane
        anchors {
            top: titlePlane.bottom
            left: leftPlane.right
            right: parent.right
            bottom: parent.bottom
        }
    }


    Image {
        id: bgImg
        source: "qrc:/Images/Window/flower.jpg"
        anchors.centerIn: parent
        width: parent.width
        height: parent.height
        opacity: 0.1
    }

    Component.onCompleted: {
        console.log("textColor1",CS.textColor.normal)
    }
}

