import sys
import os
import subprocess

try:
        from PySide2.QtCore import *
except ImportError:
        from PyQt5.QtCore import *
if 'PyQt5' in sys.modules:
        from PyQt5.QtCore import pyqtSignal as Signal, pyqtSlot as Slot
else:
        from PySide2.QtCore import Signal, Slot


cm4 = subprocess.getoutput("cat /proc/cpuinfo | grep 'Revision' | awk '{print $1,$2,$3}'")
build = subprocess.getoutput('cat /proc/device-tree/hardware')
rpios = subprocess.getoutput('lsb_release -ds')
linux = subprocess.getoutput('uname -r')
eth = os.popen('ip addr show eth0 | grep "\<inet\>" | awk \'{ print $2 }\' | awk -F "/" \'{ print $1 }\'').read().strip()
wifi = os.popen('ip addr show wlan0 | grep "\<inet\>" | awk \'{ print $2 }\' | awk -F "/" \'{ print $1 }\'').read().strip()

if wifi == '':
        wifi = 'Not connected to WiFi'
else:
        wifi = wifi

if eth == '':
        eth = 'Not connected to Ethernet'
else:
        eth = eth

class Systeminfo(QThread):
    SystemSignal = Signal(str,str,str,str,str,str)
    def __init__(self):
        super().__init__()
    
    def run(self):
        Compute = cm4
        Retermial = build
        Version = rpios
        Kernel = linux
        Ethernet = eth
        Wifi = wifi
        self.sleep(1)
        self.SystemSignal.emit(Compute,Retermial,Version,Kernel,Ethernet,Wifi)