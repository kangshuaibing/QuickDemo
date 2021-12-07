import QtQuick 2.0
import QtQuick.Window 2.12

import PropertySingleton 1.0
import ColorSingleton 1.0

import myEnum 1.0
import"../Controls"

Rectangle {
    id: root
    color: PS.themeColor

    Row {
        anchors.left: parent.left
        anchors.top: parent.top

        height: parent.height
        spacing: 4
        Image {
            source: "qrc:/Images/logo/milk.png"
            fillMode: Image.PreserveAspectFit
        }
        Text {
            id: t
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 28
            font.bold: true
            text: "MyQuick"
            color: "#ffffff"
        }
    }
//    Component.onCompleted: {
//        console.log(btnRepeater.width)
//    }

    ButtonRepeater{
        id: btnRepeater
        anchors {
            top: parent.top
            right: parent.right
            bottom: parent.bottom
        }
        Rectangle{
            color: "transparent"
            border.width: 1
            anchors.fill: btnRepeater
        }

        layoutDirection: Qt.RightToLeft
        height: parent.height
        modelData: [{
                model_text: "close",
                model_color: "black",
                model_visible: true,
                model_disabled: false,
                model_bgNormal: "qrc:/Images/Window/close_white.png",
                model_bgHovered: "qrc:/Images/Window/close_gray.png",
                model_bgPressed: "qrc:/Images/Window/close_white.png",
                model_type: MyNamespace.MYENUM_ClOSE
            },{
                model_text: "maximize",
                model_color: "black",
                model_visible: true,
                model_disabled: false,
                model_bgNormal: !mainWindow.isMax ? "qrc:/Images/Window/max_white.png" : "qrc:/Images/Window/normal_white.png",
                model_bgHovered: !mainWindow.isMax ? "qrc:/Images/Window/max_gray.png" : "qrc:/Images/Window/normal_gray.png",
                model_bgPressed: !mainWindow.isMax ? "qrc:/Images/Window/max_white.png" : "qrc:/Images/Window/normal_white.png",
                model_type: !mainWindow.isMax ? MyNamespace.MYENUM_MAX : MyNamespace.MYENUM_NORMAL
            },{
                model_text: "minimize",
                model_visible: true,
                model_disabled: false,
                model_bgNormal: "qrc:/Images/Window/minimal_white.png",
                model_bgHovered: "qrc:/Images/Window/minimal_gray.png",
                model_bgPressed: "qrc:/Images/Window/minimal_white.png",
                model_type: MyNamespace.MYENUM_MIN
            }
        ]

        onBtnClick: {
            switch(model_type)
            {
            case MyNamespace.MYENUM_ClOSE:
                mainWindow.close()
                break;
            case MyNamespace.MYENUM_MAX:
                mainWindow.showMaximized()
                mainWindow.isMax = true
                break;
            case MyNamespace.MYENUM_NORMAL:
                mainWindow.showNormal()
                mainWindow.isMax = false
                break;
            case MyNamespace.MYENUM_MIN:         
                mainWindow.showMinimized()
                break;
            }
        }
    }

}
