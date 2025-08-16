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
color.Position = UDim2.new(1, 0, 0, 0)
color.Size = UDim2.new(0.9, 0, 1, 0)
color.BackgroundTransparency = 1
color.Parent = style

-- Dark Theme button
local darkButton = Instance.new("TextButton")
darkButton.Name = "Dark"
darkButton.Position = UDim2.new(0.7, 0, 0, 0)
darkButton.Size = UDim2.new(0.2, 0, 1, 0)
darkButton.AutoButtonColor = false
darkButton.Text = ""
darkButton.BackgroundColor3 = Color3.new(0, 0, 0)
darkButton.Parent = color
Instance.new("UICorner", darkButton).CornerRadius = UDim.new(1, 0)

-- Original Theme button
local originalButton = Instance.new("TextButton")
originalButton.Name = "Original"
originalButton.Position = UDim2.new(0.4, 0, 0, 0)
originalButton.Size = UDim2.new(0.2, 0, 1, 0)
originalButton.AutoButtonColor = false
originalButton.Text = ""
originalButton.BackgroundColor3 = Color3.fromRGB(4, 69, 135)
originalButton.Parent = color
Instance.new("UICorner", originalButton).CornerRadius = UDim.new(1, 0)

-- New Orange Theme button
local orangeButton = Instance.new("TextButton")
orangeButton.Name = "Orange"
orangeButton.Position = UDim2.new(0.1, 0, 0, 0)
orangeButton.Size = UDim2.new(0.2, 0, 1, 0)
orangeButton.AutoButtonColor = false
orangeButton.Text = ""
orangeButton.BackgroundColor3 = Color3.fromRGB(255, 140, 0)
orangeButton.Parent = color
Instance.new("UICorner", orangeButton).CornerRadius = UDim.new(1, 0)

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
end

-- Button connections
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
        MainColor = Color3.fromRGB(255, 140, 0),
        MainColorDrop = Color3.fromRGB(65, 54, 31),
        SectionColor = Color3.fromRGB(26, 26, 26),
        StrokeColor = Color3.fromRGB(50, 50, 50),
        ButtonBlackgroundColor = Color3.fromRGB(26, 26, 26),
        SearchColor = Color3.fromRGB(43, 43, 43),
        Save = Color3.fromRGB(100, 100, 100)
    })
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
elseif bgColor == Color3.fromRGB(43, 43, 43) then
    newDownBarColor = Color3.fromRGB(43, 43, 43)
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
