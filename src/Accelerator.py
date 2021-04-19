import sys
import os
from PySide2.QtCore import *
from evdev import *
class Accelerator(QThread):
    AxisSignal = Signal(int,str)
    Path = None
    def __init__(self,path):
        super().__init__()
        if path:
            self.Path = path
    
    def run(self):    
        while True:
            abs = InputDevice(self.Path)
            for event in abs.read_loop():
                if event.type == ecodes.EV_ABS:
                    val = repr(event)
                    val_list = val.replace('(','').replace(')','').replace(' ','').split(',')
                    if val_list[3] == '0':
                        axis_x = int(val_list[4])
                        self.AxisSignal.emit(axis_x,'x')
                    if val_list[3] == '1':
                        axix_y = int(val_list[4])
                        self.AxisSignal.emit(axix_y,'y')
                    if val_list[3] == '2':
                        axis_z = int(val_list[4])
                        self.AxisSignal.emit(axis_z,'z') 
                    # self.sleep(1)