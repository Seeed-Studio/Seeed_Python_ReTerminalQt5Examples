import QtQuick 2.8

Item {
    id: dashboardblock
    width: 476
    height: 480

    Image {
        id: dashboardobj
        x: 2
        y: 2
        source: "assets/dashboardobj.png"
    }

    Text {
        id: dashboard
        x: 91
        y: 286
        width: 291
        height: 60
        color: "#FFFFFF"
        text: "Dashboard"
        font.pixelSize: 60
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Bold"
        font.family: "Source Sans Pro"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"6ae1f9fdb66a3a3ab6937ae26eb2e6e6"}D{i:1;uuid:"70bd7c2e34f784bcf994bccddfe7f04d"}
D{i:2;uuid:"3be67f5f3c9f3aa5e2c3a13d981cd1f3"}
}
##^##*/

