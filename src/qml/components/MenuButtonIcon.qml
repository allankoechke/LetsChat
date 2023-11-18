import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Universal
import '../theme' as Kg

Item {
    id: root
    width: Kg.Constants.leftMenuBarWidth
    height: 0.8 * Kg.Constants.leftMenuBarWidth
    opacity: hovered ? 0.8 : down ? 0.7 : 1

    Behavior on opacity{ NumberAnimation{ duration: 200 }}

    required property string menuIcon
    property bool buttonSelected: false
    property alias bubbleShown: bubble.visible
    property string buttonColor: Kg.Theme.leftMenuBarColor
    property string buttonHoverColor: Kg.Theme.leftMenuBarColor
    property string buttonDownColor: Kg.Theme.leftMenuBarColor
    // property alias radius: bg.radius

    signal clicked

    property bool hovered: false
    property bool down: false

    QtObject {
        id: internal
        property string menuColor: buttonSelected ? Kg.Theme.menuButtonSelectedColor : Kg.Theme.menuButtonColor
        property string buttonColor: if(root.down) {
                                         if(root.hovered)
                                             return buttonHoverColor
                                         else return buttonHoverColor
                                     }
                                     else {
                                         if(root.hovered)
                                             return buttonHoverColor
                                         else return buttonColor
                                     }
    }

    Item {
        id: bg
        anchors.fill: parent
        // color: internal.buttonColor

        LabelIcon {
            id: ico
            anchors.centerIn: parent
            color: internal.menuColor
            icon: menuIcon
            size: 22

            Rectangle {
                id: bubble
                width: 4; height: 4; radius: height/2
                color: Kg.Theme.bubbleColor
                x: parent.width // -width/2
                y: -height/2
                visible: false
            }
        }
    }

    MouseArea {
        id: ma
        anchors.fill: parent
        hoverEnabled: true
        onPressed: root.down=true
        onReleased: root.down=false
        onEntered: root.hovered=true
        onExited: root.hovered=false
        onClicked: root.clicked()
    }
}
