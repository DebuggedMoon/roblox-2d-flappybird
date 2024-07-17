--!strict

local Players = game:GetService("Players")

local LOCAL_PLAYER = Players.LocalPlayer
local PLAYER_GUI = LOCAL_PLAYER.PlayerGui

local createGUIElement = require(script.library.createGUIElement)
local createBirdUIElement = require(script.createBirdUIElement)

local hostContainer = createGUIElement({
	ClassName = "ScreenGui",
	Parent = PLAYER_GUI,
	ResetOnSpawn = false
})

local playArea = createGUIElement(
	{
		ClassName = "Frame",
		Parent = hostContainer,
		Size = UDim2.new(0, 675, 0, 675),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0)
	}, 
	{
		createGUIElement({
			ClassName = "UIAspectRatioConstraint",
			AspectRatio = 1
		})
	}
)

local birdElement = createBirdUIElement()
birdElement.Parent = playArea