--!strict

local ElementProperties = require(script.ElementProperties)

return function(properties: ElementProperties.Type, children: {(Instance | GuiObject)}?): GuiObject | Instance

	local element = Instance.new(properties.ClassName);

	local succeded, error = pcall(function()
		for name: string, value: any in pairs(properties) do
			if name == "ClassName" then
				continue
			end

			(element :: any)[name] = value
		end
	end)

	if succeded == false then
		warn(error)
	end

	for _, child in pairs(children or {}) do
		child.Parent = element
	end

	return element
end