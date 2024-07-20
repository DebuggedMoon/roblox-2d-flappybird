--!strict

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local LOCAL_PLAYER = Players.LocalPlayer
local PLAYER_GUI = LOCAL_PLAYER.PlayerGui

local createGUIElement = require(script.library.createGUIElement)
local Bird = require(script.Bird)


local bird = Bird.new()

local hostContainer = createGUIElement({
	ClassName = "ScreenGui",
	Parent = PLAYER_GUI,
	ResetOnSpawn = false
})

local interactionLayer = createGUIElement({
	ClassName = "ImageButton",
	BackgroundTransparency = 1,
	ImageTransparency = 1,
	Size = UDim2.fromScale(1, 1),
	ZIndex = 5
}) :: ImageButton

local playArea = createGUIElement(
	{
		ClassName = "Frame",
		Parent = hostContainer,
		Size = UDim2.fromOffset(337.5, 337.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0)
	},
	{
		createGUIElement({
			ClassName = "UIAspectRatioConstraint",
			AspectRatio = 1
		}),

		interactionLayer,
		bird.element
	}
) :: Frame

RunService.PreRender:Connect(function(delta: number)
	bird.element.Position = UDim2.fromScale(
		0, 
		math.min(
			1,
			bird.Position.Y.Scale + 0.3 * delta
		)
	)
end)

interactionLayer.MouseButton1Click:Connect(function()
	bird.element.Position -= UDim2.fromScale(0, 0.2)
end)
