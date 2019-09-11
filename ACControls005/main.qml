import QtQuick 2.6
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("AC Controls")

    property color blackColor: "black"
    property color whiteColor: "white"
    property color redColor: "red"
    property color greenColor: "green"
    property bool nightDay: false
    property bool stage1: false
    property bool stage2: false
    property bool stage3: false
    property bool stage4: false
    property bool stage5: false
    property var stage1val: 45
    property var stage2val: 45
    property var stage3val: 45
    property var stage4val: 45
    property var stage5val: 45

    SliderConfig {}
}
