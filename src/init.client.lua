--!strict

local Players = game:GetService("Players")

local LOCAL_PLAYER = Players.LocalPlayer
local PLAYER_GUI = LOCAL_PLAYER.PlayerGui

local createGUIElement = require(script.library.createGUIElement)
local FlappyBirdGame = require(script.FlappyBirdGame)

local hostContainer = createGUIElement({
	ClassName = "ScreenGui",
	Parent = PLAYER_GUI,
	ResetOnSpawn = false
})

local game = FlappyBirdGame.new({
	scrollSpeed = 0.3,
	gravity = 0.05
})

game:spawnPipe(Vector2.new(0.5, 0), 0.2)

game.gameArea.Parent = hostContainer