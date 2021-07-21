import QtQuick 2.8
import QtQuick.Studio.Components 1.0
import QtQuick.Timeline 1.0

Item {
    id: cpu_usage
    width: 544
    height: 316
    property alias displaycputemp: timeline.currentFrame
    property alias tempvalue: gadget.text

    Image {
        id: rectangle_8
        x: 0
        y: 1
        source: "assets/rectangle_8.png"
    }

    Text {
        id: gadget
        x: 214
        y: 194
        width: 66
        height: 38
        color: "#000000"
        text: "50"
        font.pixelSize: 38
        horizontalAlignment: Text.AlignHCenter
        font.family: "Myriad Pro"
        font.styleName: "Bold"
    }

    Text {
        id: gadget12
        x: 279
        y: 194
        width: 33
        height: 38
        color: "#000000"
        text: "°C"
        font.pixelSize: 38
        horizontalAlignment: Text.AlignLeft
        font.family: "Myriad Pro"
        font.styleName: "Bold"
    }

    Text {
        id: cpu_usage1
        x: 40
        y: 17
        width: 180
        height: 25
        color: "#000000"
        text: "CPU Temperature"
        font.pixelSize: 21
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget1
        x: 71
        y: 253
        width: 9
        height: 14
        color: "#000000"
        text: "0"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget2
        x: 70
        y: 202
        width: 15
        height: 14
        color: "#000000"
        text: "10"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget3
        x: 95
        y: 151
        width: 14
        height: 14
        color: "#000000"
        text: "20"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget4
        x: 135
        y: 109
        width: 13
        height: 14
        color: "#000000"
        text: "30"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget5
        x: 190
        y: 81
        width: 14
        height: 14
        color: "#000000"
        text: "40"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget6
        x: 251
        y: 72
        width: 16
        height: 14
        color: "#000000"
        text: "50"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget7
        x: 310
        y: 81
        width: 16
        height: 14
        color: "#000000"
        text: "60"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget8
        x: 364
        y: 109
        width: 15
        height: 14
        color: "#000000"
        text: "70"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget9
        x: 407
        y: 151
        width: 16
        height: 14
        color: "#000000"
        text: "80"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        scale: 1
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget10
        x: 431
        y: 202
        width: 16
        height: 14
        color: "#000000"
        text: "90"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: gadget11
        x: 437
        y: 253
        width: 22
        height: 14
        color: "#000000"
        text: "100"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    ArcItem {
        id: arc
        x: 87
        y: 97
        width: 344
        height: 344
        strokeColor: "#e5e5e5"
        strokeWidth: 50
        begin: -90
        fillColor: "#00000000"
    }

    ArcItem {
        id: arc1
        x: 87
        y: 97
        width: 344
        height: 344
        end: 90
        begin: -90
        strokeColor: "#0bda3a"
        strokeWidth: 50
        fillColor: "#00000000"
    }

    Timeline {
        id: timeline
        currentFrame: 0
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                duration: 1000
                running: false
                loops: 1
                to: 1000
                from: 0
            }
        ]
        endFrame: 1000
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: arc1
            property: "end"
            Keyframe {
                value: -90
                frame: 0
            }

            Keyframe {
                value: 90
                frame: 1000
            }
        }

        KeyframeGroup {
            target: gadget2
            property: "scale"
            Keyframe {
                value: 1.2
                frame: 95
            }

            Keyframe {
                value: 1.2
                frame: 105
            }

            Keyframe {
                value: 1
                frame: 90
            }

            Keyframe {
                value: 1
                frame: 110
            }
        }

        KeyframeGroup {
            target: gadget2
            property: "color"
            Keyframe {
                value: "#ff8373"
                frame: 95
            }

            Keyframe {
                value: "#ff8373"
                frame: 105
            }

            Keyframe {
                value: "#000000"
                frame: 90
            }

            Keyframe {
                value: "#000000"
                frame: 110
            }
        }

        KeyframeGroup {
            target: gadget3
            property: "scale"
            Keyframe {
                frame: 195
                value: 1.2
            }

            Keyframe {
                frame: 205
                value: 1.2
            }

            Keyframe {
                frame: 190
                value: 1
            }

            Keyframe {
                frame: 210
                value: 1
            }
        }

        KeyframeGroup {
            target: gadget3
            property: "color"
            Keyframe {
                frame: 195
                value: "#ff8373"
            }

            Keyframe {
                frame: 205
                value: "#ff8373"
            }

            Keyframe {
                frame: 190
                value: "#000000"
            }

            Keyframe {
                frame: 210
                value: "#000000"
            }
        }

        KeyframeGroup {
            target: gadget4
            property: "scale"
            Keyframe {
                frame: 295
                value: 1.2
            }

            Keyframe {
                frame: 305
                value: 1.2
            }

            Keyframe {
                frame: 290
                value: 1
            }

            Keyframe {
                frame: 310
                value: 1
            }
        }

        KeyframeGroup {
            target: gadget4
            property: "color"
            Keyframe {
                frame: 295
                value: "#ff8373"
            }

            Keyframe {
                frame: 305
                value: "#ff8373"
            }

            Keyframe {
                frame: 290
                value: "#000000"
            }

            Keyframe {
                frame: 310
                value: "#000000"
            }
        }

        KeyframeGroup {
            target: gadget5
            property: "scale"
            Keyframe {
                frame: 395
                value: 1.2
            }

            Keyframe {
                frame: 405
                value: 1.2
            }

            Keyframe {
                frame: 390
                value: 1
            }

            Keyframe {
                frame: 410
                value: 1
            }
        }

        KeyframeGroup {
            target: gadget5
            property: "color"
            Keyframe {
                frame: 395
                value: "#ff8373"
            }

            Keyframe {
                frame: 405
                value: "#ff8373"
            }

            Keyframe {
                frame: 390
                value: "#000000"
            }

            Keyframe {
                frame: 410
                value: "#000000"
            }
        }

        KeyframeGroup {
            target: gadget6
            property: "scale"
            Keyframe {
                frame: 495
                value: 1.2
            }

            Keyframe {
                frame: 505
                value: 1.2
            }

            Keyframe {
                frame: 490
                value: 1
            }

            Keyframe {
                frame: 510
                value: 1
            }
        }

        KeyframeGroup {
            target: gadget6
            property: "color"
            Keyframe {
                frame: 495
                value: "#ff8373"
            }

            Keyframe {
                frame: 505
                value: "#ff8373"
            }

            Keyframe {
                frame: 490
                value: "#000000"
            }

            Keyframe {
                frame: 510
                value: "#000000"
            }
        }

        KeyframeGroup {
            target: gadget7
            property: "scale"
            Keyframe {
                value: 1.2
                frame: 595
            }

            Keyframe {
                value: 1.2
                frame: 605
            }

            Keyframe {
                value: 1
                frame: 590
            }

            Keyframe {
                value: 1
                frame: 610
            }
        }

        KeyframeGroup {
            target: gadget7
            property: "color"
            Keyframe {
                value: "#ff8373"
                frame: 595
            }

            Keyframe {
                value: "#ff8373"
                frame: 605
            }

            Keyframe {
                value: "#000000"
                frame: 590
            }

            Keyframe {
                value: "#000000"
                frame: 610
            }
        }

        KeyframeGroup {
            target: gadget8
            property: "scale"
            Keyframe {
                value: 1.2
                frame: 695
            }

            Keyframe {
                value: 1.2
                frame: 705
            }

            Keyframe {
                value: 1
                frame: 690
            }

            Keyframe {
                value: 1
                frame: 710
            }
        }

        KeyframeGroup {
            target: gadget8
            property: "color"
            Keyframe {
                value: "#ff8373"
                frame: 695
            }

            Keyframe {
                value: "#ff8373"
                frame: 705
            }

            Keyframe {
                value: "#000000"
                frame: 690
            }

            Keyframe {
                value: "#000000"
                frame: 710
            }
        }

        KeyframeGroup {
            target: gadget10
            property: "scale"
            Keyframe {
                frame: 895
                value: 1.2
            }

            Keyframe {
                frame: 905
                value: 1.2
            }

            Keyframe {
                frame: 890
                value: 1
            }

            Keyframe {
                frame: 910
                value: 1
            }
        }

        KeyframeGroup {
            target: gadget10
            property: "color"
            Keyframe {
                frame: 895
                value: "#eb3a3a"
            }

            Keyframe {
                frame: 905
                value: "#eb3a3a"
            }

            Keyframe {
                frame: 890
                value: "#000000"
            }

            Keyframe {
                frame: 910
                value: "#000000"
            }
        }

        KeyframeGroup {
            target: gadget11
            property: "scale"
            Keyframe {
                frame: 1000
                value: 1.2
            }

            Keyframe {
                frame: 990
                value: 1
            }
        }

        KeyframeGroup {
            target: gadget11
            property: "color"
            Keyframe {
                frame: 1000
                value: "#eb3a3a"
            }

            Keyframe {
                frame: 990
                value: "#000000"
            }
        }

        KeyframeGroup {
            target: gadget1
            property: "scale"
            Keyframe {
                value: 1.2
                frame: 5
            }

            Keyframe {
                value: 1.2
                frame: 10
            }

            Keyframe {
                value: 1
                frame: 15
            }

            Keyframe {
                value: 0.99
                frame: 0
            }
        }

        KeyframeGroup {
            target: gadget1
            property: "color"
            Keyframe {
                value: "#ff8373"
                frame: 5
            }

            Keyframe {
                value: "#ff8373"
                frame: 10
            }

            Keyframe {
                value: "#000000"
                frame: 15
            }

            Keyframe {
                value: "#000000"
                frame: 0
            }
        }

        KeyframeGroup {
            target: arc1
            property: "strokeColor"
            Keyframe {
                value: "#ff8373"
                frame: 0
            }

            Keyframe {
                value: "#ff8373"
                frame: 899
            }

            Keyframe {
                value: "#ff4141"
                frame: 900
            }

            Keyframe {
                value: "#ff4141"
                frame: 1000
            }
        }

        KeyframeGroup {
            target: gadget9
            property: "scale"
            Keyframe {
                value: 1.2
                frame: 795
            }

            Keyframe {
                value: 1.2
                frame: 805
            }

            Keyframe {
                value: 1
                frame: 790
            }

            Keyframe {
                value: 1
                frame: 810
            }
        }

        KeyframeGroup {
            target: gadget9
            property: "color"
            Keyframe {
                value: "#ff8373"
                frame: 795
            }

            Keyframe {
                value: "#ff8373"
                frame: 805
            }

            Keyframe {
                value: "#000000"
                frame: 790
            }

            Keyframe {
                value: "#000000"
                frame: 810
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.75;height:316;width:544}D{i:1;uuid:"21881cf0b6a977b6f2b633ddc0c4e915"}
D{i:2;uuid:"a4c8223572d2eca7b05e9e982fffbc07"}D{i:3;uuid:"a4c8223572d2eca7b05e9e982fffbc07"}
D{i:4;uuid:"016bf0b67c70d20a8f7a8a2a518f3afd"}D{i:5;uuid:"0357eabfa744852a31a138818be6c8c8"}
D{i:6;uuid:"ca547195d0d4f0c443bd83a6e500369b"}D{i:7;uuid:"83b7ee75a30c188d1e172e7c5ad1e477"}
D{i:8;uuid:"c1d4aa9766a5e2f71e9b3dfd9c019d7c"}D{i:9;uuid:"c7111f5c9fdea3c530bb0ed50f526106"}
D{i:10;uuid:"8f99ee49e5cb557a64f8f2ce0bc797fb"}D{i:11;uuid:"a15c92f68114206154c753315a4ee817"}
D{i:12;uuid:"ef2a71a3e86f3277333a42428d0f4596"}D{i:13;uuid:"6d9653bf5bcb9bd5013568efee210874"}
D{i:14;uuid:"0b94192da1b3aaa2cbb76bff0532bf20"}D{i:15;uuid:"3471828ecbcf8e186b9adedbf54d2648"}
D{i:17}D{i:18}
}
##^##*/

