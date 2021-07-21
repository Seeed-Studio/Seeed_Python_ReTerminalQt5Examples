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

class StorageUsage(QThread):
    StoragSignal = Signal(int)
    def __init__(self):
        super().__init__()
    
    def run(self):
        p = os.popen("df -h /")
        i = 0
        while True:
            i = i +1
            line = p.readline()
            if i==2:
                DISK_stats = line.split()[1:5]
                DISK_total = round(float(str(DISK_stats[0][0:2])))
                DISK_used = round(float(str(DISK_stats[1][0:2])))

                # logging.info("DISK_total",DISK_total)
                # logging.info("DISK_used",DISK_used)

                val = round(int((DISK_used / DISK_total) * 100),0)
                # logging.info("StorageUsage",val)
                self.StoragSignal.emit(int(val))
                self.sleep(1)
                p = os.popen("df -h /")
                i = 0
