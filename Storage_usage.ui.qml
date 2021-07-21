import QtQuick 2.8
import QtQuick.Studio.Components 1.0
import QtQuick.Timeline 1.0

Item {
    id: storage_usage
    width: 545
    height: 316
    property alias displaystore: copy_2.text
    property alias storeframe: timeline.currentFrame

    Image {
        id: rectangle_8_copy_2
        x: 1
        y: 1
        source: "assets/rectangle_8_copy_2.png"
    }

    Text {
        id: copy_2
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
        id: storage_usage1
        x: 30
        y: 17
        width: 126
        height: 25
        color: "#000000"
        text: "Storage Usage"
        font.pixelSize: 21
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: copy_21
        x: 66
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
        id: copy_22
        x: 66
        y: 201
        width: 15
        height: 14
        color: "#000000"
        text: "10"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        transformOrigin: Item.Center
        scale: 1
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: copy_23
        x: 92
        y: 149
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
        id: copy_24
        x: 137
        y: 106
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
        id: copy_25
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
        id: copy_26
        x: 252
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
        id: copy_27
        x: 314
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
        id: copy_28
        x: 363
        y: 106
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
        id: copy_29
        x: 405
        y: 149
        width: 16
        height: 14
        color: "#000000"
        text: "80"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: copy_210
        x: 430
        y: 201
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
        id: copy_211
        x: 440
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
        begin: -90
        end: 90
        strokeWidth: 55
        fillColor: "#00000000"
    }

    ArcItem {
        id: arc1
        x: 87
        y: 97
        width: 344
        height: 344
        strokeColor: "#0bda3a"
        strokeWidth: 55
        begin: -90
        end: -90
        fillColor: "#00000000"
    }

    Timeline {
        id: timeline
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
            target: copy_21
            property: "color"
            Keyframe {
                value: "#000000"
                frame: 0
            }

            Keyframe {
                value: "#0bda3a"
                frame: 5
            }

            Keyframe {
                value: "#0bda3a"
                frame: 10
            }

            Keyframe {
                value: "#000000"
                frame: 15
            }
        }

        KeyframeGroup {
            target: copy_21
            property: "scale"
            Keyframe {
                value: 1
                frame: 0
            }

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
        }

        KeyframeGroup {
            target: copy_22
            property: "color"
            Keyframe {
                value: "#000000"
                frame: 90
            }

            Keyframe {
                value: "#0bda3a"
                frame: 95
            }

            Keyframe {
                value: "#0bda3a"
                frame: 105
            }

            Keyframe {
                value: "#000000"
                frame: 110
            }
        }

        KeyframeGroup {
            target: copy_22
            property: "scale"
            Keyframe {
                value: 1
                frame: 90
            }

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
                frame: 110
            }
        }

        KeyframeGroup {
            target: copy_23
            property: "color"
            Keyframe {
                value: "#000000"
                frame: 190
            }

            Keyframe {
                value: "#0bda3a"
                frame: 195
            }

            Keyframe {
                value: "#0bda3a"
                frame: 205
            }

            Keyframe {
                value: "#000000"
                frame: 210
            }
        }

        KeyframeGroup {
            target: copy_23
            property: "scale"
            Keyframe {
                value: 1
                frame: 190
            }

            Keyframe {
                value: 1.2
                frame: 195
            }

            Keyframe {
                value: 1.2
                frame: 205
            }

            Keyframe {
                value: 1
                frame: 210
            }
        }

        KeyframeGroup {
            target: copy_24
            property: "color"
            Keyframe {
                value: "#000000"
                frame: 291
            }

            Keyframe {
                value: "#0bda3a"
                frame: 296
            }

            Keyframe {
                value: "#0bda3a"
                frame: 306
            }

            Keyframe {
                value: "#000000"
                frame: 311
            }
        }

        KeyframeGroup {
            target: copy_24
            property: "scale"
            Keyframe {
                value: 1
                frame: 291
            }

            Keyframe {
                value: 1.2
                frame: 296
            }

            Keyframe {
                value: 1.2
                frame: 306
            }

            Keyframe {
                value: 1
                frame: 311
            }
        }

        KeyframeGroup {
            target: copy_25
            property: "color"
            Keyframe {
                value: "#000000"
                frame: 390
            }

            Keyframe {
                value: "#0bda3a"
                frame: 395
            }

            Keyframe {
                value: "#0bda3a"
                frame: 405
            }

            Keyframe {
                value: "#000000"
                frame: 410
            }
        }

        KeyframeGroup {
            target: copy_25
            property: "scale"
            Keyframe {
                value: 1
                frame: 390
            }

            Keyframe {
                value: 1.2
                frame: 395
            }

            Keyframe {
                value: 1.2
                frame: 405
            }

            Keyframe {
                value: 1
                frame: 410
            }
        }

        KeyframeGroup {
            target: copy_26
            property: "color"
            Keyframe {
                value: "#000000"
                frame: 490
            }

            Keyframe {
                value: "#eba83a"
                frame: 495
            }

            Keyframe {
                value: "#eba83a"
                frame: 505
            }

            Keyframe {
                value: "#000000"
                frame: 510
            }
        }

        KeyframeGroup {
            target: copy_26
            property: "scale"
            Keyframe {
                value: 1
                frame: 490
            }

            Keyframe {
                value: 1.2
                frame: 495
            }

            Keyframe {
                value: 1.2
                frame: 505
            }

            Keyframe {
                value: 1
                frame: 510
            }
        }

        KeyframeGroup {
            target: copy_27
            property: "color"
            Keyframe {
                value: "#000000"
                frame: 590
            }

            Keyframe {
                value: "#eba83a"
                frame: 595
            }

            Keyframe {
                value: "#eba83a"
                frame: 605
            }

            Keyframe {
                value: "#000000"
                frame: 610
            }
        }

        KeyframeGroup {
            target: copy_27
            property: "scale"
            Keyframe {
                value: 1
                frame: 590
            }

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
                frame: 610
            }
        }

        KeyframeGroup {
            target: arc1
            property: "strokeColor"
            Keyframe {
                value: "#0bda3a"
                frame: 499
            }

            Keyframe {
                value: "#eba83a"
                frame: 500
            }

            Keyframe {
                value: "#eba83a"
                frame: 799
            }

            Keyframe {
                value: "#eb3a3a"
                frame: 800
            }

            Keyframe {
                value: "#eb3a3a"
                frame: 1000
            }
        }

        KeyframeGroup {
            target: copy_28
            property: "color"
            Keyframe {
                value: "#000000"
                frame: 690
            }

            Keyframe {
                value: "#eba83a"
                frame: 695
            }

            Keyframe {
                value: "#eba83a"
                frame: 705
            }

            Keyframe {
                value: "#000000"
                frame: 710
            }
        }

        KeyframeGroup {
            target: copy_28
            property: "scale"
            Keyframe {
                value: 1
                frame: 690
            }

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
                frame: 710
            }
        }

        KeyframeGroup {
            target: copy_29
            property: "color"
            Keyframe {
                value: "#000000"
                frame: 790
            }

            Keyframe {
                value: "#eb3a3a"
                frame: 795
            }

            Keyframe {
                value: "#eb3a3a"
                frame: 805
            }

            Keyframe {
                value: "#000000"
                frame: 810
            }
        }

        KeyframeGroup {
            target: copy_29
            property: "scale"
            Keyframe {
                value: 1
                frame: 790
            }

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
                frame: 810
            }
        }

        KeyframeGroup {
            target: copy_210
            property: "color"
            Keyframe {
                value: "#000000"
                frame: 890
            }

            Keyframe {
                value: "#eb3a3a"
                frame: 895
            }

            Keyframe {
                value: "#eb3a3a"
                frame: 905
            }

            Keyframe {
                value: "#000000"
                frame: 910
            }
        }

        KeyframeGroup {
            target: copy_210
            property: "scale"
            Keyframe {
                value: 1
                frame: 890
            }

            Keyframe {
                value: 1.2
                frame: 895
            }

            Keyframe {
                value: 1.2
                frame: 905
            }

            Keyframe {
                value: 1
                frame: 910
            }
        }

        KeyframeGroup {
            target: copy_211
            property: "color"
            Keyframe {
                value: "#000000"
                frame: 990
            }

            Keyframe {
                value: "#eb3a3a"
                frame: 1000
            }
        }

        KeyframeGroup {
            target: copy_211
            property: "scale"
            Keyframe {
                value: 1
                frame: 990
            }

            Keyframe {
                value: 1.2
                frame: 1000
            }
        }
    }

    Text {
        id: copy_3
        x: 279
        y: 194
        width: 34
        height: 38
        color: "#000000"
        text: "%"
        font.pixelSize: 38
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Bold"
        font.family: "Myriad Pro"
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:3;uuid:"cdd45e9c8623ddf07d5306a5e11ff0aa"}D{i:1;uuid:"fed3790ade8bb4c69f4bd62a1808d51e"}
D{i:2;uuid:"f401515283ee69879c6dba18095747c1"}D{i:3;uuid:"b499dd4c0dd284045d5769fd3d6e9725"}
D{i:4;uuid:"8f8913dcc9cb91253c4bd25a1115a859"}D{i:5;uuid:"17fb9b289482a876cbc38f0fa6453303"}
D{i:6;uuid:"11cb10dbb27eb5b3c3963f869743cf73"}D{i:7;uuid:"fe0a4f69d3c4f66f4d80a11b4e2f318f"}
D{i:8;uuid:"b61b5e3b8f460f7acc5de8ffae26caeb"}D{i:9;uuid:"3f582dba348c1fc68a2128b3a8805a9f"}
D{i:10;uuid:"0cde81c7cfdc5826e00e1a5b84538991"}D{i:11;uuid:"a842bc9b8f70315c9bba9f76e52565e6"}
D{i:12;uuid:"3651a8b21fc26af9d51a42244dd863da"}D{i:13;uuid:"198881f1a037a8ebf091d6e1efd9dbb8"}
D{i:14;uuid:"f95616bb6f3b30f6d4bc50e1359b9a90"}D{i:16}D{i:17}D{i:134;uuid:"f401515283ee69879c6dba18095747c1"}
}
##^##*/

