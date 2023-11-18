import QtQuick
import QtQuick.Window

import 'theme'

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Let'sChat")
    color: Theme.backgroundColor

    property alias fontAwesomeFontLoader: fontAwesomeFontLoader

    Rectangle {
        width: Constants.leftMenuBarWidth
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        color: Theme.leftMenuBarColor
    }

    FontLoader {
        id: fontAwesomeFontLoader
        source: 'qrc:/LetsChat/src/assets/fonts/fontawesome.otf'
    }
}
