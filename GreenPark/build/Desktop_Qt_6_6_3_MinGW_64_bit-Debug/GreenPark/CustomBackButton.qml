import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

// Item {
//     id: root
//     property alias backButton: backButton
AbstractButton {
        id: backButton
        background: null
        //flat: true
        width: 40
        height: 40
        //onClicked: applicationFlow.backButton()

        contentItem: Image {
            id: buttonImage
            source: "./images/arrow.png"
        }

        states: [
            State {
                name: "pressed"
                when: backButton.pressed
                PropertyChanges { target: buttonImage; scale: 1.1 }
            }
        ]

        transitions: Transition {
            NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }
        }
    }
//}
