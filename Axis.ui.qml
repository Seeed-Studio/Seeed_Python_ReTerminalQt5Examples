import QtQuick 2.8

Item {
    id: axis
    width: 850
    height: 490

    Image {
        id: rectangle_8_copy_3
        x: 1
        y: 1
        source: "assets/rectangle_8_copy_3.png"
    }

    Text {
        id: axis_accelerometer
        x: 43
        y: 40
        width: 183
        height: 21
        color: "#000000"
        text: "3-Axis Accelerometer"
        font.pixelSize: 21
        horizontalAlignment: Text.AlignLeft
        font.family: "Microsoft YaHei"
        font.styleName: "Regular"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"2ccdf9d4e81bbab5cc412a7c11f0a703"}D{i:1;uuid:"7e30687bb86308fdba6bdd88447383b8"}
D{i:2;uuid:"938efa451ca78a23a21f36216a2709ad"}
}
##^##*/

