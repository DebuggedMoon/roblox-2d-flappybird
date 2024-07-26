
local createGUIElement = require(script.Parent.library.createGUIElement)

local MOVE_DIRECTION = Vector2.new(-0.02, 0)

local Pipe = {}
Pipe.__index = Pipe

function Pipe.new(position: Vector2, pipeGap: number)

	local self = setmetatable({}, Pipe)

	self.gap = pipeGap
	self.position = position
	self.element = createGUIElement({
		ClassName = "Frame",
		Name = "Pipe",
		Position = UDim2.fromScale(self.position.X, self.position.Y),
		Size = UDim2.new(0.1, 0, 1, 0),
		BackgroundColor3 = Color3.fromRGB(0, 182, 0)
	}) :: Frame

	return self
end

function Pipe:tick() 

	self:moveByVector2(MOVE_DIRECTION)
end

function Pipe:moveByVector2(moveVector: Vector2)

	self:setPosition(self.Position - moveVector)
end

function Pipe:setPosition(newPosition: Vector2)

	self.position = newPosition
end

return Pipe