--!strict

local Players = game:GetService("Players")

local LOCAL_PLAYER = Players.LocalPlayer
local PLAYER_GUI = LOCAL_PLAYER.PlayerGui

local createBirdUIElement = require(script.createBirdUIElement)

local hostContainer = Instance.new("ScreenGui", PLAYER_GUI)
hostContainer.ResetOnSpawn = false

local playArea = Instance.new("Frame", hostContainer)

playArea.Size = UDim2.new(0, 675, 0, 675)
playArea.AnchorPoint = Vector2.new(0.5, 0.5)
playArea.Position = UDim2.new(0.5, 0, 0.5, 0)

local areaAspect = Instance.new("UIAspectRatioConstraint", playArea)
areaAspect.AspectRatio = 1

local birdElement = createBirdUIElement()
birdElement.Parent = playArea