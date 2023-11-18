cmake_minimum_required(VERSION 3.16)

project(LetsChat VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appLetsChat
    src/cpp/main.cpp
)

qt_add_qml_module(appLetsChat
    URI LetsChat
    VERSION 1.0
    QML_FILES src/qml/Main.qml
    QML_FILES src/qml/theme/Constants.qml
    QML_FILES src/qml/theme/Theme.qml
    RESOURCES src/qml/theme/qmldir
    RESOURCES src/assets/fonts/fontawesome.otf
    QML_FILES src/qml/components/IconLabel.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appLetsChat PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appLetsChat
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appLetsChat
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appLetsChat
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
