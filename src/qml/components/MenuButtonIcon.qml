import QtQuick
import QtQuick.Controls
import '../theme'

Button {
    id: root
    implicitWidth: Constants.leftMenuBarWidth
    implicitHeight: Constants.leftMenuBarWidth

    property alias iconLabel: ico.icon
    property string buttonColor: 'transparent'
    property string buttonHoverColor: 'grey'
    property string buttonDownColor: ''

    QtObject {
        id: internal
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

    background: Rectangle {
        id: bg
        color: internal.buttonColor

        IconLabel {
            id: ico
        }
    }

}
