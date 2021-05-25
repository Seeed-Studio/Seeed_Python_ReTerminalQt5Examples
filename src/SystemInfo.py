import sys
import os
import subprocess
from PySide2.QtCore import *

CM4 = subprocess.getoutput("cat /proc/cpuinfo | grep 'Revision' | awk '{print $1,$2,$3}'")
RPiOS = subprocess.getoutput('lsb_release -ds')
Linux = subprocess.getoutput('uname -r')
Network = str(subprocess.check_output(['hostname', '-I'])).split(' ')[0].replace("b'", "")

class Systeminfo(QThread):
    SystemSignal = Signal(str,str,str,str,str,str)
    def __init__(self):
        super().__init__()
    
    def run(self):
        Compute = CM4
        Retermial = "V1.2"
        Version = RPiOS
        Kernel = Linux
        Ethernet = Network
        Wifi = Network
        self.sleep(1)
        self.SystemSignal.emit(Compute,Retermial,Version,Kernel,Ethernet,Wifi)