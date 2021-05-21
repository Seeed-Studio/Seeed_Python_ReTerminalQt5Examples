import QtQuick 2.8

Item {
    id: hmiblock
    width: 476
    height: 480

    Image {
        id: vector_smart_object_
        x: 2
        y: 2
        source: "assets/vector_smart_object_.png"
    }

    Text {
        id: hmi_configuration
        x: 50
        y: 247
        width: 373
        height: 143
        scale: 0.8
        color: "#FFFFFF"
        text: "HMI \nConfiguration"
        font.pixelSize: 60
        horizontalAlignment: Text.AlignHCenter
        lineHeight: 72
        lineHeightMode: Text.FixedHeight
        wrapMode: Text.WordWrap
        font.styleName: "Bold"
        font.family: "Source Sans Pro"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"be58d4b672735bb4874495c02c5ef303"}D{i:1;uuid:"7f7ed9705d8ecca775de051c87a02a49"}
D{i:2;uuid:"64518c35c62c2436b97c5e8390b6b463"}
}
##^##*/

