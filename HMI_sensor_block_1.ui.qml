import QtQuick 2.8

Item {
    id: sensor_1
    width: 176
    height: 259

    Image {
        id: sensor1_pic
        x: 0
        y: 3
        source: "assets/sensor1_pic.png"
    }

    Image {
        id: sensor_1_warn
        x: 83
        y: 0
        source: "assets/sensor_1_warn.png"
    }

    Text {
        id: sensor1_text
        x: 34
        y: 239
        width: 58
        height: 20
        color: "#000000"
        text: "Sensor"
        font.pixelSize: 20
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Source Sans Pro"
    }

    Text {
        id: circle_4_text
        x: 57
        y: 187
        width: 9
        height: 20
        color: "#3B86FF"
        text: "1"
        font.pixelSize: 20
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Myriad Pro"
    }

    Image {
        id: circle_4
        x: 34
        y: 170
        source: "assets/circle_4.png"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"3f1744e8826a83b4149019df75be0a71"}D{i:1;uuid:"0aad2e0c49890493fd8c17ce832b1501"}
D{i:2;uuid:"b9d6a84634f40ba31a1aabc1a601031f"}D{i:3;uuid:"879c998fcc9fc949f471b373d34bb552"}
D{i:4;uuid:"540d02fb3e2228e6e1c3ba96265b9f0c"}D{i:5;uuid:"c7413fe1715bbff03a93b0c45ab5b0bd"}
}
##^##*/

