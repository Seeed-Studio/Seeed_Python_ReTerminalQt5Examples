import QtQuick 2.8

Item {
    id: cloud
    width: 151
    height: 240

    Text {
        id: cloud_text
        x: 50
        y: 68
        width: 49
        height: 21
        color: "#000000"
        text: "Cloud"
        font.pixelSize: 20
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Source Sans Pro"
    }

    Image {
        id: cloud_pic
        x: 0
        y: 131
        source: "assets/cloud_pic.png"
    }

    Text {
        id: circle7_text
        x: 69
        y: 17
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
        id: circle_7
        x: 46
        y: 0
        source: "assets/circle_7.png"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"e21696cd9bc4f13784474e9b6fdd146b"}D{i:1;uuid:"7e8295d704245736abc7849987cd1f88"}
D{i:2;uuid:"f222dd3d5361755f118b2b11fb787bb4"}D{i:3;uuid:"d3df9cf4a5ff8879a2212e0b10168736"}
D{i:4;uuid:"70f7b63691edb50e4888a02a7f2426b6"}
}
##^##*/

