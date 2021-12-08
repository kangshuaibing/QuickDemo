import QtQuick 2.0
import QtQuick.Controls 2.12
import PropertySingleton 1.0
import ColorSingleton 1.0

Text {
    verticalAlignment: Text.AlignVCenter
    horizontalAlignment: Text.AlignHCenter
    font.family: PS.fontFamily
    font.pixelSize: PS.fontPixel
    elide: Text.ElideRight
    color: PS.textColor
}
