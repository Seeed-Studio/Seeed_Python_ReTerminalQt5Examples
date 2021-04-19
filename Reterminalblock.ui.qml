import QtQuick 2.8

Item {
    id: reterminalblock
    width: 960
    height: 524

    Image {
        id: reterninalobj
        x: 2
        y: 3
        source: "assets/reterninalobj.png"
    }

    Text {
        id: seeed_technology
        x: 326
        y: 258
        width: 307
        height: 50
        color: "#FFFFFF"
        text: "Seeed Technology"
        font.pixelSize: 40
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Source Sans Pro"
    }

    Text {
        id: reterminal
        x: 275
        y: 167
        width: 378
        height: 84
        color: "#FFFFFF"
        text: "ReTerminal"
        font.pixelSize: 80
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Bold"
        font.family: "Source Sans Pro"
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1;height:524;width:960}D{i:1;uuid:"5976da68ca9a738409add10c3e6c2ecc"}
D{i:2;uuid:"8237c78be12f7a66d46ad425eea98fcd"}D{i:3;uuid:"01b24e06b57fe0a785abbb8b614e2096"}
}
##^##*/

