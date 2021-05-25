import QtQuick 2.8

Item {
    id: home_navigate
    width: 159
    height: 1120

    Image {
        id: rectangle_long
        x: 0
        y: 0
        source: "assets/rectangle_long.png"

        Image {
            id: hardware_button_default
            x: 45
            y: 468
            source: "assets/hardware_button_default.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: hmi_button_default
            x: 35
            y: 708
            source: "assets/hmi_button_default.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Image {
        id: rectangle_bold
        x: 0
        y: 0
        source: "assets/rectangle_bold.png"
    }

    Image {
        id: icon_setting_2x1
        x: 48
        y: 955
        source: "assets/icon_setting_2x1.png"
    }

    Image {
        id: icon_home_2x1
        x: 42
        y: 71
        source: "assets/icon_home_2x1.png"
    }

    Image {
        id: rectangle_small
        x: 0
        y: 0
        source: "assets/rectangle_small.png"
    }

    Image {
        id: ui_button_default
        x: 45
        y: 271
        source: "assets/ui_button_default.png"
        fillMode: Image.PreserveAspectFit
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75;height:1080;width:159}D{i:2;uuid:"e249d826fcd455421446c3e95162573b"}
D{i:1;uuid:"fbbf42350c170fa658c66eb29da7e594"}D{i:4;uuid:"e249d826fcd455421446c3e95162573b"}
D{i:5;uuid:"6dd64dc4fff02ccaab4a6d453d2e57de"}D{i:6;uuid:"73817ebfa84365f70fcbcc99806fd911"}
}
##^##*/

