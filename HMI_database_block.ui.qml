import QtQuick 2.8

Item {
    id: database
    width: 100
    height: 247

    Text {
        id: database_text
        x: 6
        y: 67
        width: 78
        height: 21
        color: "#000000"
        text: "Database"
        font.pixelSize: 20
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Source Sans Pro"
    }

    Image {
        id: database_pic
        x: 0
        y: 124
        source: "assets/database_pic.png"
    }

    Text {
        id: circle8_text
        x: 38
        y: 16
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
        id: circle_8
        x: 15
        y: 0
        source: "assets/circle_8.png"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"cceec9c422ee9c6094fabce96805d064"}D{i:1;uuid:"41f77a06ace0b7114f65d861742e7e79"}
D{i:2;uuid:"c12dac231b12c36ae5a089153eda6c68"}D{i:3;uuid:"889f9eff2435eb15aa81fbf43b831769"}
D{i:4;uuid:"aadd77eb2b22076819f70ba79abde114"}
}
##^##*/

