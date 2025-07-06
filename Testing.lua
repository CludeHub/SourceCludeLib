local NEVERLOSE = {}

local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- UI Main Function
function NEVERLOSE:AddWindow(titleText)
    local gui = Instance.new("ScreenGui", CoreGui)
    gui.Name = "NEVERLOSE"
    gui.ResetOnSpawn = false
    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    -- Main Frame
    local Main = Instance.new("Frame", gui)
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    Main.Size = UDim2.new(0.6, 0, 0.5, 0)
    Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    Main.BorderSizePixel = 0
    Main.ClipsDescendants = true

    local UICorner = Instance.new("UICorner", Main)
    UICorner.CornerRadius = UDim.new(0, 6)

    -- Topbar
    local Topbar = Instance.new("Frame", Main)
    Topbar.Size = UDim2.new(1, 0, 0.1, 0)
    Topbar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Instance.new("UICorner", Topbar).CornerRadius = UDim.new(0, 6)

    local Title = Instance.new("TextLabel", Topbar)
    Title.Text = titleText or "NEVERLOSE"
    Title.Size = UDim2.new(0.5, 0, 1, 0)
    Title.Position = UDim2.new(0, 10, 0, 0)
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1
    Title.Font = Enum.Font.GothamBold
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.TextScaled = true

    -- Sidebar
    local Sidebar = Instance.new("Frame", Main)
    Sidebar.Size = UDim2.new(0.2, 0, 0.9, 0)
    Sidebar.Position = UDim2.new(0, 0, 0.1, 0)
    Sidebar.BackgroundColor3 = Color3.fromRGB(18, 18, 18)

    -- Sidebar Button
    local function AddSidebarButton(text)
        local Button = Instance.new("TextButton", Sidebar)
        Button.Size = UDim2.new(1, 0, 0, 30)
        Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button.Font = Enum.Font.Gotham
        Button.Text = text
        Button.TextScaled = true
        Button.BorderSizePixel = 0
        local UICorner = Instance.new("UICorner", Button)
        UICorner.CornerRadius = UDim.new(0, 4)
        return Button
    end

    AddSidebarButton("Autofarm")
    AddSidebarButton("Misc")

    -- Main Content Area
    local Content = Instance.new("Frame", Main)
    Content.Position = UDim2.new(0.2, 0, 0.1, 0)
    Content.Size = UDim2.new(0.8, 0, 0.9, 0)
    Content.BackgroundTransparency = 1

    -- Autofarm Section
    local AutofarmSection = Instance.new("Frame", Content)
    AutofarmSection.Size = UDim2.new(0.5, -10, 1, 0)
    AutofarmSection.Position = UDim2.new(0, 0, 0, 0)
    AutofarmSection.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    AutofarmSection.BorderSizePixel = 0
    Instance.new("UICorner", AutofarmSection).CornerRadius = UDim.new(0, 4)

    local function AddToggle(text)
        local ToggleFrame = Instance.new("Frame", AutofarmSection)
        ToggleFrame.Size = UDim2.new(1, -10, 0, 25)
        ToggleFrame.BackgroundTransparency = 1

        local ToggleLabel = Instance.new("TextLabel", ToggleFrame)
        ToggleLabel.Text = text
        ToggleLabel.Font = Enum.Font.Gotham
        ToggleLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
        ToggleLabel.BackgroundTransparency = 1
        ToggleLabel.TextScaled = true
        ToggleLabel.Size = UDim2.new(0.8, 0, 1, 0)
        ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left

        local Toggle = Instance.new("TextButton", ToggleFrame)
        Toggle.Size = UDim2.new(0.2, -5, 1, -6)
        Toggle.Position = UDim2.new(0.8, 0, 0, 3)
        Toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Toggle.Text = ""
        Toggle.AutoButtonColor = false
        local corner = Instance.new("UICorner", Toggle)
        corner.CornerRadius = UDim.new(1, 0)

        local Enabled = false
        Toggle.MouseButton1Click:Connect(function()
            Enabled = not Enabled
            Toggle.BackgroundColor3 = Enabled and Color3.fromRGB(0, 170, 255) or Color3.fromRGB(40, 40, 40)
        end)
    end

    for i = 1, 9 do
        AddToggle("AutoOther Farm")
    end
    AddToggle("Auto Farm")

    -- Config Section
    local ConfigSection = Instance.new("Frame", Content)
    ConfigSection.Size = UDim2.new(0.5, -10, 1, 0)
    ConfigSection.Position = UDim2.new(0.5, 10, 0, 0)
    ConfigSection.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Instance.new("UICorner", ConfigSection).CornerRadius = UDim.new(0, 4)

    local function AddConfigButton(text)
        local Button = Instance.new("TextButton", ConfigSection)
        Button.Size = UDim2.new(0.9, 0, 0, 25)
        Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button.Text = text
        Button.Font = Enum.Font.Gotham
        Button.TextScaled = true
        Button.BorderSizePixel = 0
        Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 3)
    end

    AddConfigButton("Create CFG")
    AddConfigButton("Save CFG")
    AddConfigButton("Load CFG")

    -- Dropdown
    local Dropdown = Instance.new("TextButton", ConfigSection)
    Dropdown.Size = UDim2.new(0.9, 0, 0, 25)
    Dropdown.Position = UDim2.new(0, 0, 0, 80)
    Dropdown.Text = "Select Config ▼"
    Dropdown.Font = Enum.Font.Gotham
    Dropdown.TextScaled = true
    Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
    Dropdown.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Instance.new("UICorner", Dropdown).CornerRadius = UDim.new(0, 3)

    -- Slider
    local Slider = Instance.new("Frame", ConfigSection)
    Slider.Size = UDim2.new(0.9, 0, 0, 25)
    Slider.Position = UDim2.new(0, 0, 0, 110)
    Slider.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Instance.new("UICorner", Slider).CornerRadius = UDim.new(0, 3)

    local Knob = Instance.new("Frame", Slider)
    Knob.Size = UDim2.new(0.5, 0, 1, 0)
    Knob.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    Instance.new("UICorner", Knob).CornerRadius = UDim.new(0, 3)

    return NEVERLOSE
end

return NEVERLOSE
