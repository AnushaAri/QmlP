import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    width: 150
    height: 150
    color: "#00000000"
    title: "example"
    opacity: 1
    visible: true

    MainForm {
        width: 150
        height: 150
        color: "#991860"
        anchors.fill: parent
        opacity: 1
        border.width: 3
        border.color: "#b51dad"
        mouseArea.onClicked: {
            Qt.quit();
        }
    }

    Rectangle {
        id: rectangle1
        width: 150
        height: 150
        color: "#5bde4f"
        scale: 1
        transformOrigin: Item.Center
        anchors.fill: parent
        opacity: 0.5

        MouseArea {
            id: mouseArea1
            anchors.fill: parent
            opacity: 0
        }
    }

    Flickable {
        id: flickable1
        boundsBehavior: Flickable.StopAtBounds
        flickableDirection: Flickable.VerticalFlick
        anchors.fill: parent
    }
}

