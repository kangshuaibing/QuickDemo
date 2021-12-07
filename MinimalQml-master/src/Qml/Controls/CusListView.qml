import QtQuick 2.0
import QtQuick.Controls 2.12
import PropertySingleton 1.0
import ColorSingleton 1.0

ListView {
    id: cusListView

    focus: true
    clip: true
    interactive: false
    snapMode: ListView.SnapToItem


    ScrollBar.horizontal: CusScrollBar {
        id: hbar
        opacity: cusListView.contentWidth > cusListView.width ? 1.0 : 0.0
        visible: opacity > 0
        active: visible
    }

    ScrollBar.vertical: CusScrollBar {
        id: vBar
        opacity: cusListView.contentHeight > cusListView.height ? 1.0 : 0.0
        visible: opacity > 0
        active: visible

    }

    TransArea {
        anchors.fill: parent
        onWheel: {
            //angle
            if (vBar.visible) {
                if (wheel.angleDelta.y > 0) {
                    vBar.decrease()
                } else if (wheel.angleDelta.y < 0) {
                    vBar.increase()
                }
            }
        }
    }

}
