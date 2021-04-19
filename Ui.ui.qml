import QtQuick 2.8
import "backend/Data" as Data
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.1
import QtQuick.Studio.Effects 1.0

Item {
    id: ui
    width: 1280
    height: 720

    Image {
        id: uiAsset
        x: 0
        y: 0
        width: 1280
        height: 720
        source: "assets/ui.png"
    }

    Storage_usage {
        id: storage_usage
        x: 697
        y: 369
        width: 545
        height: 316
        scale: 0.95
        displaystore: Data.Values.displayflash
        storeframe: Data.Values.flash
    }

    Ram_usage {
        id: ram_usage
        x: 701
        y: 35
        width: 544
        height: 315
        scale: 0.95
        ramdisplay: Data.Values.displayram
        ramframe: Data.Values.ram
    }

    Cpu_usage {
        id: cpu_usage
        x: 143
        y: 34
        width: 544
        height: 316
        scale: 0.95
        displaycpu: Data.Values.displaycpu
        cpuframe: Data.Values.cpu
    }

    Ui_navigate_1 {
        id: ui_navigate_1
        x: -26
        y: -178
        width: 160
        height: 1080
        scale: 0.67
    }

    Cpu_temp {
        id: cpu_temp
        x: 139
        y: 369
        width: 544
        height: 316
        tempvalue: Data.Values.displaycputemp
        displaycputemp: Data.Values.cputemp
        scale: 0.95
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75;uuid:"db758c043a516da3a6cc8edd0f479654"}
}
##^##*/

