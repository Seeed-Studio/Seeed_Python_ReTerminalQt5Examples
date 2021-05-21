import QtQuick 2.8
import QtCharts 2.2
import "backend/Data" as Data
Item {
    id: accel1
    width: 833
    height: 480

    property alias axisX: axis_x
    property alias axisY: axis_y
    property alias axisZ: axis_z

    ChartView {
        id: chartview
        anchors.fill: parent
        antialiasing: true

        //X轴
        ValueAxis {
            id: valueAxisX
            min: 5>=axisXvalue ? 0:axisXvalue-5
            max: 5>=axisXvalue ? 5:axisXvalue - 1
            tickCount: 6
        }

        //Y轴
        ValueAxis {
            id: valueAxisY
            min: -1200
            max: 1200
            tickCount: 7
        }

        SplineSeries {
            id:axis_x
            name: "x"
            axisX: valueAxisX
            axisY: valueAxisY
        }

        SplineSeries {
            id:axis_y
            name: "y"
            axisX: valueAxisX
            axisY: valueAxisY
        }

        SplineSeries {
            id:axis_z
            name: "z"
            axisX: valueAxisX
            axisY: valueAxisY
            
        }
    }
    
    Image {
        id: accel_border
        x: 0
        y: 0
        source: "assets/accel_border.png"
    }

    Text {
        id: axis_accelerometer
        x: 43
        y: 31
        width: 221
        height: 26
        color: "#000000"
        text: "3-Axis Accelerometer"
        font.pixelSize: 21
        horizontalAlignment: Text.AlignLeft
        font.styleName: "Regular"
        font.family: "Microsoft YaHei"
    }
}

/*##^##
Designer {
    D{i:0;uuid:"ea5896b3df1d22f0abdf13e302ffb028"}D{i:1;uuid:"83836960d50307157ef06d38b0e137f1"}
D{i:2;uuid:"d3de8bb08bb40facb4560f9f9b7781ea"}
}
##^##*/

