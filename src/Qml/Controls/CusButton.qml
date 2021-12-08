import QtQuick 2.0
import QtQuick.Controls 2.12
import PropertySingleton 1.0
import ColorSingleton 1.0

Button {
    id: cusButton
    height: PS.fixedHeight
    width: PS.fixedHeight

    property alias tipText: toolTip.text
    property alias tipItem: toolTip
    property alias tipVisible: toolTip.visible
    property alias tipDelay: toolTip.delay
    property alias tipTimeout: toolTip.timeout
    property bool selected: false
    property string bgNormal
    property string bgHovered
    property string bgPressed
    property string bgDisbaled

    property string bgImageUrl: {
        if(!cusButton.enabled){
            return bgDisbaled
        }else if(cusButton.pressed){
            return bgPressed
        }else if(cusButton.hovered){
            return bgHovered
        }else {
            return bgNormal
        }
    }

    background: Item {
        width: cusButton.width
        height: cusButton.height

        Image {
            id: bgImage
            source: bgImageUrl
            width: sourceSize.width
            height: sourceSize.height
        }
    }

    ToolTip {
        id: toolTip
        visible: cusButton.hovered && String(text).length
        delay: 50
    }


    TransArea {

    }
}
