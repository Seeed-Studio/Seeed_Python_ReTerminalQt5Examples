import QtQuick 2.8

Item {
    id: sensor_2
    width: 131
    height: 246

    Text {
        id: sensor2_text
        x: 35
        y: 226
        width: 58
        height: 20
        color: "#000000"
        text: "Sensor"
        font.pixelSize: 20
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Source Sans Pro"
    }

    Image {
        id: sensor2_pic
        x: 0
        y: 0
        source: "assets/sensor2_pic.png"
    }

    Text {
        id: circle_5_text
        x: 58
        y: 173
        width: 11
        height: 20
        color: "#3B86FF"
        text: "2"
        font.pixelSize: 20
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Myriad Pro"
    }

    Image {
        id: circle_5
        x: 34
        y: 158
        source: "assets/circle_5.png"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"814907bc714025b77bc2ccc96782625b"}D{i:1;uuid:"e9691342e7e2fc76b6dab56aa0c1a83a"}
D{i:2;uuid:"4bde2d07e5ceb53b90a38462eced532b"}D{i:3;uuid:"891f9181975d6f0feb7a49d6460dba40"}
D{i:4;uuid:"b7054191cb246837a721324be76ae135"}
}
##^##*/

