pragma Singleton
import QtQuick 2.10
import QtQuick 2.8
// import "simulation.js" as JS
// import "///home/pi/Python_For_Qt/QML/qml_5//Hardware.ui.qml" as AC

QtObject {
    id: values

    // settings
    // property bool cambutton: true
    // property bool sshbutton: false
    // property bool vncbutton: true
    // property bool spibutton: true
    // property bool i2cbutton: false
    // property bool serialbutton: true
    // property int brightness: 200

    // CM4 Name
    property string displayCM4name: "0"

    //reterminal build code
    property string displaybuildcode: "0"

    //system version
    property string displayos: "0"

    //kernel version
    property string displaykernel: "0"

    //Ethernet Connect
    property string displayethernet: "0"

    //wifi connection
    property string displaywifi: "0"

    // cpu dial values
    property int cpu: 0
    property string displaycpu: "0"

    Component.onCompleted: {
        // 绑定python中的信号到qml中的函数
        _CpuUsage.CpuSignal.connect(cpuchangevalue)
        _Cputemperature.CputemSignal.connect(cputemchangevalue)
        _RamUsage.RamSignal.connect(ramchangevalue)
        _StorageUsage.StoragSignal.connect(flashchangevalue)
        _Accelerator.AxisSignal.connect(axischangevalue)
        _Systeminfo.SystemSignal.connect(systeminfo)
        _LedsKey.KeySignal.connect(ledsbuttchange)
        _TouchPanel.TouchSignal.connect(touchpanelvalue)
        _LightSensor.LightSignal.connect(lightvaluechange)  
    }

    property int cpu_data: 0
    property int cpu_redata: 0
    function cpuchangevalue(value) {
        if(value != undefined) {
            values.cpu_data = Number(value)
        }  
    }
    function cpudisplay(){
        if(values.cpu_redata > values.cpu_data)
        {
            values.cpu = Number(values.cpu_redata * 10)
            values.displaycpu = String(values.cpu_redata)
            values.cpu_redata -= 1
        }
        if(values.cpu_redata < values.cpu_data)
        {
            values.cpu = Number(values.cpu_redata * 10)
            values.displaycpu = String(values.cpu_redata)
            values.cpu_redata += 1
        }
        
    }

    // cpu temp values
    property int cputemp: 0
    property string displaycputemp: "0"
    property int cputem_data: 0
    property int cputem_redata: 0
    function cputemchangevalue(value) {
        if(value != undefined) {
            values.cputem_data = Number(value)
        }  
    }
    function cputemdisplay(){
        if(values.cputem_redata > values.cputem_data)
        {   
            Values.cputemp = Number(values.cputem_redata * 10)
            Values.displaycputemp = String(values.cputem_redata)
            values.cputem_redata -= 1
        }
        if(values.cputem_redata < values.cputem_data)
        {
            Values.cputemp = Number(values.cputem_redata * 10)
            Values.displaycputemp = String(values.cputem_redata)
            values.cputem_redata += 1
        }
        
    }
    
    //ram values
    property int ram_data: 0
    property int ram_redata: 0
    function ramchangevalue(value) {
        if(value != undefined) {
            values.ram_data = Number(value)
        }  
    }
    function ramdisplay(value) {
        if(values.ram_redata > values.ram_data)
        {
            values.ram = Number(values.ram_redata * 10)
            values.displayram = String(values.ram_redata)
            values.ram_redata -= 1
        }
        if(values.ram_redata < values.ram_data)
        {
            values.ram = Number(values.ram_data * 10)
            values.displayram = String(values.ram_data)
            values.ram_redata += 1
        }
  
    }

    //flash values
    property int flash_data: 0
    property int flash_redata: 0
    function flashchangevalue(value) {
        if(value != undefined) {
            values.flash_data = Number(value) 
        }  
    }
    function flashdisplay(value) {
        if(values.flash_redata > values.flash_data)
        {
            values.flash = Number(values.flash_redata * 10)
            values.displayflash = String(values.flash_redata)
            values.flash_redata -= 1
        }
        if(values.flash_redata < values.flash_data)
        {
            values.flash = Number(values.flash_redata * 10)
            values.displayflash = String(values.flash_redata)
            values.flash_redata += 1
        }

    }

    //Accel
    property int displayaxisX: 0
    property int displayaxisY: 0
    property int displayaxisZ: 0
    function axischangevalue(value,str) {
        if (String(str) == 'x'){
            values.displayaxisX = Number(value)
        }
        if (String(str) == 'y'){
            values.displayaxisY = Number(value)
        }
        if (String(str) == 'z'){
            values.displayaxisZ = Number(value)
        }
    }

    //light
    property int lightvalue: 0
    function lightvaluechange(value) {
        values.lightvalue = Number(value) 
    }

    //leds
    property bool f1Visible
    property bool f2Visible
    property bool f3Visible
    property bool o1Visible
    function ledsbuttchange(value,str) {
        if (String(str) == 'key1'){
            if (Number(value) == 1)
            {
                f1Visible = true
                

            }
            if (Number(value) == 0)
            {
                f1Visible = false
            }     
        }
        if (String(str) == 'key2'){
            if (Number(value) == 1)
            {
                f2Visible = true
            }
            if (Number(value) == 0)
            {
                f2Visible = false
            }
        }
        if (String(str) == 'key3'){
            if (Number(value) == 1)
            {
                f3Visible = true
            }
            if (Number(value) == 0)
            {
                f3Visible = false
            }
        }
        if (String(str) == 'key4'){
            if (Number(value) == 1)
            {
                o1Visible = true
            }
            if (Number(value) == 0)
            {
                o1Visible = false
            }
        }
  
    }

    //touch panel
    property string circle1x: "-1"
    property string circle1y: "-1"
    property string circle2x: "200"
    property string circle2y: "200"
    property string circle3x: "300"
    property string circle3y: "200"
    property string circle4x: "100"
    property string circle4y: "200"
    property string circle5x: "500"
    property string circle5y: "300"

    property bool circle1Visible: false
    property bool circle2Visible: false
    property bool circle3Visible: false
    property bool circle4Visible: false
    property bool circle5Visible: false
    property string circle1Scale: "0"
    property string circle2Scale: "0"
    property string circle3Scale: "0"
    property string circle4Scale: "0"
    property string circle5Scale: "0"


    function touchpanelvalue(value,str) {
        if (String(str) == 'axisx1'){
            values.circle1x = String(Number(value) / 2)
            values.circle1Visible = true 
        }
        if (String(str) == 'axisy1'){
            values.circle1y = String(Number(value) / 2)
        }
        if (String(str) == 'axisz1'){
            values.circle1Scale = String(Number(value) / 255 * 20)
        }

        if (String(str) == 'axisx2'){
            values.circle2x = String(Number(value) / 2)
            values.circle2Visible = true 
        }
        if (String(str) == 'axisy2'){
            values.circle2y = String(Number(value) / 2)
        }
        if (String(str) == 'axisz2'){
            values.circle2Scale = String(Number(value) / 255 * 20)
        }

        if (String(str) == 'axisx3'){
            values.circle3x = String(Number(value) / 2)
            values.circle3Visible = true 
        }
        if (String(str) == 'axisy3'){
            values.circle3y = String(Number(value) / 2)
        }
        if (String(str) == 'axisz3'){
            values.circle3Scale = String(Number(value) / 255 * 20)
        }

        if (String(str) == 'axisx4'){
            values.circle4x = String(Number(value) / 2)
            values.circle4Visible = true 
        }
        if (String(str) == 'axisy4'){
            values.circle4y = String(Number(value) / 2)
        }
        if (String(str) == 'axisz4'){
            values.circle4Scale = String(Number(value) / 255 * 20)
        }

        if (String(str) == 'axisx5'){
            values.circle5x = String(Number(value) / 2)
            values.circle5Visible = true
            console.log("values.circle5x",values.circle5x)
        }
        if (String(str) == 'axisy5'){
            values.circle5y = String(Number(value) / 2)
            console.log("values.circle5y",values.circle5y)
        }
        if (String(str) == 'axisz5'){
            values.circle5Scale = String(Number(value) / 255 * 20)
        }

    }

    function systeminfo(str1,str2,str3,str4,str5,str6) {
        displayCM4name = String(str1)
        displaybuildcode = String(str2)
        displayos = String(str3)
        displaykernel = String(str4)
        displayethernet = String(str5)
        displaywifi = String(str6)
    }


    property Timer cpuTimer: Timer{
        running: true
        repeat: true
        onTriggered: cpudisplay()
        interval: 10
    }

 
    property Timer cputempTimer: Timer{
        running: true
        repeat: true
        onTriggered: cputemdisplay()
        interval: 20
    }

    // ram dial values
    property int ram: 0
    property string displayram: "0"

    property Timer ramTimer: Timer{
        running: true
        repeat: true
        onTriggered: ramdisplay()
        interval: 30
    }

    // flash dial values
    property int flash: 0
    property string displayflash: "0"

    property Timer flashTimer: Timer{
        running: true
        repeat: true
        onTriggered: flashdisplay()
        interval: 40
    }


}
