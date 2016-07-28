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
import QtQuick.Layouts 1.2

Rectangle
{
	Button
	{
		action: backAction
	}
	GridLayout
	{
		id: settingsGrid
		columns: 2
		columnSpacing: 20
		anchors.fill: parent
		anchors.margins: 30
		Text
		{
			text: "Refresh interval (in ms):"
		}
		SpinBox
		{
			id: interval
			maximumValue: 60 * 60 * 100 //one hour
			value: settings.interval
		}
		Text
		{
			text: "Display big images?"
		}
		Switch
		{
			id: bigImage
			checked: settings.bigImage
		}
	}
	Action
	{
		id: backAction
		text: "&Back"
		iconName: "go-previous"
		onTriggered:
		{
			settings.interval = interval.value;
			settings.bigImage = bigImage.checked;
			pageLoader.source = "kadse.qml";
		}
	}
}
