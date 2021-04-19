import QtQuick 2.8
import QtQuick.Studio.Components 1.0
import "backend/Data" as Data

Item {
    id: leds
    width: 835
    height: 481

    property alias o1Visible: o1.visible
    property alias f3Visible: f3.visible
    property alias f2Visible: f2.visible
    property alias f1Visible: f1.visible

    Image {
        id: led_border
        x: 0
        y: 0
        source: "assets/led_border.png"
    }

    Image {
        id: reterminal_pic
        x: 27
        y: 59
        source: "assets/reterminal_pic.png"
    }

    Text {
        id: leds_and_buttons
        x: 32
        y: 30
        width: 179
        height: 23
        color: "#000000"
        text: "LEDs and Buttons"
        font.pixelSize: 21
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Microsoft YaHei"
    }

    Image {
        id: f3
        x: 545
        y: 259
        visible: true
        source: "assets/f3.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: f1
        x: 297
        y: 259
        visible: true
        source: "assets/f1.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: o1
        x: 663
        y: 259
        visible: true
        source: "assets/o.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: f2
        x: 425
        y: 259
        visible: true
        source: "assets/f2.png"
        fillMode: Image.PreserveAspectFit
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.25;height:481;width:835}D{i:1;uuid:"64b52bda42093c5081edbbc8bc1c98c5"}
D{i:2;uuid:"6937a0e887f41b85b209b1f811894848"}D{i:3;uuid:"0a0fe6a6a59b4ff9c1447663c38b2973"}
}
##^##*/

