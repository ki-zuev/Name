import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {
    id: root
    //property string previousState: ""
    property string oName: ""
    property alias home: home
    property alias select: select
    property alias mainpage: mainpage
    property alias book: book
    property alias stack: stack

    property alias numberspage: numberspage
    property alias connectionpage: connectionpage
    property alias reviewspage: reviewspage
    property alias servicespage: servicespage
    property alias settingspage: settingspage

    StackView {
        id: stack
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        initialItem: Home {
            id: home
            visible: true
            state: applicationFlow.mode
        }
        pushEnter: Transition {
            PropertyAnimation {
                property: "x"
                from: stack.width
                to: 0
                duration: 400
            }
        }
        //! [Stack view]
        pushExit: Transition {
            PropertyAnimation {
                property: "x"
                from: 0
                to: -stack.width
                duration: 400
            }
        }
        popEnter: Transition {
            PropertyAnimation {
                property: "x"
                from: -stack.width
                to: 0
                duration: 400
            }
        }
        popExit: Transition {
            PropertyAnimation {
                property: "x"
                from: 0
                to: stack.width
                duration: 400
            }
        }
    }
    Component {
        id: select
        SelectObject {
            visible: true
            state: applicationFlow.mode
        }
    }
    Component {
        id: mainpage
        MainPage {
            state: applicationFlow.mode
        }
    }
    Component {
        id: book
        Book {
            state: applicationFlow.mode
        }
    }

    Component {
        id: numberspage
        NumbersPage {
            state: applicationFlow.mode
        }
    }
    Component {
        id: connectionpage
        ConnectionPage {
            state: applicationFlow.mode
        }
    }
    Component {
        id: reviewspage
        ReviewsPage {
            state: applicationFlow.mode
        }
    }
    Component {
        id: servicespage
        ServicesPage {
            state: applicationFlow.mode
        }
    }
    Component {
        id: settingspage
        SettingsPage {
            state: applicationFlow.mode
        }
    }
}
