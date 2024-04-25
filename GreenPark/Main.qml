import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 400
    height: 650
    title: qsTr("GreenPark")

    ApplicationFlow {
        width: parent.width
        height: parent.height
        mode: (Screen.height > Screen.width) ? "portrait" : "landscape"
    }
}
