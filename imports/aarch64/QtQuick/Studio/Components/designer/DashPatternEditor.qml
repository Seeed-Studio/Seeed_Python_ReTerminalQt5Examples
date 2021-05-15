/****************************************************************************
**
** Copyright (C) 2019 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of Qt Quick Designer Components.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.12
import QtQuick.Layouts 1.12
import HelperWidgets 2.0
import QtQuickDesignerTheme 1.0

GridLayout {
    id: root
    Layout.fillWidth: true
    rowSpacing: 2
    columnSpacing: 6
    rows: 2
    columns: 5

    property bool __block: false
    property int labelWidth: 32
    property bool enableEditors: true
    property variant backendValue: backendValues.dashPattern
    property string expression: backendValue.expression

    onExpressionChanged: root.parseExpression()

    function createArray() {
        if (root.__block)
            return

        var array = []
        array.push(dash01.value)
        array.push(gap01.value)
        array.push(dash02.value)
        array.push(gap02.value)

        root.__block = true
        root.backendValue.expression = '[' + array.toString() + ']'
        root.__block = false
    }

    function parseExpression() {
        if (root.__block)
            return

        root.__block = true

        dash01.value = 0
        gap01.value = 0
        dash02.value = 0
        gap02.value = 0

        var array = backendValue.expression.toString()
        array = array.replace("[", "")
        array = array.replace("]", "")
        array = array.split(',')

        try {
            dash01.value = array[0]
            gap01.value = array[1]
            dash02.value = array[2]
            gap02.value = array[3]
        } catch (err) {
        }

        root.__block = false
    }

    Connections {
        target: modelNodeBackend
        onSelectionChanged: parseExpression()
    }

    ExtendedFunctionLogic {
        id: extFuncLogic
        backendValue: root.backendValue
    }

    ActionIndicator {
        id: actionIndicator

        enabled: root.enableEditors
        icon.color: extFuncLogic.color
        icon.text: extFuncLogic.glyph
        onClicked: extFuncLogic.show()
    }

    Label {
        text: qsTr("Dash")
        color: Theme.color(Theme.PanelTextColorLight)
        elide: Text.ElideRight
        width: root.labelWidth
    }

    DoubleSpinBox {
        id: dash01

        enabled: root.enableEditors
        property color textColor: colorLogic.textColor
        ColorLogic {
            id: colorLogic
            backendValue: backendValues.dashPattern
        }
        onValueChanged: root.createArray()
        maximumValue: 1000
        Layout.fillWidth: true
    }

    Label {
        text: qsTr("Gap")
        color: Theme.color(Theme.PanelTextColorLight)
        elide: Text.ElideRight
        width: root.labelWidth
    }

    DoubleSpinBox {
        id: gap01

        enabled: root.enableEditors
        property color textColor: colorLogic.textColor

        onValueChanged: root.createArray()
        maximumValue: 1000
        Layout.fillWidth: true
    }

    Item {
        width: actionIndicator.width
    }

    Label {
        text: qsTr("Dash")
        color: Theme.color(Theme.PanelTextColorLight)
        elide: Text.ElideRight
        width: root.labelWidth
    }

    DoubleSpinBox {
        id: dash02

        enabled: root.enableEditors
        property color textColor: colorLogic.textColor

        onValueChanged: root.createArray()
        maximumValue: 1000
        Layout.fillWidth: true
    }

    Label {
        text: qsTr("Gap")
        color: Theme.color(Theme.PanelTextColorLight)
        elide: Text.ElideRight
        width: root.labelWidth
    }

    DoubleSpinBox {
        id: gap02

        enabled: root.enableEditors
        property color textColor: colorLogic.textColor

        onValueChanged: root.createArray()
        maximumValue: 1000
        Layout.fillWidth: true
    }
}
