import QtQuick 2.4
import QtQuick.Layouts 1.1
import Material 0.1

import "../actions"

Item {
    height: 56

    function add() {
        if ( textField.text.length > 0 )
        {
            AppActions.add(textField.text);
            textField.text = "";
        }
    }
    function allDone() {
        AppActions.allDone();
        textField.text = "";
    }

    RowLayout {
        anchors.fill: parent

        TextField {
            id: textField
            placeholderText: "New Todo here"
//            floatingLabel: true
            Layout.fillWidth: true
            focus: true
            onAccepted: add();
        }

        Button {
            text: "ADD"
            onClicked: {
                add();
            }
        }

        Button {
            text: "All Done"
            onClicked: {
                allDone();
            }
        }
    }
}

