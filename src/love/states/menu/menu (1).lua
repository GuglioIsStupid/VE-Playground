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

local upFunc, downFunc, confirmFunc, backFunc, drawFunc, musicStop

local menuState

local menuNum = 1

local songNum, songAppend
local songDifficulty = 2

local selectSound = love.audio.newSource("sounds/menu/select.ogg", "static")
local confirmSound = love.audio.newSource("sounds/menu/confirm.ogg", "static")

music = love.audio.newSource("songs/misc/menu.ogg", "stream")
note = graphics.newImage(love.graphics.newImage(graphics.imagePath("note")))
rec1 = graphics.newImage(love.graphics.newImage(graphics.imagePath("note")))
rec2 = graphics.newImage(love.graphics.newImage(graphics.imagePath("note")))

local function switchMenu(menu)
	function backFunc()
		graphics.fadeOut(0.5, love.event.quit)
	end

	menuState = 1
end


return {
	enter = function(self, previous)


		--weeks:enter()

		--weeks:load()
		noteDir = "right"

		noteSpeed = 600

		bpm = 100




		cam.sizeX, cam.sizeY = 0.9, 0.9
		camScale.x, camScale.y = 0.9, 0.9

		switchMenu(1)

		graphics.setFade(0)
		graphics.fadeIn(0.5)

		rec1.x = -630

		rec2.x = 630

		--weeks:setupCountdown()

	end,


	update = function(self, dt)
		if not graphics.isFading() then
			if input:pressed("confirm") then
				if not changingMenu then
					changingMenu = true
				end
			elseif input:pressed("back") then
				audio.playSound(selectSound)

				backFunc()
			end
		end

		if not countingDown then

			if noteDir == "right" then
				note.x = note.x + noteSpeed * dt
			else
				note.x = note.x - noteSpeed * dt
			end
		end


		if input:pressed("gameRight") and note.x > 600 and note.x < 660 then
			noteDir = "left"

			noteSpeed = love.math.random(500, 800)
		elseif input:pressed("gameLeft") and note.x < -600 and note.x > -660 then
			noteDir = "right"

			noteSpeed = love.math.random(500, 800)
		end

		love.graphics.setColor(1, 1, 1)

		love.graphics.printf(note.x, 0, 0, 853, "center", nil, 1.5, 1.5)

	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)

			love.graphics.push()
				love.graphics.scale(cam.sizeX, cam.sizeY)


				rec1:draw()

				rec2:draw()

				note:draw()


				love.graphics.printf(note.x, 0, 0, 853, "center", nil, 1.5, 1.5)


			love.graphics.pop()
		love.graphics.pop()
	end,

	leave = function(self)
		Timer.clear()
	end
}
