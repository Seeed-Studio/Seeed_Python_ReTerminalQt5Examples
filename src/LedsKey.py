import sys
import os
from PySide2.QtCore import *
from evdev import *
class LedsKey(QThread):
    KeySignal = Signal(int,str)
    Path = None
    def __init__(self,path):
        super().__init__()
        if path:
            self.Path = path
                
    def run(self):    
        while True:
            key = InputDevice(self.Path)
            # print(key)
            for event in key.read_loop():
                if event.type == ecodes.EV_KEY:
                    keyevents = repr(event)
                    val_list = keyevents.replace('(','').replace(')','').replace(' ','').split(',')
                    # print(val_list)
                    if val_list[3] == '33':
                        key_4 = int(val_list[4])
                        self.KeySignal.emit(key_4,'key4')
                    if val_list[3] == '32':
                        key_3 = int(val_list[4])
                        self.KeySignal.emit(key_3,'key3')
                    if val_list[3] == '31':
                        key_2 = int(val_list[4])
                        self.KeySignal.emit(key_2,'key2')
                    if val_list[3] == '30':
                        key_1 = int(val_list[4])
                        self.KeySignal.emit(key_1,'key1')
