--[[----------------------------------------------------------------------------
This file is part of Friday Night Funkin' Rewritten

Copyright (C) 2021  HTV04

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
------------------------------------------------------------------------------]]

return graphics.newSprite(
	images.notesD,
	{
		{x = 0, y = 0, width = 343, height = 196, offsetX = -146, offsetY = -59, offsetWidth = 635, offsetHeight = 255}, -- 1: Blue Arrow0000
		{x = 344, y = 0, width = 495, height = 243, offsetX = -70, offsetY = -12, offsetWidth = 635, offsetHeight = 255}, -- 2: Blue Arrow0001
		{x = 840, y = 0, width = 565, height = 249, offsetX = -35, offsetY = -6, offsetWidth = 635, offsetHeight = 255}, -- 3: Blue Arrow0002
		{x = 1406, y = 0, width = 635, height = 255, offsetX = -0, offsetY = -0, offsetWidth = 635, offsetHeight = 255}, -- 4: Blue Arrow0003
		{x = 2042, y = 0, width = 565, height = 249, offsetX = -35, offsetY = -6, offsetWidth = 635, offsetHeight = 255}, -- 5: Blue Arrow0004
		{x = 2608, y = 0, width = 495, height = 243, offsetX = -70, offsetY = -12, offsetWidth = 635, offsetHeight = 255}, -- 6: Blue Arrow0005
		{x = 3104, y = 0, width = 425, height = 237, offsetX = -105, offsetY = -18, offsetWidth = 635, offsetHeight = 255}, -- 7: Blue Arrow0006
    },
	{
		["on"] = {start = 1, stop = 7, speed = 0, offsetX = 0, offsetY = 0}
	},
	"on",
	false
)
