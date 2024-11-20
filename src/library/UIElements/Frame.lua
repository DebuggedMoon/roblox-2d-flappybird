--!strict

export type Properties = {
	[string]: any;
	ClassName: "Frame";

	-- Apearance
	SelectionImageObject: Instance?;
	
	-- Data
	Archivable: boolean?;
	Active: boolean?;
	AnchorPoint: Vector2?;
	AutomaticSize: Enum.AutomaticSize?;
	BackgroundColor3: Color3?;
	BackgroundTransparency: number?;
	BorderColor3: Color3?;
	BorderMode: Enum.BorderMode?;
	BorderSizePixel: number?;
	Interactable: boolean?;
	LayoutOrder: number?;
	Name: string?;
	Parent: (Instance | GuiObject)?;
	Position: UDim2?;
	Rotation: number?;
	Size: UDim2?;
	SizeConstraint: Enum.SizeConstraint?;
	Style: Enum.Style?;
	Visible: boolean?;
	ZIndex: number?;

	-- Behavior
	ClipDescendants: boolean?;

	-- Localization
	AutoLocalize: boolean?;
	RootLocalizationTable: Instance?;
	
	-- Selection
	NextSelectionDown: Instance?;
	NextSelectionLeft: Instance?;
	NextSelectionRight: Instance?;
	NextSelectionUp: Instance?;
	Selectable: boolean?;
	SelectionGroup: boolean?;
	SelectionOrder: number;
}

return function(properties: Properties, children: {Instance}): Frame

	local element = Instance.new("Frame")

	for property: string, value in properties do

		local success, errorMessage = pcall(function()
	
			element[property] = value
		
		end)

		if success == false then

			
		end
	end

	return element
end