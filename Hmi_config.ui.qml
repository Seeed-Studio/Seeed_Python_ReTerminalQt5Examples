import QtQuick 2.8
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.1

Item {
    id: hmi_config
    width: 1280
    height: 720
    visible: true

    Image {
        id: hmi_configAsset
        x: 0
        y: 0
        width: 1280
        height: 720
        visible: true
        source: "assets/hmi_config.png"

        Text {
            id: text1
            x: 1033
            y: 683
            visible: true
            text: qsTr("*HMI Configuration Example")
            font.pixelSize: 17
            font.family: "Source Sans Pro Light"
        }
    }

    Page4_navigation_bar {
        id: ui_navigate_3
        x: -26
        y: -178
        width: 159
        height: 1080
        visible: true
        scale: 0.67
    }

    HMI_reTerminal_block_1 {
        id: reterm2
        x: 128
        y: 434
        width: 190
        height: 246
        visible: true
        scale: 0.67
    }

    HMI_database_block {
        id: database
        x: 505
        y: 434
        width: 100
        height: 247
        visible: true
        scale: 0.67
    }

    HMI_cloud_block {
        id: cloud
        x: 753
        y: 435
        width: 151
        height: 240
        visible: true
        scale: 0.67
    }

    Reterm_1 {
        id: reterm_1
        x: 1094
        y: 434
        width: 190
        height: 246
        visible: true
        scale: 0.67
    }

    Sensor_2 {
        id: sensor_2
        x: 1127
        y: 133
        width: 131
        height: 246
        visible: true
        scale: 0.67
    }

    Sensor_1 {
        id: sensor_1
        x: 880
        y: 122
        width: 176
        height: 259
        visible: true
        scale: 0.67
    }

    Robot_3 {
        id: robot_3
        x: 651
        y: 116
        width: 154
        height: 266
        visible: true
        scale: 0.67
    }

    Robot_2 {
        id: robot_2
        x: 412
        y: 116
        width: 154
        height: 266
        visible: true
        scale: 0.67
    }

    Robot_1 {
        id: robot_1
        x: 171
        y: 116
        width: 154
        height: 266
        visible: true
        scale: 0.67
    }

    Hmi_title {
        id: hmi_title
        x: 118
        y: 35
        width: 249
        height: 78
        visible: true
        scale: 0.67
    }

    Image {
        id: hmi_flow_1
        x: -24
        y: 250
        source: "assets/hmi_flow_1.png"
        scale: 0.67
        fillMode: Image.PreserveAspectFit
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1;uuid:"db758c043a516da3a6cc8edd0f479654"}
}
##^##*/

