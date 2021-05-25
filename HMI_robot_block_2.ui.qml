import QtQuick 2.8

Item {
    id: robot_2
    width: 154
    height: 266

    Image {
        id: robot2_pic
        x: 0
        y: 0
        source: "assets/robot2_pic.png"
    }

    Text {
        id: robot2_text
        x: 10
        y: 245
        width: 51
        height: 21
        color: "#000000"
        text: "Robot"
        font.pixelSize: 20
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Source Sans Pro"
    }

    Text {
        id: circle_2_text
        x: 28
        y: 194
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
        id: circle_2
        x: 4
        y: 177
        source: "assets/circle_2.png"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"4e8425a50b3882b7e62cef5bb8f2cd48"}D{i:1;uuid:"c2adf1eddfc671d6d46ed314db32b4d2"}
D{i:2;uuid:"557ba583a2095c89a2dab5170e02b991"}D{i:3;uuid:"5374213448a532db76bf4919d930757f"}
D{i:4;uuid:"3b1ef6dc5f43a280e4ecf8e5cd0ba766"}
}
##^##*/

