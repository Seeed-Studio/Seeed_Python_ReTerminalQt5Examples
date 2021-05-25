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
        // transform: Rotation {
        //     origin.x: 600; origin.y:500; angle: 90
        // }
        pushEnter: Transition {
                  PropertyAnimation{
                      property: "opacity"
                      from: 0
                      to: 1
                      duration: 1/100
                  }
              }

        pushExit: Transition {
                  PropertyAnimation{
                      property: "opacity"
                      from: 1
                      to: 0
                      duration: 1/100
                  }
        }

        initialItem: iniITEM

        // Hardware {
        //     id: hardware
        //     x: 0
        //     y: 0
        // }
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
            stackview.push("Page1_Home.ui.qml",StackView.Immediate,true)
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
                stackview.push("Page2_Dashboard.ui.qml",StackView.Immediate,true)
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
                stackview.push("Page4_HMI_Config.ui.qml",StackView.Immediate,true)
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
            stackview.push("Page2_Dashboard.ui.qml",StackView.Immediate,true)
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
            stackview.push("Page3_HW_Monitor.ui.qml",StackView.Immediate,true)
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
            stackview.push("Page4_HMI_Config.ui.qml",StackView.Immediate,true)
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
            stackview.push("Page5_Settings.ui.qml",StackView.Immediate,true)
        }
    }

    // Button {
    //     id: closebutton
    //     x: 1200
    //     y: 0
    //     width: 80
    //     height: 31
    //     palette {
    //         button: "red"
    //         buttonText: "white"
    //     }
    //     opacity: 100
    //     text: "X"
    //     anchors.right: parent.right
    //     anchors.top: parent.top
    //     autoRepeat: false
    //     flat: false
    //     font.family: "Verdana"
    //     onClicked: {
    //         application.close()
    //         }
    // }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
