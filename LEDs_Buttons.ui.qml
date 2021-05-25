import QtQuick 2.8

Item {
    id: leds_v2
    width: 835
    height: 481
    property alias o_buttonVisible: o_button.visible
    property alias f3_buttonVisible: f3_button.visible
    property alias f2_buttonVisible: f2_button.visible
    property alias f1_buttonVisible: f1_button.visible

    Image {
        id: led_border_v2
        x: 0
        y: 0
        source: "assets/led_border_v2.png"
    }

    Image {
        id: reterninal_pic_v2
        x: 27
        y: 59
        source: "assets/reterninal_pic_v2.png"
    }

    Image {
        id: f1_button
        x: 297
        y: 259
        visible: true
        source: "assets/f1_button.png"
    }

    Image {
        id: f2_button
        x: 425
        y: 259
        source: "assets/f2_button.png"
    }

    Image {
        id: f3_button
        x: 544
        y: 259
        source: "assets/f3_button.png"
    }

    Image {
        id: o_button
        x: 665
        y: 259
        source: "assets/o_button.png"
    }

    Text {
        id: leds_and_buttons_v2
        x: 32
        y: 30
        width: 146
        height: 21
        color: "#000000"
        text: "LEDs and Buttons"
        font.pixelSize: 21
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }
}

/*##^##
Designer {
    D{i:0;height:481;width:835}D{i:1;uuid:"64b52bda42093c5081edbbc8bc1c98c5"}D{i:2;uuid:"484aa77a1f5c1d04d0e7cd89d444adfb"}
D{i:3;uuid:"58a032f224bf7b1daabc828c96ea9cec"}D{i:4;uuid:"f5fc4eaf2061617a8ea97272cb8fa82a"}
D{i:5;uuid:"62c28979fbf23722cf5ca4a3e1f01760"}D{i:6;uuid:"c07d1d20dbb6dd98df39bc88a8a0b371"}
D{i:7;uuid:"0a0fe6a6a59b4ff9c1447663c38b2973"}
}
##^##*/

