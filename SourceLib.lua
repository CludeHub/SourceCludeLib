local TweenService = game:GetService("TweenService")
local Clude = {}

function Clude:CreateWindow(config)
    local gui = Instance.new("ScreenGui")
    gui.Name = "CludeGui"
    gui.ResetOnSpawn = false
    gui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
	
    local window = Instance.new("Frame")
    window.Size = UDim2.new(0, 0, 0, 0)
    window.Position = UDim2.new(0.262, 0, -0.011, 0)
    window.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    window.Draggable = false
    window.Active = true
    window.Parent = gui
    Instance.new("UICorner", window).CornerRadius = UDim.new(0, 5)

    local uiStroke = Instance.new("UIStroke")
    uiStroke.Thickness = 3
    uiStroke.Color = Color3.fromRGB(0, 0, 0)  -- Black stroke
    uiStroke.Parent = window

    local closeOpenButton = Instance.new("TextButton")
    closeOpenButton.Size = UDim2.new(0, 40, 0, 40)
    closeOpenButton.Position = UDim2.new(1, -40, 0, 0)
    closeOpenButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    closeOpenButton.Text = "-"
    closeOpenButton.TextColor3 = Color3.new(1, 1, 1)
    closeOpenButton.Font = Enum.Font.SourceSansBold
    closeOpenButton.TextSize = 23
    closeOpenButton.ZIndex = 3
    closeOpenButton.Parent = gui
    Instance.new("UICorner", closeOpenButton).CornerRadius = UDim.new(0, 5)

    closeOpenButton.MouseButton1Click:Connect(function()
    if window.Visible then
        window.Visible = false
        closeOpenButton.Text = "+"
    else
        window.Visible = true
        closeOpenButton.Text = "-"
    end
end)

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(0.980, 0, 0, 40)
    title.BackgroundTransparency = 1
    title.Text = config.Title or "Clude UI"
    title.TextColor3 = Color3.new(1, 1, 1)
    title.Font = Enum.Font.SourceSansBold
    title.Position = UDim2.new(0, 10, 0, 0)
    title.TextSize = 22
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.Parent = window
    title.ZIndex = 3
    Instance.new("UICorner", title).CornerRadius = UDim.new(0, 5)
 
    local title2 = Instance.new("Frame")
    title2.Size = UDim2.new(1, 0, 0, 40)
    title2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    title2.Parent = title
    title2.ZIndex = 2
    Instance.new("UICorner", title2).CornerRadius = UDim.new(0, 5)
    
    local fpsLabel = Instance.new("TextLabel")
    fpsLabel.Name = "FPSCounter"
    fpsLabel.BackgroundTransparency = 1
    fpsLabel.TextColor3 = Color3.new(1, 1, 1)
    fpsLabel.TextStrokeTransparency = 0
    fpsLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    fpsLabel.Font = Enum.Font.SourceSansBold
    fpsLabel.TextSize = 22
    fpsLabel.Size = UDim2.new(0.980, 0, 0, 40)
    fpsLabel.Position = UDim2.new(0, -3, 0, 0)
    fpsLabel.TextXAlignment = Enum.TextXAlignment.Right
    fpsLabel.TextYAlignment = Enum.TextYAlignment.Center
    fpsLabel.Parent = window
    fpsLabel.ZIndex = 3

local fps = 0
local frames = 0
local lastTime = tick()

game:GetService("RunService").RenderStepped:Connect(function()
	frames = frames + 1
	local currentTime = tick()
	if currentTime - lastTime >= 1 then
		fps = frames
		frames = 0
		lastTime = currentTime
		local playerCount = #game:GetService("Players"):GetPlayers()
		fpsLabel.Text = "FPS: "..fps.."  |  Players:   "..playerCount
	end
end)

local window2 = Instance.new("ScrollingFrame")
window2.Name = "Window2"
window2.Size = UDim2.new(0, 500, 0, 360)
window2.Position = UDim2.new(0.262, 0, -0.11, 0)
window2.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
window2.Visible = false
window2.Active = true
window2.Draggable = false
window2.ScrollBarThickness = 5
window2.ScrollingDirection = Enum.ScrollingDirection.Y
window2.Parent = gui
window2.ZIndex = 2
	
local corner2 = Instance.new("UICorner")
corner2.CornerRadius = UDim.new(0, 5)
corner2.Parent = window2

local infoButton = Instance.new("ImageButton")
infoButton.Name = "InfoButton"
infoButton.Size = UDim2.new(0, 50, 0, 50)
infoButton.Position = UDim2.new(1, 10, 0.5, -25)
infoButton.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
infoButton.Image = "rbxassetid://123112467890707"
infoButton.Parent = window
infoButton.ZIndex = 3
Instance.new("UICorner", infoButton).CornerRadius = UDim.new(0, 5)

local titleq = Instance.new("TextLabel")
titleq.Text = "OWNERS"
titleq.Size = UDim2.new(1, 0, 0, 40)
titleq.TextColor3 = Color3.fromRGB(255, 255, 255)
titleq.BackgroundTransparency = 1
titleq.TextScaled = true
titleq.Parent = window2
titleq.ZIndex = 3

local clude = Instance.new("TextLabel")
clude.Text = "Clude"
clude.Size = UDim2.new(1, 0, 0, 30)
clude.Position = UDim2.new(0, 0, 0, 40)
clude.TextColor3 = Color3.fromRGB(255, 255, 255)
clude.BackgroundTransparency = 1
clude.TextScaled = true
clude.Parent = window2
clude.ZIndex = 3

local image1 = Instance.new("Frame")
image1.Size = UDim2.new(0.8, 0, 0.4, 0)
image1.Position = UDim2.new(0.1, 0, 0.2, 0)
image1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image1.ZIndex = 3
image1.Parent = window2

Instance.new("UICorner", image1).CornerRadius = UDim.new(0, 5)

local imgLabel1 = Instance.new("ImageLabel")
imgLabel1.Size = UDim2.new(1, 0, 1, 0)
imgLabel1.Image = "rbxassetid://134013226250881"
imgLabel1.BackgroundTransparency = 1
imgLabel1.Parent = image1
imgLabel1.ZIndex = 4

local label1 = Instance.new("TextLabel")
label1.Text = "Script Maker"
label1.Size = UDim2.new(1, 0, 0, 30)
label1.Position = UDim2.new(0, 0, 1, -30)
label1.TextColor3 = Color3.fromRGB(255, 255, 255)
label1.BackgroundTransparency = 1
label1.TextScaled = true
label1.Parent = image1
label1.ZIndex = 3

local image2 = Instance.new("Frame")
image2.Size = UDim2.new(0.8, 0, 0.4, 0)
image2.Position = UDim2.new(0.1, 0, 0.7, 0)
image2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image2.ZIndex = 3
image2.Parent = window2
Instance.new("UICorner", image2).CornerRadius = UDim.new(0, 5)

local imgLabel2 = Instance.new("ImageLabel")
imgLabel2.Size = UDim2.new(1, 0, 1, 0)
imgLabel2.Image = "rbxassetid://96196242830717"
imgLabel2.BackgroundTransparency = 1
imgLabel2.Parent = image2
imgLabel2.ZIndex = 4

local nameLabel = Instance.new("TextLabel")
nameLabel.Text = "paulparasplaythis"
nameLabel.Size = UDim2.new(1, 0, 0, 30)
nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
nameLabel.BackgroundTransparency = 1
nameLabel.TextScaled = true
nameLabel.Parent = image2
nameLabel.ZIndex = 3

local label2 = Instance.new("TextLabel")
label2.Text = "UI Designer"
label2.Size = UDim2.new(1, 0, 0, 30)
label2.Position = UDim2.new(0, 0, 1, -30)
label2.TextColor3 = Color3.fromRGB(255, 255, 255)
label2.BackgroundTransparency = 1
label2.TextScaled = true
label2.Parent = image2
label2.ZIndez = 3

local goBack = Instance.new("TextButton")
goBack.Size = UDim2.new(0, 50, 0, 30)
goBack.Position = UDim2.new(0, 10, 1, -40)
goBack.Text = "-"
goBack.TextColor3 = Color3.fromRGB(255, 255, 255)
goBack.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
goBack.TextScaled = true
goBack.Parent = window2
goback.ZIndex = 5

goBack.MouseButton1Click:Connect(function()
	window2.Visible = false
	window.Visible = true
	infoButton.Visible = true
end)

infoButton.MouseButton1Click:Connect(function()
	window.Visible = false
	window2.Visible = true
	infoButton.Visible = false
end)

    local tabbuttons = Instance.new("ScrollingFrame")
    tabbuttons.Size = UDim2.new(0, 110, 1, -40)
    tabbuttons.Position = UDim2.new(0, 0, 0, 40)
    tabbuttons.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    tabbuttons.ScrollBarThickness = 5
    tabbuttons.AutomaticCanvasSize = Enum.AutomaticSize.Y
    tabbuttons.CanvasSize = UDim2.new(0, 0, 0, 0)
    tabbuttons.Parent = window
    Instance.new("UICorner", tabbuttons).CornerRadius = UDim.new(0, 5)

    local tabListLayout = Instance.new("UIListLayout", tabbuttons)
    tabListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    tabListLayout.Padding = UDim.new(0, 6)

    local tabfolder = Instance.new("Folder", window)
    tabfolder.Name = "Tabs"

    TweenService:Create(window, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Size = UDim2.new(0, 500, 0, 360),
    Position = UDim2.new(0.232, 0, -0.11, 0)
}):Play()
    
    function Clude:CreateTab(name)
        local container = Instance.new("Frame")
        container.Size = UDim2.new(1, -120, 1, -50)
        container.Position = UDim2.new(0, 114, 0, 45)
        container.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        container.Visible = false
        container.Parent = tabfolder
        Instance.new("UICorner", container).CornerRadius = UDim.new(0, 5)
        
        local scroll = Instance.new("ScrollingFrame")
        scroll.Size = UDim2.new(1, 0, 1, 0)
        scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
        scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
        scroll.ScrollBarThickness = 7
        scroll.BackgroundTransparency = 1
        scroll.Parent = container

        local layout = Instance.new("UIListLayout")
        layout.Padding = UDim.new(0, 8)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Parent = scroll

        local tabButton = Instance.new("TextButton")
        tabButton.Size = UDim2.new(1, -10, 0, 32)
        tabButton.Text = name
        tabButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        tabButton.TextColor3 = Color3.new(1, 1, 1)
        tabButton.Font = Enum.Font.SourceSansBold
        tabButton.TextSize = 16
        tabButton.Parent = tabbuttons
        Instance.new("UICorner", tabButton).CornerRadius = UDim.new(0, 5)

        tabButton.MouseButton1Click:Connect(function()
            for _, other in pairs(tabfolder:GetChildren()) do
                other.Visible = false
            end
            container.Visible = true
        end)

        return scroll
    end

    function Clude:CreateButton(tab, text, callback)
        local button = Instance.new("TextButton")
        button.Size = UDim2.new(1, -20, 0, 40)
        button.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
        button.Text = text
        button.TextXAlignment = Enum.TextXAlignment.Left
        button.TextColor3 = Color3.new(1, 1, 1)
        button.Font = Enum.Font.GothamBold
        button.TextSize = 15
        button.Parent = tab
        Instance.new("UICorner", button).CornerRadius = UDim.new(0, 5)
        button.MouseButton1Click:Connect(callback)
    end

    function Clude:CreateToggle(tab, text, default, callback)
    local toggle = Instance.new("TextButton")
    toggle.Size = UDim2.new(1, -20, 0, 50)
    toggle.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    toggle.TextColor3 = Color3.new(1, 1, 1)
    toggle.Font = Enum.Font.GothamBold
    toggle.TextSize = 14
    toggle.Text = text
    toggle.TextXAlignment = Enum.TextXAlignment.Left
    toggle.Parent = tab
    Instance.new("UICorner", toggle).CornerRadius = UDim.new(0, 8)

    -- Toggle switch container (background bar)
    local box = Instance.new("Frame")
    box.Size = UDim2.new(0, 50, 0, 24)
    box.Position = UDim2.new(1, -60, 0.5, -12)
    box.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    box.Parent = toggle
    Instance.new("UICorner", box).CornerRadius = UDim.new(1, 0)

    local uiStroke = Instance.new("UIStroke")
    uiStroke.Thickness = 2
    uiStroke.Color = Color3.fromRGB(0, 0, 0)  -- Black stroke
    uiStroke.Parent = box
        
    -- Switch knob
    local innerBox = Instance.new("Frame")
    innerBox.Size = UDim2.new(0, 22, 0, 22)
    innerBox.Position = UDim2.new(0, 2, 0, 1)
    innerBox.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    innerBox.Parent = box
    innerBox.ZIndex = 10
    Instance.new("UICorner", innerBox).CornerRadius = UDim.new(1, 0)

    -- State logic
    local state = default
    if state then
        innerBox.Position = UDim2.new(1, -24, 0, 1)
        box.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    end

    toggle.MouseButton1Click:Connect(function()
        state = not state
        toggle.Text = text
        if state then
            innerBox:TweenPosition(UDim2.new(1, -24, 0, 1), "Out", "Quad", 0.3, true)
            innerBox.BackgroundColor3 = Color3.fromRGB(0, 102, 255)
        else
            innerBox:TweenPosition(UDim2.new(0, 2, 0, 1), "Out", "Quad", 0.3, true)
            innerBox.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
        end
        if callback then callback(state) end
    end)
    end

    function Clude:CreateSlider(tab, text, min, max, default, callback)  
    local frame = Instance.new("Frame")  
    frame.Size = UDim2.new(1, -20, 0, 50)  
    frame.BackgroundColor3 = Color3.fromRGB(70, 70, 70)  
    frame.Parent = tab  
    Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 5)  

    local label = Instance.new("TextLabel")  
    label.Size = UDim2.new(1, 0, 0, 20)  
    label.BackgroundTransparency = 1  
    label.Text = text .. ": " .. default  
    label.TextColor3 = Color3.new(1, 1, 1)  
    label.Font = Enum.Font.GothamBold  
    label.TextSize = 14  
    label.Parent = frame  

    local slider = Instance.new("TextButton")  
    slider.Size = UDim2.new(1, -10, 0, 20)  
    slider.Position = UDim2.new(0, 5, 0, 25)  
    slider.BackgroundColor3 = Color3.fromRGB(40, 40, 40)  
    slider.Text = ""  
    slider.Parent = frame  
    Instance.new("UICorner", slider).CornerRadius = UDim.new(0, 5)  

    local value = default  
    slider.MouseButton1Click:Connect(function()  
        value = value + 1  
        if value > max then value = min end  
        label.Text = text .. ": " .. value  
        if callback then callback(value) end  
    end)  
end

    function Clude:CreateInput(tab, label, placeholder, callback)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -20, 0, 40)
    frame.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    frame.Parent = tab
    Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 5)

    local labelText = Instance.new("TextLabel")
    labelText.Size = UDim2.new(0, 100, 1, 0)
    labelText.Position = UDim2.new(0, 10, 0, 0)
    labelText.BackgroundTransparency = 1
    labelText.Text = label
    labelText.TextColor3 = Color3.new(1, 1, 1)
    labelText.Font = Enum.Font.GothamBold
    labelText.TextSize = 15
    labelText.TextXAlignment = Enum.TextXAlignment.Left
    labelText.Parent = frame

    local input = Instance.new("TextBox")
    input.Size = UDim2.new(0, 150, 1, -10)
    input.Position = UDim2.new(1, -160, 0, 5)
    input.PlaceholderText = placeholder
    input.Text = ""
    input.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    input.TextColor3 = Color3.new(1, 1, 1)
    input.Font = Enum.Font.Gotham
    input.TextSize = 15
    input.Parent = frame
    Instance.new("UICorner", input).CornerRadius = UDim.new(0, 5)

 input.FocusLost:Connect(function(enter)
     if enter then callback(input.Text) end
   end)
  end
    
    function Clude:CreateLabel(tab, text)
        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1, -20, 0, 40)
        label.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        label.Text = text
        label.TextColor3 = Color3.new(1, 1, 1)
        label.Font = Enum.Font.SourceSansBold
        label.TextSize = 15
        label.Parent = tab
        Instance.new("UICorner", label).CornerRadius = UDim.new(0, 5)
    end

    function Clude:CreateParagraph(tab, text)
        local paragraph = Instance.new("TextLabel")
        paragraph.Size = UDim2.new(1, -20, 0, 60)
        paragraph.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        paragraph.Text = text
        paragraph.TextColor3 = Color3.new(1, 1, 1)
        paragraph.Font = Enum.Font.Gotham
        paragraph.TextSize = 14
        paragraph.TextWrapped = true
        paragraph.TextYAlignment = Enum.TextYAlignment.Top
        paragraph.Parent = tab
        Instance.new("UICorner", paragraph).CornerRadius = UDim.new(0, 5)
    end

    function Clude:CreateDropdown(tab, title, options, callback)
        local drop = Instance.new("TextButton")
        drop.Size = UDim2.new(1, -20, 0, 40)
        drop.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
        drop.Text = title
        drop.TextXAlignment = Enum.TextXAlignment.Left
        drop.TextColor3 = Color3.new(1, 1, 1)
        drop.Font = Enum.Font.GothamBold
        drop.TextSize = 15
        drop.Parent = tab
        Instance.new("UICorner", drop).CornerRadius = UDim.new(0, 5)

        local open = false
        local list = {}

        drop.MouseButton1Click:Connect(function()
            open = not open
            for _, item in ipairs(list) do
                item.Visible = open
            end
        end)

        for _, option in ipairs(options) do
            local btn = Instance.new("TextButton")
            btn.Size = UDim2.new(1, -40, 0, 30)
            btn.Position = UDim2.new(0, 20, 0, 0)
            btn.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
            btn.Text = option
            btn.TextColor3 = Color3.new(1, 1, 1)
            btn.Font = Enum.Font.Gotham
            btn.TextSize = 14
            btn.Visible = false
            btn.Parent = tab
            Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 5)
            table.insert(list, btn)
            btn.MouseButton1Click:Connect(function()
                callback(option)
                drop.Text = title .. ": " .. option
                for _, b in ipairs(list) do b.Visible = false end
                open = false
            end)
        end
    end
    
    return Clude
end

function Clude:Destroy()
    local gui = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("CludeGui")
    if gui then
        gui:Destroy()
    end
end

return Clude
