pragma Singleton

import QtQuick 2.0

Item {
    id: riit
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
        property string normal: "#5C6873"
        property color light: "#5C6873"
    }
    Component.onCompleted: {
        console.log("normal",textColor.normal)
    }

}
