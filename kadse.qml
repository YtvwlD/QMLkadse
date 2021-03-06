// QMLkadse
// Copyright (C) 2016 Niklas Sombert
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle
{
	Button
	{
		x: parent.width - this.width
		action: optionsAction
	}
	Image
	{
		id: kadse
		anchors.fill: parent
		fillMode: Image.PreserveAspectFit
	}
	Timer
	{
		interval: settings.interval
		running: true
		repeat: true
		triggeredOnStart: true
		onTriggered: kadse.source = "https://maurudor.de/" + (settings.bigImage? "" : "thumb") + "?time=" + Date.now()
	}
	Action
	{
		id: optionsAction
		text: "&Settings"
		iconName: "preferences-other"
		onTriggered: pageLoader.source = "options.qml"
	}
}
