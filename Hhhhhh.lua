local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

local flySpeed = 100
local flying = false
local bodyVelocity, bodyGyro
local flightConnection

local function initialRise(character)
    local riseSpeed = 10
    local startTime = tick()
    local riseTime = 0.1

    while tick() - startTime < riseTime do
        bodyVelocity.Velocity = Vector3.new(0, riseSpeed, 0)
        RunService.RenderStepped:Wait()
    end
end

local function startFlying()
    if flying then return end
    flying = true

    local character = player.Character or player.CharacterAdded:Wait()
    character.Humanoid.PlatformStand = true

    bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)
    bodyVelocity.Parent = character.HumanoidRootPart

    bodyGyro = Instance.new("BodyGyro")
    bodyGyro.MaxTorque = Vector3.new(100000, 100000, 100000)
    bodyGyro.CFrame = character.HumanoidRootPart.CFrame
    bodyGyro.Parent = character.HumanoidRootPart

    initialRise(charapter)

    flightConnection = RunService.RenderStepped:Connect(function()
        if flying then
            local moveDirection = character.Humanoid.MoveDirection * flySpeed
            local camLookVector = workspace.CurrentCamera.CFrame.LookVector

            if moveDirection.Magnitude > 0 then
                if camLookVector.Y > 0.2 then
                    moveDirection = moveDirection + Vector3.new(0, camLookVector.Y * flySpeed, 0)
                elseif camLookVector.Y < -0.2 then
                    moveDirection = moveDirection + Vector3.new(0, camLookVector.Y * flySpeed, 0)
                end
            else
                moveDirection = bodyVelocity.Velocity:Lerp(Vector3.new(0, 0, 0), 0.085)
            end

            bodyVelocity.Velocity = moveDirection

            local tiltAngle = 40
            local tiltFactor = moveDirection.Magnitude / flySpeed
            local tiltDirection = 1

            if workspace.CurrentCamera.CFrame:VectorToObjectSpace(moveDirection).Z < 0 then
                tiltDirection = -1
            end

            local tiltCFrame = CFrame.Angles(math.rad(tiltAngle) * tiltFactor * tiltDirection, 0, 0)
            local targetCFrame = CFrame.new(character.HumanoidRootPart.Position, character.HumanoidRootPart.Position + camLookVector) * tiltCFrame
            bodyGyro.CFrame = bodyGyro.CFrame:Lerp(targetCFrame, 0.2)
        end
    end)
end

local function stopFlying()
    if not flying then return end
    flying = false

    local character = player.Character or player.CharacterAdded:Wait()
    character.Humanoid.PlatformStand = false

    if flightConnection then
        flightConnection:Disconnect()
        flightConnection = nil
    end

    if bodyVelocity then bodyVelocity:Destroy() end
    if bodyGyro then bodyGyro:Destroy() end
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FlyControlPanel"
screenGui.Parent = CoreGui
screenGui.ResetOnSpawn = false

local panel = Instance.new("Frame")
panel.Size = UDim2.new(0, 200, 0, 125)
panel.Position = UDim2.new(0.5, -150, 0.5, -75)
panel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
panel.BackgroundTransparency = 0.05
panel.BorderSizePixel = 0
panel.Parent = screenGui

local dragging, dragStart, startPos
panel.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = panel.Position
    end
end)

panel.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        panel.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

panel.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

local header = Instance.new("TextLabel")
header.Size = UDim2.new(1,0,0.2)
header.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
header.Text = " FLY"
header.TextColor3 = Color3.new(1, 1, 1)
header.BorderSizePixel = 0
header.Font = Enum.Font.Highway
header.TextXAlignment = Enum.TextXAlignment.Left
header.TextSize = 18
header.Parent = panel
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0.1,0,0.9)
closeButton.Position = UDim2.new(0.89,0,0.05)
closeButton.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
closeButton.BackgroundTransparency = 0.5
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.BorderSizePixel = 0
closeButton.Font = Enum.Font.SourceSans
closeButton.TextSize = 18
closeButton.Parent = header
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

local Box = Instance.new("TextLabel")
Box.Size = UDim2.new(0.9,0,0.25)
Box.Position = UDim2.new(0.05,0,0.65)
Box.BackgroundColor3 = Color3.fromRGB(50,50,50)
Box.TextColor3 = Color3.new(1, 1, 1)
Box.BorderSizePixel = 0
Box.Font = Enum.Font.SourceSans
Box.TextSize = 20
Box.Text = "ㅤㅤㅤㅤSpeed:"
Box.Parent = panel
Box.TextXAlignment = Enum.TextXAlignment.Left
local speedBox = Instance.new("TextBox")
speedBox.Size = UDim2.new(0.4,0,0.9)
speedBox.Position = UDim2.new(0.55,0,0.05)
speedBox.BackgroundColor3 = Color3.fromRGB(30,30,30)
speedBox.PlaceholderText = "Enter Speed"
speedBox.Text = " " .. tostring(flySpeed)
speedBox.TextColor3 = Color3.new(1, 1, 1)
speedBox.BorderSizePixel = 0
speedBox.Font = Enum.Font.SourceSans
speedBox.TextSize = 20
speedBox.TextXAlignment = Enum.TextXAlignment.Left
speedBox.ClearTextOnFocus = false
speedBox.Parent = Box
local flyButton = Instance.new("TextButton")
flyButton.Size = UDim2.new(0.9,0,0.25)
flyButton.Position = UDim2.new(0.05, 0, 0.37)
flyButton.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
flyButton.Text = "ENABLE"
flyButton.TextColor3 = Color3.new(1, 1, 1)
flyButton.BorderSizePixel = 0
flyButton.Font = Enum.Font.Highway
flyButton.TextSize = 20
flyButton.Parent = panel

flyButton.MouseButton1Click:Connect(function()
    local newSpeed = tonumber(speedBox.Text)
    if newSpeed then
        flySpeed = newSpeed
    end

    if flying then
        stopFlying()
        flyButton.Text = "ENABLE"
    else
        startFlying()
        flyButton.Text = "Loading..."
        wait(0.5)
        flyButton.Text = "DISABLE"
    end

    speedBox.Text = " " .. tostring(flySpeed)
end)
