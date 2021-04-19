import sys,logging
import os
from PySide2.QtCore import *

Lcdlightpath = '/sys/class/backlight/1-0045/brightness'
SSHonPath = '/lib/systemd/system/ssh.service'
SSHoffPath = '/etc/systemd/system/multi-user.target.wants/ssh.service'
VNConPath = '/usr/lib/systemd/system/vncserver-x11-serviced.service'
VNCoffPath = '/etc/systemd/system/multi-user.target.wants/vncserver-x11-serviced.service'

class Settting(QObject):
    # LCD Backlight
    @Slot(int)
    def Lcdlightset(self,val):
        if os.path.isfile(Lcdlightpath):
            os.system('sudo chown pi:pi '+ Lcdlightpath)
            values = '%d'%val
            x = 'echo ' + values + ' > /sys/class/backlight/1-0045/brightness'
            os.system(x)
        else:
            logging.error("Please set the correct Lcdlight device name path")

    #Camera
    @Slot()
    def Cameraon(self):
        os.system('sudo sed -i "s/start_x=0/start_x=1/g" /boot/config.txt')
        logging.info("Cameraon on")
    @Slot()
    def Cameraoff(self):
        os.system('sudo sed -i "s/start_x=1/start_x=0/g" /boot/config.txt')
        logging.info("Cameraon off")

    #SSH
    @Slot()
    def SSHon(self):
        if os.path.isfile(SSHonPath):
            os.system('sudo ln -s' + SSHonPath + SSHoffPath)
            logging.info("SSH ON")
        else:
            logging.error("Please set the correct SSH ON path")
    @Slot()
    def SSHoff(self):
        if os.path.isfile(SSHonPath):
            os.system('sudo rm ' + SSHoffPath)
            logging.info("SSH OFF")
        else:
            logging.error("Please set the correct SSH OFF path")

    #VNC
    @Slot()
    def VNCon(self):
        if os.path.isfile(VNConPath):
            os.system('sudo ln -s' +  VNConPath + VNCoffPath)
            logging.info("VNC ON")
        else:
            logging.error("Please set the correct VNC ON path")
    @Slot()
    def VNCoff(self):
        if os.path.isfile(VNCoffPath):
            os.system('sudo rm' + VNCoffPath)
            logging.info("VNC OFF")
        else:
            logging.error("Please set the correct VNC OFF path")
        
    #SPI
    @Slot()
    def SPIon(self):
        os.system('sudo sed -i "s/dtparam=spi=off/dtparam=spi=on/g" /boot/config.txt')
        logging.info("SPI ON")
    @Slot()
    def SPIoff(self):
        os.system('sudo sed -i "s/dtparam=spi=on/dtparam=spi=off/g" /boot/config.txt')
        logging.info("SPI OFF")

    #I2C
    @Slot()
    def I2Con(self):
        os.system('sudo sed -i "s/dtparam=i2c_arm=off/dtparam=i2c_arm=on/g" /boot/config.txt')
        logging.info("I2C ON")
    @Slot()
    def I2Coff(self):
        os.system('sudo sed -i "s/dtparam=i2c_arm=on/dtparam=i2c_arm=off/g" /boot/config.txt')
        logging.info("I2C OFF")

    #Serial
    @Slot()
    def Serialon(self):
        os.system('sudo sed -i "s/enable_uart=0/enable_uart=1/g" /boot/config.txt')
        logging.info("Serial ON")
    @Slot()
    def Serialoff(self):
        os.system('sudo sed -i "s/enable_uart=1/enable_uart=0/g" /boot/config.txt')
        logging.info("Serial OFF")

    #Shutdown
    @Slot()
    def Shutdown(self):
        os.system('sudo shutdown now')
        logging.info("R2 System Shutdown")

    #Reboot
    @Slot()
    def Rebooton(self):
        os.system('sudo reboot')
        logging.info("R2 System Reboot")

    #Logout
    @Slot()
    def Logout(self):
        sys.exit()
