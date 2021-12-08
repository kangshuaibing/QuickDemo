import QtQuick 2.0
import QtQuick.Controls 2.12
import PropertySingleton 1.0
import ColorSingleton 1.0

ScrollBar {
    id: cusTirangleTipBorder
    property bool isSmaller: true
    contentItem: Rectangle {
        implicitWidth: isSmaller ?  PS.scrollBarSize_Smaller : PS.scrollBarSize
        implicitHeight: isSmaller ?  PS.scrollBarSize_Smaller : PS.scrollBarSize
        radius: PS.scrollBarRadius
        color: isSmaller ? PS.scrollBarBackgroundColor : PS.scrollBarBackgroundColor_hovered
        TransArea{
            id: t
            onEntered: {
                isSmaller = false
            }
            onExited: {
                isSmaller = true
            }
        }
    }
}
