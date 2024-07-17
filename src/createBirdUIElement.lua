
local createGUIElement = require(script.Parent.library.createGUIElement)

local birdElement = createGUIElement({
	ClassName = "Frame",
	Name = "Bird",
	Size = UDim2.new(0.089, 0, 0.067, 0), -- Bird sixe should be 90x60px on a 900px canvas
	BackgroundColor3 = Color3.fromRGB(197, 182, 51)
})

return function ()
	return birdElement:Clone()
end