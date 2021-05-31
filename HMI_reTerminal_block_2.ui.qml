import QtQuick 2.8

Item {
    id: reterm_1
    width: 190
    height: 246

    Image {
        id: terminal2_copy
        x: 0
        y: 115
        source: "assets/terminal2_copy.png"
    }

    Text {
        id: reterm_text
        x: 54
        y: 67
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
        id: circle6_text
        x: 93
        y: 16
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
        id: circle_6
        x: 69
        y: 0
        source: "assets/circle_6.png"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"c6c19d391d22dc093a7aa0ca53e32834"}D{i:1;uuid:"2e973df5ab0004dd61581ab19498de90"}
D{i:2;uuid:"26acb45a92989fdd88494c8e4c209777"}D{i:3;uuid:"3a9f667ab799137f2082ef1582798ebd"}
D{i:4;uuid:"f97d8898a30d692971e2722dad4dc344"}
}
##^##*/

