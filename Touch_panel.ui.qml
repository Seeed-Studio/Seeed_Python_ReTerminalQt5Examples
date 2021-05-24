import QtQuick 2.8

Item {
    id: touch_panel_123
    width: 835
    height: 481
    property alias circle5Scale: circle5.scale
    property alias circle4Scale: circle4.scale
    property alias circle3Scale: circle3.scale
    property alias circle2Scale: circle2.scale
    property alias circle1Scale: circle1.scale
    property alias circle5Visible: circle5.visible
    property alias circle4Visible: circle4.visible
    property alias circle3Visible: circle3.visible
    property alias circle2Visible: circle2.visible
    property alias circle1Visible: circle1.visible
    property alias circle5Y: circle5.y
    property alias circle5X: circle5.x
    property alias circle4Y: circle4.y
    property alias circle4X: circle4.x
    property alias circle3Y: circle3.y
    property alias circle3X: circle3.x
    property alias circle2Y: circle2.y
    property alias circle2X: circle2.x
    property alias circle1Y: circle1.y
    property alias circle1X: circle1.x
    Image {
        id: touch_border
        x: 0
        y: 0
        source: "assets/touch_border.png"


        Rectangle {
            id: rectangle
            x: 97
            y: 69
            width: 680
            height: 390
            opacity: 1
            color: "#f9f9f9"
            border.color: "#acacac"
            border.width: 2

            Rectangle {
                id: circle1
                x: 0
                y: 0
                width: 24
                height: 24
                color: "#e4b9b9"
                radius: 100
                border.color: "#d73d3d"
                transformOrigin: Item.Center
            }

            Rectangle {
                id: circle2
                x: 91
                y: 60
                width: 24
                height: 24
                color: "#b9baf0"
                radius: 100
                border.color: "#1c40eb"
                transformOrigin: Item.Center
            }

            Rectangle {
                id: circle3
                x: 220
                y: 32
                width: 24
                height: 24
                color: "#e1e0af"
                radius: 100
                border.color: "#cd9015"
                transformOrigin: Item.Center
            }

            Rectangle {
                id: circle4
                x: 267
                y: 150
                width: 24
                height: 24
                color: "#c3eec5"
                radius: 100
                border.color: "#106227"
                transformOrigin: Item.Center
            }

            Rectangle {
                id: circle5
                x: 363
                y: 102
                width: 24
                height: 24
                color: "#efddbe"
                radius: 100
                border.color: "#c0a41d"
                transformOrigin: Item.Center
            }
        }
    }

    Text {
        id: touch_panel
        x: 45
        y: 25
        width: 128
        height: 26
        color: "#000000"
        text: "Touch Panel"
        font.pixelSize: 21
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Microsoft YaHei"
    }
}

/*##^##
Designer {
    D{i:0;height:481;width:835}D{i:1;uuid:"f4f6d6b59c6d43eba80dfe6225b74ee7"}D{i:2;uuid:"341dd9e6d422d3af13b56aa034c3fb0e"}
}
##^##*/

