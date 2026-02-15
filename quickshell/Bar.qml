import Quickshell
import QtQuick

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

                ClockWidget {
                    anchors.centerIn: parent
                    color: "#c6d0f5"
                }
            }
        }
    }
}
