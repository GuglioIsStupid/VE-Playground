local song, difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksDeathnote:enter()
		stages["stage"]:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		healthBarColorEnemy = {175,102,206}		

		enemyIcon:animate("daddy dearest", false)

		self:load()
	end,

	load = function(self)
		weeksDeathnote:load()
		stages["stage"]:load()

		if song == 3 then
			inst = love.audio.newSource("songs/week1/dadbattle/inst.ogg", "stream")
			voices = love.audio.newSource("songs/week1/dadbattle/voices.ogg", "stream")
		elseif song == 2 then
			inst = love.audio.newSource("songs/week1/fresh/inst.ogg", "stream")
			voices = love.audio.newSource("songs/week1/fresh/voices.ogg", "stream")
		else
			inst = love.audio.newSource("songs/tiky/expurgation/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/tiky/expurgation/Voices.ogg", "stream")
		end

		self:initUI()

		weeksDeathnote:setupCountdown()
	end,

	initUI = function(self)
		weeksDeathnote:initUI()

		if song == 3 then
			weeksDeathnote:generateNotes(love.filesystem.load("songs/week1/dadbattle/" .. difficulty .. ".lua")())
		elseif song == 2 then
			weeksDeathnote:generateNotes(love.filesystem.load("songs/week1/fresh/" .. difficulty .. ".lua")())
		else
			weeksDeathnote:generateNotes(love.filesystem.load("songs/tiky/expurgation/expurgation-hard.lua")())
		end
	end,

	update = function(self, dt)
		weeksDeathnote:update(dt)
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

		weeksDeathnote:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			stages["stage"]:draw()

			weeksDeathnote:drawRating(0.9)
		love.graphics.pop()

		weeksDeathnote:drawHealthBar()
		if not paused then
			weeksDeathnote:drawUI()
		end
	end,

	leave = function(self)
		stages["stage"]:leave()
		weeksDeathnote:leave()
	end
}
