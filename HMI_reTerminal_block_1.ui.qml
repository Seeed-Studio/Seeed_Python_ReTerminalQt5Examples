import QtQuick 2.8

Item {
    id: reterm2
    width: 190
    height: 246

    Image {
        id: reterm2_pic
        x: 0
        y: 115
        source: "assets/reterm2_pic.png"
    }

    Text {
        id: reterm2_text
        x: 40
        y: 68
        width: 91
        height: 21
        color: "#000000"
        text: "reTerminal"
        font.pixelSize: 20
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Source Sans Pro"
    }

    Text {
        id: circle9_text
        x: 79
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
        id: circle_9
        x: 56
        y: 0
        source: "assets/circle_9.png"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"ce1762515d0d73fff9e01f38af54ae5d"}D{i:1;uuid:"d42913027de62dcfa423438c08b5a312"}
D{i:2;uuid:"ac3f851fae4b567dc153657ba1f40d57"}D{i:3;uuid:"c281c5778d10e07b3b4a430a43eba4ab"}
D{i:4;uuid:"ab401a96f9f99fd9ac659c3ee64f0a5e"}
}
##^##*/

