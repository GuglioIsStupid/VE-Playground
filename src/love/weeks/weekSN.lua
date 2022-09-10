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

local song, difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksSpecialNote:enter()
		stages["stage"]:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		healthBarColorEnemy = {175,102,206}		

		enemyIcon:animate("daddy dearest", false)

		self:load()
	end,

	load = function(self)
		weeksSpecialNote:load()
		stages["stage"]:load()

		inst = love.audio.newSource("songs/test/epiphany/Inst.ogg", "stream")
		voices = love.audio.newSource("songs/test/epiphany/Voices.ogg", "stream")

		self:initUI()

		weeksSpecialNote:setupCountdown()
	end,

	initUI = function(self)
		weeksSpecialNote:initUI()
		weeksSpecialNote:generateNotes(love.filesystem.load("songs/test/epiphany/epiphany-hard.lua")())
	end,

	update = function(self, dt)
		weeksSpecialNote:update(dt)
		stages["stage"]:update(dt)

		if health >= 80 then
			if enemyIcon:getAnimName() == "daddy dearest" then
				enemyIcon:animate("daddy dearest losing", false)
			end
		else
			if enemyIcon:getAnimName() == "daddy dearest losing" then
				enemyIcon:animate("daddy dearest", false)
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused then
			if storyMode and song < 3 then
				song = song + 1

				self:load()
			else
				status.setLoading(true)

				graphics.fadeOut(
					0.5,
					function()
						if storyMode then
							Gamestate.switch(menuWeek)
						else
							Gamestate.switch(menuFreeplay)
						end

						status.setLoading(false)
					end
				)
			end
		end

		weeksSpecialNote:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			stages["stage"]:draw()

			weeksSpecialNote:drawRating(0.9)
		love.graphics.pop()

		weeksSpecialNote:drawHealthBar()
		if not paused then
			weeksSpecialNote:drawUI()
		end
	end,

	leave = function(self)
		stages["stage"]:leave()
		weeksSpecialNote:leave()
	end
}
