--!strict

return function(className: string)

	local element = Instance.new(className) :: GuiObject;


	return function(properties)


		local succeded, error = pcall(function()
			for name: string, value: any in pairs(properties) do

				(element :: any)[name] = value
			end
		end)

		if succeded == false then
			warn(error)
		end

		return function(children: {(GuiObject)}?): GuiObject

			for _, child in pairs(children or {}) do
				child.Parent = element
			end

			return element
		end
	end
end