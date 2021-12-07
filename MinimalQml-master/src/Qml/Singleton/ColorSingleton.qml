pragma Singleton

import QtQuick 2.0

Item {

    property color line: "#007AFE"

//    property alias themeColor : themeColor
//    property alias backgroundColor : backgroundColor
//    property color textColor : textColor
//    //property color lineColor

//    QtObject {
//        property color themeColor : "#5C6873"
//    }
//    QtObject {
//        property color backgroundColor : "#5C6873"
//    }
    property alias textColor : textColor
    QtObject {
        id: textColor
        property string textColor : "5C6873"
        property string textColor1 : "#00" + textColor
    }
    Component.onCompleted: {
        console.log("textColor1",textColor.textColor1)
    }

}
