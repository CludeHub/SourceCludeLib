--// Aesthetic UI Library by moonsec V5
--// Requirements: StarterGui or PlayerGui

local AestheticUI = {}

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

--// Tween Function
local function tween(obj, goal, time, style)
	TweenService:Create(obj, TweenInfo.new(time or 0.25, style or Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal):Play()
end

--// Make Draggable
local function makeDraggable(frame)
	local dragToggle, dragStart, startPos
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if dragToggle and input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - dragStart
			frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)
	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragToggle = false
		end
	end)
end

--// Create Main Window
function AestheticUI:CreateWindow(titleText, imageId)
	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

	local Background = Instance.new("ImageLabel")
	Background.Name = "MainBackground"
	Background.Size = UDim2.new(0, 420, 0, 300)
	Background.Position = UDim2.new(0.5, -210, 0.5, -150)
	Background.AnchorPoint = Vector2.new(0.5, 0.5)
	Background.Image = imageId or "rbxassetid://12785147241" -- default aesthetic image
	Background.ImageTransparency = 0
	Background.BackgroundTransparency = 1
	Background.Parent = ScreenGui

	local UICorner = Instance.new("UICorner", Background)
	UICorner.CornerRadius = UDim.new(0, 15)

	local UIStroke = Instance.new("UIStroke", Background)
	UIStroke.Thickness = 2
	UIStroke.Color = Color3.fromRGB(255, 255, 255)

	local Title = Instance.new("TextLabel")
	Title.Text = titleText or "Aesthetic UI"
	Title.Font = Enum.Font.Fantasy
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.BackgroundTransparency = 1
	Title.Size = UDim2.new(1, 0, 0, 40)
	Title.Parent = Background

	makeDraggable(Background)

	return {
		Main = Background,
		ScreenGui = ScreenGui
	}
end

--// Button
function AestheticUI:CreateButton(parent, text, callback)
	local Button = Instance.new("TextButton")
	Button.Text = text
	Button.Font = Enum.Font.Fantasy
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button.Size = UDim2.new(0, 160, 0, 35)
	Button.BackgroundTransparency = 0.8
	Button.Parent = parent

	local UICorner = Instance.new("UICorner", Button)
	local UIStroke = Instance.new("UIStroke", Button)
	UIStroke.Thickness = 1.5

	Button.MouseEnter:Connect(function()
		tween(Button, {BackgroundTransparency = 0.4}, 0.2)
	end)
	Button.MouseLeave:Connect(function()
		tween(Button, {BackgroundTransparency = 0.8}, 0.2)
	end)
	Button.MouseButton1Click:Connect(function()
		tween(Button, {BackgroundTransparency = 0.2}, 0.1)
		task.wait(0.1)
		tween(Button, {BackgroundTransparency = 0.8}, 0.2)
		if callback then callback() end
	end)

	return Button
end

--// Toggle
function AestheticUI:CreateToggle(parent, text, callback)
	local Frame = Instance.new("Frame")
	Frame.Size = UDim2.new(0, 180, 0, 35)
	Frame.BackgroundTransparency = 1
	Frame.Parent = parent

	local Label = Instance.new("TextLabel")
	Label.Text = text
	Label.Font = Enum.Font.Fantasy
	Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Label.BackgroundTransparency = 1
	Label.Size = UDim2.new(0.7, 0, 1, 0)
	Label.Parent = Frame

	local Toggle = Instance.new("Frame")
	Toggle.Size = UDim2.new(0, 35, 0, 20)
	Toggle.Position = UDim2.new(0.75, 0, 0.2, 0)
	Toggle.BackgroundTransparency = 0
	Toggle.BackgroundColor3 = Color3.fromRGB(255, 90, 90)
	Toggle.Parent = Frame

	local UICorner = Instance.new("UICorner", Toggle)
	local UIStroke = Instance.new("UIStroke", Toggle)

	local On = false
	local function Switch(state)
		On = state
		if On then
			tween(Toggle, {BackgroundColor3 = Color3.fromRGB(90, 255, 120)}, 0.25)
		else
			tween(Toggle, {BackgroundColor3 = Color3.fromRGB(255, 90, 90)}, 0.25)
		end
		if callback then callback(On) end
	end

	Toggle.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			Switch(not On)
		end
	end)

	return Frame
end

--// Dropdown
function AestheticUI:CreateDropdown(parent, text, list, callback)
	local Drop = Instance.new("Frame")
	Drop.Size = UDim2.new(0, 200, 0, 35)
	Drop.BackgroundTransparency = 0
	Drop.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Drop.Parent = parent

	local UICorner = Instance.new("UICorner", Drop)
	local UIStroke = Instance.new("UIStroke", Drop)

	local Title = Instance.new("TextLabel")
	Title.Text = text
	Title.Font = Enum.Font.Fantasy
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.Size = UDim2.new(1, 0, 1, 0)
	Title.BackgroundTransparency = 1
	Title.Parent = Drop

	local Open = false
	local ListFrame = Instance.new("Frame")
	ListFrame.Size = UDim2.new(1, 0, 0, 0)
	ListFrame.Position = UDim2.new(0, 0, 1, 0)
	ListFrame.BackgroundTransparency = 1
	ListFrame.ClipsDescendants = true
	ListFrame.Parent = Drop

	for _, v in ipairs(list) do
		local Option = Instance.new("TextButton")
		Option.Text = v
		Option.Font = Enum.Font.Fantasy
		Option.TextColor3 = Color3.fromRGB(255, 255, 255)
		Option.Size = UDim2.new(1, 0, 0, 30)
		Option.BackgroundTransparency = 0.8
		Option.Parent = ListFrame

		local UIStroke2 = Instance.new("UIStroke", Option)
		local UICorner2 = Instance.new("UICorner", Option)

		Option.MouseButton1Click:Connect(function()
			callback(v)
			Title.Text = text..": "..v
			tween(ListFrame, {Size = UDim2.new(1,0,0,0)}, 0.3)
			Open = false
		end)
	end

	Drop.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			if Open then
				tween(ListFrame, {Size = UDim2.new(1, 0, 0, 0)}, 0.3)
			else
				tween(ListFrame, {Size = UDim2.new(1, 0, 0, #list * 30)}, 0.3)
			end
			Open = not Open
		end
	end)

	return Drop
end

return AestheticUI
