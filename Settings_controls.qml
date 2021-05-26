import QtQuick 2.8
import QtQuick.Controls 2.1

Item {
    width: 1920
    height: 1080
    property alias button2Checked: button2.checked
    property alias button1Checked: button1.checked
    property alias buttonChecked: button.checked
    property alias sliderValue: slider.value
    property alias switch6Checked: switch6.checked
    property alias switch5Checked: switch5.checked
    property alias switch4Checked: switch4.checked
    property alias switch3Checked: switch3.checked
    property alias switch2Checked: switch2.checked
    property alias switch1Checked: switch1.checked

    Slider {
                id: slider
                x: 1030
                y: 664
                width: 548
                height: 62
                scale: 1.7
                stepSize: 1
                to: 255
                value: 150

                onValueChanged:
                {
                    _Settting.Lcdlightset(value)
                }
            }

            Switch {
                id: switch1
                x: 736
                y: 130
                width: 62
                height: 41
                text: "dasdad"
                checked: false
                checkable: true
                scale: 3

                onClicked:
                {
                    if (switch1.checked == true)
                    {
                        _Settting.Cameraon()
                    }
                    if (switch1.checked == false)
                    {
                        _Settting.Cameraoff()
                    }
                    
                }
            }

            Switch {
                id: switch2
                x: 1433
                y: 130
                width: 62
                height: 41
                text: "dasdad"
                checked: false
                checkable: true
                scale: 3

                onClicked:
                {
                    if (switch2.checked == true)
                    {
                        _Settting.SSHon()
                    }
                    if (switch2.checked == false)
                    {
                        _Settting.SSHoff()
                    }
                    
                }
            }

            Switch {
                id: switch5
                x: 737
                y: 486
                width: 62
                height: 41
                text: "dasdad"
                checked: false
                checkable: true
                scale: 3

                onClicked:
                {
                    if (switch5.checked == true)
                    {
                        _Settting.I2Con()
                    }
                    if (switch5.checked == false)
                    {
                        _Settting.I2Coff()
                    }
                    
                }
            }

            Switch {
                id: switch4
                x: 1434
                y: 308
                width: 62
                height: 41
                text: "dasdad"
                checked: false
                checkable: true
                scale: 3

                onClicked:
                {
                    if (switch4.checked == true)
                    {
                        _Settting.SPIon()
                    }
                    if (switch4.checked == false)
                    {
                        _Settting.SPIoff()
                    }
                    
                }
            }

            Switch {
                id: switch3
                x: 737
                y: 308
                width: 62
                height: 41
                text: "dasdad"
                checked: false
                checkable: true
                scale: 3

                onClicked:
                {
                    if (switch3.checked == true)
                    {
                        _Settting.VNCon()
                    }
                    if (switch3.checked == false)
                    {
                        _Settting.VNCoff()
                    }
                    
                }
            }

            Switch {
                id: switch6
                x: 1434
                y: 486
                width: 62
                height: 41
                text: "dasdad"
                checked: false
                checkable: true
                scale: 3

                onClicked:
                {
                    if (switch6.checked == true)
                    {
                        _Settting.Serialon()
                    }
                    if (switch6.checked == false)
                    {
                        _Settting.Serialoff()
                    }
                    
                }
            }

            Text {
                id: text1
                x: 381
                y: 112
                text: qsTr("Camera:")
                font.pixelSize: 60
                font.family: "Source Sans Pro"
            }

            Text {
                id: text2
                x: 1131
                y: 112
                text: qsTr("SSH:")
                font.pixelSize: 60
                font.family: "Source Sans Pro"
            }

            Text {
                id: text3
                x: 381
                y: 290
                text: qsTr("VNC:")
                font.pixelSize: 60
                font.family: "Source Sans Pro"
            }

            Text {
                id: text4
                x: 1131
                y: 290
                text: qsTr("SPI:")
                font.pixelSize: 60
                font.family: "Source Sans Pro"
            }

            Text {
                id: text5
                x: 381
                y: 468
                text: qsTr("I2C:")
                font.pixelSize: 60
                font.family: "Source Sans Pro"
            }

            Text {
                id: text6
                x: 1131
                y: 468
                text: qsTr("Serial:")
                font.pixelSize: 60
                font.family: "Source Sans Pro"
            }

            Text {
                id: text7
                x: 381
                y: 656
                text: qsTr("LCD Backlight:")
                font.pixelSize: 60
                font.family: "Source Sans Pro"
            }

            Button {
                id: button
                x: 368
                y: 866
                width: 350
                height: 91
                text: qsTr("SHUTDOWN")
                autoExclusive: false
                flat: false
                scale: 1.1
                font.pointSize: 28
                font.family: "Source Sans Pro"
                checkable: true
                checked: false
                palette {
                    button: "#444260"
                    buttonText: "white"
                }

                onClicked:
                { 
                    _Settting.Shutdown()   
                }
            }

            Button {
                id: button1
                x: 824
                y: 866
                width: 350
                height: 91
                text: qsTr("REBOOT")
                scale: 1.1
                font.pointSize: 28
                font.family: "Source Sans Pro"
                checked: false
                checkable: true
                palette {
                    button: "#444260"
                    buttonText: "white"
                }

                onClicked:
                { 
                    _Settting.Rebooton()   
                }
            }

            Button {
                id: button2
                x: 1279
                y: 866
                width: 350
                height: 91
                text: qsTr("EXIT")
                scale: 1.1
                font.pointSize: 28
                font.family: "Source Sans Pro"
                checked: false
                checkable: true
                palette {
                    button: "#444260"
                    buttonText: "white"
                }

                onClicked:
                { 
                    _Settting.Logout()   
                }
            }
}


/*##^##
Designer {
    D{i:0;height:1080;width:1920}
}
##^##*/
