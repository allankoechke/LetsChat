import QtQuick
import Qt5Compat.GraphicalEffects

Item {
    id: root
    width: 100
    height: width

    property alias image: img

    Image {
        id: img
        width: root.width
        height: root.width
        fillMode: Image.PreserveAspectCrop
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: mask
        }
        anchors.centerIn: parent
    }

    Rectangle {
        id: mask
        width: root.width
        height: root.width
        radius: width/2
        visible: false
    }
}
