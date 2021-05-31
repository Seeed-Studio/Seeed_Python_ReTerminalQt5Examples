import QtQuick 2.8
import QtQuick.Controls 2.1

ApplicationWindow {
    id: application
    title: "ReTerminal UI"
    width: 1280
    height: 720
    visible: true
    visibility: "FullScreen"

    property var iniITEM: "Page1_Home.ui.qml"

    StackView {
        id: stackview
        width: 1280
        height: 720

        initialItem: iniITEM
    }

    Button {
        id: button
        x: -21
        y: -22
        width: 172
        height: 181
        opacity: 0
        scale: 0.76
        onClicked: {
            stackview.push("Page1_Home.ui.qml",StackView.Immediate)
            button5.enabled = true
            button6.enabled = true
        }
    }

    Button {
        id: button5
        x: 135
        y: 454
        width: 362
        height: 360
        opacity: 0
        scale: 0.76
        onClicked: {
            stackview.push("Page2_Dashboard.ui.qml",StackView.Immediate)
            button5.enabled = false
            button6.enabled = false

        }
    }

    Button {
        id: button6
        x: 566
        y: 454
        width: 362
        height: 360
        opacity: 0
        scale: 0.76
        onClicked: {
            stackview.push("Page4_HMI_Config.ui.qml",StackView.Immediate)
            button5.enabled = false
            button6.enabled = false
        }
    }

    Button {
        id: button1
        x: -21
        y: 114
        width: 172
        height: 181
        opacity: 0
        scale: 0.76
        onClicked: {
            stackview.push("Page2_Dashboard.ui.qml",StackView.Immediate)
            button5.enabled = false
            button6.enabled = false
        }
    }

    Button {
        id: button2
        x: 0
        y: 246
        width: 172
        height: 212
        opacity: 0
        scale: 0.76
        onClicked: {
            stackview.push("Page3_HW_Monitor.ui.qml",StackView.Immediate)
            button5.enabled = false
            button6.enabled = false
        }
    }

    Button {
        id: button3
        x: 0
        y: 439
        width: 172
        height: 210
        opacity: 0
        scale: 0.76
        onClicked: {
            stackview.push("Page4_HMI_Config.ui.qml",StackView.Immediate)
            button5.enabled = false
            button6.enabled = false
        }
    }

    Button {
        id: button4
        x: -21
        y: 569
        width: 172
        height: 172
        opacity: 0
        scale: 0.76
        onClicked: {
            stackview.push("Page5_Settings.ui.qml",StackView.Immediate)
            button5.enabled = false
            button6.enabled = false
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
