
local createGUIElement = require(script.Parent.library.createGUIElement)

local Bird = {}
Bird.__index = Bird

function Bird.new()

	local self = setmetatable({}, Bird)

	self.position = Vector2.new(0.25, 0.5)
	self.velocity = 0

	self.element = createGUIElement({
		ClassName = "Frame",
		Name = "Bird",
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.fromScale(self.position.X, self.position.Y),
		Size = UDim2.new(0.089, 0, 0.067, 0), -- Bird size should be 90x60px on a 900px canvas
		BackgroundColor3 = Color3.fromRGB(197, 182, 51)
	}) :: Frame

	return self
end

function Bird:setPosition(newPosition: Vector2)

	if newPosition.Y > 1 then
		self:setPosition(Vector2.new(newPosition.X, 1))
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