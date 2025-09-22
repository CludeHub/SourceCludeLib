local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local toggleName = "Draggable"
local defaultValue = true

-- References
local NEVERLOSE = game.CoreGui:WaitForChild("NEVERLOSE")
local Frame = NEVERLOSE:WaitForChild("Frame")
local AboutFrame = NEVERLOSE:WaitForChild("AboutFrame")

local ThemeColor = Color3.fromRGB(0, 172, 247)

-- Toggle Design
local Toggle = Instance.new("Frame")
Toggle.Name = "Toggle"
Toggle.Parent = AboutFrame
Toggle.BackgroundTransparency = 1
Toggle.Position = UDim2.new(0.0300059989, 0, 0.700000823, 0)
Toggle.Size = UDim2.new(0.400000012, 0, 0.0772999972, 0)
Toggle.ZIndex = 5
Toggle.ZIndex = 50

Instance.new("UIAspectRatioConstraint", Toggle).AspectRatio = 7
Instance.new("UICorner", Toggle).CornerRadius = UDim.new(0, 3)

local LabelText = Instance.new("TextLabel", Toggle)
LabelText.Name = "LabelText"
LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
LabelText.BackgroundTransparency = 1
LabelText.Position = UDim2.new(0.528081894, 0, 0.5, 0)
LabelText.Size = UDim2.new(1, 0, 1, 0)
LabelText.Font = Enum.Font.Gotham
LabelText.ZIndex = 6
LabelText.Text = toggleName
LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
LabelText.TextTransparency = 0.3
LabelText.TextScaled = true
LabelText.TextWrapped = true
LabelText.TextXAlignment = Enum.TextXAlignment.Left
LabelText.ZIndex = 50
local Effect = Instance.new("Frame", Toggle)
Effect.Name = "Effect"
Effect.AnchorPoint = Vector2.new(0, 0.5)
Effect.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
Effect.Position = UDim2.new(1.99900003, 0, 0.5, 0)
Effect.Size = UDim2.new(0.16, 0, 0.7, 0)
Effect.ZIndex = 6
Instance.new("UICorner", Effect).CornerRadius = UDim.new(0.5, 0)
Effect.ZIndex = 50

local Icon = Instance.new("Frame", Effect)
Icon.Name = "Icon"
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
Icon.Position = UDim2.new(0.25, 0, 0.5, 0)
Icon.Size = UDim2.new(1, 0, 1, 0)
Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
Icon.ZIndex = 7
Instance.new("UICorner", Icon).CornerRadius = UDim.new(1, 0)
Icon.ZIndex = 50
local Clicker = Instance.new("TextButton", Toggle)
Clicker.BackgroundTransparency = 1
Clicker.Size = UDim2.new(2.2, 0, 1, 0)
Clicker.Text = ""
Clicker.ZIndex = 10
Clicker.ZIndex = 50
-- Toggle visuals
local function toggleval(val, timea)
	if val then
		TweenService:Create(LabelText, TweenInfo.new(timea), {TextTransparency = 0}):Play()
		TweenService:Create(Icon, TweenInfo.new(timea), {
			Position = UDim2.new(0.75, 0, 0.5, 0),
			BackgroundColor3 = ThemeColor
		}):Play()
		Effect.BackgroundColor3 = Color3.fromRGB(12, 18, 50)
	else
		TweenService:Create(LabelText, TweenInfo.new(timea), {TextTransparency = 0.3}):Play()
		TweenService:Create(Icon, TweenInfo.new(timea), {
			Position = UDim2.new(0.25, 0, 0.5, 0),
			BackgroundColor3 = Color3.fromRGB(95, 95, 95)
		}):Play()
		Effect.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	end
end

-- Drag system
local dragging = false
local dragStart, frameStartPos, aboutStartPos
local inputConn, moveConn

local function updateDrag(input)
	if not dragging then return end
	local delta = input.Position - dragStart

	Frame.Position = UDim2.new(
		frameStartPos.X.Scale,
		frameStartPos.X.Offset + delta.X,
		frameStartPos.Y.Scale,
		frameStartPos.Y.Offset + delta.Y
	)

	AboutFrame.Position = UDim2.new(
		aboutStartPos.X.Scale,
		aboutStartPos.X.Offset + delta.X,
		aboutStartPos.Y.Scale,
		aboutStartPos.Y.Offset + delta.Y
	)
end

local function enableDragging(enabled)
	-- Disconnect old connections
	if inputConn then inputConn:Disconnect() inputConn = nil end
	if moveConn then moveConn:Disconnect() moveConn = nil end

	if not enabled then
		dragging = false
		return
	end

	inputConn = Frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			frameStartPos = Frame.Position
			aboutStartPos = AboutFrame.Position

			local ended
			ended = input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
					ended:Disconnect()
				end
			end)
		end
	end)

	moveConn = UserInputService.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			updateDrag(input)
		end
	end)
end

-- Init toggle state
local ToggleValue = defaultValue
toggleval(ToggleValue, 0)
enableDragging(ToggleValue)

Clicker.MouseButton1Click:Connect(function()
		local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://6895079853"
Sound2.Looped = false
Sound2.Volume = 1
Sound2.Parent = game:GetService("SoundService")
Sound2:Play()

Sound2.Ended:Connect(function()
	Sound2:Destroy()
     end)
	ToggleValue = not ToggleValue
	toggleval(ToggleValue, 0.1)
	enableDragging(ToggleValue)
	print("Toggle:", ToggleValue)
end)


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
                elseif name:find("outlo") then
                    obj.BackgroundColor3 = theme.TraceColor
                elseif name:find("outlo_2") or name:find("outlo_3") then
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
local NEVERLOSE = game.CoreGui:FindFirstChild("NEVERLOSE")
if not NEVERLOSE then return end

local Frame = NEVERLOSE:FindFirstChild("Frame")
if not Frame then return end

local RunService = game:GetService("RunService")

local lastDownBarColor = nil
local lastIconColor = nil

RunService.RenderStepped:Connect(function()
    local bgColor = Frame.BackgroundColor3
    local newDownBarColor = nil
    local newIconColor = nil

    if bgColor == Color3.fromRGB(1, 17, 33) then  
        newDownBarColor = Color3.fromRGB(1, 30, 59)  
    elseif bgColor == Color3.fromRGB(22, 22, 22) then  
        newDownBarColor = Color3.fromRGB(25, 25, 25)  
    elseif bgColor == Color3.fromRGB(43, 43, 43) then
        newDownBarColor = Color3.fromRGB(43, 43, 43)
        newIconColor = Color3.fromRGB(255, 170, 0) -- only here Icon changes
    else
        return -- Unhandled color  
    end  

    -- Update DownBar only if changed
    if newDownBarColor and newDownBarColor ~= lastDownBarColor then  
        for _, obj in ipairs(Frame:GetDescendants()) do  
            if obj:IsA("Frame") and obj.Name == "DownBar" then  
                obj.BackgroundColor3 = newDownBarColor  
            end  
        end  
        lastDownBarColor = newDownBarColor  
    end

    -- Update Icon only if changed
    if newIconColor and newIconColor ~= lastIconColor then  
        for _, obj in ipairs(Frame:GetDescendants()) do  
            if obj:IsA("Frame") and obj.Name == "MainFrame" then  
                obj.BackgroundColor3 = newIconColor
            end  
        end  
        lastIconColor = newIconColor
    end
end)


local NEVERLOSE = game.CoreGui:FindFirstChild("NEVERLOSE")
if not NEVERLOSE then return end

local Frame = NEVERLOSE:FindFirstChild("Frame")
if not Frame then return end

local RunService = game:GetService("RunService")

local lastTabColor = nil

RunService.RenderStepped:Connect(function()
    local bgColor = Frame.BackgroundColor3
    local newTabColor = nil

    -- Original Theme
    if bgColor == Color3.fromRGB(1, 17, 33) then
        newTabColor = Color3.fromRGB(19, 176, 243)

    -- Dark Theme
    elseif bgColor == Color3.fromRGB(22, 22, 22) then
        newTabColor = Color3.fromRGB(255, 255, 255)

    -- Orange Theme
    elseif bgColor == Color3.fromRGB(43, 43, 43) then
        newTabColor = Color3.fromRGB(22, 22, 22)
    else
        return -- Not a handled theme
    end

    -- Update only if different
    if newTabColor and newTabColor ~= lastTabColor then
        for _, obj in ipairs(NEVERLOSE:GetDescendants()) do
            if obj:IsA("Frame") and obj.Name == "TabButton" then
                obj.BackgroundColor3 = newTabColor
            end
        end
        lastTabColor = newTabColor
    end
end)
