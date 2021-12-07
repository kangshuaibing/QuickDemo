import QtQuick 2.0
import QtQuick.Controls 2.12
import PropertySingleton 1.0
import ColorSingleton 1.0

Item {
    id: buttonRepeater
    property var modelData: []
    property alias layoutDirection: listView.layoutDirection
    property int iconHeight: 32
    property int iconWidth: 32
    property real btnSpacing: 8

    onModelDataChanged: {
        console.log(onModelDataChanged,JSON.stringify(modelData))
    }

    signal btnClick(var model_type)

    height: iconHeight
    width: modelData.length * (iconWidth + btnSpacing * 2)
    ListView {
        id: listView
        anchors.centerIn: parent
        model: modelData
        height: iconHeight
        width: parent.width
        orientation: ListView.Horizontal

        Rectangle{
            color: "transparent"
            border.width: 1
            anchors.fill: listView
        }

        spacing: btnSpacing
        interactive: false

        delegate: Item {
            width: (buttonRepeater.iconWidth +  btnSpacing )
            height: buttonRepeater.iconHeight
           // visible: btn.visible

//            Button {
//                height: buttonRepeater.iconHeight
//                width: buttonRepeater.iconWidth
//                contentItem: Rectangle{
//                    anchors.fill: parent
//                    color: "blue"
//                }

//                text: d.model_text
//            }

            CusButton {
                id: btn
                property var d: buttonRepeater.modelData[index]

                height: buttonRepeater.iconHeight
                width: buttonRepeater.iconWidth

                //visible: d.model_visible
                bgNormal: d.model_bgNormal
                bgHovered: d.model_bgHovered
                bgPressed: d.model_bgPressed
                bgDisbaled: d.model_disabled
                tipText: d.model_text

                onClicked: {

                     btnClick(d.model_type)
                }
            }
        }

    }

}
