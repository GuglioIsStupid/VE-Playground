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
		{x = 2690, y = 512, width = 343, height = 200, offsetX = -146, offsetY = -59, offsetWidth = 635, offsetHeight = 259}, -- 22: Red Arrow0000
		{x = 3034, y = 512, width = 495, height = 247, offsetX = -70, offsetY = -12, offsetWidth = 635, offsetHeight = 259}, -- 23: Red Arrow0001
		{x = 3530, y = 512, width = 565, height = 253, offsetX = -35, offsetY = -6, offsetWidth = 635, offsetHeight = 259}, -- 24: Red Arrow0002
		{x = 0, y = 773, width = 635, height = 259, offsetX = -0, offsetY = -0, offsetWidth = 635, offsetHeight = 259}, -- 25: Red Arrow0003
		{x = 636, y = 773, width = 565, height = 253, offsetX = -35, offsetY = -6, offsetWidth = 635, offsetHeight = 259}, -- 26: Red Arrow0004
		{x = 1202, y = 773, width = 495, height = 247, offsetX = -70, offsetY = -12, offsetWidth = 635, offsetHeight = 259}, -- 27: Red Arrow0005
		{x = 1698, y = 773, width = 425, height = 241, offsetX = -105, offsetY = -18, offsetWidth = 635, offsetHeight = 259}, -- 28: Red Arrow0006
	},
	{
		["on"] = {start = 1, stop = 7, speed = 0, offsetX = 0, offsetY = 0},
	},
	"on",
	false
)
