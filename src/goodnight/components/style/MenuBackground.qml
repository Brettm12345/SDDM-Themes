/*
 *   Copyright 2019 Romain V. <contact@rokin.in> - <https://github.com/Rokin05>
 *
 *   This program is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, see <https://www.gnu.org/licenses>.
 */
 
import QtQuick 2.8

Rectangle { 
    id: control
    color: conf("background.color.normal")
    opacity: conf("background.opacity")

    Image {
        id: orbit
        LayoutMirroring.enabled: parent.LayoutMirroring.enabled
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 8
        width: parent.height - 100
        height: parent.height - 100
        source: "../artwork/orbit.svg"
        opacity: 0.3
        visible: !isFull
        RotationAnimation on rotation {
            loops: Animation.Infinite
            from: 0
            to: 360
            duration: 380000
        }
    }
    // Conf
    function conf(key, section) {
        var sec = (section === undefined ? "menu" : section);
        var val = config[sec + "/" + key];
        if (val === "true") {return true;}
        if (val === "false") {return false;}
        return val;
    }
}
