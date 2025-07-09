local CoreGui = game:GetService("CoreGui")

-- Style Frame
local styleFrame = Instance.new("Frame")
styleFrame.Name = "Style"
styleFrame.Size = UDim2.new(0.5, 0, 0.077, 0)
styleFrame.Position = UDim2.new(0.037, 0, 0, 0)
styleFrame.BackgroundTransparency = 1
styleFrame.Parent = CoreGui:WaitForChild("NEVERLOSE"):WaitForChild("AboutFrame")

-- Color Frame
local colorFrame = Instance.new("Frame")
colorFrame.Name = "Color"
colorFrame.BackgroundTransparency = 1
colorFrame.Position = UDim2.new(1.2, 0, 0, 0)
colorFrame.Size = UDim2.new(0.7, 0, 1, 0)
colorFrame.Parent = styleFrame

-- Button table for theme control
local buttons = {}

-- Selection function to update stroke colors
local function updateSelection(selectedName)
	for name, data in pairs(buttons) do
		if name == selectedName then
			data.Stroke.Color = Color3.new(1, 1, 1)
			data.Stroke.Transparency = 0
		else
			data.Stroke.Color = Color3.fromRGB(200, 200, 200)
			data.Stroke.Transparency = 0.8
		end
	end
end

-- Button creation function
local function createButton(name, positionX, callback)
	local button = Instance.new("TextButton")
	button.Name = name
	button.Text = name
	button.BackgroundColor3 = Color3.new(0, 0, 0)
	button.Position = UDim2.new(positionX, 0, 0, 0)
	button.Size = UDim2.new(0.27, 0, 1, 0)
	button.TextColor3 = Color3.new(1, 1, 1)
	button.Font = Enum.Font.SourceSans
	button.TextScaled = true
	button.AutoButtonColor = false
	button.Parent = colorFrame

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(1, 0)
	corner.Parent = button

	local stroke = Instance.new("UIStroke")
	stroke.Color = Color3.fromRGB(200, 200, 200)
	stroke.Transparency = 0.8
	stroke.Parent = button

	-- Save reference for selection update
	buttons[name] = {Button = button, Stroke = stroke}

	button.MouseButton1Click:Connect(function()
		updateSelection(name)
		if callback then callback() end
	end)
end

-- Theme functions
local function applyDarkTheme()
	print("Dark theme applied.")
	-- Add dark theme logic here
end

local function applyOriginalTheme()
	print("Original theme applied.")
	-- Add original theme logic here
end

-- Create Buttons
createButton("Dark", 0.7, applyDarkTheme)
createButton("Original", 0.4, applyOriginalTheme)

-- Default to "Original" selected
updateSelection("Original")
