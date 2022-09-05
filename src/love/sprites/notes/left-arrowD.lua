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
		{x = 3186, y = 256, width = 343, height = 201, offsetX = -146, offsetY = -59, offsetWidth = 635, offsetHeight = 260}, -- 15: Purple Arrow0000
		{x = 3530, y = 256, width = 495, height = 248, offsetX = -70, offsetY = -12, offsetWidth = 635, offsetHeight = 260}, -- 16: Purple Arrow0001
		{x = 0, y = 512, width = 565, height = 254, offsetX = -35, offsetY = -6, offsetWidth = 635, offsetHeight = 260}, -- 17: Purple Arrow0002
		{x = 566, y = 512, width = 635, height = 260, offsetX = -0, offsetY = -0, offsetWidth = 635, offsetHeight = 260}, -- 18: Purple Arrow0003
		{x = 1202, y = 512, width = 565, height = 254, offsetX = -35, offsetY = -6, offsetWidth = 635, offsetHeight = 260}, -- 19: Purple Arrow0004
		{x = 1768, y = 512, width = 495, height = 248, offsetX = -70, offsetY = -12, offsetWidth = 635, offsetHeight = 260}, -- 20: Purple Arrow0005
		{x = 2264, y = 512, width = 425, height = 242, offsetX = -105, offsetY = -18, offsetWidth = 635, offsetHeight = 260}, -- 21: Purple Arrow0006
	},
	{
		["on"] = {start = 1, stop = 7, speed = 0, offsetX = 0, offsetY = 0},
	},
	"on",
	false
)
