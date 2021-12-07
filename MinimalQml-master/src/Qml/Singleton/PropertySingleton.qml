pragma Singleton

import QtQuick 2.0

Item {
    property string myname: "value"

    property string fontFamily: "微软雅黑"
    property int fontPixel: 14

    property var defaultwidth: 1920
    property var defaultHeight: 1080
    property int fixedHeight: 30

    property int scrollBarRadius: 2
    property int scrollBarMinLen: 40
    property int scrollBarSize: 10
    property int scrollBarSize_Smaller: 5
    property int tipTextPixel: 12

    property var scale: {
        var temp
        temp = Math.min(defaultwidth / 1920, defaultHeight / 1080)
        console.log(defaultwidth, defaultHeight, temp)
        return temp
    };

    property var themeColor: "#ec4141"
    property var backgroundColor: "#ffffff"
    property var textColor: "#282828"

    property var tipBackgroundColor: "#ffffff"
    property var tipBorderColor: "#767676"

    property var scrollBarBackgroundColor: "#e0e0e0"
    property var scrollBarBackgroundColor_hovered: "#cfcfd1"

    property color controlColor
    property color controlColor_hovered: Qt.darker(themeColor, 1.2)
    property color controlColor_pressed: Qt.darker(themeColor, 1.4)
    property color controlColor_disabled: Qt.lighter(controlColor, 2.0)
    property color controlBorderColor_disabled: controlColor_disabled

    property color controlBorderColor_hovered: Qt.darker(themeColor, 1.2)
    property color controlBorderColor_pressed: Qt.darker(themeColor, 1.4)

    property color line: "#007AFE"
    property color lineColor: "#D8D8D8"
    property color lineColor2: "#5C6873"

    //property color textColor: "#d0d0d0"
}
