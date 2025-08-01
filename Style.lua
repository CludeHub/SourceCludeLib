local style = Instance.new("Frame")
style.Name = "Style"
style.Position = UDim2.new(0.037, 0, 0.9, 0)
style.Size = UDim2.new(0.5, 0, 0.05, 0)
style.BackgroundTransparency = 1
style.Parent = game.CoreGui.NEVERLOSE.AboutFrame

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

local color = Instance.new("Frame")
color.Name = "ColorFrame"
color.Position = UDim2.new(1.2, 0, 0, 0)
color.Size = UDim2.new(0.7, 0, 1, 0)
color.BackgroundTransparency = 1
color.Parent = style

local darkButton = Instance.new("TextButton")
darkButton.Name = "Dark"
darkButton.Position = UDim2.new(0.7, 0, 0, 0)
darkButton.Size = UDim2.new(0.2, 0, 1, 0)
darkButton.AutoButtonColor = false
darkButton.Text = ""
darkButton.BackgroundColor3 = Color3.new(0, 0, 0)
darkButton.Parent = color

local darkUICorner = Instance.new("UICorner")
darkUICorner.CornerRadius = UDim.new(1, 0)
darkUICorner.Parent = darkButton

local originalButton = Instance.new("TextButton")
originalButton.Name = "Original"
originalButton.Position = UDim2.new(0.4, 0, 0, 0)
originalButton.Size = UDim2.new(0.2, 0, 1, 0)
originalButton.AutoButtonColor = false
originalButton.Text = ""
originalButton.BackgroundColor3 = Color3.fromRGB(4, 69, 135)
originalButton.Parent = color

local originalUICorner = Instance.new("UICorner")
originalUICorner.CornerRadius = UDim.new(1, 0)
originalUICorner.Parent = originalButton

darkButton.MouseButton1Click:Connect(function()
local theme = {
	BlackgroundColor = Color3.fromRGB(22, 22, 22),
	BlackColor = Color3.fromRGB(8, 8, 8),
	HeaderColor = Color3.fromRGB(8, 8, 8),
	TraceColor = Color3.fromRGB(115, 115, 115),
	MainColor = Color3.fromRGB(0, 172, 247),
	MainColorDrop = Color3.fromRGB(64, 65, 67),
	SectionColor = Color3.fromRGB(10, 11, 13),
	StrokeColor = Color3.fromRGB(28, 28, 28),
	ButtonBlackgroundColor = Color3.fromRGB(13, 13, 13),
	SearchColor = Color3.fromRGB(14, 14, 14),
	Save = Color3.fromRGB(28, 28, 28)
}

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
			elseif name:find("outlo") then
				obj.BackgroundColor3 = theme.TraceColor
			elseif name:find("outlo_2") then
				obj.BackgroundColor3 = theme.TraceColor
			elseif name:find("outlo_3") then
				obj.BackgroundColor3 = theme.TraceColor
			elseif name:find("lay") then
				obj.BackgroundColor3 = theme.StrokeColor
			elseif name:find("MoveFrame") then
				obj.BackgroundColor3 = theme.MainColorDrop
			elseif name:find("dpiDropdown") then
				obj.BackgroundColor3 = theme.BlackgroundColor
			elseif name:find("Stroke") then
				obj.BackgroundColor3 = theme.Save
			elseif name == "Frame_2" then
				obj.BackgroundColor3 = theme.BlackColor
			elseif name == "Frame_3" then
				obj.BackgroundColor3 = theme.HeaderColor
			elseif name == "Frame" and obj.Parent == root then
				obj.BackgroundColor3 = theme.BlackgroundColor
			elseif name:lower():find("button") then
				obj.BackgroundColor3 = theme.ButtonBlackgroundColor
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
	end)

originalButton.MouseButton1Click:Connect(function()
local theme = {
	BlackgroundColor = Color3.fromRGB(1, 17, 33),
	BlackColor = Color3.fromRGB(9, 9, 19),
	HeaderColor = Color3.fromRGB(7, 7, 17),
	TraceColor = Color3.fromRGB(0, 76, 99),
	MainColor = Color3.fromRGB(19, 176, 243),
	MainColorDrop = Color3.fromRGB(3, 6, 25),
	SectionColor = Color3.fromRGB(0, 17, 35),
	StrokeColor = Color3.fromRGB(3, 35, 50),
	ButtonBlackgroundColor = Color3.fromRGB(2, 5, 22),
	SearchColor = Color3.fromRGB(0, 17, 35),
	Save = Color3.fromRGB(0, 76, 99)
}

local core = game.CoreGui:FindFirstChild("NEVERLOSE")
if not core then return end

-- Add both main frame and about frame to apply theme on
local roots = {}
if core:FindFirstChild("Frame") then table.insert(roots, core.Frame) end
if core:FindFirstChild("AboutFrame") then table.insert(roots, core.AboutFrame) end

for _, root in ipairs(roots) do
	-- Set root background
	if root:IsA("Frame") then
		root.BackgroundColor3 = theme.BlackgroundColor
	end

	-- Loop through all UI descendants
	for _, obj in pairs(root:GetDescendants()) do
		if obj:IsA("Frame") then
			local name = obj.Name
			if name:find("Section") then
				obj.BackgroundColor3 = theme.SectionColor
			elseif name:find("outlo") then
				obj.BackgroundColor3 = theme.TraceColor
			elseif name:find("outlo_2") then
				obj.BackgroundColor3 = theme.TraceColor
			elseif name:find("outlo_3") then
				obj.BackgroundColor3 = theme.TraceColor
			elseif name:find("lay") then
				obj.BackgroundColor3 = theme.StrokeColor
			elseif name:find("dpiDropdown") then
				obj.BackgroundColor3 = theme.BlackgroundColor
			elseif name:find("Stroke") then
				obj.BackgroundColor3 = theme.Save
                        elseif name:find("divider") then
				obj.BackgroundColor3 = theme.StrokeColor
			elseif name:find("MoveFrame") then
				obj.BackgroundColor3 = theme.MainColorDrop
			elseif name:find("divider2") then
				obj.BackgroundColor3 = theme.StrokeColor
			elseif name == "Frame_2" then
				obj.BackgroundColor3 = theme.BlackColor
			elseif name == "Frame_3" then
				obj.BackgroundColor3 = theme.HeaderColor
			elseif name == "Frame" and obj.Parent == root then
				obj.BackgroundColor3 = theme.BlackgroundColor
			elseif name:lower():find("button") then
				obj.BackgroundColor3 = theme.ButtonBlackgroundColor
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
	end)


local NEVERLOSE = game.CoreGui:FindFirstChild("NEVERLOSE")
if not NEVERLOSE then return end

local Frame = NEVERLOSE:FindFirstChild("Frame")
if not Frame then return end

local RunService = game:GetService("RunService")

-- Store last applied tab color to avoid redundant changes
local lastTabColor = nil

RunService.RenderStepped:Connect(function()
    local bg = Frame.BackgroundColor3
    local newTabColor

    if bg == Color3.fromRGB(1, 17, 33) then
        newTabColor = Color3.fromRGB(19, 176, 243)
    elseif bg == Color3.fromRGB(22, 22, 22) then
        newTabColor = Color3.fromRGB(255, 255, 255)
    else
        return -- Not a color we care about
    end

    -- Only update if the color actually changed
    if newTabColor ~= lastTabColor then
        for _, obj in ipairs(NEVERLOSE:GetDescendants()) do
            if obj:IsA("Frame") and obj.Name == "TabButton" then
                obj.BackgroundColor3 = newTabColor
            end
        end
        lastTabColor = newTabColor
    end
end)

local NEVERLOSE = game.CoreGui:FindFirstChild("NEVERLOSE")
if not NEVERLOSE then return end

local Frame = NEVERLOSE:FindFirstChild("Frame")
if not Frame then return end

local RunService = game:GetService("RunService")

local lastAppliedColor = nil

RunService.RenderStepped:Connect(function()
    local bgColor = Frame.BackgroundColor3
    local newDownBarColor = nil

    if bgColor == Color3.fromRGB(1, 17, 33) then
        newDownBarColor = Color3.fromRGB(1, 30, 59)
    elseif bgColor == Color3.fromRGB(22, 22, 22) then
        newDownBarColor = Color3.fromRGB(25, 25, 25)
    else
        return -- Unhandled color
    end

    -- Only update if different from last applied
    if newDownBarColor ~= lastAppliedColor then
        for _, obj in ipairs(Frame:GetDescendants()) do
            if obj:IsA("Frame") and obj.Name == "DownBar" then
                obj.BackgroundColor3 = newDownBarColor
            end
        end
        lastAppliedColor = newDownBarColor
    end
end)

local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local NEVERLOSE = CoreGui:WaitForChild("NEVERLOSE")

-- 👇 Update this path to your actual button
local button = CoreGui.NEVERLOSE.Frame.ImageButton -- change this to the correct path

local isVisible = true
local tweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local originalTransparencies = {}

local function recordOriginalTransparency(instance)
	if not originalTransparencies[instance] then
		if instance:IsA("TextLabel") or instance:IsA("TextButton") or instance:IsA("TextBox") then
			originalTransparencies[instance] = {
				TextTransparency = instance.TextTransparency,
				BackgroundTransparency = instance.BackgroundTransparency
			}
		elseif instance:IsA("ImageLabel") or instance:IsA("ImageButton") then
			originalTransparencies[instance] = {
				ImageTransparency = instance.ImageTransparency,
				BackgroundTransparency = instance.BackgroundTransparency
			}
		elseif instance:IsA("Frame") or instance:IsA("ScrollingFrame") then
			originalTransparencies[instance] = {
				BackgroundTransparency = instance.BackgroundTransparency
			}
		end
	end
end

local function fadeInstance(instance, fadeOut)
	local original = originalTransparencies[instance]
	if not original then return end

	if instance:IsA("TextLabel") or instance:IsA("TextButton") or instance:IsA("TextBox") then
		TweenService:Create(instance, tweenInfo, {
			TextTransparency = fadeOut and 1 or original.TextTransparency,
			BackgroundTransparency = fadeOut and 1 or original.BackgroundTransparency
		}):Play()
	elseif instance:IsA("ImageLabel") or instance:IsA("ImageButton") then
		TweenService:Create(instance, tweenInfo, {
			ImageTransparency = fadeOut and 1 or original.ImageTransparency,
			BackgroundTransparency = fadeOut and 1 or original.BackgroundTransparency
		}):Play()
	elseif instance:IsA("Frame") or instance:IsA("ScrollingFrame") then
		TweenService:Create(instance, tweenInfo, {
			BackgroundTransparency = fadeOut and 1 or original.BackgroundTransparency
		}):Play()
	end
end

local function fadeUI(root, fadeOut)
	for _, descendant in pairs(root:GetDescendants()) do
		pcall(function()
			recordOriginalTransparency(descendant)
			fadeInstance(descendant, fadeOut)
		end)
	end
end

-- Toggle fade when button is clicked
button.MouseButton1Click:Connect(function()
	isVisible = not isVisible
	fadeUI(NEVERLOSE, not isVisible)
end)
