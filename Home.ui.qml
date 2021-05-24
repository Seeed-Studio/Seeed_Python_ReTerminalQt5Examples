import QtQuick 2.8
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import "backend/Data" as Data

Item {
    id: home
    width: 1280
    height: 720

    Image {
        id: homeAsset
        x: 0
        y: 0
        width: 1280
        height: 720
        source: "assets/home.png"
    }

    Hmiblock {
        id: hmiblock
        x: 381
        y: 296
        width: 476
        height: 480
        scale: 0.67
    }

    Dashboardblock {
        id: dashboardblock
        x: 55
        y: 296
        width: 476
        height: 480
        scale: 0.67
    }

    Reterminalblock {
        id: reterminalblock
        x: -24
        y: -60
        width: 960
        height: 524
        scale: 0.67
    }

    Home_navigate {
        id: home_navigate
        x: -26
        y: -178
        width: 159
        height: 1080
        scale: 0.67
    }

    System_info_block {
        id: touch_panel12
        x: 666
        y: -139
        width: 713
        height: 1001
        scale: 0.67
        cm4104032Text: Data.Values.displayCM4name
        rt02cm4Text: Data.Values.displaybuildcode
        raspberry_pi_os_marcText: Data.Values.displayos
        n_aText: Data.Values.displaywifi
        gadgetText: Data.Values.displayethernet
        gadget1Text: Data.Values.displaykernel
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/

