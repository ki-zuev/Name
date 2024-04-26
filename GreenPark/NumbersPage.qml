import QtCore
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: main
    property alias backButton: backButton
    property alias continueButton: continueButton
    property alias homepage: homepage
    property alias numberspage: numberspage
    property alias connectionpage: connectionpage
    property alias reviewspage: reviewspage
    property alias settingspage: settingspage

    Flickable {
        id: flickable
        anchors.fill: parent

        contentHeight: pane.height
        Pane {
            id: pane
            width: flickable.width
            height: flickable.height*4
            background: Rectangle {
                color: "white"
            }

            Column {
                id: column
                spacing: 40
                width: parent.width
                anchors.top: parent.top

                Label {
                    id: label1
                    width: parent.width
                    anchors.top: parent.top
                    anchors.margins: 40
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignHCenter
                    color: "black"
                    text: qsTr("Наши номера

")
                    font.weight: Font.Bold
                    font.pixelSize: 19
                }

                Label {
                    id: label2
                    width: parent.width
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignHCenter
                    color: "black"
                    text: qsTr("Мы предлагаем вам три типа номеров.

")
                    font.pixelSize: 15
                    anchors.top: label1.bottom
                }

                Image {
                    id: image0
                    width: pane.availableWidth - 64
                    height: pane.availableHeight/(2*4)
                    anchors.top: label2.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                    visible: false
                }

                Row {
                    width: 450
                    anchors.top: label2.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10

                    Image {
                        id: leftArrow
                        fillMode: Image.PreserveAspectFit
                        source: "./images/arrowl.png"
                        width: 32
                        height: 32
                        anchors.left: parent.left
                        anchors.verticalCenter: image11.verticalCenter
                        visible: true
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                if (image11.visible) {
                                    image11.visible = false;
                                    image12.visible = true;
                                } else if (image12.visible) {
                                    image12.visible = false;
                                    image11.visible = true;
                                }
                            }
                        }
                    }

                    Image {
                        id: image11
                        width: pane.availableWidth - 64
                        height: pane.availableHeight/(2*4)
                        anchors.top: label2.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        fillMode: Image.PreserveAspectFit
                        source: "./numbers/11.png"
                    }

                    Image {
                        id: image12
                        width: pane.availableWidth - 64
                        height: pane.availableHeight/(2*4)
                        anchors.top: label2.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        fillMode: Image.PreserveAspectFit
                        source: "./numbers/12.png"
                        visible: false
                    }

                    Image {
                        id: rightArrow
                        fillMode: Image.PreserveAspectFit
                        source: "./images/arrowr.png"
                        width: 32
                        height: 32
                        anchors.right: parent.right
                        anchors.verticalCenter: image11.verticalCenter
                        visible: true
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                if (image11.visible) {
                                    image11.visible = false;
                                    image12.visible = true;
                                } else if (image12.visible) {
                                    image12.visible = false;
                                    image11.visible = true;
                                }
                            }
                        }
                    }
                }

                Label {
                    id: label3
                    width: parent.width
                    anchors.top: image0.bottom
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignHCenter
                    color: "black"
                    text: qsTr("Стандарт

")
                    font.pixelSize: 19
                    font.weight: Font.Bold
                }

                Label {
                    id: label4
                    width: parent.width
                    anchors.top: label3.bottom
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignHCenter
                    color: "black"
                    text: qsTr("1-2 человека

")
                    font.pixelSize: 19
                }

                Label {
                    id: label5
                    width: parent.width
                    anchors.top: label4.bottom
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignHCenter
                    color: "black"
                    text: qsTr("от 2 990 р.

")
                    font.pixelSize: 19
                    font.weight: Font.Bold
                }

                Label {
                    id: label6
                    width: parent.width
                    anchors.top: label5.bottom
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignHCenter
                    color: "black"
                    text: qsTr("Размер от 18 кв. м.
Большая двуспальная кровать
Быстрый интернет

")
                    font.pixelSize: 15
                }

                Label {
                    id: labelu
                    width: parent.width
                    anchors.top: label6.bottom
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignHCenter
                    color: "black"
                    text: qsTr("Удобства

")
                    font.pixelSize: 19
                    font.weight: Font.Bold
                }

                Label {
                    id: labelh
                    width: parent.width
                    anchors.top: labelu.bottom
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignHCenter
                    color: "black"
                    text: qsTr("Мы хотим, чтобы каждый мог почувствовать себя свободным в наших апартаментах
Круглосуточная охрана
Охраняемая территория

Wi-fi на всей территории
Бесплатный скоростной интернет доступен на территории всего комплекса

Парковка

Удобное месторасположение

")
                    font.pixelSize: 19
                }

                Label {
                    id: label
                    width: parent.width
                    anchors.top: labelh.bottom
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignHCenter
                    color: "black"
                    text: qsTr("Москва, Ботаническая улица, 33Вс1

")
                    font.pixelSize: 19
                    font.weight: Font.Bold
                }

                Label {
                    id: label0
                    width: parent.width
                    anchors.top: label.bottom
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignHCenter
                    color: "black"
                    text: qsTr("Фактический адрес: Ботаническая улица, 33Вс1, Москва, 127276.
Электронная почта: info@greenpark.moscow.
Телефон: +7 (495) 151 - 54 - 91

Реквизиты:
ИП Рожкова Юлия Сергеевна
ИНН 425300572107


")
                    font.pixelSize: 15
                }
            }
        }
        ScrollIndicator.vertical: ScrollIndicator {}
    }

    ToolBar {
        id: toolbar
        width: parent.width

        Drawer {
            id: drawer
            width: 100
            height: parent.height
            edge: Qt.LeftEdge
            visible: false

            ListView {
                anchors.fill: parent

                CustomButton {
                    id: backButton
                    width: 90
                    height: 50
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: 10
                    buttonColor: "white"
                    buttonText: "Объект"
                    onClicked: {
                        applicationFlow.backButton()
                        drawer.visible = false;
                    }
                }
                CustomButton {
                    id: homepage
                    width: 90
                    height: 50
                    anchors.top: backButton.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: 10
                    buttonColor: "white"
                    buttonText: "Главная"
                    onClicked: {
                        applicationFlow.homeButton();
                        drawer.visible = false;
                    }
                }
                CustomButton {
                    id: numberspage
                    width: 90
                    height: 50
                    anchors.top: homepage.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: 10
                    buttonColor: "white"
                    buttonText: "Номера"
                    onClicked: {
                        applicationFlow.numbersButton();
                        drawer.visible = false;
                    }
                }
                CustomButton {
                    id: connectionpage
                    width: 90
                    height: 50
                    anchors.top: numberspage.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: 10
                    buttonColor: "white"
                    buttonText: "Связь"
                    onClicked: {
                        applicationFlow.connectionButton();
                        drawer.visible = false;
                    }
                }
                CustomButton {
                    id: reviewspage
                    width: 90
                    height: 50
                    anchors.top: connectionpage.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: 10
                    buttonColor: "white"
                    buttonText: "Отзывы"
                    onClicked: {
                        applicationFlow.reviewsButton();
                        drawer.visible = false;
                    }
                }
                CustomButton {
                    id: settingspage
                    width: 90
                    height: 50
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.margins: 10
                    buttonColor: "white"
                    buttonText: "Settings"
                    onClicked: {
                        applicationFlow.settingsButton();
                        drawer.visible = false;
                    }
                }
            }
        }

        RowLayout {
            anchors.fill: parent

            ToolButton {
                text: "X"
                anchors.left: parent.left
                onClicked: {
                    drawer.visible = !drawer.visible
                }
            }

            Label {
                text: "Green Park"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                anchors.centerIn: parent
            }
        }
    }

    CustomButton {
        id: continueButton
        width: 190
        height: 50
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.margins: 10
        buttonColor: "forestgreen"
        buttonText: "Забронировать"
        onClicked: applicationFlow.continueButton()
    }
}
