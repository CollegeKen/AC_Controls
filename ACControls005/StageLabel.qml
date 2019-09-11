import QtQuick 2.6
import QtQuick.Controls 2.5

Label {
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.bottom: parent.top
    anchors.bottomMargin: 25
    color: if(nightDay == false) {
               blackColor
           } else {
               whiteColor
           }
}
