--!strict

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local LOCAL_PLAYER = Players.LocalPlayer
local PLAYER_GUI = LOCAL_PLAYER.PlayerGui

local createGUIElement = require(script.library.createGUIElement)

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

local birdElement = createGUIElement({
	ClassName = "Frame",
	Name = "Bird",
	AnchorPoint = Vector2.new(0, 1),
	Position = UDim2.fromScale(0.25, 0.5),
	Size = UDim2.new(0.089, 0, 0.067, 0), -- Bird sixe should be 90x60px on a 900px canvas
	BackgroundColor3 = Color3.fromRGB(197, 182, 51)
}) :: Frame

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
		birdElement
	}
) :: Frame

RunService.PreRender:Connect(function(delta: number)
	birdElement.Position = UDim2.fromScale(
		0, 
		math.min(
			1,
			birdElement.Position.Y.Scale + 0.3 * delta
		)
	)
end)

interactionLayer.MouseButton1Click:Connect(function()
	birdElement.Position -= UDim2.fromScale(0, 0.2)
end)
