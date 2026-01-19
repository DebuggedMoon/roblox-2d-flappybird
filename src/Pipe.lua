
local generateRandomNumber = require(script.Parent.library.generateRandomNumber)
local makeUi = require(script.Parent.library.makeUi)

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
	self.width = 0.1

	self.element = makeUi "Frame"
	{
		Name = "Pipe",
		Position = UDim2.fromScale(self.position.X, self.position.Y),
		Size = UDim2.new(self.width, 0, 1, 0),
		BackgroundColor3 = Color3.fromRGB(0, 182, 0)
	}
	{
		makeUi "Frame"
		{
			Name = "Gap",
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.fromScale(0.5, self.gapPosition),
			Size = UDim2.new(1, 2, pipeGap, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.fromRGB(114, 197, 206)
		}
		{

		}
	}

	return self
end

function Pipe:tick() 

	self:moveByVector2(MOVE_DIRECTION)
end

function Pipe:isInBounds(position: Vector2): boolean

	if (position.X < self.position.X or position.X > self.position.X + self.width) then
		return false
	end

	return true
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