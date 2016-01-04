import QtQuick 2.4
import QtQuick.Layouts 1.1
import Material 0.1

import "../actions"

Rectangle {
    id: item
    color: "white"
    height: 48

    property int uid;
    property string title
    property alias checked: checkBox.checked

    RowLayout {
        anchors.fill: parent

        CheckBox {
            id: checkBox
//            text: title
            anchors.verticalCenter: parent.verticalCenter
        }
        Text {
            text: title
            MouseArea {
                anchors.fill: parent
                onClicked: checkBox.checked = !checkBox.checked;
            }
        }


    }

    onCheckedChanged: {
        AppActions.setDone(uid,checked);
    }
}

