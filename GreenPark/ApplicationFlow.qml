import QtQuick

ApplicationFlowForm {
    id: applicationFlow
    state: "Home"
    property string platform: Qt.platform.os
    property string mode: ""

    //button
    function greenpark() {
        applicationFlow.previousState = "Select"
        applicationFlow.state = "MainPage"
        applicationFlow.oName = "Green Park"
        stack.push(mainpage)
    }
    function greenbussines() {
        applicationFlow.previousState = "Select"
        applicationFlow.state = "MainPage"
        applicationFlow.oName = "Green bussines"
        stack.push(mainpage)
    }
    function greensolncevo() {
        applicationFlow.previousState = "Select"
        applicationFlow.state = "MainPage"
        applicationFlow.oName = "Green solncevo"
        stack.push(mainpage)
    }
    //start
    home.getStartedbutton.onClicked: {
        applicationFlow.previousState = "Home"
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
        //applicationFlow.state = applicationFlow.previousState
        applicationFlow.state = "Select"
    }
    //continueButton
    function continueButton() {
        stack.push(book)
        applicationFlow.previousState = "MainPage"
        applicationFlow.state = "Book"
    }
    //function for homepage, numberspage, connectionpage, reviewspage, servicespage, settingspage
    function homeButton() {
        if (applicationFlow.state === "MainPage")
        {
            //stack.push(homepage)
            applicationFlow.state = "MainPage"
        }
        else
        {
            stack.pop()
            stack.push(homepage)
            applicationFlow.state = "HomePage"
        }
    }
    function numbersButton() {
        if (applicationFlow.state === "MainPage")
        {
            stack.push(numberspage)
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
        if (applicationFlow.state == "MainPage")
        {
            stack.push(connectionpage)
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
        if (applicationFlow.state == "MainPage")
        {
            stack.push(reviewspage)
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
        if (applicationFlow.state == "MainPage")
        {
            stack.push(servicespage)
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
        if (applicationFlow.state == "MainPage")
        {
            stack.push(settingspage)
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
