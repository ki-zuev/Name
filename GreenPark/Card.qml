import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Effects

Column {
    id: root
    property alias button: button
    property string oName: ""

    Rectangle {
        id: cardRectangle
        implicitHeight: applicationFlow.stack.height/4
        implicitWidth: applicationFlow.width/2

        AbstractButton {
            width: parent.width - 5
            height: parent.height - 5
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            id: button
            hoverEnabled: true
            checkable: true
            states: State {
                name: "pressed"; when: button.pressed
                PropertyChanges { target: cardRectangle; scale: 0.9 }
            }

            transitions: Transition {
                NumberAnimation { properties: "scale"; duration: 50; easing.type: Easing.InOutQuad }
            }

            contentItem: Rectangle {
                id: innercardRectangle
                anchors.fill: parent
                radius: 8
                Image {
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectCrop
                        source: if (oName === "Green Park") {"./images/park.png"}
                                else if (oName === "Green bussines") {"./images/bussines.png"}
                                else if (oName === "Green solncevo") {"./images/solncevo.png"}
                    }
                Rectangle {
                    id: outOfDialog
                    width: cardRectangle.width / 1.5
                    height: cardRectangle.height / 5
                    visible: true
                    radius: 8
                    color: "white"
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    Text {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        text: oName
                        color: "black"
                    }
                }
            }
            MultiEffect {
                source: innercardRectangle
                anchors.fill: innercardRectangle
                shadowEnabled: true
                shadowOpacity: 0.5
            }
        }
    }
}
