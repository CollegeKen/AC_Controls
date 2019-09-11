import QtQuick 2.6
import QtQuick.Controls 2.5

Component {
    Rectangle {
        id: root
        property alias text: label.text
        signal clicked
        width: 100; height: 25
        color: "black"
        border.color: "black"
        Text {
            id: label
            anchors.centerIn: parent
            text: "Night/Day"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                nightDay = !nightDay
            }
            onPressed: root.color = Qt.lighter(color, 1.1)
            onReleased: root.color = Qt.darker(color, 1.1)
        }
    }
}

