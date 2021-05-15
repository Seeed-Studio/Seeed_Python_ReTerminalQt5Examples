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

import QtQuick 2.0
import HelperWidgets 2.0
import QtQuick.Layouts 1.0
import StudioControls 1.0 as StudioControls

Column {
    anchors.left: parent.left
    anchors.right: parent.right

    Section {
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Fill Color")

        ColorEditor {
            caption: qsTr("Fill Color")
            backendValue: backendValues.fillColor
            supportGradient: true
            shapeGradients: true
        }


    }

    Section {
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Stroke Color")

        ColorEditor {
            caption: qsTr("Stroke Color")
            backendValue: backendValues.strokeColor
            supportGradient: false
        }
    }


    Section {
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Corner Radiuses")

        SectionLayout {
            rows: 2
            Label {
                text: qsTr("Radius")
            }
            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.radius
                    Layout.preferredWidth: 80
                    decimals: 1
                    minimumValue: 0
                    maximumValue: 200
                    stepSize: 1
                }
                ExpandingSpacer {

                }
            }
            Label {
                text: qsTr("Top Left Radius")
            }
            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.topLeftRadius
                    Layout.preferredWidth: 80
                    decimals: 1
                    minimumValue: 0
                    maximumValue: 200
                    stepSize: 1
                }
                ExpandingSpacer {

                }
            }

            Label {
                text: qsTr("Top Right Radius")
            }
            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.topRightRadius
                    Layout.preferredWidth: 80
                    decimals: 1
                    minimumValue: 0
                    maximumValue: 200
                    stepSize: 1
                }
                ExpandingSpacer {

                }
            }

            Label {
                text: qsTr("Bottom Right Radius")
            }
            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.bottomRightRadius
                    Layout.preferredWidth: 80
                    decimals: 1
                    minimumValue: 0
                    maximumValue: 200
                    stepSize: 1
                }
                ExpandingSpacer {

                }
            }

            Label {
                text: qsTr("Bottom Left Radius")
            }
            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.bottomLeftRadius
                    Layout.preferredWidth: 80
                    decimals: 1
                    minimumValue: 0
                    maximumValue: 200
                    stepSize: 1
                }
                ExpandingSpacer {

                }
            }
        }
    }

    BevelSection {
    }

    Section {
        anchors.left: parent.left
        anchors.right: parent.right
        caption: "Stroke Details"

        SectionLayout {
            rows: 2
            Label {
                text: qsTr("Stroke Width")
            }
            SecondColumnLayout {
                SpinBox {
                    id: strokeWidthSpin
                    backendValue: backendValues.strokeWidth
                    Layout.preferredWidth: 80
                    decimals: 1
                    minimumValue: -1
                    maximumValue: 200
                    stepSize: 1
                }

                Item { width: 20 }

                StudioControls.CheckBox {
                    id: strokeWidthCheck
                    text: qsTr("Hide stroke")
                    checked: (backendValues.strokeWidth.value >= 0 ? false : true)
                    actionIndicator.visible: false

                    onCheckedChanged: {
                        if (strokeWidthCheck.checked === true)
                            backendValues.strokeWidth.value = -1
                        else
                            backendValues.strokeWidth.value = ((backendValues.strokeWidth.value < 0) ? 4 : backendValues.strokeWidth.value)
                    }
                }

                ExpandingSpacer {
                }
            }

            Label {
                text: qsTr("Border Mode")
            }

            SecondColumnLayout {
                BorderModeComboBox {
                }
            }


            Label {
                text: qsTr("Stroke Style")
            }

            SecondColumnLayout {
                ComboBox {
                    id: strokeStyle
                    model: ["None", "Solid", "Dash", "Dot", "Dash Dot", "Dash Dot Dot"]
                    backendValue: backendValues.strokeStyle
                    Layout.fillWidth: true
                    useInteger: true
                }
            }

            Label {
                Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                text: qsTr("Dash Pattern")
            }

            DashPatternEditor {
                enableEditors: strokeStyle.currentIndex === 2
            }

            Label {
                text: qsTr("Joint Style")
            }

            SecondColumnLayout {
                ComboBox {
                    model: ["Miter Join", "Bevel Join", "Round Join"]
                    backendValue: backendValues.joinStyle
                    Layout.fillWidth: true
                    useInteger: true
                }
            }
            Label {
                text: qsTr("Dash Offset")
            }
            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.dashOffset
                    Layout.preferredWidth: 80
                    decimals: 1
                    minimumValue: 0
                    maximumValue: 1000
                    stepSize: 1
                }
            }
        }
    }
}
