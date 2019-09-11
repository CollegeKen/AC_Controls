import QtQuick 2.6
import QtQuick.Controls 2.5

Rectangle {
    width: 640; height: 75
    anchors.horizontalCenter: parent.horizontalCenter
    color: if(nightDay == false) {
               whiteColor
           } else {
               blackColor
           }

    Row {
        anchors.centerIn: parent
        spacing: 100
        IndicatorLight {
            id: stage1indicator
            color: if(control1.first.value < numberGenerator.number1 && control1.second.value > numberGenerator.number1) {
                       greenColor
                   } else {
                       redColor
                   }
        }

        IndicatorLight {
            id: stage2indicator
            color: if(control2.first.value < numberGenerator.number2 && control2.second.value > numberGenerator.number2) {
                       greenColor
                   } else {
                       redColor
                   }
        }

        IndicatorLight {
            id: stage3indicator
            color: if(control3.first.value < numberGenerator.number3 && control3.second.value > numberGenerator.number3) {
                       greenColor
                   } else {
                       redColor
                   }
        }

        IndicatorLight {
            id: stage4indicator
            color: if(control4.first.value < numberGenerator.number4 && control4.second.value > numberGenerator.number4) {
                       greenColor
                   } else {
                       redColor
                   }
        }

        IndicatorLight {
            id: stage5indicator
            color: if(control5.first.value < numberGenerator.number5 && control5.second.value > numberGenerator.number5) {
                       greenColor
                   } else {
                       redColor
                   }
        }
    }
}
