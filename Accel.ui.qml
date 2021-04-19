import QtQuick 2.8

Item {
    id: accel
    width: 850
    height: 490

    Image {
        id: rect2
        x: 1
        y: 1
        source: "assets/rect2.png"
    }

    Text {
        id: axis_accelerometer
        x: 43
        y: 40
        width: 229
        height: 28
        color: "#000000"
        text: "3-Axis Accelerometer"
        font.pixelSize: 21
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget
        x: 67
        y: 393
        width: 40
        height: 20
        color: "#000000"
        text: "4,000"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: s1
        x: 395
        y: 417
        width: 36
        height: 18
        color: "#000000"
        text: "-4.0s"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: s2
        x: 294
        y: 417
        width: 36
        height: 18
        color: "#000000"
        text: "-5.0s"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: s3
        x: 192
        y: 417
        width: 36
        height: 18
        color: "#000000"
        text: "-6.0s"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: s4
        x: 496
        y: 417
        width: 36
        height: 18
        color: "#000000"
        text: "-3.0s"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: s5
        x: 597
        y: 417
        width: 36
        height: 18
        color: "#000000"
        text: "-2.0s"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: s6
        x: 698
        y: 417
        width: 36
        height: 18
        color: "#000000"
        text: "-1.0s"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: s7
        x: 780
        y: 417
        width: 30
        height: 18
        color: "#000000"
        text: "0.0s"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget1
        x: 66
        y: 327
        width: 42
        height: 20
        color: "#000000"
        text: "6,000"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget2
        x: 66
        y: 261
        width: 42
        height: 20
        color: "#000000"
        text: "8,000"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget3
        x: 66
        y: 194
        width: 50
        height: 20
        color: "#000000"
        text: "10,000"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget4
        x: 66
        y: 128
        width: 50
        height: 20
        color: "#000000"
        text: "12,000"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Image {
        id: rect1
        x: 114
        y: 136
        source: "assets/rect1.png"
    }

    Image {
        id: line_1
        x: 114
        y: 205
        source: "assets/line_1.png"
    }

    Image {
        id: line_1_copy
        x: 114
        y: 270
        source: "assets/line_1_copy.png"
    }

    Image {
        id: line_2
        x: 207
        y: 136
        source: "assets/line_2.png"
    }

    Image {
        id: line_2_copy
        x: 308
        y: 138
        source: "assets/line_2_copy.png"
    }

    Image {
        id: line_2_copy_2
        x: 410
        y: 138
        source: "assets/line_2_copy_2.png"
    }

    Image {
        id: line_2_copy_3
        x: 512
        y: 137
        source: "assets/line_2_copy_3.png"
    }

    Image {
        id: line_2_copy_4
        x: 612
        y: 136
        source: "assets/line_2_copy_4.png"
    }

    Image {
        id: line_2_copy_5
        x: 707
        y: 136
        source: "assets/line_2_copy_5.png"
    }

    Image {
        id: line_1_copy_2
        x: 114
        y: 336
        source: "assets/line_1_copy_2.png"
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.33;height:490;width:850}D{i:1;uuid:"aaf6bc7143a0d57cda825f31f73a8f92"}
D{i:2;uuid:"1be122764b3ed4fb238e6037e603ea9d"}D{i:3;uuid:"c2c4a1d02ffacb6434a59483f5c093cc"}
D{i:4;uuid:"124edb6cdbeb845a7ab08cbd17855fe8"}D{i:5;uuid:"58e4c02e89c005ba558d7ebc4ac0f138"}
D{i:6;uuid:"ff31bc43b1515429b877f798f552ee4a"}D{i:7;uuid:"63cd90e4bde496a285838f6967d393b2"}
D{i:8;uuid:"93493948629e32af682c30a9834d8d95"}D{i:9;uuid:"190bdb98d4e0d05ada17af2a4b533b2d"}
D{i:10;uuid:"742a7fb688b48b5bc9e442f6cbd16d5f"}D{i:11;uuid:"9f58718a57be83af4eb71cb8c17cbdbd"}
D{i:12;uuid:"c403bc59a5db8fe205317414da9564e9"}D{i:13;uuid:"dd1f1bc9b5610764d234d0da72c7d0b3"}
D{i:14;uuid:"733d541d5a0313d18cca3ca6296a29c0"}D{i:15;uuid:"5add28f5b99fe9d91c08dd3bf0ea2b1a"}
D{i:16;uuid:"b75cf8f6e8999209888544378c44957a"}D{i:17;uuid:"cefcaa36665ed608343540d9c5818768"}
D{i:18;uuid:"60c39074a1dcf7c5d975e6eb98fa52c8"}D{i:19;uuid:"3bd29cab1c3693315a5188b968cb15a5"}
D{i:20;uuid:"588cc0d6e401199708189fcce9a8eefb"}D{i:21;uuid:"7a28c60837cc27454278daa4321f7f28"}
D{i:22;uuid:"8ec9e94e053896b46c99a977955e1ec2"}D{i:23;uuid:"21b2e44d792dbe381b389352fe7523af"}
D{i:24;uuid:"9465516a2f46af1a89f0d99b0fe594b7"}
}
##^##*/

