import QtQuick 2.8
import QtQuick.Controls 2.1
import QtQuick.Studio.Components 1.0
import QtQuick.Timeline 1.0

Item {
    id: ram_usage
    width: 544
    height: 315
    property alias ramframe: timeline.currentFrame
    property alias ramdisplay: copy.text

    Image {
        id: rectangle_8_copy
        x: 0
        y: 0
        source: "assets/rectangle_8_copy.png"
    }

    Text {
        id: copy
        x: 215
        y: 193
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
        id: ram_usage1
        x: 30
        y: 16
        width: 99
        height: 25
        color: "#000000"
        text: "RAM Usage"
        font.pixelSize: 21
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: copy1
        x: 67
        y: 252
        width: 8
        height: 14
        color: "#000000"
        text: "0"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: copy2
        x: 69
        y: 199
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
        id: copy3
        x: 94
        y: 151
        width: 13
        height: 14
        color: "#000000"
        text: "20"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: copy4
        x: 134
        y: 108
        width: 14
        height: 14
        color: "#000000"
        text: "30"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: copy5
        x: 188
        y: 81
        width: 15
        height: 14
        color: "#000000"
        text: "40"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: copy6
        x: 251
        y: 73
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
        id: copy7
        x: 313
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
        id: copy8
        x: 364
        y: 108
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
        id: copy9
        x: 405
        y: 151
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
        id: copy10
        x: 432
        y: 199
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
        id: copy11
        x: 440
        y: 252
        width: 23
        height: 14
        color: "#000000"
        text: "100"
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }

    Text {
        id: copy12
        x: 278
        y: 193
        width: 34
        height: 38
        color: "#000000"
        text: "%"
        font.pixelSize: 38
        horizontalAlignment: Text.AlignHCenter
        font.styleName: "Bold"
        font.family: "Myriad Pro"
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
        end: -90
        strokeColor: "#56d9fe"
        strokeWidth: 50
        begin: -90
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
            target: copy1
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
            target: copy1
            property: "color"
            Keyframe {
                value: "#000000"
                frame: 0
            }

            Keyframe {
                value: "#56d9fe"
                frame: 5
            }

            Keyframe {
                value: "#56d9fe"
                frame: 10
            }

            Keyframe {
                value: "#000000"
                frame: 15
            }
        }

        KeyframeGroup {
            target: copy2
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
                frame: 110
            }

            Keyframe {
                value: 1
                frame: 90
            }
        }

        KeyframeGroup {
            target: copy2
            property: "color"
            Keyframe {
                value: "#56d9fe"
                frame: 95
            }

            Keyframe {
                value: "#56d9fe"
                frame: 105
            }

            Keyframe {
                value: "#000000"
                frame: 110
            }

            Keyframe {
                value: "#000000"
                frame: 90
            }
        }

        KeyframeGroup {
            target: copy3
            property: "scale"
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

            Keyframe {
                value: 1
                frame: 190
            }
        }

        KeyframeGroup {
            target: copy3
            property: "color"
            Keyframe {
                value: "#56d9fe"
                frame: 195
            }

            Keyframe {
                value: "#56d9fe"
                frame: 205
            }

            Keyframe {
                value: "#000000"
                frame: 210
            }

            Keyframe {
                value: "#000000"
                frame: 190
            }
        }

        KeyframeGroup {
            target: copy4
            property: "scale"
            Keyframe {
                value: 1.2
                frame: 295
            }

            Keyframe {
                value: 1.2
                frame: 305
            }

            Keyframe {
                value: 1
                frame: 310
            }

            Keyframe {
                value: 1
                frame: 290
            }
        }

        KeyframeGroup {
            target: copy4
            property: "color"
            Keyframe {
                value: "#56d9fe"
                frame: 295
            }

            Keyframe {
                value: "#56d9fe"
                frame: 305
            }

            Keyframe {
                value: "#000000"
                frame: 310
            }

            Keyframe {
                value: "#000000"
                frame: 290
            }
        }

        KeyframeGroup {
            target: copy5
            property: "scale"
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

            Keyframe {
                value: 1
                frame: 390
            }
        }

        KeyframeGroup {
            target: copy5
            property: "color"
            Keyframe {
                value: "#56d9fe"
                frame: 395
            }

            Keyframe {
                value: "#56d9fe"
                frame: 405
            }

            Keyframe {
                value: "#000000"
                frame: 410
            }

            Keyframe {
                value: "#000000"
                frame: 390
            }
        }

        KeyframeGroup {
            target: copy6
            property: "scale"
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

            Keyframe {
                value: 1
                frame: 490
            }
        }

        KeyframeGroup {
            target: copy6
            property: "color"
            Keyframe {
                value: "#56d9fe"
                frame: 495
            }

            Keyframe {
                value: "#56d9fe"
                frame: 505
            }

            Keyframe {
                value: "#000000"
                frame: 510
            }

            Keyframe {
                value: "#000000"
                frame: 490
            }
        }

        KeyframeGroup {
            target: copy7
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
                frame: 610
            }

            Keyframe {
                value: 1
                frame: 590
            }
        }

        KeyframeGroup {
            target: copy7
            property: "color"
            Keyframe {
                value: "#56d9fe"
                frame: 595
            }

            Keyframe {
                value: "#56d9fe"
                frame: 605
            }

            Keyframe {
                value: "#000000"
                frame: 610
            }

            Keyframe {
                value: "#000000"
                frame: 590
            }
        }

        KeyframeGroup {
            target: copy8
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
                frame: 710
            }

            Keyframe {
                value: 1
                frame: 690
            }
        }

        KeyframeGroup {
            target: copy8
            property: "color"
            Keyframe {
                value: "#56d9fe"
                frame: 695
            }

            Keyframe {
                value: "#56d9fe"
                frame: 705
            }

            Keyframe {
                value: "#000000"
                frame: 710
            }

            Keyframe {
                value: "#000000"
                frame: 690
            }
        }

        KeyframeGroup {
            target: copy9
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
                frame: 810
            }

            Keyframe {
                value: 1
                frame: 790
            }
        }

        KeyframeGroup {
            target: copy9
            property: "color"
            Keyframe {
                value: "#56d9fe"
                frame: 795
            }

            Keyframe {
                value: "#56d9fe"
                frame: 805
            }

            Keyframe {
                value: "#000000"
                frame: 810
            }

            Keyframe {
                value: "#000000"
                frame: 790
            }
        }

        KeyframeGroup {
            target: copy10
            property: "scale"
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

            Keyframe {
                value: 1
                frame: 890
            }
        }

        KeyframeGroup {
            target: copy10
            property: "color"
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

            Keyframe {
                value: "#000000"
                frame: 890
            }
        }

        KeyframeGroup {
            target: copy11
            property: "scale"
            Keyframe {
                value: 1.2
                frame: 1000
            }

            Keyframe {
                value: 1
                frame: 990
            }
        }

        KeyframeGroup {
            target: copy11
            property: "color"
            Keyframe {
                value: "#eb3a3a"
                frame: 1000
            }

            Keyframe {
                value: "#000000"
                frame: 990
            }
        }

        KeyframeGroup {
            target: arc1
            property: "strokeColor"
            Keyframe {
                value: "#56d9fe"
                frame: 0
            }

            Keyframe {
                value: "#56d9fe"
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
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:3;uuid:"6575fb655171453d9a52796cd984d22e"}D{i:1;uuid:"e13127d580694a0808aaf099771909af"}
D{i:2;uuid:"5f7809f4f24af099a2cb902bd5fe5c09"}D{i:3;uuid:"adc8ac5b497d2df6652a736afa73975a"}
D{i:4;uuid:"bf36d2c4d2b36c1d76b0a79837c6d549"}D{i:5;uuid:"d8fa7d9be7d06cc387bb59843762a13e"}
D{i:6;uuid:"9f2a25da3cdb60a071e0d632addd0532"}D{i:7;uuid:"ccb49735b77eb3838e59dcce0500bfa4"}
D{i:8;uuid:"c7e43594052576380b7cebd5b0b18c75"}D{i:9;uuid:"346295264e0faf395de41d9f012902d4"}
D{i:10;uuid:"390b9f32987d0fec12af29a77d28074f"}D{i:11;uuid:"7dfd8e98932b3e98de6e86d326bfb0a8"}
D{i:12;uuid:"6efb84e5f33f47ea05157b93190c3479"}D{i:13;uuid:"471fa96ace8eb5bce19a8f4587f8131f"}
D{i:14;uuid:"46a2084aa92eb79c8a33713e0dde8f90"}D{i:15;uuid:"5f7809f4f24af099a2cb902bd5fe5c09"}
D{i:17}D{i:18}
}
##^##*/

