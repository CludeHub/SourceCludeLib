local style = Instance.new("Frame")
style.Name = "Style"
style.Position = UDim2.new(0.037, 0, 0.9, 0)
style.Size = UDim2.new(0.5, 0, 0.05, 0)
style.BackgroundTransparency = 1
style.Parent = game.CoreGui.NEVERLOSE.AboutFrame
style.ZIndex = 50

local textLabel = Instance.new("TextLabel", style)
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.Font = Enum.Font.Gotham
textLabel.TextScaled = true
textLabel.TextTransparency = 0.4
textLabel.Text = "Style"
textLabel.TextXAlignment = Enum.TextXAlignment.Left
textLabel.ZIndex = 50

local color = Instance.new("Frame")
color.Name = "ColorFrame"
color.Position = UDim2.new(1, 0, 0, 0)
color.Size = UDim2.new(0.9, 0, 1, 0)
color.BackgroundTransparency = 1
color.Parent = style
color.ZIndex = 50

-- Theme buttons
local function createButton(name, pos, color3)
	local button = Instance.new("TextButton")
	button.Name = name
	button.Position = pos
	button.Size = UDim2.new(0.2, 0, 1, 0)
	button.AutoButtonColor = false
	button.Text = ""
	button.BackgroundColor3 = color3
	button.Parent = color
	button.ZIndex = 50
	Instance.new("UICorner", button).CornerRadius = UDim.new(1, 0)
	return button
end

local orangeButton = createButton("Orange", UDim2.new(0.1, 0, 0, 0), Color3.fromRGB(255, 128, 0))
local originalButton = createButton("Original", UDim2.new(0.4, 0, 0, 0), Color3.fromRGB(4, 69, 135))
local darkButton = createButton("Dark", UDim2.new(0.7, 0, 0, 0), Color3.new(0, 0, 0))

-- Apply Theme Function
local function applyTheme(theme)
	local core = game.CoreGui:FindFirstChild("NEVERLOSE")
	if not core then return end

	local roots = {}
	if core:FindFirstChild("Frame") then table.insert(roots, core.Frame) end
	if core:FindFirstChild("AboutFrame") then table.insert(roots, core.AboutFrame) end

	for _, root in ipairs(roots) do
		if root:IsA("Frame") then
			root.BackgroundColor3 = theme.BlackgroundColor
		end
		for _, obj in pairs(root:GetDescendants()) do
			if obj:IsA("Frame") then
				local name = obj.Name
				if name:find("Section") then
					obj.BackgroundColor3 = theme.SectionColor
				elseif name:find("outlo") or name:find("outlo_2") or name:find("outlo_3") then
					obj.BackgroundColor3 = theme.TraceColor
				elseif name:find("lay") then
					obj.BackgroundColor3 = theme.StrokeColor
				elseif name:find("MoveFrame") then
					obj.BackgroundColor3 = theme.MainColorDrop
				elseif name:find("dpiDropdown") then
					obj.BackgroundColor3 = theme.BlackgroundColor
				elseif name:find("Stroke") or name:find("divider") or name:find("divider2") then
					obj.BackgroundColor3 = theme.StrokeColor
				elseif name == "Frame_2" then
					obj.BackgroundColor3 = theme.BlackColor
				elseif name == "Frame_3" then
					obj.BackgroundColor3 = theme.HeaderColor
				elseif name == "Frame" and obj.Parent == root then
					obj.BackgroundColor3 = theme.BlackgroundColor
				elseif name:lower():find("button") then
					obj.BackgroundColor3 = theme.Button
				end
			elseif obj:IsA("TextBox") and obj.Name:lower():find("search") then
				obj.BackgroundColor3 = theme.SearchColor
			elseif obj:IsA("UIStroke") then
				obj.Color = theme.StrokeColor
			elseif obj:IsA("TextLabel") and obj.Name:lower():find("title") then
				obj.TextStrokeColor3 = theme.MainColor
			end
		end
	end
end

-- Theme buttons connections
darkButton.MouseButton1Click:Connect(function()
	applyTheme({
		BlackgroundColor = Color3.fromRGB(22, 22, 22),
		BlackColor = Color3.fromRGB(8, 8, 8),
		HeaderColor = Color3.fromRGB(8, 8, 8),
		TraceColor = Color3.fromRGB(115, 115, 115),
		MainColor = Color3.fromRGB(0, 172, 247),
		MainColorDrop = Color3.fromRGB(64, 65, 67),
		SectionColor = Color3.fromRGB(10, 11, 16),
		StrokeColor = Color3.fromRGB(28, 28, 28),
		ButtonBlackgroundColor = Color3.fromRGB(13, 13, 13),
		Button = Color3.fromRGB(0, 172, 247),
		SearchColor = Color3.fromRGB(14, 14, 14),
		Save = Color3.fromRGB(28, 28, 28)
	})
end)

originalButton.MouseButton1Click:Connect(function()
	applyTheme({
		BlackgroundColor = Color3.fromRGB(1, 17, 33),
		BlackColor = Color3.fromRGB(9, 9, 19),
		HeaderColor = Color3.fromRGB(7, 7, 17),
		TraceColor = Color3.fromRGB(0, 76, 99),
		MainColor = Color3.fromRGB(19, 176, 243),
		MainColorDrop = Color3.fromRGB(3, 6, 25),
		SectionColor = Color3.fromRGB(0, 17, 33),
		StrokeColor = Color3.fromRGB(3, 35, 50),
		ButtonBlackgroundColor = Color3.fromRGB(2, 5, 22),
		Button = Color3.fromRGB(0, 172, 247),
		SearchColor = Color3.fromRGB(0, 17, 35),
		Save = Color3.fromRGB(0, 76, 99)
	})
end)

orangeButton.MouseButton1Click:Connect(function()
	applyTheme({
		BlackgroundColor = Color3.fromRGB(43, 43, 43),
		BlackColor = Color3.fromRGB(16, 16, 16),
		HeaderColor = Color3.fromRGB(47, 47, 47),
		TraceColor = Color3.fromRGB(100, 100, 100),
		MainColor = Color3.fromRGB(255, 128, 0),
		MainColorDrop = Color3.fromRGB(65, 54, 31),
		SectionColor = Color3.fromRGB(26, 26, 26),
		StrokeColor = Color3.fromRGB(50, 50, 50),
		ButtonBlackgroundColor = Color3.fromRGB(26, 26, 26),
		Button = Color3.fromRGB(26, 26, 26),
		SearchColor = Color3.fromRGB(43, 43, 43),
		Save = Color3.fromRGB(100, 100, 100)
	})
end)

-- ⚙️ Update "Line" Frames to UIStroke color
local NEVERLOSE = game.CoreGui:WaitForChild("NEVERLOSE")

local function getStrokeColor()
	for _, obj in ipairs(NEVERLOSE:GetDescendants()) do
		if obj:IsA("UIStroke") then
			return obj.Color
		end
	end
	return Color3.fromRGB(255, 255, 255)
end

local function updateLines()
	local strokeColor = getStrokeColor()
	for _, obj in ipairs(NEVERLOSE:GetDescendants()) do
		if obj:IsA("Frame") and obj.Name:lower() == "line" then
			obj.BackgroundColor3 = strokeColor
		end
	end
end

-- Initial update
updateLines()

-- Update dynamically when theme or UI changes
NEVERLOSE.DescendantAdded:Connect(function(obj)
	task.wait()
	if obj:IsA("Frame") and obj.Name:lower() == "line" then
		obj.BackgroundColor3 = getStrokeColor()
	elseif obj:IsA("UIStroke") then
		updateLines()
	end
end)

local mainFrame = NEVERLOSE:FindFirstChild("Frame")
if mainFrame then
	mainFrame:GetPropertyChangedSignal("BackgroundColor3"):Connect(updateLines)
end


local CoreGui = game:GetService("CoreGui")
local NEVERLOSE = CoreGui:WaitForChild("NEVERLOSE")
local Frame = NEVERLOSE:WaitForChild("Frame")
local TabButtons = Frame:WaitForChild("TabButtons")
local TabHose = Frame:WaitForChild("TabHose")

local function updateColors()
	local frameColor = Frame.BackgroundColor3

	if frameColor == Color3.fromRGB(22,22,22) then
		for _, v in pairs(TabButtons:GetChildren()) do
			if v:IsA("Frame") then
				v.BackgroundColor3 = Color3.fromRGB(255,255,255)
			end
		end

		local section2 = TabHose:FindFirstChild("Tab") and TabHose.Tab:FindFirstChild("Left")
			and TabHose.Tab.Left:FindFirstChild("Section2")
		if section2 and section2:FindFirstChildOfClass("UIStroke") then
			local strokeColor = section2:FindFirstChildOfClass("UIStroke").Color
			local section = TabHose:FindFirstChild("Tab") and TabHose.Tab:FindFirstChild("Left")
				and TabHose.Tab.Left:FindFirstChild("Section")

			if section and section:FindFirstChild("Section") then
				for _, toggle in pairs(section.Section:GetDescendants()) do
					if toggle:IsA("Frame") and toggle.Name == "Frame" and toggle.Parent.Name == "Toggle" then
						toggle.BackgroundColor3 = strokeColor
					end
				end
			end
		end

	elseif frameColor == Color3.fromRGB(1,17,33) then
		for _, v in pairs(TabButtons:GetChildren()) do
			if v:IsA("Frame") then
				v.BackgroundColor3 = Color3.fromRGB(19,176,243)
			end
		end
	end
end

updateColors()
Frame:GetPropertyChangedSignal("BackgroundColor3"):Connect(updateColors)
