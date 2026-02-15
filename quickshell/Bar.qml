import Quickshell
import QtQuick
import "."

Scope {
    Variants {
        model: Quickshell.screens;

        Component {
            PanelWindow {
                required property var modelData

                screen: modelData
                anchors {
                    top: true
                    left: true
                    right: true
                }

                implicitHeight: 45
                color: Qt.rgba(0,0,0,0.32)

                WorkspaceWidget { }
                ClockWidget {
                    anchors.centerIn: parent
                    color: Style.fontColor
                    font.pixelSize: Style.fontNormal
                    font.family: Style.fontFamily
                    font.weight: 500
                }
            }
        }
    }
}
