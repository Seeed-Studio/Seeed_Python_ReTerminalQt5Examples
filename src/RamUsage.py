import sys,logging
import os
from PySide2.QtCore import *
class RamUsage(QThread):
    RamSignal = Signal(int)
    def __init__(self):
        super().__init__()
    
    def run(self):
        p = os.popen('free')
        i = 0
        while True:
            i = i + 1
            line = p.readline()
            if i==2:
                RAM_stats = line.split()[1:4]  
                RAM_total = round(int(RAM_stats[0]) / 1000,0)
                RAM_used = round(int(RAM_stats[1]) / 1000,0)
                # logging.info("RAM_total",RAM_total)
                # logging.info("RAM_used",RAM_used)
                used = round(int((RAM_used / RAM_total) * 100),0)
                # logging.info("used",used)
                self.RamSignal.emit(int(used))
                self.sleep(1)
                p = os.popen('free')
                i = 0