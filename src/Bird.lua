
local createGUIElement = require(script.Parent.library.createGUIElement)

local FLOOR_OFFSET = 1 - (110 / 900)
local FLAP_POWER = 0.018

local Bird = {}
Bird.__index = Bird

function Bird.new()

	local self = setmetatable({}, Bird)

	self.position = Vector2.new(0.25, 0.5)
	self.velocity = 0

	self.element = createGUIElement({
		ClassName = "Frame",
		Name = "Bird",
		BorderSizePixel = 0,
		AnchorPoint = Vector2.new(0, 1), -- TODO: Make redundant. Do the collision calc instead of using AnchorPoint
		Position = UDim2.fromScale(self.position.X, self.position.Y),
		Size = UDim2.new(0.089, 0, 0.067, 0), -- Bird size should be 90x60px on a 900px canvas
		BackgroundColor3 = Color3.fromRGB(197, 182, 51),
		ZIndex = 3
	}) :: Frame

	return self
end

function Bird:flap()

	self.velocity = -FLAP_POWER
end

function Bird:tick(delta: number, gravity: number)

	self.velocity += gravity * delta
	self:addElevation(self.velocity)
end

function Bird:setPosition(newPosition: Vector2)

	if newPosition.Y > FLOOR_OFFSET then
		self:setPosition(Vector2.new(newPosition.X, FLOOR_OFFSET))
		self.velocity = 0
		return
	end
	
	self.position = newPosition
	self.element.Position = UDim2.fromScale(newPosition.X, newPosition.Y)
end

function Bird:getPosition(): Vector2


	return self.position
end

function Bird:setElevation(elevation: number)

	self:setPosition(Vector2.new(self.position.X, elevation))
end

function Bird:getElevation(): number

	return self.position.Y
end

function Bird:addElevation(elevation: number)

	self:setPosition(Vector2.new(self.position.X, self.position.Y + elevation))
end

return Bird