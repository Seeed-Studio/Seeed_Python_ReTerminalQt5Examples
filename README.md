# Seeed_Python_ReTerminal_Examples
Python Examples for Seeed ReTerminal

<p style="text-align:center;"><img src="https://files.seeedstudio.com/wiki/ReTerminal/Qt-Demo.gif" alt="pir" width="1000" height="auto"></p>

For debian or ubuntu system ,you need install following packages.
```shell
sudo apt install at-spi2-core onboard qml-module-qtquick-shapes python3-pyside2.qtqml python3-pyside2.qtcore python3-pyside2.qtnetwork python3-pyside2.qtgui python3-pyside2.qtwidgets python3-pyside2.qtquick qtquickcontrols2-5-dev qml-module-qtcharts qml-module-qtquick-controls qml-module-qtquick-controls2 python3-evdev python3-psutil
```

because of default Debian and Ubuntu OS dont have `QtQuick.Studio` and `QtQuick.Timeline` modules. we can install them menually.

Install compile tools
```
sudo apt install qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools qtdeclarative5-private-dev qtbase5-private-gles-dev
```

Because of the lastest `QtQuick.Studio` cannt work on current RPI system. but we had port it to  `Debian GNU/Linux 10 (buster)`. 
```
git clone git://github.com/Pillar1989/qtquickdesigner-components.git
cd qtquickdesigner-components
qmake 
make 
sudo make install 
```

`QtQuick.Timeline` works, but missing packages.
```
git clone git://code.qt.io/qt/qtquicktimeline
cd qtquicktimeline
qmake 
make
sudo make install 
```
