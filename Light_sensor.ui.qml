import QtQuick 2.8
import QtCharts 2.2
import "backend/Data" as Data
Item {
    id: light
    width: 833
    height: 480

    property alias lightaxisX: light_x

    ChartView {
        id: chartview
        anchors.fill: parent
        antialiasing: true

        //X轴
        ValueAxis {
            id: lightAxisX
            min: 5>=lightaxisXvalue ? 0:lightaxisXvalue-5
            max: 5>=lightaxisXvalue ? 5:lightaxisXvalue - 1
            tickCount: 6
        }

        //Y轴
        ValueAxis {
            id: lightAxisY
            min: 500>=Data.Values.lightvalue ? 0:600
            max: 500>=Data.Values.lightvalue ? 600:30000
            tickCount: 7
        }

        SplineSeries {
            id:light_x
            name: "Light Intensity (Lux)"
            axisX: lightAxisX
            axisY: lightAxisY
        }  
    }

    Image {
        id: light_border
        x: 0
        y: 0
        source: "assets/light_border.png"
    }

    Text {
        id: light_sensor
        x: 45
        y: 38
        width: 104
        height: 25
        color: "#000000"
        text: "Light Sensor"
        font.pixelSize: 21
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Microsoft YaHei"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"06f9eda11bc877aaaa14a2ad2c60bea2"}D{i:1;uuid:"57000d26864f16c89b4be6c357a30322"}
D{i:2;uuid:"b15f19e004d87606aa05341526c9fe83"}
}
##^##*/

