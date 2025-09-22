-- ModuleScript: NEVERLOSE
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local NEVERLOSE = {}
NEVERLOSE.__index = NEVERLOSE

NEVERLOSE.Theme = {
    Background = Color3.fromRGB(32, 32, 32),
    Section = Color3.fromRGB(40, 40, 40),
    Stroke = Color3.fromRGB(80, 80, 80),
    Text = Color3.fromRGB(255, 255, 255),
    Accent = Color3.fromRGB(0, 170, 255)
}

-- // Create Window
function NEVERLOSE:CreateWindow(title)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "NEVERLOSE_UI"
    ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    local Main = Instance.new("Frame")
    Main.Size = UDim2.new(0, 300, 0, 400)
    Main.Position = UDim2.new(0.5, -150, 0.5, -200)
    Main.BackgroundColor3 = self.Theme.Background
    Main.BorderSizePixel = 0
    Main.Active = true
    Main.Draggable = true
    Main.Parent = ScreenGui

    local Stroke = Instance.new("UIStroke")
    Stroke.Color = self.Theme.Stroke
    Stroke.Parent = Main

    local TitleBar = Instance.new("TextLabel")
    TitleBar.Size = UDim2.new(1, 0, 0, 30)
    TitleBar.BackgroundColor3 = self.Theme.Section
    TitleBar.BorderSizePixel = 0
    TitleBar.Text = title or "NEVERLOSE"
    TitleBar.TextColor3 = self.Theme.Text
    TitleBar.Font = Enum.Font.SourceSansBold
    TitleBar.TextSize = 16
    TitleBar.Parent = Main

    local Content = Instance.new("Frame")
    Content.Size = UDim2.new(1, -10, 1, -40)
    Content.Position = UDim2.new(0, 5, 0, 35)
    Content.BackgroundTransparency = 1
    Content.Parent = Main

    local Layout = Instance.new("UIListLayout")
    Layout.Padding = UDim.new(0, 8)
    Layout.Parent = Content

    local Window = setmetatable({Content = Content}, NEVERLOSE)
    return Window
end

-- // Add Section
function NEVERLOSE:AddSection(name)
    local Section = Instance.new("Frame")
    Section.Size = UDim2.new(1, 0, 0, 100)
    Section.BackgroundColor3 = self.Theme.Section
    Section.BorderSizePixel = 0
    Section.Parent = self.Content

    local Stroke = Instance.new("UIStroke")
    Stroke.Color = self.Theme.Stroke
    Stroke.Parent = Section

    local Layout = Instance.new("UIListLayout")
    Layout.Padding = UDim.new(0, 5)
    Layout.Parent = Section

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, 0, 0, 25)
    Label.BackgroundTransparency = 1
    Label.Text = name or "Section"
    Label.Font = Enum.Font.SourceSansBold
    Label.TextColor3 = self.Theme.Text
    Label.TextSize = 14
    Label.Parent = Section

    local SectionObj = setmetatable({Section = Section}, NEVERLOSE)
    return SectionObj
end

-- // Add Toggle
function NEVERLOSE:AddToggle(name, default, callback)
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(1, -10, 0, 25)
    Button.BackgroundColor3 = self.Theme.Background
    Button.Text = name .. " [" .. (default and "ON" or "OFF") .. "]"
    Button.TextColor3 = self.Theme.Text
    Button.Font = Enum.Font.SourceSans
    Button.TextSize = 14
    Button.Parent = self.Section

    local state = default or false
    Button.MouseButton1Click:Connect(function()
        state = not state
        Button.Text = name .. " [" .. (state and "ON" or "OFF") .. "]"
        TweenService:Create(Button, TweenInfo.new(0.15), {
            BackgroundColor3 = state and self.Theme.Accent or self.Theme.Background
        }):Play()
        if callback then callback(state) end
    end)
end

-- // Add Slider
function NEVERLOSE:AddSlider(name, min, max, default, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, -10, 0, 40)
    Frame.BackgroundColor3 = self.Theme.Background
    Frame.Parent = self.Section

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, 0, 0, 20)
    Label.BackgroundTransparency = 1
    Label.Text = name .. ": " .. tostring(default)
    Label.TextColor3 = self.Theme.Text
    Label.Font = Enum.Font.SourceSans
    Label.TextSize = 14
    Label.Parent = Frame

    local Bar = Instance.new("Frame")
    Bar.Size = UDim2.new(1, 0, 0, 10)
    Bar.Position = UDim2.new(0, 0, 1, -10)
    Bar.BackgroundColor3 = self.Theme.Section
    Bar.Parent = Frame

    local Fill = Instance.new("Frame")
    Fill.Size = UDim2.new((default-min)/(max-min), 0, 1, 0)
    Fill.BackgroundColor3 = self.Theme.Accent
    Fill.Parent = Bar

    local value = default
    local dragging = false

    Bar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local pos = math.clamp((input.Position.X - Bar.AbsolutePosition.X) / Bar.AbsoluteSize.X, 0, 1)
            value = math.floor(min + (max-min) * pos)
            Fill.Size = UDim2.new(pos, 0, 1, 0)
            Label.Text = name .. ": " .. tostring(value)
            if callback then callback(value) end
        end
    end)
end

-- // Add Dropdown
function NEVERLOSE:AddDropdown(name, list, default, callback)
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(1, -10, 0, 25)
    Button.BackgroundColor3 = self.Theme.Background
    Button.Text = name .. ": " .. tostring(default)
    Button.TextColor3 = self.Theme.Text
    Button.Font = Enum.Font.SourceSans
    Button.TextSize = 14
    Button.Parent = self.Section

    local options = list or {}
    local index = table.find(options, default) or 1
    local value = options[index]

    Button.MouseButton1Click:Connect(function()
        index = index % #options + 1
        value = options[index]
        Button.Text = name .. ": " .. tostring(value)
        if callback then callback(value) end
    end)
end

return NEVERLOSE
