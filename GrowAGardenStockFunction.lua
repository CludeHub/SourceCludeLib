if game.PlaceId == 126884695634066 then
local CoreGui = game.CoreGui
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

-- Create Stock Button
local Stock = Instance.new("TextButton")
Stock.Name = "Stock"
Stock.Parent = CoreGui.NEVERLOSE.Frame.MainFrame
Stock.Size = UDim2.new(0.35, 0, 1, 0)
Stock.Position = UDim2.new(0.223, 0, 0, 0)
Stock.Text = "Stock Timers"
Stock.TextTransparency = 0.3
Stock.TextColor3 = Color3.fromRGB(255, 255, 255)
Stock.TextXAlignment = Enum.TextXAlignment.Left
Stock.TextSize = 11
Stock.Font = Enum.Font.SourceSansBold
Stock.ZIndex = 5
Stock.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
Stock.AutoButtonColor = false

-- Stroke
local stroke = Instance.new("UIStroke", Stock)
stroke.Thickness = 0.6
stroke.Color = Color3.fromRGB(28, 28, 28)
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- Corner
local corner = Instance.new("UICorner", Stock)
corner.CornerRadius = UDim.new(0, 2)

-- Holder Frame for Arrow
local holder = Instance.new("Frame")
holder.Name = "Holder"
holder.Parent = Stock
holder.BackgroundTransparency = 1
holder.Position = UDim2.new(0.79, 0, 0.5, 0)
holder.Size = UDim2.new(0.2, 0, 0.1, 0)

-- Arrow Label "<"
local arrow = Instance.new("TextLabel")
arrow.Name = "LabelText"
arrow.Parent = holder
arrow.Size = UDim2.new(1, 0, 1, 0)
arrow.BackgroundTransparency = 1
arrow.ZIndex = 5
arrow.Text = "<"
arrow.TextTransparency = 0.3
arrow.TextSize = 12
arrow.Rotation = -90
arrow.TextColor3 = Color3.fromRGB(255, 255, 255)
arrow.Font = Enum.Font.SourceSansBold

-- Dropdown Frame
local dropdown = Instance.new("Frame")
dropdown.Name = "Dropdown"
dropdown.Parent = Stock
dropdown.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
dropdown.BorderSizePixel = 0
dropdown.BackgroundTransparency = 1
dropdown.Size = UDim2.new(1, 0, 0, 0)
dropdown.Position = UDim2.new(0, 0, 1, 0)
dropdown.ClipsDescendants = true
dropdown.ZIndex = 99

-- Scroll + Layout
local scroll = Instance.new("ScrollingFrame")
scroll.Parent = dropdown
scroll.BackgroundTransparency = 1
scroll.Size = UDim2.new(1, 0, 1, 0)
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.ScrollBarThickness = 3

local layout = Instance.new("UIListLayout", scroll)
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Padding = UDim.new(0, 3)

-- Auto-Updating Labels
local updateLabels = {}

local function createTimerLabel(name, getTextFunc)
    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, -10, 0, 20)
    lbl.BackgroundTransparency = 1
    lbl.TextColor3 = Color3.fromRGB(255, 255, 255)
    lbl.Font = Enum.Font.SourceSansBold
    lbl.TextTransparency = 0.3
    lbl.TextScaled = true
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.ZIndex = 102
    lbl.Text = getTextFunc()
    lbl.Parent = scroll

    table.insert(updateLabels, {
        label = lbl,
        getText = getTextFunc
    })
end

createTimerLabel("Seed", function()
    return "Seed: " .. game.Players.LocalPlayer.PlayerGui.Seed_Shop.Frame.Frame.Timer.Text
end)

createTimerLabel("Gear", function()
    return "Gear: " .. game.Players.LocalPlayer.PlayerGui.Gear_Shop.Frame.Frame.Timer.Text
end)

createTimerLabel("Cosmetics", function()
    return "Cosmetics: " .. game.Players.LocalPlayer.PlayerGui.CosmeticShop_UI.CosmeticShop.Main.Holder.Header.TimerLabel.Text
end)

createTimerLabel("PetShop", function()
    return "PetShop: " .. game.Players.LocalPlayer.PlayerGui.PetShop_UI.Frame.Frame.Timer.Text
end)

-- Auto size Canvas
layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    scroll.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 5)
end)

-- Update Loop
RunService.RenderStepped:Connect(function()
    for _, info in ipairs(updateLabels) do
        info.label.Text = info.getText()
    end
end)

-- Dropdown toggle
local isOpen = false
local function toggleDropdown()
    isOpen = not isOpen

    -- Arrow Rotation Tween
    local goalRotation = isOpen and 90 or -90
    TweenService:Create(arrow, TweenInfo.new(0.2), {Rotation = goalRotation}):Play()

    -- Background Transparency Tween
    TweenService:Create(dropdown, TweenInfo.new(0.2), {
        BackgroundTransparency = isOpen and 0 or 1
    }):Play()

    -- Dropdown Size Tween
    local goalSizeY = isOpen and layout.AbsoluteContentSize.Y + 10 or 0
    TweenService:Create(dropdown, TweenInfo.new(0.2), {
        Size = UDim2.new(1, 0, 0, goalSizeY)
    }):Play()
end

Stock.MouseButton1Click:Connect(toggleDropdown)

local CoreGui = game.CoreGui
local SearchBox = CoreGui:WaitForChild("NEVERLOSE"):WaitForChild("Frame"):WaitForChild("SearchBox")

local mutations = {
    Gold = 20, Rainbow = 50, Wet = 2, Windstruck = 2, Moonlit = 2,
    Clay = 3, Chilled = 2, Choc = 2, Pollinated = 3, Sandy = 3,
    Bloodlit = 4, Twisted = 5, Drenched = 5, Cloudtouched = 5,
    Frozen = 10, Aurora = 90, Shocked = 100, Celestial = 120,

    Burnt = 4, Verdant = 4, Wiltproof = 4, Plasma = 5,
    ["Honey Glazed"] = 5, Heavenly = 5, Fried = 8, Amber = 10,
    Cooked = 25, OldAmber = 20, Zombified = 25, Molten = 25,
    Ceramic = 30, AncientAmber = 50, Sundried = 85,
    Paradisal = 100, Alienlike = 100, Galactic = 120,
    Disco = 125, Meteoric = 125, Voidtouched = 135,
    Dawnbound = 150, Starised = 230,

    Tempestuous = 19, Chakra = 5, Tranquil = 20
}

local function parseInput(input)
    local firstNumber = nil
    local sum = 0

    -- Split by × or x
    local multiParts = string.split(input, "×")
    if #multiParts == 1 then
        multiParts = string.split(input, "x")
    end

    if #multiParts >= 2 then
        firstNumber = tonumber((multiParts[1]:gsub(",", "")):match("%d+"))
        input = multiParts[2]
    else
        -- Default multiplier is 1 if × not present
        firstNumber = 1
        input = multiParts[1]
    end

    for word in string.gmatch(input, "([^%+%-]+)") do
        word = word:match("^%s*(.-)%s*$") -- trim
        local num = tonumber((word:gsub(",", "")))
        if num then
            sum = sum + num
        else
            for k, v in pairs(mutations) do
                if string.lower(word) == string.lower(k) then
                    sum = sum + v
                end
            end
        end
    end

    -- Handle minus manually
    for minus in string.gmatch(input, "%- *([%d]+)") do
        sum = sum - tonumber(minus)
    end

    return firstNumber * sum
end

SearchBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local result = parseInput(SearchBox.Text)
        SearchBox.Text = tostring(result)
    end
end)
CoreGui.NEVERLOSE.Frame.SearchBox.PlaceholderText = "Example = 6999 + Celestial + Shocked"
end
