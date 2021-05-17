/****************************************************************************
**
** Copyright (C) 2020 The Qt Company Ltd.
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

import QtQuick 2.1
import HelperWidgets 2.0
import QtQuick.Layouts 1.0

Column {
    anchors.left: parent.left
    anchors.right: parent.right

    Section {
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Bidrectional Binding")

        SectionLayout {
            rows: 4
            columns: 2

            Label {
                text: qsTr("Target 01")
                tooltip: qsTr("Defines the target of th binding.")
            }
            SecondColumnLayout {
                ItemFilterComboBox {
                    typeFilter: "QtQml.QtObject"
                    validator: RegExpValidator { regExp: /(^$|^[a-z_]\w*)/ }
                    backendValue: backendValues.target01
                    Layout.fillWidth: true
                }

                ExpandingSpacer {
                }
            }

            Label {
                text: qsTr("Property 01")
            }
            LineEdit {
                backendValue: backendValues.property01
                Layout.fillWidth: true
                showTranslateCheckBox: false
            }
            Label {
                text: qsTr("Target 02")
                tooltip: qsTr("Defines the target Flow Item of which the state is changed.")
            }
            SecondColumnLayout {
                ItemFilterComboBox {
                    typeFilter: "QtQml.QtObject"
                    validator: RegExpValidator { regExp: /(^$|^[a-z_]\w*)/ }
                    backendValue: backendValues.target02
                    Layout.fillWidth: true
                }

                ExpandingSpacer {
                }
            }
            Label {
                text: qsTr("Property 02")
            }
            LineEdit {
                backendValue: backendValues.property02
                Layout.fillWidth: true
                showTranslateCheckBox: false
            }
        }

    }
}
