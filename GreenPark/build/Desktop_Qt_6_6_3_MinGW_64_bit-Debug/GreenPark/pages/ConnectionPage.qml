import QtQuick

Item {
    id: con
    property alias backButton: backButton
    CustomButton {
        id: backButton
        width: 40
        height: 40
        anchors.top: parent.top
        anchors.right: parent.right
        buttonColor: "black"
        onClicked: applicationFlow.backButton()
    }
}
