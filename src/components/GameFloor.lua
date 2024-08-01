--!strict

local createGUIElement = require(script.Parent.Parent.library.createGUIElement)

return function()
	return createGUIElement({
		ClassName = "Frame",
		BorderSizePixel = 0,
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.fromScale(0, 1),
		Size = UDim2.fromScale(1, 110 /  900),
		BackgroundColor3 = Color3.fromRGB(222, 217, 150),
		ZIndex = 10
	})
end