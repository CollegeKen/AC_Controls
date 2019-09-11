import QtQuick 2.6
import QtQuick.Controls 2.5

RangeSlider {
    id: control
    to: 450
    first.value: 45
    second.value: 350
    orientation: Qt.Vertical

    background: Rectangle {
        x: control.leftPadding + control.availableWidth / 2 - width / 2
        y: control.topPadding
        implicitWidth: 6
        implicitHeight: 300
        width: implicitWidth
        height: control.availableHeight
        radius: 2
        color: "red"

        Rectangle {
            y: control.second.visualPosition * parent.height
            width: parent.width
            height: control.first.visualPosition * parent.height - y
            color: "lightgreen"
            radius: 2
        }
    }

    first.handle: Rectangle {
        x: control.leftPadding + control.availableWidth / 2 - width / 2
        y: control.topPadding + first.visualPosition * (control.availableHeight - height)
        implicitWidth: 26
        implicitHeight: 26
        radius: 10
        color: first.pressed ? "blue" : "lightblue"
        border.color: "black"
    }

    second.handle: Rectangle {
        x: control.leftPadding + control.availableWidth / 2 - width / 2
        y: control.topPadding + second.visualPosition * (control.availableHeight - height)
        implicitWidth: 26
        implicitHeight: 26
        radius: 10
        color: second.pressed ? "red" : "pink"
        border.color: "black"
    }
}
