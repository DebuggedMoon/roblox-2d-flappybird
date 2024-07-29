
local generateRandomNumber = require(script.Parent.library.generateRandomNumber)
local createGUIElement = require(script.Parent.library.createGUIElement)

local PIPE_GAP_START = 0
local PIPE_GAP_END = 0.6
local MOVE_DIRECTION = Vector2.new(0.0025, 0)

local Pipe = {}
Pipe.__index = Pipe

function Pipe.new(position: Vector2, pipeGap: number)

	local self = setmetatable({}, Pipe)

	self.gap = pipeGap
	self.gapPosition = generateRandomNumber(PIPE_GAP_START, PIPE_GAP_END)
	self.position = position
	self.element = createGUIElement({
		ClassName = "Frame",
		Name = "Pipe",
		Position = UDim2.fromScale(self.position.X, self.position.Y),
		Size = UDim2.new(0.1, 0, 1, 0),
		BackgroundColor3 = Color3.fromRGB(0, 182, 0)
	}, {
		createGUIElement({
			ClassName = "Frame",
			Name = "Gap",
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.fromScale(0.5, self.gapPosition),
			Size = UDim2.fromScale(1.1, pipeGap),
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.fromRGB(114, 197, 206)
		})
	}) :: Frame

	return self
end

function Pipe:tick() 

	self:moveByVector2(MOVE_DIRECTION)
end

function Pipe:moveByVector2(moveVector: Vector2)

	self:setPosition(self.position - moveVector)
end

function Pipe:setPosition(newPosition: Vector2)

	self.position = newPosition
	self.element.Position = UDim2.fromScale(newPosition.X, newPosition.Y)
end

function Pipe:destroy()

	self.element:Destroy()
	self.position = nil
	self.element = nil
	self.gap = nil

	setmetatable(self, {})
end

return Pipe