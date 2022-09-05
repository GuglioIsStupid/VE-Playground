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
		{x = 3530, y = 0, width = 343, height = 196, offsetX = -146, offsetY = -59, offsetWidth = 635, offsetHeight = 255}, -- 8: Green Arrow0000
		{x = 0, y = 256, width = 495, height = 243, offsetX = -70, offsetY = -12, offsetWidth = 635, offsetHeight = 255}, -- 9: Green Arrow0001
		{x = 496, y = 256, width = 565, height = 249, offsetX = -35, offsetY = -6, offsetWidth = 635, offsetHeight = 255}, -- 10: Green Arrow0002
		{x = 1062, y = 256, width = 635, height = 255, offsetX = -0, offsetY = -0, offsetWidth = 635, offsetHeight = 255}, -- 11: Green Arrow0003
		{x = 1698, y = 256, width = 565, height = 249, offsetX = -35, offsetY = -6, offsetWidth = 635, offsetHeight = 255}, -- 12: Green Arrow0004
		{x = 2264, y = 256, width = 495, height = 243, offsetX = -70, offsetY = -12, offsetWidth = 635, offsetHeight = 255}, -- 13: Green Arrow0005
		{x = 2760, y = 256, width = 425, height = 237, offsetX = -105, offsetY = -18, offsetWidth = 635, offsetHeight = 255}, -- 14: Green Arrow0006
	},
	{
		["on"] = {start = 1, stop = 7, speed = 0, offsetX = 0, offsetY = 0},
	},
	"on",
	false
)
