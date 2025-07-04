local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local toggleName = "Draggable"
local defaultValue = false

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
Toggle.Position = UDim2.new(0.037, 0, 0.7, 0)
Toggle.Size = UDim2.new(0.8, 0, 0.3, 0)
Toggle.ZIndex = 5

Instance.new("UIAspectRatioConstraint", Toggle).AspectRatio = 7
Instance.new("UICorner", Toggle).CornerRadius = UDim.new(0, 3)

local LabelText = Instance.new("TextLabel", Toggle)
LabelText.Name = "LabelText"
LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
LabelText.BackgroundTransparency = 1
LabelText.Position = UDim2.new(0.385, 0, 0.5, 0)
LabelText.Size = UDim2.new(0.77, -10, 0.75, -7)
LabelText.ZIndex = 6
LabelText.Text = toggleName
LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
LabelText.TextTransparency = 0.3
LabelText.TextScaled = true
LabelText.TextWrapped = true
LabelText.TextXAlignment = Enum.TextXAlignment.Left

local Effect = Instance.new("Frame", Toggle)
Effect.Name = "Effect"
Effect.AnchorPoint = Vector2.new(0, 0.5)
Effect.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
Effect.Position = UDim2.new(0.95, 0, 0.5, 0)
Effect.Size = UDim2.new(0.15, 0, 0.5, 0)
Effect.ZIndex = 6
Instance.new("UICorner", Effect).CornerRadius = UDim.new(0.5, 0)

local Icon = Instance.new("Frame", Effect)
Icon.Name = "Icon"
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
Icon.Position = UDim2.new(0.25, 0, 0.5, 0)
Icon.Size = UDim2.new(1, 0, 1, 0)
Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
Icon.ZIndex = 7
Instance.new("UICorner", Icon).CornerRadius = UDim.new(1, 0)

local Clicker = Instance.new("TextButton", Toggle)
Clicker.BackgroundTransparency = 1
Clicker.Size = UDim2.new(1, 0, 1, 0)
Clicker.Text = ""
Clicker.ZIndex = 10

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
	ToggleValue = not ToggleValue
	toggleval(ToggleValue, 0.1)
	enableDragging(ToggleValue)
	print("Toggle:", ToggleValue)
end)
