import QtQuick 2.6
import QtQuick.Controls 2.5

Rectangle {
    id: background
    width: 640; height: 480
    anchors.fill: parent.fill
    color: if(nightDay == false) {
               whiteColor
           } else {
               blackColor
           }

    Row {
        id: sliderRow

        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 50
        spacing: 100

        CustomRangeSlider {
            id: control1
            Label {
                id: presOP1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.top
                color: if(nightDay == false) {
                           blackColor
                       } else {
                           whiteColor
                       }
                text: numberGenerator.number1
            }
            StageLabel {
                text: "Stage 1"
            }
        }

        CustomRangeSlider {
            id: control2
            Label {
                id: presOP2
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.top
                color: if(nightDay == false) {
                           blackColor
                       } else {
                           whiteColor
                       }
                text: numberGenerator.number2
            }
            StageLabel {
                text: "Stage 2"
            }
        }
        CustomRangeSlider {
            id: control3
            Label {
                id: presOP3
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.top
                color: if(nightDay == false) {
                           blackColor
                       } else {
                           whiteColor
                       }
                text: numberGenerator.number3
            }
            StageLabel {
                text: "Stage 3"
            }
        }
        CustomRangeSlider {
            id: control4
            Label {
                id: presOP4
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.top
                color: if(nightDay == false) {
                           blackColor
                       } else {
                           whiteColor
                       }
                text: numberGenerator.number4
            }
            StageLabel {
                text: "Stage 4"
            }
        }
        CustomRangeSlider {
            id: control5
            Label {
                id: presOP5
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.top
                color: if(nightDay == false) {
                           blackColor
                       } else {
                           whiteColor
                       }
                text: numberGenerator.number5
            }
            StageLabel {
                text: "Stage 5"
            }
        }
    }

    IndicatorLightConfig {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: sliderRow.bottom
    }

    Button {
        id: button
        anchors.bottom: parent.bottom
        anchors.horizontalCenter:  parent.horizontalCenter
        anchors.bottomMargin: 25
        text: qsTr("Night/Day")
        background: Rectangle {
            implicitWidth: 100
            implicitHeight: 25
            color: button.down ? "darkgrey" : "lightgrey"
            border.color: "blue"
        }
        onClicked: {
            nightDay = !nightDay
        }
    }
}
