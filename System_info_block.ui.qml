import QtQuick 2.8

Item {
    id: touch_panel12
    width: 713
    height: 1001
    property alias cm4104032Text: cm4104032.text
    property alias n_aText: n_a.text
    property alias gadgetText: gadget.text
    property alias gadget1Text: gadget1.text
    property alias raspberry_pi_os_marcText: raspberry_pi_os_marc.text
    property alias rt02cm4Text: rt02cm4.text

    Image {
        id: sysinfobox
        x: 4
        y: 0
        source: "assets/sysinfobox.png"
    }

    Image {
        id: wifilogo
        x: 57
        y: 834
        source: "assets/wifilogo.png"
    }

    Image {
        id: ethernetlogo
        x: 57
        y: 690
        source: "assets/ethernetlogo.png"
    }

    Image {
        id: kernallogo
        x: 57
        y: 547
        source: "assets/kernallogo.png"
    }

    Image {
        id: oslogo
        x: 57
        y: 404
        source: "assets/oslogo.png"
    }

    Image {
        id: buildlogo
        x: 56
        y: 260
        source: "assets/buildlogo.png"
    }

    Image {
        id: cm4logo
        x: 56
        y: 116
        source: "assets/cm4logo.png"
    }

    Text {
        id: n_a
        x: 168
        y: 886
        width: 49
        height: 35
        color: "#6c6c6c"
        text: "N/A"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        font.family: "Source Sans Pro"
        font.styleName: "Regular"
    }

    Text {
        id: wi_fi_conection
        x: 168
        y: 838
        width: 278
        height: 37
        color: "#000000"
        text: "Wi-Fi Connection"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        font.family: "Source Sans Pro"
        font.styleName: "Regular"
    }

    Text {
        id: gadget
        x: 166
        y: 743
        width: 172
        height: 30
        color: "#6c6c6c"
        text: "192.168.2.101"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        font.family: "Source Sans Pro"
        font.styleName: "Regular"
    }

    Text {
        id: ethernet_connection
        x: 165
        y: 699
        width: 328
        height: 38
        color: "#000000"
        text: "Ethernet Connection"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        font.family: "Source Sans Pro"
        font.styleName: "Regular"
    }

    Text {
        id: gadget1
        x: 168
        y: 602
        width: 38
        height: 30
        color: "#6c6c6c"
        text: "5.4"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        font.family: "Source Sans Pro"
        font.styleName: "Regular"
    }

    Text {
        id: kernal_version
        x: 165
        y: 555
        width: 229
        height: 38
        color: "#000000"
        text: "Kernal Version"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        font.family: "Source Sans Pro"
        font.styleName: "Regular"
    }

    Text {
        id: raspberry_pi_os_marc
        x: 168
        y: 459
        width: 429
        height: 37
        color: "#6c6c6c"
        text: "Raspberry Pi OS: March. 12th 2021"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        font.family: "Source Sans Pro"
        font.styleName: "Regular"
    }

    Text {
        id: operating_system_ver
        x: 167
        y: 407
        width: 407
        height: 46
        color: "#000000"
        text: "Operating System Version"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        font.family: "Source Sans Pro"
        font.styleName: "Regular"
    }

    Text {
        id: rt02cm4
        x: 168
        y: 315
        width: 119
        height: 30
        color: "#6c6c6c"
        text: "RT02CM4"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        font.family: "Source Sans Pro"
        font.styleName: "Regular"
    }

    Text {
        id: wio_terminal_build_c
        x: 168
        y: 265
        width: 393
        height: 38
        color: "#000000"
        text: "Wio Terminal Build-Code"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        font.family: "Source Sans Pro"
        font.styleName: "Regular"
    }

    Text {
        id: cm4104032
        x: 166
        y: 175
        width: 145
        height: 30
        color: "#6c6c6c"
        text: "CM4104032"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        font.family: "Source Sans Pro"
        font.styleName: "Regular"
    }

    Text {
        id: raspberry_pi_compute
        x: 165
        y: 128
        width: 512
        height: 46
        color: "#000000"
        text: "Raspberry Pi Compute Module 4"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        font.family: "Source Sans Pro"
        font.styleName: "Regular"
    }

    Text {
        id: system_information
        x: 41
        y: 31
        width: 396
        height: 53
        color: "#000000"
        text: "System Information"
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        font.family: "Source Sans Pro"
        font.styleName: "Bold"
    }

    Image {
        id: shortline5
        x: 105
        y: 794
        source: "assets/shortline5.png"
    }

    Image {
        id: shortline4
        x: 105
        y: 651
        source: "assets/shortline4.png"
    }

    Image {
        id: shortline3
        x: 105
        y: 506
        source: "assets/shortline3.png"
    }

    Image {
        id: shortline2
        x: 105
        y: 363
        source: "assets/shortline2.png"
    }

    Image {
        id: shortline1
        x: 105
        y: 218
        source: "assets/shortline1.png"
    }
}

/*##^##
Designer {
    D{i:0;height:1001;width:713}D{i:1;uuid:"2e351861a3a4148693af0a77848281c3"}D{i:2;uuid:"93f84ce0a1cff87bb91b9031f7ec3d64"}
D{i:3;uuid:"2030782408eefec7597ca13403c6b456"}D{i:4;uuid:"96e7d40674f395d33389098a0adc21ee"}
D{i:5;uuid:"ed598c20c547b891effdd330b7744c88"}D{i:6;uuid:"4616affb9e21b3486baff51003401289"}
D{i:7;uuid:"58aa8986616ea1c8eec68137de6e0039"}D{i:8;uuid:"4b6b1e656b3482aeb34f7e8ee5c591c7"}
D{i:9;uuid:"95554435ae538d97382c7b3a21432abe"}D{i:10;uuid:"fd95570dae5dd67164ad6b69f46eb479"}
D{i:11;uuid:"af332f359ec6e3f6906174fb45b7a0d9"}D{i:12;uuid:"a0a8925941941d69537520327049210f"}
D{i:13;uuid:"53c621c0118b7a040a18d95c5c2f1973"}D{i:14;uuid:"01d8e28e1a4cb86efd823c3189df6b17"}
D{i:15;uuid:"a986d06292f0d12e8b7f0b7ef59731e0"}D{i:16;uuid:"bc845089357dba280ab34a5550713956"}
D{i:17;uuid:"028eec625336f6ec96f466f61d26a574"}D{i:18;uuid:"0a52ba8c844b49dba0133e369691238d"}
D{i:19;uuid:"82c6bfbe7ea8b42b9e60defe1fe29bd4"}D{i:20;uuid:"73e7469685613500103b772ff3cc103b"}
D{i:21;uuid:"74822af68468715e52a0206eb55acefa"}D{i:22;uuid:"f23b57cf78b57c6860538df861aea8b3"}
D{i:23;uuid:"b0e663d19031e004aba6645856d8feb4"}D{i:24;uuid:"6e433cf1f233a5624ede5b8a24dfb10e"}
D{i:25;uuid:"daefed33f4fb56838b15aa9fc599d7dd"}
}
##^##*/

