# Seeed_Python_ReTerminal_Examples

This is a demo application to check hardware resources usage and test onboard hardware on the [reTerminal](https://www.seeedstudio.com/ReTerminal-with-CM4-p-4904.html).

Here PySide2 is used for the development. PySide2 is the official Python module from the Qt for Python project, which provides access to the complete Qt5 framework. Qt for Python allows you to build interactive user interfaces in a more user friendly way! It is also very flexible to use and has a short learning curve. 

For a step-by-step guide on building your own UI using Qt for Python on the reTerminal, click [here](https://wiki.seeedstudio.com/reTerminal-build-UI-using-Qt-for-Python/)

<p style="text-align:center;"><img src="https://files.seeedstudio.com/wiki/ReTerminal/Qt-Demo.gif" alt="pir" width="1000" height="auto"></p>

- **Step 1.** Start by installing the following packages

```shell
sudo apt install at-spi2-core qml-module-qtquick-shapes python3-pyside2.qtqml python3-pyside2.qtcore python3-pyside2.qtnetwork python3-pyside2.qtgui python3-pyside2.qtwidgets python3-pyside2.qtquick qtquickcontrols2-5-dev qml-module-qtcharts qml-module-qtquick-controls qml-module-qtquick-controls2 python3-evdev python3-psutil
```

- **Step 2.** Clone this repository

```sh
git clone https://github.com/Seeed-Studio/Seeed_Python_ReTerminalQt5Examples
```

- **Step 3.** Navigate to `Seeed_Python_ReTerminalQt5Examples > src` using the reTerminal LCD and double-click **r2.desktop** to open the above Qt application!

If you cannot successfully run the demo and encounter errors, please proceed to the following steps:

- **Step 1.** Install the necessary compilation tools

```
sudo apt install qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools
sudo apt install qtdeclarative5-private-dev qtbase5-private-gles-dev
```

- **Step 2.** Execute the following to compile qtquicktimeline

```sh
git clone git://code.qt.io/qt/qtquicktimeline
cd qtquicktimeline
git checkout 5.15.2
qmake 
make
sudo make install 
```

- **Step 3.** If you are using RPi OS 32-bit version, copy `qtquicktimeline/qml/QtQuick/Timeline` folder and paste with `Seeed_Python_ReTerminalQt5Examples/imports/armv7l/QtQuick/Timeline` 

- **Step 4.** If you are using RPi OS 64-bit version, copy `qtquicktimeline/qml/QtQuick/Timeline` folder and paste with `Seeed_Python_ReTerminalQt5Examples/imports/aarch64/QtQuick/Timeline`

- **Step 5.** Run the demo as explained above

If you still encounter errors, proceed to the following:

- **Step 1.** Execute the following to compile qtquickdesigner-components

```sh
git clone git://github.com/Pillar1989/qtquickdesigner-components.git
cd qtquickdesigner-components
qmake 
make 
sudo make install 
```

- **Step 2.** If you are using RPi OS 32-bit version, copy `qtquickdesigner-components/qml/QtQuick/Studio` folder and paste with `Seeed_Python_ReTerminalQt5Examples/imports/armv7l/QtQuick/Studio` 

- **Step 3.** If you are using RPi OS 64-bit version, copy `qtquickdesigner-components/qml/QtQuick/Studio` folder and paste with `Seeed_Python_ReTerminalQt5Examples/imports/aarch64/QtQuick/Studio` 