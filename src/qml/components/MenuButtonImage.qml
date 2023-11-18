import QtQuick
import '../theme' as KG

Item {
    id: root
    width: KG.Constants.leftMenuBarWidth
    height: width
    anchors.left: parent.left
    anchors.top: parent.top

    signal clicked

    CircularImage {
        image {
            source: 'qrc:/LetsChat/src/assets/imgs/user.png'
        }

        width: 0.6 * parent.width
        anchors.centerIn: parent

        Rectangle {
            width: 12; height: 12
            radius: width/2
            color: KG.Theme.bubbleColor
            border.width: 3
            border.color: KG.Theme.leftMenuBarColor

            property real vh: parent.radius*0.7071 // cos(45) * radius

            x: parent.width-vh-radius
            y: parent.height-vh-radius
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
