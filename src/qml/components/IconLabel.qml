import QtQuick.Controls

Label {
    property string icon: ''
    property real size: 15

    text: icon
    color: '#444'
    font.pixelSize: size
    font.family: fontAwesomeFontLoader.name
}
