import QtQuick 2.8

Item {
    id: robot_3
    width: 154
    height: 266

    Image {
        id: robot3_pic
        x: 0
        y: 0
        source: "assets/robot3_pic.png"
    }

    Text {
        id: robot3_text
        x: 12
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
        id: circle_3_text
        x: 30
        y: 193
        width: 10
        height: 20
        color: "#3B86FF"
        text: "3"
        font.pixelSize: 20
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Myriad Pro"
    }

    Image {
        id: circle_3
        x: 6
        y: 177
        source: "assets/circle_3.png"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"5466c9914a48885b17f695c7b89a5bcb"}D{i:1;uuid:"246d74995c5f28e1282148211c3e1c30"}
D{i:2;uuid:"b768e016c1c6e9de8d132094145f1dcf"}D{i:3;uuid:"ec0fc984ad218b20e9fc8063033cf926"}
D{i:4;uuid:"249af633500acec437dc582250cc1217"}
}
##^##*/

