import QtQuick 2.8

Item {
    id: robot_1
    width: 154
    height: 266

    Image {
        id: robot_1_pic
        x: 0
        y: 0
        source: "assets/robot_1_pic.png"
    }

    Text {
        id: robot1_text
        x: 7
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
        id: circle_1_text
        x: 25
        y: 194
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
        id: circle_1
        x: 2
        y: 177
        source: "assets/circle_1.png"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"f1c8af1fcf3a5234b728d21c1c420cc2"}D{i:1;uuid:"a5bb94b7ad57fe3a1df4f36d5f556cd1"}
D{i:2;uuid:"a89b070d05925f766704344b33df13b5"}D{i:3;uuid:"cda2ca666913d79d82a32f329c1d941e"}
D{i:4;uuid:"1aab378f2e7ba3bbef3aae1874c8ca50"}
}
##^##*/

