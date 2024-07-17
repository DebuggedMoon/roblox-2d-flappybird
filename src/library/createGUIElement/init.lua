--!strict

local ElementProperties = require(script.ElementProperties)

return function(properties: ElementProperties.Type, children: {(Instance | GuiObject)}?): GuiObject

	local element = Instance.new(properties.ClassName);

	for name, value in pairs(properties) do
		element[name] = value
	end

	for _, child in pairs(children or {}) do
		child.Parent = element
	end

	return element
end