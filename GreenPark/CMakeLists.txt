cmake_minimum_required(VERSION 3.16)

project(GreenPark VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appGreenPark
    main.cpp
)

find_package(Qt6 REQUIRED COMPONENTS WebView)
target_link_libraries(appGreenPark PRIVATE Qt6::WebView)

qt_add_qml_module(appGreenPark
    URI GreenPark
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES ApplicationFlow.qml
        QML_FILES ApplicationFlowForm.ui.qml
        QML_FILES Home.qml
        QML_FILES CustomButton.qml
        QML_FILES SelectObject.qml
        QML_FILES Card.qml
        RESOURCES images/bussines.png images/log.png images/park.png images/solncevo.png
        QML_FILES MainPage.qml
        RESOURCES images/house.png
        QML_FILES Book.qml
        QML_FILES ConnectionPage.qml
        QML_FILES NumbersPage.qml
        QML_FILES SettingsPage.qml
        QML_FILES ReviewsPage.qml
        RESOURCES images/mountains.png
        RESOURCES numbers/11.png numbers/12.png
        RESOURCES images/arrowl.png images/arrowr.png
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appGreenPark PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appGreenPark
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appGreenPark
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appGreenPark
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
