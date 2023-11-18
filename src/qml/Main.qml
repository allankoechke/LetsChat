import QtQuick
import QtQuick.Window
import 'theme'
import 'components'

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Let'sChat")
    color: Theme.backgroundColor

    property alias fontAwesomeFontLoader: fontAwesomeFontLoader

    LeftMenuBar {

    }

    FontLoader {
        id: fontAwesomeFontLoader
        source: 'qrc:/LetsChat/src/assets/fonts/fontawesome.otf'
    }
}
