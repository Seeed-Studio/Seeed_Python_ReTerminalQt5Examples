import sys
import os
from PySide2.QtCore import *
from evdev import *
class TouchPanel(QThread):
    TouchSignal = Signal(int,str)
    Path = None
    def __init__(self,path):
        super().__init__()
        if path:
            self.Path = path
    
    def run(self): 
        while True:
            touch = InputDevice(self.Path)
            circle1Visible = False
            circle2Visible = False
            circle3Visible = False
            circle3flage   = False
            circle4Visible = False
            circle4flage   = False
            circle5Visible = False
            circle5flage   = False
            for event in touch.read_loop():
                if event.type == ecodes.EV_ABS:
                    touchevents = repr(event)
                    val_list = touchevents.replace('(','').replace(')','').replace(' ','').split(',')
                    print(val_list)
                    if val_list[3] == '53':
                            xvalue = int(val_list[4])
                            self.TouchSignal.emit(xvalue,'axisx1')
                    if val_list[3] == '54':
                            yvalue = int(val_list[4])
                            self.TouchSignal.emit(yvalue,'axisy1')
                    if val_list[3] == '48':
                            zvalue = int(val_list[4])
                            self.TouchSignal.emit(zvalue,'axisz1')
               
                    if val_list[3] == '47':
                        if val_list[4] == '1':
                            circle1Visible = True
                    if circle1Visible == True:
                        if val_list[3] == '47':
                            if val_list[4] == '0':
                                 circle2Visible = True
                    if circle2Visible == True:
                        if val_list[3] == '53':
                            xvalue = int(val_list[4])
                            self.TouchSignal.emit(xvalue,'axisx2')
                        if val_list[3] == '54':
                            yvalue = int(val_list[4])
                            self.TouchSignal.emit(yvalue,'axisy2')
                        if val_list[3] == '48':
                            zvalue = int(val_list[4])
                            self.TouchSignal.emit(zvalue,'axisz2')

                    if val_list[3] == '47':
                        if val_list[4] == '2':
                            circle3flage = True
                    if circle3flage == True:
                        if val_list[3] == '47':
                            if val_list[4] == '0':
                                 circle3Visible = True
                    if circle3Visible == True:
                        if val_list[3] == '53':
                            xvalue = int(val_list[4])
                            self.TouchSignal.emit(xvalue,'axisx3')
                        if val_list[3] == '54':
                            yvalue = int(val_list[4])
                            self.TouchSignal.emit(yvalue,'axisy3')
                        if val_list[3] == '48':
                            zvalue = int(val_list[4])
                            self.TouchSignal.emit(zvalue,'axisz3')

                    if val_list[3] == '47':
                        if val_list[4] == '3':
                            circle4flage = True
                    if circle4flage == True:
                        if val_list[3] == '47':
                            if val_list[4] == '0':
                                 circle4Visible = True
                    if circle4Visible == True:
                        if val_list[3] == '53':
                            xvalue = int(val_list[4])
                            self.TouchSignal.emit(xvalue,'axisx4')
                        if val_list[3] == '54':
                            yvalue = int(val_list[4])
                            self.TouchSignal.emit(yvalue,'axisy4')
                        if val_list[3] == '48':
                            zvalue = int(val_list[4])
                            self.TouchSignal.emit(zvalue,'axisz4')

                    if val_list[3] == '47':
                        if val_list[4] == '4':
                            circle5flage = True
                    if circle5flage == True:
                        if val_list[3] == '47':
                            if val_list[4] == '0':
                                 circle5Visible = True
                    if circle5Visible == True:
                        if val_list[3] == '53':
                            xvalue = int(val_list[4])
                            self.TouchSignal.emit(xvalue,'axisx5')
                        if val_list[3] == '54':
                            yvalue = int(val_list[4])
                            self.TouchSignal.emit(yvalue,'axisy5')
                        if val_list[3] == '48':
                            zvalue = int(val_list[4])
                            self.TouchSignal.emit(zvalue,'axisz5')
            
                if event.type == ecodes.EV_SYN:
                    break