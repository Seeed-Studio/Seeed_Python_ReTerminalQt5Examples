# This Python file uses the following encoding: utf-8
import os, logging
import sys
import platform

try:
	import PySide2.QtQml
except ImportError:
	import PyQt5.QtQml

if 'PyQt5' in sys.modules:
	from PyQt5.QtQml import QQmlApplicationEngine
	from PyQt5.QtWidgets import *
	from PyQt5.QtCore import *
	print("this app use pyqt5")
else:
	from PySide2.QtQml import QQmlApplicationEngine
	from PySide2.QtWidgets import *
	from PySide2.QtQuick import *
	from PySide2.QtCore import *
	print("this app use pyside2")

from CpuInfo import CpuUsage, Cputemperature
from RamUsage import RamUsage
from StorageUsage import StorageUsage
from Accelerator import Accelerator
from LedsKey import LedsKey
from TouchPanel import TouchPanel
from SystemInfo import Systeminfo
from SystemSet import Settting
from Light import LightSensor

deviceFilePath = '/sys/class/input/'
intputdevPath  = '/dev/input/'
tpfilePath = None
LedsKeyPath = None
AcceleratorPath = None
LightPath = None
LOG_FORMAT = "%(asctime)s - %(levelname)s - %(message)s"
LOG_NAME = "my.log"


#定时器的方式
# class MyClass(QObject):
#     timerSignal = Signal(int)

#     def __init__(self):
#         super().__init__()

#         # 定义一个时间信号
        
#         self._timer = QTimer(self, timeout=self.onTimeout)
#         self._timer.start(1000)

#     def onTimeout(self):
#         # 定时器发送信号通知qml
#         val = random.randint(1,100)
#         print("val",val)
#         self.timerSignal.emit(int(val))

# 线程的方式
if __name__ == '__main__':
    app = QApplication([])
    logging.basicConfig(filename=LOG_NAME,level=logging.DEBUG,format=LOG_FORMAT)
    # view = QQuickView()
    engine = QQmlApplicationEngine()
    if 'buildroot' in platform.uname():
    	engine.addImportPath("/usr/qml")
    	url = QUrl("../Fullscreen_app_for_buildroot.qml")
    else:
    	engine.addImportPath("../imports/"+platform.machine())
    	url = QUrl("../Fullscreen_app.qml")
    # url = QUrl("Ui.ui.qml")
    context = engine.rootContext()

    appFilePath = os.getcwd()
    os.chdir(deviceFilePath)
    number = len(os.listdir(os.getcwd()))
    for num in range(0,number):
        namePath ="/sys/class/input/event%d/device/name"%(num)
        if os.path.isfile(namePath):
            try:
                f = open(namePath,'r')
            except IOError:
                logging.error("open input device name file faild")
            devname = f.read().split('\n')[0]
            if devname == 'seeed-tp':
                tpfilePath = intputdevPath + "event%d"%(num)
                f.close()
            if devname == 'gpio_keys':
                LedsKeyPath = intputdevPath + "event%d"%(num)
                f.close()
            if devname == 'ST LIS3LV02DL Accelerometer':
                AcceleratorPath = intputdevPath + "event%d"%(num)
                f.close()

    os.chdir(appFilePath)

    cpu = CpuUsage()
    cputem = Cputemperature()
    arm = RamUsage()
    Storage = StorageUsage()
    sysinfo = Systeminfo()
    seting = Settting()
    light = LightSensor()

    if tpfilePath:
        touchpanel = TouchPanel(tpfilePath)
        context.setContextProperty("_TouchPanel", touchpanel)
        touchpanel.start()
    else:
        logging.debug("touch panel device file path is wrong!")

    if LedsKeyPath:
        ledkey = LedsKey(LedsKeyPath)
        context.setContextProperty("_LedsKey", ledkey)
        ledkey.start()
    else:
        logging.debug("gpio_keys device file path is wrong!")

    if AcceleratorPath:
        axis = Accelerator(AcceleratorPath)
        context.setContextProperty("_Accelerator", axis)
        axis.start()
    else:
        logging.debug("Accelerator device file path is wrong!")

    # context = view.rootContext()
    context.setContextProperty("_CpuUsage", cpu)
    context.setContextProperty("_Cputemperature", cputem)
    context.setContextProperty("_RamUsage", arm)
    context.setContextProperty("_StorageUsage", Storage)
    context.setContextProperty("_Systeminfo", sysinfo)
    context.setContextProperty("_Settting", seting)
    context.setContextProperty("_LightSensor", light)

    cpu.start()
    cputem.start()
    arm.start()
    Storage.start()
    sysinfo.start()
    light.start()

    # view.setSource(url)
    # view.show()
    engine.load(url)
    # engine.show()
    app.exec_()
