import QtQuick 2.8

Item {
    id: hmi_title
    width: 249
    height: 78

    Image {
        id: factory_a_head
        x: 0
        y: 72
        source: "assets/factory_a_head.png"
    }

    Image {
        id: factory_a_logo
        x: 15
        y: 0
        source: "assets/factory_a_logo.png"
    }

    Text {
        id: factory_a
        x: 80
        y: 10
        width: 157
        height: 49
        color: "#3B86FF"
        text: "Factory A"
        font.pixelSize: 40
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Source Sans Pro"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"83bd406e55b5253b69c1d5cc840ac2bc"}D{i:1;uuid:"a32a391a98a249f87055964b3b36695a"}
D{i:2;uuid:"fe49d7dc837e29ea03d243d19523e258"}D{i:3;uuid:"2a1bc9bd3309407f1f951e91fcc0f0c4"}
}
##^##*/

