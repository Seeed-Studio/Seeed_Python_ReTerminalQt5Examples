import QtQuick 2.8

Item {
    id: touch_panel
    width: 821
    height: 489

    Image {
        id: rectangle_8_copy_4
        x: 0
        y: 0
        source: "assets/rectangle_8_copy_4.png"
    }

    Text {
        id: touch_panel1
        x: 30
        y: 37
        width: 104
        height: 21
        color: "#000000"
        text: "Touch Panel"
        font.pixelSize: 21
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"45762545cad34fd2f3b6fd774e7afe5b"}D{i:1;uuid:"2e351861a3a4148693af0a77848281c3"}
D{i:2;uuid:"3dd817e0b9eb695619e632b24dfea1c4"}
}
##^##*/

