import QtQuick

ApplicationFlowForm {
    id: applicationFlow
    state: "Home"
    property string platform: Qt.platform.os
    property string mode: ""

    //button
    function greenpark() {
        applicationFlow.state = "MainPage"
        applicationFlow.oName = "Green Park"
        stack.push(mainpage)
    }
    function greenbussines() {
        applicationFlow.state = "MainPage"
        applicationFlow.oName = "Green bussines"
        stack.push(mainpage)
    }
    function greensolncevo() {
        applicationFlow.state = "MainPage"
        applicationFlow.oName = "Green solncevo"
        stack.push(mainpage)
    }
    //start
    home.getStartedbutton.onClicked: {
        applicationFlow.state = "Select"
        stack.push(select)
    }
    //backButton
    function backButton() {
        if (applicationFlow.state === "MainPage")
        {
            stack.pop()
        }
        else
        {
            stack.pop()
            stack.pop()
        }
        applicationFlow.state = "Select"
    }
    //continueButton
    function continueButton() {
        stack.push(book)
        applicationFlow.state = "Book"
    }
    //function for homepage, numberspage, connectionpage, reviewspage, servicespage, settingspage
    function homeButton() {
        if (applicationFlow.state === "Book")
        {
            stack.pop()
            stack.pop()
            stack.push(mainpage)
            applicationFlow.state = "MainPage"
        }
        else if (applicationFlow.state === "MainPage")
        {
            applicationFlow.state = "MainPage"
        }
        else
        {
            stack.pop()
            stack.push(mainpage)
            applicationFlow.state = "MainPage"
        }
    }
    function numbersButton() {
        if (applicationFlow.state === "Book")
        {
            stack.pop()
            stack.pop()
            stack.push(numberspage)
            applicationFlow.state = "NumbersPage"
        }
        else if (applicationFlow.state === "NumbersPage")
        {
            applicationFlow.state = "NumbersPage"
        }
        else
        {
            stack.pop()
            stack.push(numberspage)
            applicationFlow.state = "NumbersPage"
        }
    }
    function connectionButton() {
        if (applicationFlow.state === "Book")
        {
            stack.pop()
            stack.pop()
            stack.push(connectionpage)
            applicationFlow.state = "ConnectionPage"
        }
        else if (applicationFlow.state === "ConnectionPage")
        {
            applicationFlow.state = "ConnectionPage"
        }
        else
        {
            stack.pop()
            stack.push(connectionpage)
            applicationFlow.state = "ConnectionPage"
        }
    }
    function reviewsButton() {
        if (applicationFlow.state === "Book")
        {
            stack.pop()
            stack.pop()
            stack.push(reviewspage)
            applicationFlow.state = "ReviewsPage"
        }
        else if (applicationFlow.state === "ReviewsPage")
        {
            applicationFlow.state = "ReviewsPage"
        }
        else
        {
            stack.pop()
            stack.push(reviewspage)
            applicationFlow.state = "ReviewsPage"
        }
    }
    function servicesButton() {
        if (applicationFlow.state === "Book")
        {
            stack.pop()
            stack.pop()
            stack.push(servicespage)
            applicationFlow.state = "ServicesPage"
        }
        else if (applicationFlow.state === "ServicesPage")
        {
            applicationFlow.state = "ServicesPage"
        }
        else
        {
            stack.pop()
            stack.push(servicespage)
            applicationFlow.state = "ServicesPage"
        }
    }
    function settingsButton() {
        if (applicationFlow.state === "Book")
        {
            stack.pop()
            stack.pop()
            stack.push(settingspage)
            applicationFlow.state = "SettingsPage"
        }
        else if (applicationFlow.state === "SettingsPage")
        {
            applicationFlow.state = "SettingsPage"
        }
        else
        {
            stack.pop()
            stack.push(settingspage)
            applicationFlow.state = "SettingsPage"
        }
    }
}
