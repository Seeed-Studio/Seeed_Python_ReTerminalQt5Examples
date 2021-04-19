import sys,logging
import os
from PySide2.QtCore import *
class CpuUsage(QThread):
    CpuSignal = Signal(int)
    def __init__(self):
        super().__init__()
    
    def run(self):
        while True:
            p = os.popen("top -n1 | awk '/Cpu\(s\):/ {print $2}'").readline().strip("\n")
            cpu_used = int(float(p))
            # logging.info("CpuUsage",cpu_used)
            self.CpuSignal.emit(int(cpu_used))
            self.sleep(1)

class Cputemperature(QThread):
    CputemSignal = Signal(int)
    def __init__(self):
        super().__init__()
    
    def run(self):
        while True:
            f = open("/sys/class/thermal/thermal_zone0/temp",'r')
            temp = int(f.read().strip("\n"))/1000
            # logging.info("Cputemperature",temp)
            self.CputemSignal.emit(int(temp))
            self.sleep(1)