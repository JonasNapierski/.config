import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

RowLayout {
    anchors.fill: parent
    anchors.margins: 8

    Repeater {
        model: 9

        Text {
            property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
            property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
            text: index + 1
            font.pixelSize: Style.fontNormal
            font.family: Style.fontFamily
            font.bold: true
            color: isActive ? "#0db9d7" : (ws ? Style.fontColor : "#444b6a")

            MouseArea {
                anchors.fill: parent
                onClicked: Hyprland.dispatch("workspace " + (index + 1))
            }
        }
    }

    Item { Layout.fillWidth: true }
}
