--!strict

export type Type = 
	{
		ClassName: "ScreenGui",

		--Appearance
		ClipToDeviceSafeArea: boolean?,
		SafeAreaCompatiblity: Enum.SafeAreaCompatibility?,
		ScreenInsets: Enum.ScreenInsets?,

		-- Data
		Archivable: boolean?,
		DisplayOrder: number?,
		Enabled: boolean?,
		IgnoreGuiInset: boolean?,
		Name: string?,
		Parent: (Instance | GuiObject)?,
		ResetOnSpawn: boolean?,
		ZIndexBehavior: Enum.ZIndexBehavior?,

		-- Localization
		AutoLocalize: boolean?,
		RootLocalizationTable: Instance?,

		-- Selection
		SelectionGroup: boolean?
	} |
	{
		ClassName: "Frame",

		-- Apearance
		SelectionImageObject: Instance?,
		
		-- Data
		Archivable: boolean?,
		Active: boolean?,
		AnchorPoint: Vector2?,
		AutomaticSize: Enum.AutomaticSize?,
		BackgroundColor3: Color3?,
		BackgroundTransparency: number?,
		BorderColor3: Color3?,
		BorderMode: Enum.BorderMode?,
		BorderSizePixel: number?,
		Interactable: boolean?,
		LayoutOrder: number?,
		Name: string?,
		Parent: (Instance | GuiObject)?,
		Position: UDim2?,
		Rotation: number?,
		Size: UDim2?,
		SizeConstraint: Enum.SizeConstraint?,
		Style: Enum.Style?,
		Visible: boolean?,
		ZIndex: number?,

		-- Behavior
		ClipDescendants: boolean?,

		-- Localization
		AutoLocalize: boolean?,
		RootLocalizationTable: Instance?,
		
		-- Selection
		NextSelectionDown: Instance?,
		NextSelectionLeft: Instance?,
		NextSelectionRight: Instance?,
		NextSelectionUp: Instance?,
		Selectable: boolean?,
		SelectionGroup: boolean?,
		SelectionOrder: number?
	} |
	{
		ClassName: "TextButton",
		
		-- Apearance
		SelectionImageObject: Instance?,
		
		-- Data
		Archivable: boolean?,
		Active: boolean?,
		AnchorPoint: Vector2?,
		AutoButtonColor: boolean?,
		AutomaticSize: Enum.AutomaticSize?,
		BackgroundColor3: Color3?,
		BackgroundTransparency: number?,
		BorderColor3: Color3?,
		BorderMode: Enum.BorderMode?,
		BorderSizePixel: number?,
		Interactable: boolean?,
		LayoutOrder: number?,
		Modal: boolean?,
		Name: string?,
		Parent: (Instance | GuiObject)?,
		Position: UDim2?,
		Rotation: number?,
		Size: UDim2?,
		SizeConstraint: Enum.SizeConstraint?,
		Style: Enum.Style?,
		Visible: boolean?,
		ZIndex: number?,

		-- Behavior
		ClipDescendants: boolean?,

		-- Localization
		AutoLocalize: boolean?,
		RootLocalizationTable: Instance?,
		
		-- Selection
		NextSelectionDown: Instance?,
		NextSelectionLeft: Instance?,
		NextSelectionRight: Instance?,
		NextSelectionUp: Instance?,
		Selectable: boolean?,
		Selected: boolean?,
		SelectionGroup: boolean?,
		SelectionOrder: number?,
		
		-- Text
		Font: Enum.Font?,
		FontFace: Font?,
		LineHeight: number?,
		MaxVisibleGraphemes: number?,
		OpenTypeFeatures: string?,
		RichtText: boolean?,
		Text: string?,
		TextColor3: Color3?,
		TextDirection: Enum.TextDirection?,
		TextScaled: boolean?,
		TextSize: number?,
		TextStrokeColor3: Color3?,
		TextStrokeTransparency: number?,
		TextTransparency: number?,
		TextTruncate: Enum.TextTruncate?,
		TextWrapped: boolean?,
		TextXAlignment: Enum.TextXAlignment?,
		TextYAlignment: Enum.TextYAlignment?
	} |
	{
		ClassName: "TextLabel",

		-- Apearance
		SelectionImageObject: Instance?,
		
		-- Data
		Archivable: boolean?,
		Active: boolean?,
		AnchorPoint: Vector2?,
		AutomaticSize: Enum.AutomaticSize?,
		BackgroundColor3: Color3?,
		BackgroundTransparency: number?,
		BorderColor3: Color3?,
		BorderMode: Enum.BorderMode?,
		BorderSizePixel: number?,
		Interactable: boolean?,
		LayoutOrder: number?,
		Name: string?,
		Parent: (Instance | GuiObject)?,
		Position: UDim2?,
		Rotation: number?,
		Size: UDim2?,
		SizeConstraint: Enum.SizeConstraint?,
		Visible: boolean?,
		ZIndex: number?,

		-- Behavior
		ClipDescendants: boolean?,

		-- Localization
		AutoLocalize: boolean?,
		RootLocalizationTable: Instance?,
		
		-- Selection
		NextSelectionDown: Instance?,
		NextSelectionLeft: Instance?,
		NextSelectionRight: Instance?,
		NextSelectionUp: Instance?,
		Selectable: boolean?,
		SelectionGroup: boolean?,
		SelectionOrder: number?,
		
		-- Text
		Font: Enum.Font?,
		FontFace: Font?,
		LineHeight: number?,
		MaxVisibleGraphemes: number?,
		OpenTypeFeatures: string?,
		RichtText: boolean?,
		Text: string?,
		TextColor3: Color3?,
		TextDirection: Enum.TextDirection?,
		TextScaled: boolean?,
		TextSize: number?,
		TextStrokeColor3: Color3?,
		TextStrokeTransparency: number?,
		TextTransparency: number?,
		TextTruncate: Enum.TextTruncate?,
		TextWrapped: boolean?,
		TextXAlignment: Enum.TextXAlignment?,
		TextYAlignment: Enum.TextYAlignment?
	} |
	{
		ClassName: "TextBox",

		-- Apearance
		SelectionImageObject: Instance?,
		
		-- Data
		Archivable: boolean?,
		Active: boolean?,
		AnchorPoint: Vector2?,
		AutomaticSize: Enum.AutomaticSize?,
		BackgroundColor3: Color3?,
		BackgroundTransparency: number?,
		BorderColor3: Color3?,
		BorderMode: Enum.BorderMode?,
		BorderSizePixel: number?,
		ClearTextOnFocus: boolean?,
		CursorPosition: number?,
		Interactable: boolean?,
		LayoutOrder: number?,
		MultiLine: boolean?,
		Name: string?,
		Parent: (Instance | GuiObject)?,
		Position: UDim2?,
		Rotation: number?,
		SelectionStart: number?,
		ShowNativeInput: boolean?,
		Size: UDim2?,
		SizeConstraint: Enum.SizeConstraint?,
		TextEditable: boolean?,
		Visible: boolean?,
		ZIndex: number?,

		-- Behavior
		ClipDescendants: boolean?,

		-- Localization
		AutoLocalize: boolean?,
		RootLocalizationTable: Instance?,
		
		-- Selection
		NextSelectionDown: Instance?,
		NextSelectionLeft: Instance?,
		NextSelectionRight: Instance?,
		NextSelectionUp: Instance?,
		Selectable: boolean?,
		SelectionGroup: boolean?,
		SelectionOrder: number?,
		
		-- Text
		Font: Enum.Font?,
		FontFace: Font?,
		LineHeight: number?,
		MaxVisibleGraphemes: number?,
		OpenTypeFeatures: string?,
		PlaceholderColor3: Color3?,
		PlaceholderText: string?,
		RichtText: boolean?,
		Text: string?,
		TextColor3: Color3?,
		TextDirection: Enum.TextDirection?,
		TextScaled: boolean?,
		TextSize: number?,
		TextStrokeColor3: Color3?,
		TextStrokeTransparency: number?,
		TextTransparency: number?,
		TextTruncate: Enum.TextTruncate?,
		TextWrapped: boolean?,
		TextXAlignment: Enum.TextXAlignment?,
		TextYAlignment: Enum.TextYAlignment?
	} |
	{
		ClassName: "ImageLabel",
	
		-- Apearance
		SelectionImageObject: Instance?,
		
		-- Data
		Archivable: boolean?,
		Active: boolean?,
		AnchorPoint: Vector2?,
		AutomaticSize: Enum.AutomaticSize?,
		BackgroundColor3: Color3?,
		BackgroundTransparency: number?,
		BorderColor3: Color3?,
		BorderMode: Enum.BorderMode?,
		BorderSizePixel: number?,
		Interactable: boolean?,
		LayoutOrder: number?,
		Name: string?,
		Parent: (Instance | GuiObject)?,
		Position: UDim2?,
		Rotation: number?,
		Size: UDim2?,
		SizeConstraint: Enum.SizeConstraint?,
		Style: Enum.Style?,
		Visible: boolean?,
		ZIndex: number?,

		-- Behavior
		ClipDescendants: boolean?,

		-- Image
		Image: string?,
		ImageColor3: Color3?,
		ImageRectOffset: Vector2?,
		ImageRectSize: Vector2?,
		ImageTransparency: boolean?,
		ResampleMode: Enum.ResamplerMode?,
		ScaleType: Enum.ScaleType?,

		-- Localization
		AutoLocalize: boolean?,
		RootLocalizationTable: Instance?,
		
		-- Selection
		NextSelectionDown: Instance?,
		NextSelectionLeft: Instance?,
		NextSelectionRight: Instance?,
		NextSelectionUp: Instance?,
		Selectable: boolean?,
		SelectionGroup: boolean?,
		SelectionOrder: number?
	} |
	{
		ClassName: "ImageButton",

		-- Apearance
		SelectionImageObject: Instance?,
		
		-- Data
		Archivable: boolean?,
		Active: boolean?,
		AnchorPoint: Vector2?,
		AutoButtonColor: boolean?,
		AutomaticSize: Enum.AutomaticSize?,
		BackgroundColor3: Color3?,
		BackgroundTransparency: number?,
		BorderColor3: Color3?,
		BorderMode: Enum.BorderMode?,
		BorderSizePixel: number?,
		Interactable: boolean?,
		LayoutOrder: number?,
		Modal: boolean?,
		Name: string?,
		Parent: (Instance | GuiObject)?,
		Position: UDim2?,
		Rotation: number?,
		Size: UDim2?,
		SizeConstraint: Enum.SizeConstraint?,
		Style: Enum.Style?,
		Visible: boolean?,
		ZIndex: number?,

		-- Behavior
		ClipDescendants: boolean?,

		-- Image
		HoverImage: string?,
		Image: string?,
		ImageColor3: Color3?,
		ImageRectOffset: Vector2?,
		ImageRectSize: Vector2?,
		ImageTransparency: boolean?,
		PressedImage: string?,
		ResampleMode: Enum.ResamplerMode?,
		ScaleType: Enum.ScaleType?,

		-- Localization
		AutoLocalize: boolean?,
		RootLocalizationTable: Instance?,
		
		-- Selection
		NextSelectionDown: Instance?,
		NextSelectionLeft: Instance?,
		NextSelectionRight: Instance?,
		NextSelectionUp: Instance?,
		Selectable: boolean?,
		Selected: boolean?,
		SelectionGroup: boolean?,
		SelectionOrder: number?
	} |
	{
		ClassName: "UIAspectRatioConstraint",

		-- Data
		Archivable: boolean?,
		Name: string?,
		Parent: (Instance | GuiObject)?,

		-- Behavior
		AspectRatio: number?,
		AspectType: Enum.AspectType?,
		DominantAxis: Enum.DominantAxis?
	}


return {};