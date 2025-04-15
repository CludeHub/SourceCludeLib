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

	local GraphicsButton = Instance.new("ImageButton")
GraphicsButton.Name = "GraphicsButton"
GraphicsButton.Size = UDim2.new(0, 50, 0, 50)
GraphicsButton.Position = UDim2.new(1, 10, 0.5, -25)
GraphicsButton.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
GraphicsButton.Image = "rbxassetid://123112467890707"
GraphicsButton.Parent = window
GraphicsButton.ZIndex = 3
Instance.new("UICorner", GraphicsButton).CornerRadius = UDim.new(0, 5)

local graphicsEnabled = false
local shakeConnection

GraphicsButton.MouseButton1Click:Connect(function()
	local Lighting = game:GetService("Lighting")
	local Terrain = workspace:FindFirstChildOfClass("Terrain")
	local Camera = workspace.CurrentCamera
	local RunService = game:GetService("RunService")
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer

	if not graphicsEnabled then
		graphicsEnabled = true
		GraphicsButton.BackgroundColor3 = Color3.fromRGB(0, 120, 255)

		-- Clear current effects
		for _, v in pairs(Lighting:GetChildren()) do
			if v:IsA("PostEffect") or v:IsA("Sky") or v:IsA("Atmosphere") then
				v:Destroy()
			end
		end

		Lighting.Technology = Enum.Technology.Future
		Lighting.Brightness = 3.5
		Lighting.ClockTime = 15
		Lighting.FogEnd = 1000
		Lighting.ExposureCompensation = 0.4
		Lighting.GlobalShadows = true
		Lighting.ShadowSoftness = 0.08
		Lighting.EnvironmentDiffuseScale = 1
		Lighting.EnvironmentSpecularScale = 1.5
		Lighting.Ambient = Color3.fromRGB(80, 80, 90)
		Lighting.OutdoorAmbient = Color3.fromRGB(120, 120, 120)

		local atm = Instance.new("Atmosphere", Lighting)
		atm.Density = 0.4
		atm.Offset = 0.2
		atm.Glare = 1
		atm.Haze = 1
		atm.Color = Color3.fromRGB(255, 245, 235)
		atm.Decay = Color3.fromRGB(220, 220, 210)

		local sunrays = Instance.new("SunRaysEffect", Lighting)
		sunrays.Intensity = 0.3
		sunrays.Spread = 1

		local color = Instance.new("ColorCorrectionEffect", Lighting)
		color.Contrast = 0.15
		color.Saturation = 0.1
		color.Brightness = 0.05
		color.TintColor = Color3.fromRGB(255, 250, 235)

		local dof = Instance.new("DepthOfFieldEffect", Lighting)
		dof.FarIntensity = 0.2
		dof.FocusDistance = 30
		dof.InFocusRadius = 25
		dof.NearIntensity = 0.15

		local bloom = Instance.new("BloomEffect", Lighting)
		bloom.Intensity = 0.5
		bloom.Size = 64
		bloom.Threshold = 0.8

		if Terrain then
			Terrain.WaterTransparency = 0.85
			Terrain.WaterReflectance = 0.55
			Terrain.WaterColor = Color3.fromRGB(40, 110, 150)
			Terrain.WaterWaveSize = 0.15
			Terrain.WaterWaveSpeed = 14
			Terrain.WaterFresnel = 1
		end

		local swayIntensity = 0.03
		shakeConnection = RunService.RenderStepped:Connect(function()
			local char = player.Character
			if char and char:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("Humanoid") then
				local velocity = char.HumanoidRootPart.Velocity
				local speed = velocity.Magnitude
				if speed > 0.1 then
					local shake = Vector3.new(
						math.noise(tick()) * swayIntensity,
						math.noise(tick() + 100) * swayIntensity,
						math.noise(tick() + 200) * swayIntensity
					)
					Camera.CFrame = Camera.CFrame * CFrame.new(shake)
				end
			end
		end)
	else
		graphicsEnabled = false
		GraphicsButton.BackgroundColor3 = Color3.fromRGB(32, 32, 32)

		for _, v in pairs(Lighting:GetChildren()) do
			if v:IsA("PostEffect") or v:IsA("Sky") or v:IsA("Atmosphere") then
				v:Destroy()
			end
		end

		if Terrain then
			Terrain.WaterTransparency = 1
			Terrain.WaterReflectance = 0
			Terrain.WaterColor = Color3.fromRGB(128, 128, 128)
			Terrain.WaterWaveSize = 0
			Terrain.WaterWaveSpeed = 0
			Terrain.WaterFresnel = 0
		end

		if shakeConnection then
			shakeConnection:Disconnect()
			shakeConnection = nil
		end
	end
end)

local CameraButton = Instance.new("ImageButton")
CameraButton.Name = "CameraButton"
CameraButton.Size = UDim2.new(0, 50, 0, 50)
CameraButton.Position = UDim2.new(1, 10, 0.5, 30) -- 50px below GraphicsButton
CameraButton.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
CameraButton.Image = "rbxassetid://123112467890707" -- change this to your camera icon
CameraButton.Parent = window
CameraButton.ZIndex = 3
Instance.new("UICorner", CameraButton).CornerRadius = UDim.new(0, 5)

local cameraScript
local isCameraOn = false

CameraButton.MouseButton1Click:Connect(function()
	isCameraOn = not isCameraOn

	if isCameraOn then
		CameraButton.BackgroundColor3 = Color3.fromRGB(0, 85, 255)

		cameraScript = Instance.new("LocalScript")
		cameraScript.Name = "CameraEffectScript"
		cameraScript.Source = [[
			local Players = game:GetService("Players")
			local RunService = game:GetService("RunService")
			local UserInputService = game:GetService("UserInputService")
			local LocalPlayer = Players.LocalPlayer
			local Char = workspace:WaitForChild(LocalPlayer.Name)
			local Humanoid = Char:WaitForChild("Humanoid")
			local Camera = workspace.CurrentCamera

			local Turn = 0

			local function Lerp(a, b, t)
				return a + (b - a) * t
			end

			RunService.RenderStepped:Connect(function()
				local CT = tick()

				if Humanoid.MoveDirection.Magnitude > 0 then
					local BobbleX = math.cos(CT * 5) * 0.25
					local BobbleY = math.abs(math.sin(CT * 5)) * 0.25
					local Bobble = Vector3.new(BobbleX, BobbleY, 0)
					Humanoid.CameraOffset = Humanoid.CameraOffset:Lerp(Bobble, 0.25)
				else
					Humanoid.CameraOffset = Humanoid.CameraOffset * 0.75
				end

				local MouseDelta = UserInputService:GetMouseDelta()
				Turn = Lerp(Turn, math.clamp(MouseDelta.X, -6, 6), 6 * RunService.RenderStepped:Wait())
				Camera.CFrame = Camera.CFrame * CFrame.Angles(0, 0, math.rad(Turn))
			end)
		]]
		cameraScript.Parent = CameraButton -- parent it anywhere safe, it runs immediately
	else
		CameraButton.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
		if cameraScript then
			cameraScript:Destroy()
			cameraScript = nil
		end
	end
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

    local TweenService = game:GetService("TweenService")

function Clude:CreateDropdown(tab, title, options, callback)
    local drop = Instance.new("TextButton")
    drop.Size = UDim2.new(1, -20, 0, 40)
    drop.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    drop.TextColor3 = Color3.new(1, 1, 1)
    drop.Font = Enum.Font.GothamBold
    drop.TextSize = 15
    drop.TextXAlignment = Enum.TextXAlignment.Left
    drop.Text = title .. " ▼"
    drop.Parent = tab
    Instance.new("UICorner", drop).CornerRadius = UDim.new(0, 5)

    local open = false
    local list = {}
    local spacing = 35

    local function updateDropdownPosition()
        for i, item in ipairs(list) do
            item.Position = UDim2.new(0, 20, 0, drop.Position.Y.Offset + drop.Size.Y.Offset + 5 + ((i - 1) * spacing))
        end
    end

    drop.MouseButton1Click:Connect(function()
        open = not open
        drop.Text = open and (title .. " ▲") or (title .. " ▼")

        for i, item in ipairs(list) do
            if open then
                item.Visible = true
                item.Position = UDim2.new(0, 20, 0, drop.Position.Y.Offset + drop.Size.Y.Offset)
                local targetPos = UDim2.new(0, 20, 0, drop.Position.Y.Offset + drop.Size.Y.Offset + 5 + ((i - 1) * spacing))
                TweenService:Create(item, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = targetPos}):Play()
            else
                local tween = TweenService:Create(item, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                    Position = UDim2.new(0, 20, 0, drop.Position.Y.Offset + drop.Size.Y.Offset)
                })
                tween:Play()
                tween.Completed:Connect(function()
                    item.Visible = false
                end)
            end
        end
    end)

    for i, option in ipairs(options) do
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
            drop.Text = title .. ": " .. option .. " ▼"
            open = false
            for _, b in ipairs(list) do
                TweenService:Create(b, TweenInfo.new(0.15), {Position = UDim2.new(0, 20, 0, drop.Position.Y.Offset + drop.Size.Y.Offset)}):Play()
                task.delay(0.15, function() b.Visible = false end)
            end
        end)
    end

    updateDropdownPosition()
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
