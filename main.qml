import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import Material 0.1
import "./views"

ApplicationWindow {
    width: 480
    height: 640
    visible: true

    id: main

    title: "Material for QtQuick Demo"


    theme {
        primaryColor: Palette.colors["blue"]["500"]
        primaryDarkColor: Palette.colors["blue"]["700"]
        accentColor: Palette.colors["red"]["A200"]
        tabHighlightColor: "white"
    }

    ColumnLayout {
        anchors.fill: parent
        anchors.leftMargin: 16
        anchors.rightMargin: 16

        Header {
            Layout.fillWidth: true
            Layout.fillHeight: false
        }

        TodoList {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        Footer {
            Layout.fillWidth: true
            Layout.fillHeight: false
        }
    }
}

