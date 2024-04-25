import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Effects

Item {
    id: root
    property alias greenparkButton: greenpark.button
    property alias greenbussinesButton: greenbussines.button
    property alias greensolncevoButton: greensolncevo.button
    property alias cards: cards
    property alias greenpark: greenpark
    property alias greenbussines: greenbussines
    property alias greensolncevo: greensolncevo

    //Object
    Flickable {
        id: flickable
        anchors.fill: parent

        contentHeight: pane.height
        Pane {
            id: pane
            width: flickable.width
            height: flickable.height * 1.5
            background: Rectangle {
                    color: "white"
            }
            Column {
                id: cards
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top

                Label {
                    id: label
                    anchors.left: parent.left
                    anchors.right: parent.right
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignHCenter
                    text: qsTr("Выберите объект")
                    font.pixelSize: 19
                }

                Card {
                    id: greenpark
                    anchors.horizontalCenter: label.horizontalCenter
                    oName: "Green Park"
                    button.onClicked: applicationFlow.greenpark()
                }
                Card {
                    id: greenbussines
                    anchors.horizontalCenter: label.horizontalCenter
                    oName: "Green bussines"
                    button.onClicked: applicationFlow.greenbussines()
                }
                Card {
                    id: greensolncevo
                    anchors.horizontalCenter: label.horizontalCenter
                    oName: "Green solncevo"
                    button.onClicked: applicationFlow.greensolncevo()
                }
            }
        }
        ScrollIndicator.vertical: ScrollIndicator {}
    }
}
