import QtQuick 2.0
import QtQuick.Controls 2.12

import PropertySingleton 1.0
import ColorSingleton 1.0
import "../Controls"
import "../Basic"
Item {
    id: leftItem

    signal loadContent(string path)
    signal loadHome

    Rectangle {
        id: home
        width: parent.width
        height: 24
        color: "black"
        opacity: 0.8
        anchors {
            top: parent.top
        }
        visible: false
        //text: qsTr("Home")
    }

    CusListView {
        id: listView
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }

        width: parent.width

        model: contentModel

        currentIndex: -1
        section.property: "group"
        section.delegate: Item {
            width: listView.width
            height: 30
            CusButton {
                id: sectionBtn
                property bool isOpened: true

                BasicText {
                       x: 0
                       text: qsTr(section)
                       color: PS.textColor
                       horizontalAlignment: Text.AlignLeft
                   }
                anchors {
                    left: parent.left
                }
                width: parent.width
                onClicked: {
                    isOpened = !isOpened
                    contentModel.updateSection(section, isOpened)
                }
            }
        }

        delegate: Rectangle {
            width: listView.width
            height: visible ? 40 : 0
            visible: model.visible && model.groupOpen
            CusButton {
                id: btn
                text: qsTr(model.name)
                anchors {
                    left: parent.left
                    leftMargin: 25
                }
                width: parent.width
                onClicked: {
                    listView.currentIndex = index
                    loadContent(model.source)
                }
                contentItem: Item {
                    width: btn.width
                    height: btn.height
                    BasicText {
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignLeft
                        text: btn.text
                        color: PS.textColor
                    }
                }
            }
        }
    }

    ContentModel{
        id: contentModel
    }

}
