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

            Image {
                id: image
                width: pane.availableWidth
                height: pane.availableHeight/(2*4)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                fillMode: Image.PreserveAspectFit
                source: "./images/house.png"
            }

            Column {
                id: column
                spacing: 40
                width: parent.width
                anchors.top: image.bottom

                Label {
                    id: label1
                    width: parent.width
                    anchors.top: iamge.bottom
                    anchors.margins: 40
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignHCenter
                    color: "black"
                    text: qsTr("Сеть апартаментов Green Park

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
                    text: qsTr("— это выбор тех кто ценит уют, комфорт.
    Для тех кто, кто ценит время и не готов тратить его больше для того, чтобы добраться в любую точку столицы,
    Для тех, кто ищет идеальное сочетание цены и качества.
    Вашего пребывание в столице.
    Что мы предлагаем:
    - Уютные номера для 2-4 человек. Различные формы, в том числе, с антресольным этажом.
    -Новый дом, огороженная территория.
    - В непосредственной близости находится: главный Ботанический сад, Парк Культуры и отдыха «Останкино», музей оптических иллюзий, Останкинская телебашня, музей магии и фокусов, ВДНХ.
    -До ближайшей станции метро » Петровско Разумовская » — 5 минут пешком. В течение 15 минут вы доедете до центра Москвы.
    -Также вблизи находится станция МЦК «Окружная», от неё отходит аэроэкспресс в аэропорт Шереметьево.
    -Все апартаменты расположены на 14 этаже, что обеспечивает прекрасные виды на Москву.

")
                    font.pixelSize: 15
                    anchors.top: label1.bottom
                }

                Label {
                    id: label3
                    width: parent.width
                    wrapMode: Label.Wrap
                    horizontalAlignment: Qt.AlignHCenter
                    color: "black"
                    text: qsTr("Москва, Ботаническая улица, 33Вс1

")
                    font.pixelSize: 19
                    font.weight: Font.Bold
                    anchors.top: label2.bottom
                }

                Label {
                    id: label4
                    width: parent.width
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
                    anchors.top: label3.bottom
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

            // очень важная кнопка не удалять
            // CustomButton {
            //     id: backButton
            //     width: 40
            //     height: 40
            //     anchors.right: parent.right
            //     buttonColor: "black"
            //     onClicked: applicationFlow.backButton()
            // }
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
