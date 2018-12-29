import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls.Universal 2.0
import QtQuick.Controls.Material 2.0
import QtPositioning 5.8

Item {
    id: item1
    property alias background: background
    property alias rowLayoutPrCntl: rowLayoutPrCntl

     Rectangle {
            id: background
            x: -18
            y: -8
            width: 680
            height: 480
            color: "#2e2828"
            z: -1
        }

     RowLayout {
        id: rowLayoutSlider
        y: 29
        width: 577
        height: 380
        anchors.left: parent.left
        anchors.leftMargin: 45
        spacing: 10

     RangeSlider {
        id: pressCntl1
        x: 83
        y: 52
        width: 50
        height: 250
        second.value: 0.75
        first.value: 0.25
        orientation: Qt.Vertical
    }
    RangeSlider {
        id: pressCntl2
        x: 178
        y: 52
        width: 50
        height: 250
        orientation: Qt.Vertical
        second.value: 0.75
        first.value: 0.25
    }

    RangeSlider {
        id: pressCntl3
        x: 278
        y: 52
        width: 50
        height: 250
        orientation: Qt.Vertical
        second.value: 0.75
        first.value: 0.25
    }

    RangeSlider {
        id: pressCntl4
        x: 372
        y: 52
        width: 50
        height: 250
        orientation: Qt.Vertical
        second.value: 0.75
        first.value: 0.25
    }

    RangeSlider {
        id: pressCntl5
        x: 464
        y: 52
        width: 50
        height: 250
        orientation: Qt.Vertical
        second.value: 0.75
        first.value: 0.25
    }
}
     RowLayout {
        id: rowLayoutPrCntl
        y: 140
        width: 577
        height: 380
        anchors.left: parent.left
        anchors.leftMargin: 1
        spacing: 10

    Text {
        id: text1
        x: 79
        y: 314
        width: 59
        height: 33
        color: "#ffffff"
        text: qsTr(" Pressure Control 1")
        horizontalAlignment: Text.AlignLeft
        wrapMode: Text.WordWrap
        font.pixelSize: 12
    }

    Text {
        id: text7
        x: 174
        y: 314
        width: 59
        height: 33
        color: "#ffffff"
        text: qsTr(" Pressure Control 2")
        horizontalAlignment: Text.AlignLeft
        wrapMode: Text.WordWrap
        font.pixelSize: 12
    }

    Text {
        id: text8
        x: 274
        y: 314
        width: 59
        height: 33
        color: "#ffffff"
        text: qsTr(" Pressure Control 3")
        horizontalAlignment: Text.AlignLeft
        wrapMode: Text.WordWrap
        font.pixelSize: 12
    }

    Text {
        id: text9
        x: 368
        y: 314
        width: 59
        height: 33
        color: "#ffffff"
        text: qsTr(" Pressure Control 4")
        horizontalAlignment: Text.AlignLeft
        wrapMode: Text.WordWrap
        font.pixelSize: 12
    }

    Text {
        id: text10
        x: 460
        y: 314
        width: 59
        height: 33
        color: "#ffffff"
        text: qsTr(" Pressure Control 5")
        horizontalAlignment: Text.AlignLeft
        wrapMode: Text.WordWrap
        font.pixelSize: 12
    }
    }
    RowLayout {
        id: rowLayout500PSI
        y: -64
        width: 577
        height: 380
        anchors.left: parent.left
        anchors.leftMargin: 73
        spacing: 10

    Text {
         id: text6
         x: 515
         y: 52
         width: 43
         height: 18
         color: "#f4f4f4"
         text: qsTr("500 PSI")
         font.pixelSize: 12
    }

    Text {
       id: text2
       x: 134
       y: 52
       width: 43
       height: 18
       color: "#f4f4f4"
       text: qsTr("500 PSI")
       font.pixelSize: 12
    }
    Text {
        id: text5
        x: 422
        y: 52
        width: 43
        height: 18
        color: "#f4f4f4"
        text: qsTr("500 PSI")
        font.pixelSize: 12
    }
    Text {
        id: text3
        x: 229
        y: 52
        width: 43
        height: 18
        color: "#f4f4f4"
        text: qsTr("500 PSI")
        font.pixelSize: 12
    }

    Text {
        id: text4
        x: 329
        y: 52
        width: 43
        height: 18
        color: "#f4f4f4"
        text: qsTr("500 PSI")
        font.pixelSize: 12
    }
    }
}
