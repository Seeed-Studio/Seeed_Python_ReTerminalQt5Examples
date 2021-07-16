import sys,logging
import os

try:
        from PySide2.QtCore import *
except ImportError:
        from PyQt5.QtCore import *
if 'PyQt5' in sys.modules:
        from PyQt5.QtCore import pyqtSignal as Signal, pyqtSlot as Slot
else:
        from PySide2.QtCore import Signal, Slot

from evdev import *

lightpath = '/sys/bus/iio/devices/iio:device0/in_intensity_ir_raw'
class LightSensor(QThread):
    LightSignal = Signal(int)
    def __init__(self):
        super().__init__()
    def run(self): 
        if os.path.isfile(lightpath):
            try:
                f = open(lightpath,'r')
            except IOError:
                logging.error("open input device name file faild")   
            while True:
                f.seek(0)
                value = f.read().split('\n')[0]
                self.LightSignal.emit(int(value))
                
        else:
            logging.error("Please set the correct Light name path")