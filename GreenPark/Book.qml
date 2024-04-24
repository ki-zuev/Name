import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Item {
    id: books
    property alias backButton: backButton
    property alias findButton: findButton

    property var model: {
            startDate: ""
            endDate: ""
            guests: ""
            promoCode: ""
        }

    Flickable {
        id: flickable
        anchors.fill: parent

        contentHeight: pane.height
        Pane {
            id: pane
            width: flickable.width
            height: flickable.height*1.5
            background: Rectangle {
                anchors.fill: parent
                color: "white"
            }

            Column {
                id: column
                spacing: 40
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top

                TextField {
                    id: dateField0
                    width: 190
                    height: 50
                    anchors.horizontalCenter: column.horizontalCenter
                    anchors.margins: 10
                    placeholderText: "Заезд"
                    readOnly: true
                    verticalAlignment: TextInput.AlignVCenter

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            datePicker.open()
                        }
                    }

                    onTextChanged: {
                        model.startDate = text;
                    }
                }

                TextField {
                    id: dateField1
                    width: 190
                    height: 50
                    anchors.horizontalCenter: column.horizontalCenter
                    anchors.margins: 10
                    placeholderText: "Выезд"
                    readOnly: true
                    verticalAlignment: TextInput.AlignVCenter

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            datePicker.open()
                        }
                    }

                    onTextChanged: {
                        model.endDate = text;
                    }
                }

                TextField {
                    id: guestField
                    width: 190
                    height: 50
                    anchors.horizontalCenter: column.horizontalCenter
                    anchors.margins: 10
                    placeholderText: "Количество гостей"
                    readOnly: true
                    verticalAlignment: TextInput.AlignVCenter

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            guestPopup.open()
                        }
                    }

                    onTextChanged: {
                        model.guests = text;
                    }
                }

                TextField {
                    id: code
                    width: 190
                    height: 50
                    anchors.horizontalCenter: column.horizontalCenter
                    anchors.margins: 10
                    placeholderText: "Промокод"
                    verticalAlignment: TextInput.AlignVCenter

                    onTextChanged: {
                        model.promoCode = text;
                        // console.log("Текст изменился на:", text);
                    }
                }

                Popup {
                    id: datePicker
                    width: 400
                    height: 400
                    modal: true
                    focus: true
                    anchors.centerIn: parent
                }

                Popup {
                    id: guestPopup
                    width: 400
                    height: 400
                    modal: true
                    focus: true
                    anchors.centerIn: parent
                    Column {
                        anchors.fill: parent

                        Row {
                            anchors.horizontalCenter: parent.horizontalCenter

                            TextField {
                                id: guests
                                placeholderText: "Взрослых"
                                width: 50
                            }

                            TextField {
                                id: child
                                placeholderText: "Добавить ребенка"
                                width: 50
                                validator: IntValidator { bottom: 0; top: 17 }
                            }
                        }

                        Button {
                            text: "Применить"
                            anchors.horizontalCenter: parent.horizontalCenter
                            onClicked: {
                                var guestStr = parseInt(guests.text) + parseInt(child.text);
                                guestField.text = guestStr;
                                guestPopup.close();
                            }
                        }
                    }
                }

                CustomButton {
                    id: findButton
                    width: 190
                    height: 50
                    anchors.horizontalCenter: column.horizontalCenter
                    anchors.margins: 10
                    buttonColor: "forestgreen"
                    buttonText: "Найти"
                    onClicked: applicationFlow.backButton()
                }
            }
        }
        ScrollIndicator.vertical: ScrollIndicator {}
    }

    CustomButton {
        id: backButton
        width: 40
        height: 40
        anchors.right: parent.right
        buttonColor: "black"
        onClicked: applicationFlow.backButton()
    }
}
