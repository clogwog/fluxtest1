import QtQuick 2.4
import QtQuick.Layouts 1.1
import Material 0.1
import "../actions"

Item {
    height: 48


    CheckBox {
        checked: false
        text: "Show Completed";
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter

        onCheckedChanged: {
            AppActions.showCompleted(checked);
        }
    }

}

