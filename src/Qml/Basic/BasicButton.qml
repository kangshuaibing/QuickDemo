import QtQuick 2.0
import QtQuick.Controls 2.12

Button {
    id: cusButton

    property int radius: 0
    property int borderWidth: 1
    property color borderColor: "transparent"
    property color textColor: "transparent"
    property color backgroundColor: "transparent"

    BasicTooltip {
        id: toolTip
        visible: cusButton.hovered && String(text).length
        delay: 50
    }
    contentItem: BasicText {
        text: cusButton.text
        color: cusButton.textColor
    }
    background: Rectangle {
        radius: cusButton.radius
        color: cusButton.backgroundColor
        border.color: cusButton.borderColor
        border.width: cusButton.borderWidth
    }

    MouseArea{

    }
}
