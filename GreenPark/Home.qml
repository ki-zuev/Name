import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: home
    property alias getStartedbutton: getStartedButton

    GridLayout {
        id: grid
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: home.top
        flow: GridLayout.TopToBottom

        Image {
            id: image
            Layout.preferredHeight: home.height
            Layout.preferredWidth: home.width
            source: "./images/log.png"
        }

        CustomButton {
            id: getStartedButton
            anchors.fill: parent
            buttonColor: "green"
            z: -1
        }
    }
}
