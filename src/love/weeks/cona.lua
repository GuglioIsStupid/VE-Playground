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
		weeksModchart2:enter()
		stages["stage"]:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		healthBarColorEnemy = {175,102,206}		

		enemyIcon:animate("daddy dearest", false)

        arrowTween = {}

		self:load()
	end,

	load = function(self)
		weeksModchart2:load()
		stages["stage"]:load()

		inst = love.audio.newSource("songs/cona/Inst.ogg", "stream")
		voices = love.audio.newSource("songs/cona/Voices.ogg", "stream")

		self:initUI()

		weeksModchart2:setupCountdown()
	end,

	initUI = function(self)
		weeksModchart2:initUI()

		weeksModchart2:generateNotes(love.filesystem.load("songs/cona/cona-hard.lua")())
	end,

	update = function(self, dt)
		weeksModchart2:update(dt)
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

        if musicTime >= 30000 and musicTime <= 30025 then
            for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.9, 
                    notesYEnemy, 
                    {[i] = 200}, 
                    "linear",
                    function()
                       Timer.tween(
                        0.9, 
                        notesYEnemy, 
                        {[i] = 0}, 
                        "linear"
                        )
                    end
                )
            end
        end
        if musicTime >= 31875 and musicTime <= 31900 then
           for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.9, 
                    notesYEnemy, 
                    {[i] = 200}, 
                    "linear",
                    function()
                       Timer.tween(
                        0.9, 
                        notesYEnemy, 
                        {[i] = 0}, 
                        "linear"
                        )
                    end
                )
            end
        end
        if musicTime >= 33750 and musicTime <= 33775 then
           for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.9, 
                    notesYEnemy, 
                    {[i] = 200}, 
                    "linear",
                    function()
                       Timer.tween(
                        0.9, 
                        notesYEnemy, 
                        {[i] = 0}, 
                        "linear"
                        )
                    end
                )
            end
        end
        if musicTime >= 35625 and musicTime <= 35650 then
           for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.9, 
                    notesYEnemy, 
                    {[i] = 200}, 
                    "linear",
                    function()
                       Timer.tween(
                        0.9, 
                        notesYEnemy, 
                        {[i] = 0}, 
                        "linear"
                        )
                    end
                )
            end
        end
        if musicTime >= 37500 and musicTime <= 37525 then
           for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.9, 
                    notesYBF, 
                    {[i] = 200}, 
                    "linear",
                    function()
                       Timer.tween(
                        0.9, 
                        notesYBF, 
                        {[i] = 0}, 
                        "linear"
                        )
                    end
                )
            end
        end
        if musicTime >= 39375 and musicTime <= 39400 then
           for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.9, 
                    notesYBF, 
                    {[i] = 200}, 
                    "linear",
                    function()
                       Timer.tween(
                        0.9, 
                        notesYBF, 
                        {[i] = 0}, 
                        "linear"
                        )
                    end
                )
            end
        end
        if musicTime >= 41250 and musicTime <= 41275 then
           for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.9, 
                    notesYBF, 
                    {[i] = 200}, 
                    "linear",
                    function()
                       Timer.tween(
                        0.9, 
                        notesYBF, 
                        {[i] = 0}, 
                        "linear"
                        )
                    end
                )
            end
        end
        if musicTime >= 43125 and musicTime <= 43150 then
           for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.9, 
                    notesYBF, 
                    {[i] = 200}, 
                    "linear",
                    function()
                       Timer.tween(
                        0.9, 
                        notesYBF, 
                        {[i] = 0}, 
                        "linear"
                        )
                    end
                )
            end
        end
        if musicTime >= 45000 and musicTime <= 45025 then
            for i = 1, 4 do
                if i == 2 or i == 4 then
                    if arrowTween[i] then
                        Timer.cancel(arrowTween[i])
                    end
                    arrowTween[i] = Timer.tween(
                        0.9, 
                        notesYEnemy, 
                        {[i] = 200}, 
                        "linear",
                        function()
                        Timer.tween(
                            0.9, 
                            notesYEnemy, 
                            {[i] = 0}, 
                            "linear"
                            )
                        end
                    )
                end
            end
        end
        if musicTime >= 46875 and musicTime <= 46900 then
           for i = 1, 4 do
                if i == 1 or i == 3 then
                    if arrowTween[i] then
                        Timer.cancel(arrowTween[i])
                    end
                    arrowTween[i] = Timer.tween(
                        0.9, 
                        notesYEnemy, 
                        {[i] = 200}, 
                        "linear",
                        function()
                        Timer.tween(
                            0.9, 
                            notesYEnemy, 
                            {[i] = 0}, 
                            "linear"
                            )
                        end
                    )
                end
            end
        end
        if musicTime >= 48750 and musicTime <= 48775 then
            for i = 1, 4 do
                if i == 2 or i == 4 then
                    if arrowTween[i] then
                        Timer.cancel(arrowTween[i])
                    end
                    arrowTween[i] = Timer.tween(
                        0.9, 
                        notesYEnemy, 
                        {[i] = 200}, 
                        "linear",
                        function()
                        Timer.tween(
                            0.9, 
                            notesYEnemy, 
                            {[i] = 0}, 
                            "linear"
                            )
                        end
                    )
                end
            end
        end
        if musicTime >= 50625 and musicTime <= 50650 then
            for i = 1, 4 do
                if i == 1 or i == 3 then
                    if arrowTween[i] then
                        Timer.cancel(arrowTween[i])
                    end
                    arrowTween[i] = Timer.tween(
                        0.9, 
                        notesYEnemy, 
                        {[i] = 200}, 
                        "linear",
                        function()
                        Timer.tween(
                            0.9, 
                            notesYEnemy, 
                            {[i] = 0}, 
                            "linear"
                            )
                        end
                    )
                end
            end
        end
        if musicTime >= 52500 and musicTime <= 52525 then
            for i = 1, 4 do
                if i == 2 or i == 4 then
                    if arrowTween[i] then
                        Timer.cancel(arrowTween[i])
                    end
                    arrowTween[i] = Timer.tween(
                        0.9, 
                        notesYBF, 
                        {[i] = 200}, 
                        "linear",
                        function()
                        Timer.tween(
                            0.9, 
                            notesYBF, 
                            {[i] = 0}, 
                            "linear"
                            )
                        end
                    )
                end
            end
        end
        if musicTime >= 54375 and musicTime <= 54400 then
            for i = 1, 4 do
                if i == 1 or i == 3 then
                    if arrowTween[i] then
                        Timer.cancel(arrowTween[i])
                    end
                    arrowTween[i] = Timer.tween(
                        0.9, 
                        notesYBF, 
                        {[i] = 200}, 
                        "linear",
                        function()
                        Timer.tween(
                            0.9, 
                            notesYBF, 
                            {[i] = 0}, 
                            "linear"
                            )
                        end
                    )
                end
            end
        end
        if musicTime >= 56250 and musicTime <= 56275 then
            for i = 1, 4 do
                if i == 2 or i == 4 then
                    if arrowTween[i] then
                        Timer.cancel(arrowTween[i])
                    end
                    arrowTween[i] = Timer.tween(
                        0.9, 
                        notesYBF, 
                        {[i] = 200}, 
                        "linear",
                        function()
                        Timer.tween(
                            0.9, 
                            notesYBF, 
                            {[i] = 0}, 
                            "linear"
                            )
                        end
                    )
                end
            end
        end
        if musicTime >= 58125 and musicTime <= 58150 then
            for i = 1, 4 do
                if i == 1 or i == 3 then
                    if arrowTween[i] then
                        Timer.cancel(arrowTween[i])
                    end
                    arrowTween[i] = Timer.tween(
                        0.9, 
                        notesYBF, 
                        {[i] = 200}, 
                        "linear",
                        function()
                        Timer.tween(
                            0.9, 
                            notesYBF, 
                            {[i] = 0}, 
                            "linear"
                            )
                        end
                    )
                end
            end
        end

        if musicTime >= 60000 and musicTime <= 60025 then
            for i = 1, 2 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
            end
            arrowTween[1] = Timer.tween(
                1,
                notesYEnemy,
                {
                    [1] = 200,
                    [2] = 200,
                    [3] = 200,
                    [4] = 200
                }
            )
            arrowTween[2] = Timer.tween(
                1,
                notesXEnemy,
                {
                    [1] = 160*2,
                    [2] = 160,
                    [3] = 0,
                    [4] = -160
                }
            )
            isWeirdThingEnemy = true
        end
        if musicTime >= 62812 and musicTime <= 62837 then
            for i = 1, 2 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
            end
            arrowTween[1] = Timer.tween(
                1,
                notesYBF,
                {
                    [1] = 200,
                    [2] = 200,
                    [3] = 200,
                    [4] = 200
                }
            )
            arrowTween[2] = Timer.tween(
                1,
                notesXBF,
                {
                    [1] = 160*2,
                    [2] = 160,
                    [3] = 0,
                    [4] = -160
                }
            )
            isWeirdThingBF = true
        end

        if musicTime >= 75000 and musicTime <= 75025 then
            for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
            end
            arrowTween[1] = Timer.tween(
                    1,
                    notesYEnemy,
                    {
                        [1] = 0,
                        [2] = 0,
                        [3] = 0,
                        [4] = 0
                    }
                )
                arrowTween[2] = Timer.tween(
                    1,
                    notesXEnemy,
                    {
                        [1] = 0,
                        [2] = 0,
                        [3] = 0,
                        [4] = 0
                    }
                )
                arrowTween[3] = Timer.tween(
                    1,
                    notesYBF,
                    {
                        [1] = 0,
                        [2] = 0,
                        [3] = 0,
                        [4] = 0
                    }
                )
                arrowTween[4] = Timer.tween(
                    1,
                    notesXBF,
                    {
                        [1] = 0,
                        [2] = 0,
                        [3] = 0,
                        [4] = 0
                    }
                )
            isWeirdThingEnemy = false
            isWeirdThingBF = false
        end
        if musicTime >= 90000 and musicTime <= 90025 then
            if arrowTween[1] then
                Timer.cancel(arrowTween[1])
            end
            arrowTween[1] = Timer.tween(
                0.5,
                curFlipEnemy,
                {
                    [1] = -1
                }
            )
            for i = 2, 5 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYEnemy,
                    {
                        [i-1] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYEnemy,
                            {
                                [i-1] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
            for i = 6, 9 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYBF,
                    {
                        [i-5] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYBF,
                            {
                                [i-5] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
        end
        if musicTime >= 91875 and musicTime <= 91900 then
            for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYEnemy,
                    {
                        [i] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYEnemy,
                            {
                                [1] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
            for i = 5, 8 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYBF,
                    {
                        [i-4] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYBF,
                            {
                                [i-4] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
        end

        if musicTime >= 93750 and musicTime <= 93775 then
            for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYEnemy,
                    {
                        [i] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYEnemy,
                            {
                                [i] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
            for i = 5, 8 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYBF,
                    {
                        [i-4] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYBF,
                            {
                                [i-4] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
        end

        if musicTime >= 95625 and musicTime <= 95650 then
            for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYEnemy,
                    {
                        [i] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYEnemy,
                            {
                                [i] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
            for i = 5, 8 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYBF,
                    {
                        [i-4] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYBF,
                            {
                                [i-4] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
        end

        if musicTime >= 97500 and musicTime <= 97525 then
            if arrowTween[1] then
                Timer.cancel(arrowTween[1])
            end
            if arrowTween[0] then
                Timer.cancel(arrowTween[0])
            end

            arrowTween[1] = Timer.tween(
                0.5,
                curFlipEnemy,
                {
                    [1] = 1
                }
            )
            arrowTween[0] = Timer.tween(
                0.5,
                curFlipBF,
                {
                    [1] = -1
                }
            )
            for i = 2, 5 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYEnemy,
                    {
                        [i-1] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYEnemy,
                            {
                                [i-1] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
            for i = 6, 9 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYBF,
                    {
                        [i-5] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYBF,
                            {
                                [i-5] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
        end

        if musicTime >= 99375 and musicTime <= 99400 then
            for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYEnemy,
                    {
                        [i] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYEnemy,
                            {
                                [i] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
            for i = 5, 8 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYBF,
                    {
                        [i-4] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYBF,
                            {
                                [i-4] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
        end

        if musicTime >= 101250 and musicTime <= 101275 then

            for i = 2, 5 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYEnemy,
                    {
                        [i-1] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYEnemy,
                            {
                                [i-1] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
            for i = 6, 9 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYBF,
                    {
                        [i-5] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYBF,
                            {
                                [i-5] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
        end

        if musicTime >= 103125 and musicTime <= 103150 then
            if arrowTween[1] then
                Timer.cancel(arrowTween[1])
            end
            if arrowTween[0] then
                Timer.cancel(arrowTween[0])
            end

            arrowTween[1] = Timer.tween(
                0.5,
                curFlipEnemy,
                {
                    [1] = 1
                }
            )
            arrowTween[0] = Timer.tween(
                0.5,
                curFlipBF,
                {
                    [1] = -1
                }
            )
            for i = 2, 5 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYEnemy,
                    {
                        [i-1] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYEnemy,
                            {
                                [i-1] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
            for i = 6, 9 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYBF,
                    {
                        [i-5] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYBF,
                            {
                                [i-5] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
        end

        if musicTime >= 105000 and musicTime <= 105025 then
            for i = 1, 4 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYEnemy,
                    {
                        [i] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYEnemy,
                            {
                                [i] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
            for i = 5, 8 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYBF,
                    {
                        [i-4] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYBF,
                            {
                                [i-4] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
        end

        if musicTime >= 106875 and musicTime <= 106900 then

            for i = 2, 5 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYEnemy,
                    {
                        [i-1] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYEnemy,
                            {
                                [i-1] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
            for i = 6, 9 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYBF,
                    {
                        [i-5] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYBF,
                            {
                                [i-5] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
        end

        if musicTime >= 108750 and musicTime <= 108775 then
            if arrowTween[1] then
                Timer.cancel(arrowTween[1])
            end
            if arrowTween[0] then
                Timer.cancel(arrowTween[0])
            end

            for i = 2, 5 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYEnemy,
                    {
                        [i-1] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYEnemy,
                            {
                                [i-1] = 0
                            },
                            "linear"
                        )
                    end
                )
            end
            for i = 6, 9 do
                if arrowTween[i] then
                    Timer.cancel(arrowTween[i])
                end
                arrowTween[i] = Timer.tween(
                    0.5,
                    notesYBF,
                    {
                        [i-5] = 200
                    },
                    "linear",
                    function()
                        Timer.tween(
                            0.5,
                            notesYBF,
                            {
                                [i-5] = 0
                            },
                            "linear"
                        )
                    end
                )
            end

            if musicTime >= 120000 and musicTime <= 120025 then
                for i = 1, 4 do
                    if arrowTween[i] then
                        Timer.cancel(arrowTween[i])
                    end
                    arrowTween[i] = Timer.tween(
                        0.8,
                        notesYEnemy,
                        {
                            [i] = 200
                        }
                    )
                end
                for i = 5, 8 do
                    if arrowTween[i] then
                        Timer.cancel(arrowTween[i])
                    end
                    arrowTween[i] = Timer.tween(
                        0.8,
                        notesYBF,
                        {
                            [i-4] = 200
                        }
                    )
                end
                if arrowTween[9] then
                    Timer.cancel(arrowTween[9])
                end
                if arrowTween[10] then
                    Timer.cancel(arrowTween[10])
                end
                arrowTween[9] = Timer.tween(
                    0.8,
                    notesXEnemy,
                    {
                        [1] = 165*3,
                        [2] = 165*2,
                        [3] = 165,
                        [4] = 0
                    }
                )
                arrowTween[10] = Timer.tween(
                    0.8,
                    notesXBF,
                    {
                        [1] = 165*3,
                        [2] = 165*2,
                        [3] = 165,
                        [4] = 0
                    }
                )
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

		weeksModchart2:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			stages["stage"]:draw()

			weeksModchart2:drawRating(0.9)
		love.graphics.pop()

		weeksModchart2:drawHealthBar()
		if not paused then
			weeksModchart2:drawUI()
		end
	end,

	leave = function(self)
		stages["stage"]:leave()
		weeksModchart2:leave()
	end
}
