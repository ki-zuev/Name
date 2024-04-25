import QtQuick
import QtQuick.Controls
import QtQuick.Effects

AbstractButton {
    id: button
    property string buttonText: ""
    property bool showIcon: true
    property string buttonColor: ""
    property double buttonScale: 0.9

    states: State {
        name: "pressed"; when: button.pressed
        PropertyChanges { target: rectangle; scale: buttonScale }
    }

    transitions: Transition {
        NumberAnimation { properties: "scale"; duration: 10; easing.type: Easing.InOutQuad }
    }

    contentItem: Rectangle {
        id: rectangle
        anchors.fill: parent
        color: buttonColor
            Text {
                text: buttonText
                color: if (buttonColor == "white") {"black"} else {"white"}
                font.pixelSize: 18
                font.weight: 700
                rightPadding: 8
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            Image {
                id: icon0
                visible: showIcon
                width: button.width
                height: button.height
                source: if (buttonColor == "green"){"./images/log.png"}
            }
            Image {
                id: icon1
                visible: showIcon
                width: button.width
                height: button.height
                source: if (buttonColor == "black"){"./images/arrow.png"}
            }
    }
}
