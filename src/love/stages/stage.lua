return {
    enter = function()
        stageImages = {
            graphics.newImage(love.graphics.newImage(graphics.imagePath("week1/stage-back"))), -- stage-back
		    graphics.newImage(love.graphics.newImage(graphics.imagePath("week1/stage-front"))), -- stage-front
		    graphics.newImage(love.graphics.newImage(graphics.imagePath("week1/curtains"))) -- curtains
        }

        stageImages[2].y = 400
        stageImages[3].y = -100

        enemy = love.filesystem.load("sprites/week1/daddy-dearest.lua")()
        enemy2 = love.filesystem.load("sprites/week1/daddy-dearest.lua")()

        girlfriend.x, girlfriend.y = 30, -90
        enemy.x, enemy.y = -380, -110
        enemy2.x, enemy2.y = -530, -110
        boyfriend.x, boyfriend.y = 260, 100
    end,

    load = function()

    end,

    update = function(self, dt)

    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

			stageImages[1]:draw()
			stageImages[2]:draw()

			girlfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)

			enemy:draw()
            enemy2:draw()
			boyfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

			stageImages[3]:draw()
		love.graphics.pop()
    end,

    leave = function()
        for i = 1, #stageImages do
            stageImages[i] = nil
        end
        enemy2 = nil
        enemy = nil
        boyfriend = nil
        girlfriend = nil
    end
}