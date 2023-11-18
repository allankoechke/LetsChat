import QtQuick

import '../theme'

Rectangle {
    id: root
    width: Constants.leftMenuBarWidth
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    color: Theme.leftMenuBarColor

    property string activeMenuLabel: 'home'

    // Top Icon Image
    MenuButtonImage {
        id: userProfile
    }

    // Menu Options
    Column {
        id: menuColumn
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
        spacing: 0

        // Home
        MenuButtonIcon {
            menuIcon: '\uf80a'
            buttonSelected: activeMenuLabel==='home'
            onClicked: activeMenuLabel='home'
        }

        // Chat
        MenuButtonIcon {
            menuIcon: '\uf1d8'
            buttonSelected: activeMenuLabel==='chat'
            onClicked: activeMenuLabel='chat'
        }

        // Storage
        MenuButtonIcon {
            bubbleShown: true
            menuIcon: '\uf49a'
            buttonSelected: activeMenuLabel==='drive'
            onClicked: activeMenuLabel='drive'
        }

        // group
        MenuButtonIcon {
            menuIcon: '\uf0c0'
            buttonSelected: activeMenuLabel==='contacts'
            onClicked: activeMenuLabel='contacts'
        }

        // Notification
        MenuButtonIcon {
            bubbleShown: true
            menuIcon: '\uf0f3'
            buttonSelected: activeMenuLabel==='notifications'
            onClicked: activeMenuLabel='notifications'
        }

        // Menus
        MenuButtonIcon {
            menuIcon: '\uf141'
        }
    }

    // Settings Options
    MenuButtonIcon {
        menuIcon: '\uf013'
        anchors.bottom: parent.bottom
    }
}
