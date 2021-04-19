import QtQuick 2.8
import QtQuick.Controls 2.1
import "backend/Data" as Data

Item {
    id: settings
    width: 1280
    height: 720

    Image {
        id: settingsAsset
        x: 0
        y: 0
        width: 1280
        height: 720
        source: "assets/settings.png"
    }

    Ui_navigate_2 {
        id: ui_navigate_2
        x: -26
        y: -178
        width: 160
        height: 1080
        scale: 0.67
    }

    Settings_controls {
        id: settings_controls
        x: -317
        y: -178
        scale: 0.67
        buttonChecked: Data.Values.logoutbutton
        button2Checked: Data.Values.rebootbutton
        button1Checked: Data.Values.shutdownbutton
        sliderValue: Data.Values.brightness
        switch6Checked: Data.Values.serialbutton
        switch5Checked: Data.Values.i2cbutton
        switch4Checked: Data.Values.spibutton
        switch3Checked: Data.Values.vncbutton
        switch2Checked: Data.Values.sshbutton
        switch1Checked: Data.Values.cambutton
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/

