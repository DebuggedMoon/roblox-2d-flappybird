--!strict

local RunService = game:GetService("RunService")

local createGUIElement = require(script.Parent.library.createGUIElement)
local Bird = require(script.Parent.Bird)
local Pipe = require(script.Parent.Pipe)

local DEFAULT_SCROLL_SPEED = 0.4
local DEFAULT_GRAVITY = 0.5

type GameProperties = {
	scrollSpeed: number,
	gravity: number
}

local FlappyBirdGame = {}
FlappyBirdGame.__index = FlappyBirdGame

function FlappyBirdGame.new(gameProperties: GameProperties)

	local self = setmetatable({}, FlappyBirdGame)

	self.pipes = {}
	self.bird = Bird.new()
	self.scrollSpeed = gameProperties.scrollSpeed or DEFAULT_SCROLL_SPEED
	self.gravity = gameProperties.gravity or DEFAULT_GRAVITY

	self.interactionLayer = createGUIElement({
		ClassName = "ImageButton",
		BackgroundTransparency = 1,
		ImageTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		ZIndex = 5
	}) :: ImageButton

	self.gameArea = createGUIElement(
		{
			ClassName = "Frame",
			Size = UDim2.fromOffset(337.5, 337.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0)
		},
		{
			createGUIElement({
				ClassName = "UIAspectRatioConstraint",
				AspectRatio = 1
			}),
	
			self.interactionLayer,
			self.bird.element
		}
	) :: Frame

	self.tickConnection = RunService.PreRender:Connect(function(delta: number)
		self:tick(delta)
	end)

	self.clickConnection = self.interactionLayer.MouseButton1Click:Connect(function()
		self.bird:flap()
	end)

	return self
end

function FlappyBirdGame:tick(delta: number)
	
	for _, pipe in pairs(self.pipes) do
		pipe:tick()
	end
	
	self.bird:tick(delta, self.gravity)
end

function FlappyBirdGame:spawnPipe(position: Vector2, pipeGap: number)

	local pipe = Pipe.new(position, pipeGap)
	print(pipe, pipe.element)

	table.insert(self.pipes, pipe)
	pipe.element.Parent = self.gameArea
end

return FlappyBirdGame