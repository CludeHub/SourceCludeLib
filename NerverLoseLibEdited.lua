local LocalPlayer = game:GetService('Players').LocalPlayer;
local Mouse = LocalPlayer:GetMouse();
local InputService = game:GetService('UserInputService');
local TextService = game:GetService('TextService');
local TweenService = game:GetService('TweenService');
local CoreGui = game:FindFirstChild('CoreGui') or LocalPlayer.PlayerGui;

local ProtectGui = protectgui or (syn and syn.protect_gui) or (function() end);

local function cretate_button(asd)
	local button=Instance.new('TextButton')
	button.Size=UDim2.new(1,0,1,0)
	button.BackgroundTransparency=1
	button.TextTransparency=1
	button.Text=""
	button.Parent=asd
	button.ZIndex=5000
	return button
end


local function ConnectButtonEffect(UIFrame:Frame&TextButton&ImageLabel,UIStroke:UIStroke,int)
	if not UIStroke then
		return
	end

	int = int or 0.2
	local OldColor = UIStroke.Color
	local R,G,B = OldColor.R,OldColor.G,OldColor.B
	local MainColor = Color3.fromHSV(R,G,B + int)

	UIFrame.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseMovement then
			TweenService:Create(UIStroke,TweenInfo.new(0.2),{Color = MainColor}):Play()
		end
	end)

	UIFrame.InputEnded:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseMovement then
			TweenService:Create(UIStroke,TweenInfo.new(0.2),{Color = OldColor}):Play()
		end
	end)
end

local function scrolling_connect(scrollframe:ScrollingFrame)
	task.spawn(function()
		local addres = 45
		local UIListLayout:UIListLayout = scrollframe:WaitForChild('UIListLayout',9999999)
		scrollframe.CanvasSize=UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y+addres)

		UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			scrollframe.CanvasSize=UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y+addres)
		end)
	end)
end

local function GetImageData(name:string,image:ImageLabel)
	name = name or "ADS"
	name = name:lower()
	local NigImage = "rbxassetid://3926305904"
	if name == "ads" then
		image.Image = NigImage
		image.ImageRectOffset = Vector2.new(205,565)
		image.ImageRectSize = Vector2.new(35,35)
	end

	if name == "list" then
		image.Image = NigImage
		image.ImageRectOffset = Vector2.new(485,205)
		image.ImageRectSize = Vector2.new(35,35)
	end

	if name == "folder" then
		image.Image = NigImage
		image.ImageRectOffset = Vector2.new(805,45)
		image.ImageRectSize = Vector2.new(35,35)
	end

	if name == "earth" then
		image.Image = NigImage
		image.ImageRectOffset = Vector2.new(604,324)
		image.ImageRectSize = Vector2.new(35,35)
	end

	if name == "locked" then
		image.Image = NigImage
		image.ImageRectOffset = Vector2.new(524, 644)
		image.ImageRectSize = Vector2.new(35,35)
	end

	if name == "home" then
		image.Image = NigImage
		image.ImageRectOffset = Vector2.new(964, 205)
		image.ImageRectSize = Vector2.new(35,35)
	end

	if name == "mouse" then
		image.Image = "rbxassetid://3515393063"
	end

	if name == "user" then
		image.Image = "rbxassetid://10494577250"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	if name == "cosmetics" then
		image.Image = "rbxassetid://111448140849101"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	if name == "sun" then
		image.Image = "rbxassetid://119948798441279"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	if name == "shop" then
		image.Image = "rbxassetid://97513888174732"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	if name == "farm" then
		image.Image = "rbxassetid://88262334591015"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	if name == "code" then
		image.Image = "rbxassetid://137998322875646"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	if name == "crosshair" then
		image.Image = "rbxassetid://131971010421922"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	if name == "grenade" then
		image.Image = "rbxassetid://106253651509472"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	

	if name == "bio" then
		image.Image = "rbxassetid://78652086695674"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	if name == "car" then
		image.Image = "rbxassetid://116283987324457"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	if name == "carcolor" then
		image.Image = "rbxassetid://135983067514338"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	if name == "avacolor" then
		image.Image = "rbxassetid://88738565686900"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	if name == "Locker" then
		image.Image = "rbxassetid://87534652127926"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end
	

       	if name == "retry" then
		image.Image = "rbxassetid://85334730366974"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	if name == "gun" then
		image.Image = "rbxassetid://93001822915827"
		image.ImageRectOffset = Vector2.new(1, 1)
		image.ImageRectSize = Vector2.new(1200,1200)
	end

	if name == "sword" then
		image.Image = "rbxassetid://82635240213192"
		image.ImageRectOffset = Vector2.new(10, 40)
		image.ImageRectSize = Vector2.new(900,947)
	end

	if name == "knife" then
		image.Image = "rbxassetid://94102397172403"
		image.ImageRectOffset = Vector2.new(10, 40)
		image.ImageRectSize = Vector2.new(900,947)
	end

	if name == "egg" then
		image.Image = "rbxassetid://110250017854460"
		image.ImageRectOffset = Vector2.new(10, 40)
		image.ImageRectSize = Vector2.new(900,947)
	end

	if name == "gear" then
	        image.Image = "rbxassetid://134488580093972"
		image.ImageRectOffset = Vector2.new(10, 40)
		image.ImageRectSize = Vector2.new(1200,1200)
	end
end

local NEVERLOSE = {
	auto_function = {},
	Themes = {
		BlackgroundColor = Color3.fromRGB(22, 22, 22),
		BlackColor = Color3.fromRGB(8, 8, 8),
		HeaderColor = Color3.fromRGB(8, 8, 8),
		TraceColor = Color3.fromRGB(115, 115, 115),
		MainColor = Color3.fromRGB(0, 172, 247),
		MainColorDrop = Color3.fromRGB(64, 65, 67),
		SectionColor = Color3.fromRGB(10, 11, 13),
		StrokeColor = Color3.fromRGB(28, 28, 28),
		ButtonBlackgroundColor = Color3.fromRGB(13, 13, 13),
		SearchColor = Color3.fromRGB(14, 14, 14),
		MewColor1 = Color3.fromRGB(8, 8, 8),
		MewColor2 = Color3.fromRGB(8, 8, 8)
	},
	_Version="69.C",
	_Name="NEVERLOSE"
}

function NEVERLOSE:AddWindow(NameScriptHub,Text,name,UICustomSize)
	    if name == "neon" or name == "original" then
		NEVERLOSE.Themes.BlackgroundColor = Color3.fromRGB(1, 17, 33)
		NEVERLOSE.Themes.BlackColor = Color3.fromRGB(9, 9, 19)
		NEVERLOSE.Themes.HeaderColor = Color3.fromRGB(7, 7, 17)
		NEVERLOSE.Themes.MewColor1 = Color3.fromRGB(9, 9, 19)
		NEVERLOSE.Themes.MewColor2 = Color3.fromRGB(7, 7, 17)
		NEVERLOSE.Themes.TraceColor = Color3.fromRGB(0, 76, 99)
		NEVERLOSE.Themes.MainColor = Color3.fromRGB(19, 176, 243)
		NEVERLOSE.Themes.MainColorDrop = Color3.fromRGB(3, 6, 25)
		NEVERLOSE.Themes.SectionColor = Color3.fromRGB(0, 17, 35)
		NEVERLOSE.Themes.StrokeColor = Color3.fromRGB(3, 35, 50)
		NEVERLOSE.Themes.ButtonBlackgroundColor = Color3.fromRGB(2, 5, 22)
		NEVERLOSE.Themes.SearchColor = Color3.fromRGB(0, 17, 35)
	end
	
	local WindowFunctinos={}
	local ToggleUI=false
	local ooldsize=UICustomSize or UDim2.new(0, 650, 0, 540)
	local Tabs={}

	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Frame_2 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Frame_3 = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local DropShadow = Instance.new("ImageLabel")
	local HeadName = Instance.new("TextLabel")
	local TabButtons = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local TabHose = Instance.new("Frame")
	local outlo = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local outlo_2 = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local outlo_3 = Instance.new("Frame")
	local UICorner_6 = Instance.new("UICorner")
	local UserData = Instance.new("Frame")
	local UICorner_7 = Instance.new("UICorner")
	local UserImage = Instance.new("ImageLabel")
	local UICorner_8 = Instance.new("UICorner")
	local UserName = Instance.new("TextLabel")
	local headd2text
	local oldPositionClose
	
	--Anti Spoofer
	ScreenGui:GetPropertyChangedSignal('Enabled'):Connect(function()
		if not ScreenGui.Enabled then
			ScreenGui.Enabled=true
		end
	end)
	
print(Text .. " Executed")
print(Text .. " is Running")

	local toggle_valu = true

	local function ui_toggleong(val)
		local uptime=1.4
		if val then
			TweenService:Create(Frame,TweenInfo.new(uptime,Enum.EasingStyle.Quint),{Size=ooldsize,Position=UDim2.new(0, 500,0, 400)}):Play()
			TweenService:Create(HeadName,TweenInfo.new(uptime/3,Enum.EasingStyle.Quint),{Size=UDim2.new(0.205458686, 0, 0.133462012, 0),Position=UDim2.new(0.0100000342, 0, 0.010000146, 0)}):Play()


			TweenService:Create(TabHose,TweenInfo.new(0.3),{Position=UDim2.new(.223,0,0.143,0)}):Play()
			TweenService:Create(TabButtons,TweenInfo.new(0.3),{Position=UDim2.new(.008,0,0.143,0)}):Play()

			if headd2text then
				TweenService:Create(headd2text,TweenInfo.new(0.3),{TextTransparency=0,TextStrokeTransparency=0.900}):Play()
			end

			TweenService:Create(UserName,TweenInfo.new(0.3),{TextTransparency=0,TextStrokeTransparency=1}):Play()
			TweenService:Create(UserImage,TweenInfo.new(0.3),{ImageTransparency=0}):Play()
			TweenService:Create(outlo,TweenInfo.new(0.3),{BackgroundTransparency=0.7}):Play()
			TweenService:Create(outlo_2,TweenInfo.new(0.3),{BackgroundTransparency=0.7}):Play()
			TweenService:Create(outlo_3,TweenInfo.new(0.3),{BackgroundTransparency=0.7}):Play()
			TweenService:Create(Frame_2,TweenInfo.new(0.3),{BackgroundTransparency=0}):Play()
			TweenService:Create(Frame_3,TweenInfo.new(0.3),{BackgroundTransparency=0.9}):Play()
			TweenService:Create(DropShadow,TweenInfo.new(0.3),{ImageTransparency=0.86}):Play()

		else
			TweenService:Create(Frame,TweenInfo.new(uptime,Enum.EasingStyle.Quint),{Size=UDim2.new(0.14, 0,0.14, 0),Position=oldPositionClose}):Play()
			TweenService:Create(HeadName,TweenInfo.new(uptime/1.2,Enum.EasingStyle.Quint),{Size=UDim2.new(0.9, 0,0.5, 0),Position=UDim2.new(0.046,0,0.24,0)}):Play()

			TweenService:Create(TabHose,TweenInfo.new(0.3),{Position=UDim2.new(1.5,0,0.143,0)}):Play()
			TweenService:Create(TabButtons,TweenInfo.new(0.3),{Position=UDim2.new(-1.25,0,0.143,0)}):Play()

			if headd2text then
				TweenService:Create(headd2text,TweenInfo.new(0.3),{TextTransparency=1,TextStrokeTransparency=1}):Play()
			end

			TweenService:Create(UserName,TweenInfo.new(0.3),{TextTransparency=1,TextStrokeTransparency=1}):Play()
			TweenService:Create(UserImage,TweenInfo.new(0.3),{ImageTransparency=1}):Play()
			TweenService:Create(outlo,TweenInfo.new(0.3),{BackgroundTransparency=1}):Play()
			TweenService:Create(outlo_2,TweenInfo.new(0.3),{BackgroundTransparency=1}):Play()
			TweenService:Create(outlo_3,TweenInfo.new(0.3),{BackgroundTransparency=1}):Play()
			TweenService:Create(Frame_2,TweenInfo.new(0.3),{BackgroundTransparency=1}):Play()
			TweenService:Create(Frame_3,TweenInfo.new(0.3),{BackgroundTransparency=1}):Play()
			TweenService:Create(DropShadow,TweenInfo.new(0.3),{ImageTransparency=1}):Play()
		end
	end

	task.spawn(function()
		local ImageButton = Instance.new("ImageButton")

		ImageButton.MouseButton1Click:Connect(function()
			toggle_valu=not toggle_valu

			if toggle_valu then
				oldPositionClose = Frame.Position
				TweenService:Create(ImageButton,TweenInfo.new(0.5),{
					Size=UDim2.new(0.0900000036, 0, 0.0900000036, 0),
					Position=UDim2.new(0.908723712, 0, 0.0239103697, 0),
					AnchorPoint=Vector2.new(0,0)
				}):Play()
			else
				TweenService:Create(ImageButton,TweenInfo.new(0.5),{
					Size=UDim2.new(0.3, 0,0.3, 0),
					Position=UDim2.new(1,0,-0.009,0),
					AnchorPoint=Vector2.new(1,0)
				}):Play()
			end

			ui_toggleong(toggle_valu)
		end)
	end)

	task.spawn(function()
		local dragToggle = nil
		local dragSpeed = 0.14
		local dragStart = nil
		local startPos = nil

		local function updateInput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			game:GetService('TweenService'):Create(Frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end

		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not toggle_valu then 
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		InputService.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle and not toggle_valu then
					updateInput(input)
				end
			end
		end)
	end)

	local oldGui = game.CoreGui:FindFirstChild("NEVERLOSE")
        if oldGui then
                oldGui:Destroy()
	end

	ScreenGui.Parent = CoreGui
	ScreenGui.Name = "NEVERLOSE"
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	ProtectGui(ScreenGui)

	Frame.Parent = ScreenGui
	Frame.Active = true
	Frame.BackgroundColor3 = NEVERLOSE.Themes.BlackgroundColor
	Frame.BackgroundTransparency = 0.05
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0, 170, 0, 6)
	Frame.Size = UDim2.new(0,0,0,0)
	Frame.ZIndex = 2
	Frame.ClipsDescendants=true

	TweenService:Create(Frame,TweenInfo.new(1,Enum.EasingStyle.Quint),{Size=ooldsize}):Play()

	UICorner.Parent = Frame
	UICorner.CornerRadius = UDim.new(0, 3)

	if UserInputService == nil then
    UserInputService = game:GetService("UserInputService")
end

-- Check if platform is PC
if UserInputService.KeyboardEnabled and not UserInputService.TouchEnabled then
    local CoreGui = game:GetService("CoreGui")
    local NEVERLOSE = CoreGui:FindFirstChild("NEVERLOSE")
    
    if NEVERLOSE then
        local Frame = NEVERLOSE:FindFirstChild("Frame")
        local AboutFrame = NEVERLOSE:FindFirstChild("AboutFrame")

        if Frame then
            Frame.Size = UDim2.new(0, 800, 0, 700)
        end

        if AboutFrame then
            AboutFrame.Size = UDim2.new(0, 360, 0, 450)
	    AboutFrame.Position = UDim2.new(0, 980, 0, 70)
        end
    end
	end
	
	-- About Frame
local aboutFrame = Instance.new("Frame", ScreenGui)
aboutFrame.Name = "AboutFrame"
aboutFrame.Size = UDim2.new(0, 260, 0, 300, 0)
aboutFrame.Position = UDim2.new(0, 840, 0, 70)
aboutFrame.BackgroundColor3 = NEVERLOSE.Themes.BlackgroundColor
aboutFrame.BackgroundTransparency = 0.05
aboutFrame.BorderSizePixel = 0
aboutFrame.Visible = false
Instance.new("UICorner", aboutFrame).CornerRadius = UDim.new(0, 3)

-- Topbar
local top = Instance.new("Frame", aboutFrame)
top.Size = UDim2.new(1, 0, 0.1, 0)
top.BackgroundTransparency = 1

-- Icon
local icon = Instance.new("ImageLabel", top)
icon.Size = UDim2.new(0.0816999972, 0, 0.689999998, 0)
icon.Position = UDim2.new(0.05, 0, 0.5, 0)
icon.AnchorPoint = Vector2.new(0, 0.5)
icon.BackgroundTransparency = 1
icon.Image = "rbxassetid://134488580093972"
icon.ImageColor3 = NEVERLOSE.Themes.MainColor
		
local topTitle = Instance.new("TextLabel", top)
topTitle.Text = "About Neverlose"
topTitle.Font = Enum.Font.Gotham
topTitle.TextColor3 = Color3.new(255, 255, 255)
topTitle.TextStrokeTransparency = 0.8
topTitle.BackgroundTransparency = 1
topTitle.TextScaled = true
topTitle.Position = UDim2.new(0.18, 0, 0.2, 0) 
topTitle.TextXAlignment = Enum.TextXAlignment.Left
topTitle.Size = UDim2.new(1, 0, 0.5, 0)
	
-- Divider
local divider = Instance.new("Frame", aboutFrame)
divider.Size = UDim2.new(1, 0, 0.002, 0)
divider.Position = UDim2.new(0, 0, 0.1, 0)
divider.BackgroundColor3 = NEVERLOSE.Themes.StrokeColor
divider.BackgroundTransparency = 0
divider.BorderSizePixel = 0

local titleh = Instance.new("Frame", aboutFrame)
titleh.BackgroundTransparency = 1
titleh.Size = UDim2.new(1, 0, 0.12, 0)
titleh.Position = UDim2.new(0, 0, 0.12, 0)
	
-- Title
local title = Instance.new("TextLabel", titleh)
title.Text = "NEVERLOSE.CC"
title.Font = Enum.Font.GothamBlack
title.TextSize = 28
title.TextColor3 = Color3.new(255, 255, 255)
title.TextStrokeTransparency = 0.7
title.TextStrokeColor3 = NEVERLOSE.Themes.MainColor
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, 0, 1, 0)
title.TextXAlignment = Enum.TextXAlignment.Center
title.TextScaled = true
	
-- Info Rows
local function AddInfo(label, value, index, isBlue)

local labelTexts = Instance.new("Frame", aboutFrame)
labelTexts.BackgroundTransparency = 1
labelTexts.Size = UDim2.new(0.45, 0, 0.05, 0)
labelTexts.Position = UDim2.new(0.05, 0, 0.25 + index * 0.05, 0)
	
local labelText = Instance.new("TextLabel", labelTexts)
labelText.Text = label
labelText.Font = Enum.Font.Gotham
labelText.TextSize = 14
labelText.TextColor3 = Color3.new(255, 255, 255)
labelText.BackgroundTransparency = 1
labelText.Size = UDim2.new(1, 0, 1, 0)
labelText.TextScaled = true
labelText.TextXAlignment = Enum.TextXAlignment.Left

local valueText1 = Instance.new("Frame", aboutFrame)
valueText1.BackgroundTransparency = 1  
valueText1.Size = UDim2.new(0.45, 0, 0.05, 0)  
valueText1.Position = UDim2.new(0.5, 0, 0.25 + index * 0.05, 0) 

local valueText = Instance.new("TextLabel", valueText1)  
valueText.Text = value  
valueText.Font = Enum.Font.Gotham  
valueText.TextSize = 14  
valueText.TextColor3 = isBlue and NEVERLOSE.Themes.MainColor or Color3.new(255, 255, 255)  
valueText.BackgroundTransparency = 1  
valueText.Size = UDim2.new(1, 0, 1, 0) 
valueText.TextScaled = true
valueText.TextXAlignment = Enum.TextXAlignment.Left

end

AddInfo("Version:", "2.0.0", 0, true)
AddInfo("Build date:", "Dec 30 2020", 1, true)
AddInfo("Build type:", "Release", 2, true)
AddInfo("Registered to:", LocalPlayer.DisplayName, 3, true)
AddInfo("Subscription till:", "01.01.2021 21:07", 4, true)

-- Footer
local copyright = Instance.new("TextLabel", aboutFrame)
copyright.Text = "neverlose.cc © 2020"
copyright.Font = Enum.Font.Gotham
copyright.TextSize = 12
copyright.TextColor3 = Color3.new(255, 255, 255)
copyright.BackgroundTransparency = 1
copyright.Size = UDim2.new(1, 0, 0.04, 0)
copyright.TextScaled = true
copyright.Position = UDim2.new(0, 0, 0.51, 0)
copyright.TextXAlignment = Enum.TextXAlignment.Center

-- Divider 2
local divider2 = divider:Clone()
divider2.Position = UDim2.new(0, 0, 0.56, 0)
divider2.Parent = aboutFrame

local dpiLabel8 = Instance.new("Frame", aboutFrame)
dpiLabel8.BackgroundTransparency = 1
dpiLabel8.Size = UDim2.new(0.4, 0, 0.05, 0)
dpiLabel8.Position = UDim2.new(0.05, 0, 0.64, 0)
-- DPI Label
local dpiLabel = Instance.new("TextLabel", dpiLabel8)
dpiLabel.Text = "Dpi Scale"
dpiLabel.Font = Enum.Font.Gotham
dpiLabel.TextSize = 14
dpiLabel.TextColor3 = Color3.new(255, 255, 255)
dpiLabel.TextTransparency = 0.300
dpiLabel.BackgroundTransparency = 1
dpiLabel.TextScaled = true
dpiLabel.Size = UDim2.new(1, 0, 1, 0)
dpiLabel.TextXAlignment = Enum.TextXAlignment.Left

-- DPI Button
local dpiDropdown = Instance.new("TextButton", aboutFrame)
dpiDropdown.Size = UDim2.new(0.4, 0, 0.05, 0)
dpiDropdown.Position = UDim2.new(0.55, 0, 0.64, 0)
dpiDropdown.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
dpiDropdown.Text = "90%"
dpiDropdown.TextColor3 = Color3.new(255, 255, 255)
dpiDropdown.TextTransparency = 0.300
dpiDropdown.Font = Enum.Font.Gotham
dpiDropdown.TextScaled = true
dpiDropdown.TextSize = 14
dpiDropdown.BorderSizePixel = 0
dpiDropdown.AutoButtonColor = false

dpiDropdown.MouseEnter:Connect(function()
   dpiLabel.TextTransparency = 0
   dpiDropdown.TextTransparency = 0
		end)

dpiDropdown.MouseLeave:Connect(function()
   dpiLabel.TextTransparency = 0.300
   dpiDropdown.TextTransparency = 0.300
		end)
	
local corn = Instance.new("UICorner", dpiDropdown)
	corn.CornerRadius = UDim.new(0, 3)

local stroc = Instance.new("UIStroke", dpiDropdown)
stroc.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroc.Color = Color3.fromRGB(28, 28, 28)
stroc.Thickness = 0.6

-- DPI Logic
local dpiSizes = {
    ["90%"] = {
        NEVERLOSE = UDim2.new(0, 650, 0, 540),
        ABOUT = UDim2.new(0, 260, 0, 300),
        ABOUT_POS = UDim2.new(0, 840, 0, 70)
    },
    ["100%"] = {
        NEVERLOSE = UDim2.new(0, 830, 0, 700),
        ABOUT = UDim2.new(0, 360, 0, 450),
        ABOUT_POS = UDim2.new(0, 1030, 0, 70)
    }
}

local dpiOptions = { "90%", "100%" }
local dpiIndex = 1

local function updateDPI()
    local scaleKey = dpiOptions[dpiIndex]
    dpiDropdown.Text = scaleKey
    local sizeInfo = dpiSizes[scaleKey]

    -- Resize and reposition About Frame
    aboutFrame.Size = sizeInfo.ABOUT
    aboutFrame.Position = sizeInfo.ABOUT_POS

    -- Resize and fix position of main NEVERLOSE.Frame
    local mainGui = CoreGui:FindFirstChild("NEVERLOSE")
    if mainGui and mainGui:FindFirstChild("Frame") then
        local frame = mainGui.Frame
        frame.Size = sizeInfo.NEVERLOSE
        frame.Position = UDim2.new(0, 170, 0, 6) -- Fixed position
    end
end

dpiDropdown.MouseButton1Click:Connect(function()
    local Sound2 = Instance.new("Sound")
    Sound2.SoundId = "rbxassetid://6895079853"
    Sound2.Looped = false
    Sound2.Volume = 1
    Sound2.Parent = game:GetService("SoundService")
    Sound2:Play()

    Sound2.Ended:Connect(function()
        Sound2:Destroy()
    end)

    dpiIndex = dpiIndex % #dpiOptions + 1
    updateDPI()
end)

-- Initial DPI set
updateDPI()

	-- Create the TextBox
local TextBox = Instance.new("TextBox")
TextBox.Name = "SearchBox"
TextBox.Parent = Frame
TextBox.BackgroundColor3 = NEVERLOSE.Themes.SearchColor
TextBox.BackgroundTransparency = 0
TextBox.Position = UDim2.new(0.24000001, 0, 0.0200000014, 0)
TextBox.Size = UDim2.new(0.600000024, 0, 0.0599999987, 0)
TextBox.ZIndex = 27
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextTransparency = 0.3
TextBox.PlaceholderText = "Search"
TextBox.Font = Enum.Font.SourceSansBold
TextBox.TextSize = 17
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.ClearTextOnFocus = false
TextBox.Visible = false

-- UICorner
local UICornermm = Instance.new("UICorner")
UICornermm.CornerRadius = UDim.new(0, 3)
UICornermm.Parent = TextBox

-- UIStroke
local UIStrokemm = Instance.new("UIStroke")
UIStrokemm.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStrokemm.Thickness = 0.7
UIStrokemm.Transparency = 0.9
UIStrokemm.Color = Color3.fromRGB(255, 255, 255)
UIStrokemm.Parent = TextBox

-- Add icon on the left
local Icon = Instance.new("ImageLabel")
Icon.Name = "SearchIcon"
Icon.Parent = TextBox
Icon.BackgroundTransparency = 1
Icon.Size = UDim2.new(0, 16, 0, 16)
Icon.Position = UDim2.new(-0.07, 0, 0.2, 0)
Icon.Image = "http://www.roblox.com/asset/?id=6031154871"
Icon.ZIndex = 29

-- Padding so text doesn't overlap the icon
local Padding = Instance.new("UIPadding")
Padding.Parent = TextBox
Padding.PaddingLeft = UDim.new(0, 26)
	
			local ImageButtons2 = Instance.new("ImageButton")

		ImageButtons2.Parent = Frame
		ImageButtons2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageButtons2.BackgroundTransparency = 1.000
		ImageButtons2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ImageButtons2.BorderSizePixel = 0
		ImageButtons2.Position = UDim2.new(0.94737024, 0, 0.0140369833, 0)
		ImageButtons2.Size = UDim2.new(0.0400000036, 0, 0.0400000036, 0)
		ImageButtons2.SizeConstraint = Enum.SizeConstraint.RelativeYY
		ImageButtons2.ZIndex = 4
		ImageButtons2.Image = "http://www.roblox.com/asset/?id=6031154871"
		ImageButtons2.ScaleType = Enum.ScaleType.Fit

		ImageButtons2.MouseButton1Click:Connect(function()
			local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://6895079853"
Sound2.Looped = false
Sound2.Volume = 1
Sound2.Parent = game:GetService("SoundService")
Sound2:Play()

Sound2.Ended:Connect(function()
	Sound2:Destroy()
     end)
		TextBox.Visible = not TextBox.Visible	
		end)

		local ImageButtons = Instance.new("ImageButton")

		ImageButtons.Parent = Frame
		ImageButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageButtons.BackgroundTransparency = 1.000
		ImageButtons.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ImageButtons.BorderSizePixel = 0
		ImageButtons.Position = UDim2.new(0.8970207, 0, 0.0139103699, 0)
		ImageButtons.Size = UDim2.new(0.0400000036, 0, 0.0400000036, 0)
		ImageButtons.SizeConstraint = Enum.SizeConstraint.RelativeYY
		ImageButtons.ZIndex = 4
		ImageButtons.Image = "http://www.roblox.com/asset/?id=6031280882"
		ImageButtons.ScaleType = Enum.ScaleType.Fit

		ImageButtons.MouseButton1Click:Connect(function()
			local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://6895079853"
Sound2.Looped = false
Sound2.Volume = 1
Sound2.Parent = game:GetService("SoundService")
Sound2:Play()

Sound2.Ended:Connect(function()
	Sound2:Destroy()
     end)
			aboutFrame.Visible = not aboutFrame.Visible
		end)

	Frame_2.Parent = Frame
	Frame_2.Name = "Frame_2"
	Frame_2.BackgroundColor3 = NEVERLOSE.Themes.MewColor1
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.223214373, 0, 0, 0)
	Frame_2.Size = UDim2.new(0.774634778, 0, 1, 0)
	Frame_2.ZIndex = 2
	
	UICorner_2.CornerRadius = UDim.new(0, 2)
	UICorner_2.Parent = Frame_2

	Frame_3.Parent = Frame
	Frame_3.Name = "Frame_3"
	Frame_3.BackgroundColor3 = NEVERLOSE.Themes.MewColor2
	Frame_3.BackgroundTransparency = 0.900
	Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_3.BorderSizePixel = 0
	Frame_3.Position = UDim2.new(0.223214373, 0, 0, 0)
	Frame_3.Size = UDim2.new(0.774999976, 0, 0.140000001, 0)
	Frame_3.ZIndex = 4

	UICorner_3.CornerRadius = UDim.new(0, 2)
	UICorner_3.Parent = Frame_3

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = Frame
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.963742971, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(-0.0510042384, 47, 0.839458942, 47)
	DropShadow.ZIndex = 3
	DropShadow.Image = "rbxassetid://6014261993"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.860
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

	HeadName.Name = "HeadName"
	HeadName.Parent = Frame
	HeadName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HeadName.BackgroundTransparency = 1.000
	HeadName.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HeadName.BorderSizePixel = 0
	HeadName.Position = UDim2.new(0.0100000342, 0, 0.010000146, -17)
	HeadName.Size = UDim2.new(0.205458686, 0, 0.133462012, -10)
	HeadName.ZIndex = 4
	HeadName.Font = Enum.Font.GothamBlack
	HeadName.Text = NameScriptHub or "NEVERLOSE"
	HeadName.TextColor3 = Color3.fromRGB(255, 255, 255)
	HeadName.TextScaled = true
	HeadName.TextSize = 14.000
	HeadName.TextStrokeColor3 = Color3.fromRGB(0, 251, 255)
	HeadName.TextStrokeTransparency = 1
	HeadName.TextWrapped = true

	TabButtons.Name = "TabButtons"
	TabButtons.Parent = Frame
	TabButtons.Active = true
	TabButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabButtons.BackgroundTransparency = 1.000
	TabButtons.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabButtons.BorderSizePixel = 0
	TabButtons.Position = UDim2.new(0.00760957832, 0, 0.143462211, -27)
	TabButtons.Size = UDim2.new(0.20784913, 0, 0.7978012202, 0)
	TabButtons.ZIndex = 5
	TabButtons.CanvasSize = UDim2.new(0, 0, 0, 0)
	TabButtons.ScrollBarThickness = 1


	UIListLayout.Parent = TabButtons
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 3)

	scrolling_connect(TabButtons)

	TabHose.Name = "TabHose"
	TabHose.Parent = Frame
	TabHose.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabHose.BackgroundTransparency = 1.000
	TabHose.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabHose.BorderSizePixel = 0
	TabHose.Position = UDim2.new(0.223214373, 0, 0.143462211, 0)
	TabHose.Size = UDim2.new(0.774635077, 0, 0.856537759, 47)
	TabHose.ZIndex = 5

	outlo.Name = "outlo"
	outlo.Parent = Frame
	outlo.AnchorPoint = Vector2.new(1, 0)
	outlo.BackgroundColor3 = NEVERLOSE.Themes.TraceColor
	outlo.BackgroundTransparency = 0.6872
	outlo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	outlo.BorderSizePixel = 0
	outlo.Position = UDim2.new(1, 0, 0.086999995, 0)
	outlo.Size = UDim2.new(0.774999976, 0, 0, 1)
	outlo.ZIndex = 4

	UICorner_4.CornerRadius = UDim.new(0, 4)
	UICorner_4.Parent = outlo

	outlo_2.Name = "outlo"
	outlo_2.Parent = Frame
	outlo_2.AnchorPoint = Vector2.new(1, 0.5)
	outlo_2.BackgroundColor3 = NEVERLOSE.Themes.TraceColor
	outlo_2.BackgroundTransparency = 0.6872
	outlo_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	outlo_2.BorderSizePixel = 0
	outlo_2.Position = UDim2.new(0.223908007, 0, 0.5, 0)
	outlo_2.Size = UDim2.new(0, 1, 1, 0)
	outlo_2.ZIndex = 4

	UICorner_5.CornerRadius = UDim.new(0, 4)
	UICorner_5.Parent = outlo_2

	outlo_3.Name = "outlo"
	outlo_3.Parent = Frame
	outlo_3.AnchorPoint = Vector2.new(1, 0)
	outlo_3.BackgroundColor3 = NEVERLOSE.Themes.TraceColor
	outlo_3.BackgroundTransparency = 0.6872
	outlo_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	outlo_3.BorderSizePixel = 0
	outlo_3.Position = UDim2.new(0.223908007, 0, 0.923109949, 0)
	outlo_3.Size = UDim2.new(0.223908007, 0, 0, 1)
	outlo_3.ZIndex = 4

	UICorner_6.CornerRadius = UDim.new(0, 4)
	UICorner_6.Parent = outlo_3
	
local mainFrame_2b = Instance.new("Frame")
local saveButton_3c = Instance.new("TextButton")
local stroke_4d = Instance.new("UIStroke")
local corner_5e = Instance.new("UICorner")
local imageLabel_6f = Instance.new("ImageLabel")

mainFrame_2b.Name = "MainFrame"
mainFrame_2b.Parent = Frame
mainFrame_2b.BackgroundTransparency = 1
mainFrame_2b.Position = UDim2.new(0.243, 0, 0.025, 0)
mainFrame_2b.Size = UDim2.new(0.606889784, 0, 0.0627818182, -13)

-- Save Button (parented to Frame)
saveButton_3c.Name = "SaveB"
saveButton_3c.Parent = mainFrame_2b
saveButton_3c.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
saveButton_3c.Position = UDim2.new(0, 0, 0, 0)
saveButton_3c.Size = UDim2.new(0.199998885, 0, 1, 0)
saveButton_3c.ZIndex = 5
saveButton_3c.Text = "Save"
saveButton_3c.TextColor3 = Color3.fromRGB(255, 255, 255)
saveButton_3c.TextTransparency = 0.300
saveButton_3c.TextSize = 11
saveButton_3c.Font = Enum.Font.GothamBold
saveButton_3c.AutoButtonColor = false

-- Stroke (parented to Save Button)
stroke_4d.Name = "Stroke"
stroke_4d.Parent = saveButton_3c
stroke_4d.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
stroke_4d.Color = NEVERLOSE.Themes.StrokeColor
stroke_4d.Thickness = 1
stroke_4d.Transparency = 0

-- Corner (parented to Save Button)
corner_5e.Parent = saveButton_3c
corner_5e.CornerRadius = UDim.new(0, 2)

-- ImageLabel (parented to Save Button)
imageLabel_6f.Name = "ImageIcon"
imageLabel_6f.Parent = saveButton_3c
imageLabel_6f.Image = "http://www.roblox.com/asset/?id=6035067857"
imageLabel_6f.ImageColor3 = Color3.fromRGB(255, 255, 255)
imageLabel_6f.ImageTransparency = 0.300
imageLabel_6f.BackgroundTransparency = 1
imageLabel_6f.Position = UDim2.new(0.1, 0, 0.19, 0)
imageLabel_6f.Size = UDim2.new(0, 15, 0, 17)
imageLabel_6f.ZIndex = 6

saveButton_3c.MouseEnter:Connect(function()
	saveButton_3c.TextTransparency = 0
	imageLabel_6f.ImageTransparency = 0			
end)
	
saveButton_3c.MouseButton1Click:Connect(function()
local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://6895079853"
Sound2.Looped = false
Sound2.Volume = 1
Sound2.Parent = game:GetService("SoundService")
Sound2:Play()

Sound2.Ended:Connect(function()
	Sound2:Destroy()
     end)
end)

saveButton_3c.MouseLeave:Connect(function()
	saveButton_3c.TextTransparency = 0.3
	imageLabel_6f.ImageTransparency = 0.3
end)
-- style
loadstring(game:HttpGet("https://raw.githubusercontent.com/CludeHub/SourceCludeLib/refs/heads/main/Style.lua"))()
--
	
-- DraggingToggle
loadstring(game:HttpGet("https://raw.githubusercontent.com/CludeHub/SourceCludeLib/refs/heads/main/DragToggleSetting.lua"))()
----

-- grow a garden function stock timer
loadstring(game:HttpGet("https://raw.githubusercontent.com/CludeHub/SourceCludeLib/refs/heads/main/GrowAGardenStockFunction.lua"))()
--

-- slap battle searchbox function 
loadstring(game:HttpGet("https://raw.githubusercontent.com/CludeHub/SourceCludeLib/refs/heads/main/SearchGlovesFunction.lua"))()
	
local buttons = Instance.new("ImageButton")
buttons.Size = UDim2.new(0, 70, 0, 70)
buttons.Position = UDim2.new(0, 0, 0.137, 0)
buttons.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
buttons.ImageColor3 = Color3.fromRGB(0, 209, 255)
buttons.BackgroundTransparency = 0
buttons.ZIndex = 699999999
buttons.Image = "rbxassetid://72691518344005"
buttons.Draggable = true
buttons.Active = true
buttons.Selectable = true
buttons.AutoButtonColor = false

local uicornerb = Instance.new("UICorner")
uicornerb.CornerRadius = UDim.new(1, 0)
uicornerb.Parent = buttons

buttons.Parent = ScreenGui

	buttons.MouseButton1Click:Connect(function()
Frame.Visible = not Frame.Visible
Frame_2.Visible = not Frame_2.Visible
Frame_3.Visible = not Frame_3.Visible
TabHose.Visible = not TabHose.Visible
outlo.Visible = not outlo.Visible
outlo_2.Visible = not outlo_2.Visible
outlo_3.Visible = not outlo_3.Visible
UserData.Visible = not UserData.Visible
aboutFrame.Visible = false
end)
	
	UserData.Name = "UserData"
	UserData.Parent = Frame
	UserData.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserData.BackgroundTransparency = 1.000
	UserData.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UserData.BorderSizePixel = 0
	UserData.Position = UDim2.new(-0.000179085735, 0, 0.946525633, 0)
	UserData.Size = UDim2.new(0.225179195, 0, 0.0718210712, -10)
	UserData.ZIndex = 5

	UICorner_7.CornerRadius = UDim.new(0, 2)
	UICorner_7.Parent = UserData

	UserImage.Name = "UserImage"
	UserImage.Parent = UserData
	UserImage.AnchorPoint = Vector2.new(0.5, 0.5)
	UserImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserImage.BackgroundTransparency = 1.000
	UserImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UserImage.BorderSizePixel = 0
	UserImage.Position = UDim2.new(0.150000006, 0, 0.5, 0)
	UserImage.Size = UDim2.new(0.949999988, 0, 0.949999988, -2)
	UserImage.SizeConstraint = Enum.SizeConstraint.RelativeYY
	UserImage.ZIndex = 5
	UserImage.Image = game:GetService('Players'):GetUserThumbnailAsync(LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size150x150)

	UICorner_8.CornerRadius = UDim.new(0.5, 0)
	UICorner_8.Parent = UserImage

	UserName.Name = "UserName"
	UserName.Parent = UserData
	UserName.AnchorPoint = Vector2.new(0, 0.5)
	UserName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UserName.BackgroundTransparency = 1.000
	UserName.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UserName.BorderSizePixel = 0
	UserName.Position = UDim2.new(0.31400001, 0, 0.583999991, 0)
	UserName.Size = UDim2.new(0.717000008, 0, 0.649999976, -2)
	UserName.ZIndex = 5
	UserName.Font = Enum.Font.SourceSansSemibold
	UserName.Text = LocalPlayer.DisplayName or "https://httpbin.org/get"
	UserName.TextColor3 = Color3.fromRGB(255, 255, 255)
	UserName.TextScaled = true
	UserName.TextSize = 14.000
	UserName.TextWrapped = true
	UserName.TextXAlignment = Enum.TextXAlignment.Left

	function WindowFunctinos:AddTabLabel(Label)
		local TabTitle = Instance.new("TextLabel")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

		TabTitle.Name = "TabTitle"
		TabTitle.Parent = TabButtons
		TabTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabTitle.BackgroundTransparency = 1.000
		TabTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabTitle.BorderSizePixel = 0
		TabTitle.Size = UDim2.new(0.949999988, -5, 0.5, -9)
		TabTitle.ZIndex = 5
		TabTitle.Font = Enum.Font.SourceSansSemibold
		TabTitle.Text = Label or "Home"
		TabTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabTitle.TextScaled = true
		TabTitle.TextSize = 14.000
		TabTitle.TextTransparency = 0.610
		TabTitle.TextWrapped = true
		TabTitle.TextXAlignment = Enum.TextXAlignment.Left

		UIAspectRatioConstraint.Parent = TabTitle
		UIAspectRatioConstraint.AspectRatio = 9.000
		UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

		local funcs = {}

		function funcs:Text(a)
			TabTitle.Text=tostring(a)
		end

		function funcs:Delete()
			TabTitle:Destroy()
		end

		return funcs
	end

	function WindowFunctinos:AddTab(TabNameString,IconType)
		local TabFunctions ={}
		local TabButton = Instance.new("Frame")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		local UICorner = Instance.new("UICorner")
		local Image = Instance.new("ImageLabel")
		local UICorner_2 = Instance.new("UICorner")
		local Label = Instance.new("TextLabel")

		local cc = NEVERLOSE.Themes.MainColor

		if cc == Color3.fromRGB(0, 172, 247) then
			cc = NEVERLOSE.Themes.BlackgroundColor
		end

		TabButton.Name = "TabButton"
		TabButton.Parent = TabButtons
		TabButton.BackgroundColor3 = cc
		TabButton.BackgroundTransparency = 1
		TabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabButton.BorderSizePixel = 0
		TabButton.Size = UDim2.new(0.899999976, -4, 0.5, -4)
		TabButton.ZIndex = 5

		UIAspectRatioConstraint.Parent = TabButton
		UIAspectRatioConstraint.AspectRatio = 4.000
		UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

		UICorner.CornerRadius = UDim.new(0, 3)
		UICorner.Parent = TabButton

		Image.Name = "Image"
		Image.Parent = TabButton
		Image.AnchorPoint = Vector2.new(0, 0.5)
		Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Image.BackgroundTransparency = 1.000
		Image.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Image.BorderSizePixel = 0
		Image.Position = UDim2.new(0.0149999997, -4, 0.5, 0)
		Image.Size = UDim2.new(0.850000024, 0, 0.800000012, 0)
		Image.SizeConstraint = Enum.SizeConstraint.RelativeYY
		Image.ZIndex = 5

		Image.ImageColor3 = NEVERLOSE.Themes.MainColor
		Image.ImageRectOffset = Vector2.new(205, 565)
		Image.ImageRectSize = Vector2.new(35, 35)

		GetImageData(tostring(IconType),Image)

		UICorner_2.CornerRadius = UDim.new(0, 3)
		UICorner_2.Parent = Image

		Label.Name = "Label"
		Label.Parent = TabButton
		Label.AnchorPoint = Vector2.new(0.5, 0.5)
		Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Label.BackgroundTransparency = 1.000
		Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Label.BorderSizePixel = 0
		Label.Position = UDim2.new(0.640507042, 0, 0.500000238, 0)
		Label.Size = UDim2.new(0.718986034, -4, 0.600000024, -4)
		Label.ZIndex = 5
		Label.Font = Enum.Font.SourceSansBold
		Label.Text = TabNameString or "Index.json"
		Label.TextColor3 = Color3.fromRGB(255, 255, 255)
		Label.TextScaled = true
		Label.TextSize = 14.000
		Label.TextWrapped = true
		Label.TextXAlignment = Enum.TextXAlignment.Left
		Label.TextYAlignment = Enum.TextYAlignment.Top

		local Tab = Instance.new("Frame")
		local Left = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local Right = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")

		Tab.Name = "Tab"
		Tab.Parent = TabHose
		Tab.AnchorPoint = Vector2.new(0.5, 0.5)
		Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab.BackgroundTransparency = 1.000
		Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tab.BorderSizePixel = 0
		Tab.ClipsDescendants = true
		Tab.Position = UDim2.new(0.5, 0, 0.5, -27)
		Tab.Size = UDim2.new(0.99000001, 0, 0.99000001, 0)
		Tab.ZIndex = 6

		Left.Name = "Left"
		Left.Parent = Tab
		Left.Active = true
		Left.AnchorPoint = Vector2.new(0, 0.5)
		Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Left.BackgroundTransparency = 1.000
		Left.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Left.BorderSizePixel = 0
		Left.ClipsDescendants = false
		Left.Position = UDim2.new(0, 0, 0.5, 0)
		Left.Size = UDim2.new(0.499000001, 0, 0.980000019, 0)
		Left.ZIndex = 5
		Left.ScrollBarThickness = 0
		Left.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

		UIListLayout.Parent = Left
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 7)

		Right.Name = "Right"
		Right.Parent = Tab
		Right.Active = true
		Right.AnchorPoint = Vector2.new(1, 0.5)
		Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Right.BackgroundTransparency = 1.000
		Right.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Right.BorderSizePixel = 0
		Right.ClipsDescendants = false
		Right.Position = UDim2.new(1, 0, 0.5, 0)
		Right.Size = UDim2.new(0.499000001, 0, 0.980000019, 0)
		Right.ZIndex = 5
		Right.ScrollBarThickness = 0

		UIListLayout_2.Parent = Right
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 7)

		scrolling_connect(Right)
		scrolling_connect(Left)

		local function bedisea()
			if headd2text then
				TweenService:Create(headd2text,TweenInfo.new(.1),{
					TextTransparency = 0.1,
					TextStrokeTransparency=.95
				}):Play()
				task.wait(.11)
				TweenService:Create(headd2text,TweenInfo.new(.1),{
					TextTransparency = 0,
					TextStrokeTransparency=.9
				}):Play()
			end
		end

		local function tabcall(val,bas)
			if val then

				if not Tab.Visible then
					task.spawn(bedisea)
					Tab.Position=UDim2.new(0.5,0,0,0)
					Tab.Size=UDim2.new(0.85, 0, 0, 0)
				end

				Tab.Visible=true
				TweenService:Create(Tab,TweenInfo.new(.3,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Position = UDim2.new(0.5, 0, 0.5, -27)}):Play()
				TweenService:Create(Tab,TweenInfo.new(.75,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{Size = UDim2.new(0.99000001, 0, 0.99000001, 0)}):Play()
				TweenService:Create(TabButton,TweenInfo.new(0.3),{BackgroundTransparency=0.6}):Play()
			else
				Tab.Visible=false
				TweenService:Create(Tab,TweenInfo.new(.5),{Position = UDim2.new(0.5, 0, 1.5, 0)}):Play()
				TweenService:Create(TabButton,TweenInfo.new(0.3),{BackgroundTransparency=1}):Play()
			end
		end

		if #Tabs==0 then
			tabcall(true,0)
		else
			tabcall(false,0)
		end

		table.insert(Tabs,{Tab,tabcall})

		cretate_button(TabButton).MouseButton1Click:Connect(function()
				local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://77120543307812"
Sound2.Looped = false
Sound2.Volume = 0.9
Sound2.Parent = game:GetService("SoundService")
Sound2:Play()

Sound2.Ended:Connect(function()
	Sound2:Destroy()
     end)
			for i,v in ipairs(Tabs) do
				if v[1]==Tab then
					v[2](true,0.4)
					task.wait()
				else
					v[2](false,0.4)
				end
			end
		end) 

		function TabFunctions:AddSection(SectionName,parentname)
			parentname = parentname or "left"

			local Section = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local UIStroke = Instance.new("UIStroke")
			local Header = Instance.new("TextLabel")
			local UIListLayout = Instance.new("UIListLayout")
			local lay = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")

			Section.Name = "Section"
			Section.Parent = (parentname=="left"and Left) or (parentname=="right"and Right) or nil

			Section.BackgroundColor3 = NEVERLOSE.Themes.SectionColor
			Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Section.BorderSizePixel = 0
			Section.Size = UDim2.new(0.970000029, 0, 0, 0)
			Section.ZIndex = 5

			UICorner.CornerRadius = UDim.new(0, 3)
			UICorner.Parent = Section

			UIStroke.Color = NEVERLOSE.Themes.StrokeColor
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Parent = Section

			Header.Name = "Header"
			Header.Parent = Section
			Header.AnchorPoint = Vector2.new(0.5, 0)
			Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Header.BackgroundTransparency = 1.000
			Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Header.BorderSizePixel = 0
			Header.Position = UDim2.new(0.5, 0, 0.100000001, 0)
			Header.Size = UDim2.new(0.949999988, 0, 0, 13)
			Header.ZIndex = 5
			Header.Font = Enum.Font.SourceSansSemibold
			Header.Text = SectionName or "Section"
			Header.TextColor3 = Color3.fromRGB(255, 255, 255)
			Header.TextScaled = true
			Header.TextSize = 14.000
			Header.TextWrapped = true
			Header.TextXAlignment = Enum.TextXAlignment.Left
			Header.TextTransparency=1
			TweenService:Create(Header,TweenInfo.new(0.3),{TextTransparency=0}):Play()

			UIListLayout.Parent = Section
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 6)

			lay.Name = "lay"
			lay.Parent = Section
			lay.BackgroundColor3 = NEVERLOSE.Themes.StrokeColor
			lay.BorderColor3 = Color3.fromRGB(0, 0, 0)
			lay.BorderSizePixel = 0
			lay.Size = UDim2.new(0.970000029, 0, 0, 2)
			lay.ZIndex = 5
			lay.BackgroundTransparency=1
			Section.BackgroundTransparency=1
			UIStroke.Transparency=1

			TweenService:Create(lay,TweenInfo.new(1),{BackgroundTransparency=0}):Play()
			TweenService:Create(Section,TweenInfo.new(1),{BackgroundTransparency=0}):Play()
			TweenService:Create(UIStroke,TweenInfo.new(1),{Transparency=0}):Play()

			local section_value = true
			UICorner_2.CornerRadius = UDim.new(0, 3)
			UICorner_2.Parent = lay

			local function update_section_size(va)
				if not va then
					if Section.Visible and section_value then
						local a=math.ceil(1)

						for i,v:Frame|TextLabel in ipairs(Section:GetChildren()) do
							if v:isA('Frame') or v:isA('TextLabel') then
								if v.Visible then
									pcall(function()
										a=a+v.AbsoluteSize.Y*1.2
									end)
								end
							end
						end

						TweenService:Create(Section,TweenInfo.new(0.2),{Size=UDim2.new(0.97,0,0,15+a)}):Play()
					end
				else
					local a=math.ceil(1)

					for i,v:Frame|TextLabel in ipairs(Section:GetChildren()) do
						if v:isA('Frame') or v:isA('TextLabel') then
							if v.Visible then
								pcall(function()
									a=a+v.AbsoluteSize.Y*1.2
								end)
							end
						end
					end

					TweenService:Create(Section,TweenInfo.new(0.2),{Size=UDim2.new(0.97,0,0,15+a)}):Play()
				end
			end

			table.insert(NEVERLOSE.auto_function,update_section_size)

			Section:GetPropertyChangedSignal('Size'):Connect(function()
				if Section.Size.Y.Offset <= 1 then
					Section.Visible=false
				else
					Section.Visible=true
				end
			end)

			Section.InputBegan:Connect(update_section_size)

			update_section_size()

			local sectionfunc = {}

			function sectionfunc:AddButton(ButtonName,callback)
				callback=callback or function()

				end

				local Button = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local UICorner = Instance.new("UICorner")
				local LabelText = Instance.new("TextLabel")
				local UIStroke = Instance.new("UIStroke")

				Button.Name = "Button"
				Button.Parent = Section
				Button.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
				Button.BackgroundTransparency = 0.550
				Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Button.BorderSizePixel = 0
				Button.Position = UDim2.new(0.0500000231, 0, 0.601014614, 0)
				Button.Size = UDim2.new(0.899999976, 0, -0.351014495, 0)
				Button.ZIndex = 5

				UIAspectRatioConstraint.Parent = Button
				UIAspectRatioConstraint.AspectRatio = 7.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				UICorner.CornerRadius = UDim.new(0, 2)
				UICorner.Parent = Button

				LabelText.Name = "LabelText"
				LabelText.Parent = Button
				LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelText.BackgroundTransparency = 1.000
				LabelText.BorderColor3 = Color3.fromRGB(0, 0, 0)
				LabelText.BorderSizePixel = 0
				LabelText.Position = UDim2.new(0.5, 0, 0.5, 0)
				LabelText.Size = UDim2.new(0.899999976, -5, 0.75, -5)
				LabelText.ZIndex = 6
				LabelText.Font = Enum.Font.SourceSansSemibold
				LabelText.Text = ButtonName or"Kill all"
				LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelText.TextScaled = true
				LabelText.TextSize = 14.000
				LabelText.TextTransparency = 0.300
				LabelText.TextWrapped = true

				UIStroke.Thickness = 0.500
				UIStroke.Color = NEVERLOSE.Themes.StrokeColor
				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke.Parent = Button

				cretate_button(Button).MouseButton1Click:Connect(function()
						local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://6895079853"
Sound2.Looped = false
Sound2.Volume = 1
Sound2.Parent = game:GetService("SoundService")
Sound2:Play()

Sound2.Ended:Connect(function()
	Sound2:Destroy()
     end)
					callback()
				end)

				Button.MouseEnter:Connect(function()
					TweenService:Create(LabelText,TweenInfo.new(0.1),{TextTransparency=0}):Play()
				end)

				Button.MouseLeave:Connect(function()
					TweenService:Create(LabelText,TweenInfo.new(0.1),{TextTransparency=0.3}):Play()
				end)

				local button_func={}
				function button_func:Fire(...)
					callback(...)
				end

				function button_func:Text(a)
					LabelText.Text=tostring(a)
				end

				return button_func
			end

			function sectionfunc:AddLabel(LabelNameString)
				local Label = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local UICorner = Instance.new("UICorner")
				local LabelText = Instance.new("TextLabel")

				Label.Name = "Label"
				Label.Parent = Section
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Label.BorderSizePixel = 0
				Label.Size = UDim2.new(0.899999976, 0, 0.5, 0)
				Label.ZIndex = 5

				UIAspectRatioConstraint.Parent = Label
				UIAspectRatioConstraint.AspectRatio = 6.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				UICorner.CornerRadius = UDim.new(0, 3)
				UICorner.Parent = Label

				LabelText.Name = "LabelText"
				LabelText.Parent = Label
				LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelText.BackgroundTransparency = 1.000
				LabelText.BorderColor3 = Color3.fromRGB(0, 0, 0)
				LabelText.BorderSizePixel = 0
				LabelText.Position = UDim2.new(0.5, 0, 0.5, 0)
				LabelText.Size = UDim2.new(1, -2, 0.649999976, -5)
				LabelText.ZIndex = 6
				LabelText.Font = Enum.Font.SourceSansSemibold
				LabelText.Text = LabelNameString or"Label"
				LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelText.TextScaled = true
				LabelText.TextSize = 14.000
				LabelText.TextTransparency = 0.300
				LabelText.TextWrapped = true
				LabelText.TextXAlignment = Enum.TextXAlignment.Left
				update_section_size(

				)

				LabelText:GetPropertyChangedSignal('TextTransparency'):Connect(function()
					if LabelText.TextTransparency <= 0.99 then
						Label.Visible=true
					else
						Label.Visible=false
					end
				end)

				local button_func = {}
				function button_func:Text(a)
					LabelText.Text=tostring(a)
				end

				function button_func:Status(val)
					if val then
						TweenService:Create(Label,TweenInfo.new(1,Enum.EasingStyle.Quint),{Size = UDim2.new(0.899999976, 0, 0.5, 0)}):Play()
						TweenService:Create(UIAspectRatioConstraint,TweenInfo.new(.1,Enum.EasingStyle.Quint),{AspectRatio = 6}):Play()
						TweenService:Create(LabelText,TweenInfo.new(0.7,Enum.EasingStyle.Quint),{TextTransparency = 0.3}):Play()
					else
						TweenService:Create(Label,TweenInfo.new(.8,Enum.EasingStyle.Quint),{Size = UDim2.new(0,0,0,0)}):Play()
						TweenService:Create(LabelText,TweenInfo.new(1,Enum.EasingStyle.Quint),{TextTransparency = 1}):Play()
					end
				end

				return button_func
			end

			function sectionfunc:AddToggle(ToggleName,Default,callback)
				callback=callback or function()

				end

				local Toggle = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local UICorner = Instance.new("UICorner")
				local LabelText = Instance.new("TextLabel")
				local Effect = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local Icon = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")

				Toggle.Name = "Toggle"
				Toggle.Parent = Section
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BackgroundTransparency = 1.000
				Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Toggle.BorderSizePixel = 0
				Toggle.Position = UDim2.new(0.0500000231, 0, 0.601014614, 0)
				Toggle.Size = UDim2.new(0.899999976, 0, -0.351014495, 0)
				Toggle.ZIndex = 5

				UIAspectRatioConstraint.Parent = Toggle
				UIAspectRatioConstraint.AspectRatio = 7.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				UICorner.CornerRadius = UDim.new(0, 3)
				UICorner.Parent = Toggle

				LabelText.Name = "LabelText"
				LabelText.Parent = Toggle
				LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelText.BackgroundTransparency = 1.000
				LabelText.BorderColor3 = Color3.fromRGB(0, 0, 0)
				LabelText.BorderSizePixel = 0
				LabelText.Position = UDim2.new(0.38587454, 0, 0.499999583, 0)
				LabelText.Size = UDim2.new(0.772000015, -10, 0.75, -10)
				LabelText.ZIndex = 6
				LabelText.Font = Enum.Font.SourceSansSemibold
				LabelText.Text = ToggleName or "Label-Test"
				LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelText.TextScaled = true
				LabelText.TextSize = 14.000
				LabelText.TextWrapped = true
				LabelText.TextXAlignment = Enum.TextXAlignment.Left

				Effect.Name = "Effect"
				Effect.Parent = Toggle
				Effect.AnchorPoint = Vector2.new(0, 0.5)
				Effect.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
				Effect.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Effect.BorderSizePixel = 0
				Effect.Position = UDim2.new(0.800000012, 0, 0.5, 0)
				Effect.Size = UDim2.new(0.150000006, 0, 0.5, 0)
				Effect.ZIndex = 6

				UICorner_2.CornerRadius = UDim.new(0.5, 0)
				UICorner_2.Parent = Effect

				Icon.Name = "Icon"
				Icon.Parent = Effect
				Icon.AnchorPoint = Vector2.new(0.5, 0.5)
				Icon.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
				Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Icon.BorderSizePixel = 0
				Icon.Position = UDim2.new(0.75, 0, 0.5, 0)
				Icon.Size = UDim2.new(1, 0, 1, 0)
				Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
				Icon.ZIndex = 7

				UICorner_3.CornerRadius = UDim.new(1, 0)
				UICorner_3.Parent = Icon

				local function toggleval(val,timea)
					if val then
						TweenService:Create(LabelText,TweenInfo.new(timea),{TextTransparency=0}):Play()
						TweenService:Create(Icon,TweenInfo.new(timea),{Position=UDim2.new(0.75,0,0.5,0),BackgroundColor3=NEVERLOSE.Themes.MainColor}):Play();
						Effect.BackgroundColor3 = Color3.fromRGB(12, 18, 50)
					else
						TweenService:Create(LabelText,TweenInfo.new(timea),{TextTransparency=0.3}):Play()
						TweenService:Create(Icon,TweenInfo.new(timea),{Position=UDim2.new(0.25,0,0.5,0),BackgroundColor3=Color3.fromRGB(95, 95, 95)}):Play();
						Effect.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
					end
				end

				toggleval(Default,0)

				cretate_button(Toggle).MouseButton1Click:Connect(function()
						local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://6895079853"
Sound2.Looped = false
Sound2.Volume = 1
Sound2.Parent = game:GetService("SoundService")
Sound2:Play()

Sound2.Ended:Connect(function()
	Sound2:Destroy()
     end)
					Default=not Default
					toggleval(Default,0.1)
					callback(Default)
				end)

				local button_func = {}
				function button_func:Text(a)
					LabelText.Text=tostring(a)
				end

				function button_func:Value(a)
					Default=a
					toggleval(a,0.1)
					callback(a)
				end

				function button_func:Status(val)
					if val then
						local dex = (Default==true and 0) or .3
						TweenService:Create(Toggle,TweenInfo.new(.5,Enum.EasingStyle.Quint),{Size = UDim2.new(0.899999976, 0, -0.351014495, 0)}):Play()
						TweenService:Create(LabelText,TweenInfo.new(1,Enum.EasingStyle.Quint),{TextTransparency = dex}):Play()

						TweenService:Create(Effect,TweenInfo.new(0.4),{BackgroundTransparency=0}):Play()
						TweenService:Create(Icon,TweenInfo.new(0.4),{BackgroundTransparency=0}):Play()

					else
						TweenService:Create(Effect,TweenInfo.new(0.4),{BackgroundTransparency=1}):Play()
						TweenService:Create(Icon,TweenInfo.new(0.4),{BackgroundTransparency=1}):Play()

						TweenService:Create(Toggle,TweenInfo.new(1.5,Enum.EasingStyle.Quint),{Size = UDim2.new(0,0,0,0)}):Play()
						TweenService:Create(LabelText,TweenInfo.new(1,Enum.EasingStyle.Quint),{TextTransparency = 1}):Play()
					end
				end

				return button_func

			end

			function sectionfunc:AddKeybind(KeybindNameString,Default,callback)
				callback=callback or function()

				end

				local function gt(a:Enum.KeyCode)
					if not a then
						return "None"

					else
						return a.Name
					end
				end

				local Keybind = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local UICorner = Instance.new("UICorner")
				local LabelText = Instance.new("TextLabel")
				local BrindText = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local ValueText = Instance.new("TextLabel")

				Keybind.Name = "Keybind"
				Keybind.Parent = Section
				Keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Keybind.BackgroundTransparency = 1.000
				Keybind.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Keybind.BorderSizePixel = 0
				Keybind.Position = UDim2.new(0.0500000231, 0, 0.601014614, 0)
				Keybind.Size = UDim2.new(0.899999976, 0, -0.351014495, 0)
				Keybind.ZIndex = 5

				UIAspectRatioConstraint.Parent = Keybind
				UIAspectRatioConstraint.AspectRatio = 7.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				UICorner.CornerRadius = UDim.new(0, 2)
				UICorner.Parent = Keybind

				LabelText.Name = "LabelText"
				LabelText.Parent = Keybind
				LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelText.BackgroundTransparency = 1.000
				LabelText.BorderColor3 = Color3.fromRGB(0, 0, 0)
				LabelText.BorderSizePixel = 0
				LabelText.Position = UDim2.new(0.296665907, 0, 0.499999106, 0)
				LabelText.Size = UDim2.new(0.593582749, -10, 0.75, -10)
				LabelText.ZIndex = 6
				LabelText.Font = Enum.Font.SourceSansSemibold
				LabelText.Text = KeybindNameString or ''
				LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelText.TextScaled = true
				LabelText.TextSize = 14.000
				LabelText.TextWrapped = true
				LabelText.TextXAlignment = Enum.TextXAlignment.Left
				LabelText.TextTransparency=.3
				BrindText.Name = "BrindText"
				BrindText.Parent = Keybind
				BrindText.AnchorPoint = Vector2.new(1, 0.5)
				BrindText.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
				BrindText.BackgroundTransparency = 0.500
				BrindText.BorderColor3 = Color3.fromRGB(0, 0, 0)
				BrindText.BorderSizePixel = 0
				BrindText.Position = UDim2.new(0.998, 0, 0.5, 0)
				BrindText.Size = UDim2.new(0.150000006, 0, 0.5, 0)
				BrindText.ZIndex = 6

				UICorner_2.CornerRadius = UDim.new(0, 2)
				UICorner_2.Parent = BrindText

				UIStroke.Thickness = 0.500
				UIStroke.Color = NEVERLOSE.Themes.StrokeColor
				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke.Parent = BrindText

				ValueText.Name = "ValueText"
				ValueText.Parent = BrindText
				ValueText.AnchorPoint = Vector2.new(0.5, 0.5)
				ValueText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ValueText.BackgroundTransparency = 1.000
				ValueText.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ValueText.BorderSizePixel = 0
				ValueText.Position = UDim2.new(0.5, 0, 0.5, 0)
				ValueText.Size = UDim2.new(0.980000019, 0, 0.998000026, 0)
				ValueText.ZIndex = 6
				ValueText.Font = Enum.Font.SourceSansSemibold
				ValueText.Text = gt(Default)
				ValueText.TextColor3 = Color3.fromRGB(255, 255, 255)
				ValueText.TextScaled = true
				ValueText.TextSize = 14.000
				ValueText.TextWrapped = true

				local function UpdateText()
					local size = TextService:GetTextSize(ValueText.Text,ValueText.TextSize,ValueText.Font,Vector2.new(math.huge,math.huge))

					TweenService:Create(BrindText,TweenInfo.new(0.2),{Size = UDim2.new(0, size.X + 1, 0.550000012, 0)}):Play()
				end

				local Binding = false
				cretate_button(Keybind).MouseButton1Click:Connect(function()
						local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://77120543307812"
Sound2.Looped = false
Sound2.Volume = 1
Sound2.Parent = game:GetService("SoundService")
Sound2:Play()

Sound2.Ended:Connect(function()
	Sound2:Destroy()
     end)
					if Binding then
						return
					end
					Binding =  true

					local targetloadded = nil

					local hook = InputService.InputBegan:Connect(function(is)
						if is.KeyCode ~= Enum.KeyCode.Unknown then
							targetloadded = is.KeyCode
						end
					end)
					TweenService:Create(LabelText,TweenInfo.new(0.3),{TextTransparency=0}):Play()
					ValueText.Text = "..."
					repeat task.wait() UpdateText() until targetloadded or not Binding
					TweenService:Create(LabelText,TweenInfo.new(0.3),{TextTransparency=0.3}):Play()
					Binding =false
					if hook then
						hook:Disconnect()
					end
					if targetloadded then
						ValueText.Text = gt(targetloadded)
						Default = targetloadded
						UpdateText() 
						callback(targetloadded)
					end
					return
				end)

				UpdateText()

				local KeybindFunctions = {}

				function KeybindFunctions:Text(a)
					LabelText.Text = tostring(a)
					UpdateText()
				end

				function KeybindFunctions:Value(l)
					ValueText.Text = gt(l)
					Default = l
					UpdateText() 
					callback(l)
				end

				return KeybindFunctions
			end

			function sectionfunc:AddSlider(SliderNameString,Min,Max,Default,callback)
				Min=Min or 1
				Max=Max or 100
				Default=Default or Min
				callback=callback or function()

				end

				local Slider = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local UICorner = Instance.new("UICorner")
				local LabelText = Instance.new("TextLabel")
				local Box = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local ValueText = Instance.new("TextLabel")
				local MoveFrame = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")
				local Inline = Instance.new("Frame")
				local UICorner_4 = Instance.new("UICorner")
				local Cir = Instance.new("Frame")
				local UICorner_5 = Instance.new("UICorner")
				local Frame = Instance.new("Frame")

				Slider.Name = "Slider"
				Slider.Parent = Section
				Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Slider.BackgroundTransparency = 1.000
				Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Slider.BorderSizePixel = 0
				Slider.Position = UDim2.new(0.0500000231, 0, 0.601014614, 0)
				Slider.Size = UDim2.new(0.899999976, 0, -0.351014495, 0)
				Slider.ZIndex = 5

				UIAspectRatioConstraint.Parent = Slider
				UIAspectRatioConstraint.AspectRatio = 7.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				UICorner.CornerRadius = UDim.new(0, 3)
				UICorner.Parent = Slider

				LabelText.Name = "LabelText"
				LabelText.Parent = Slider
				LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelText.BackgroundTransparency = 1.000
				LabelText.BorderColor3 = Color3.fromRGB(0, 0, 0)
				LabelText.BorderSizePixel = 0
				LabelText.Position = UDim2.new(0.238462642, 0, 0.499999374, 0)
				LabelText.Size = UDim2.new(0.477176398, -10, 0.75, -10)
				LabelText.ZIndex = 6
				LabelText.Font = Enum.Font.SourceSansSemibold
				LabelText.Text = SliderNameString or "Control"
				LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelText.TextScaled = true
				LabelText.TextSize = 14.000
				LabelText.TextWrapped = true
				LabelText.TextXAlignment = Enum.TextXAlignment.Left
				LabelText.TextTransparency=.3

				Box.Name = "Box"
				Box.Parent = Slider
				Box.AnchorPoint = Vector2.new(0, 0.5)
				Box.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
				Box.BackgroundTransparency = 0.100
				Box.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Box.BorderSizePixel = 0
				Box.Position = UDim2.new(0.800000012, 0, 0.5, 0)
				Box.Size = UDim2.new(0.150000006, 0, 0.5, 0)
				Box.ZIndex = 6

				UICorner_2.CornerRadius = UDim.new(0, 3)
				UICorner_2.Parent = Box

				UIStroke.Thickness = 0.500
				UIStroke.Color = NEVERLOSE.Themes.StrokeColor
				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke.Parent = Box

				ValueText.Name = "ValueText"
				ValueText.Parent = Box
				ValueText.AnchorPoint = Vector2.new(0.5, 0.5)
				ValueText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ValueText.BackgroundTransparency = 1.000
				ValueText.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ValueText.BorderSizePixel = 0
				ValueText.Position = UDim2.new(0.5, 0, 0.5, 0)
				ValueText.Size = UDim2.new(0.99000001, 0, 0.99000001, 0)
				ValueText.ZIndex = 6
				ValueText.Font = Enum.Font.SourceSansSemibold
				ValueText.Text = tostring(Default)
				ValueText.TextColor3 = Color3.fromRGB(255, 255, 255)
				ValueText.TextScaled = true
				ValueText.TextSize = 14.000
				ValueText.TextWrapped = true

				MoveFrame.Name = "MoveFrame"
				MoveFrame.Parent = Slider
				MoveFrame.AnchorPoint = Vector2.new(0, 0.5)
				MoveFrame.BackgroundColor3 = NEVERLOSE.Themes.MainColorDrop
				MoveFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				MoveFrame.BorderSizePixel = 0
				MoveFrame.ClipsDescendants = true
				MoveFrame.Position = UDim2.new(0.477050841, 0, 0.50000006, 0)
				MoveFrame.Size = UDim2.new(0.290949076, 0, 0.099999994, 0)
				MoveFrame.ZIndex = 5

				UICorner_3.CornerRadius = UDim.new(0, 3)
				UICorner_3.Parent = MoveFrame

				Inline.Name = "Inline"
				Inline.Parent = MoveFrame
				Inline.AnchorPoint = Vector2.new(0, 0.5)
				Inline.BackgroundColor3 = NEVERLOSE.Themes.MainColor
				Inline.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Inline.BorderSizePixel = 0
				Inline.Position = UDim2.new(0, 0, 0.5, 0)
				Inline.Size = UDim2.new((Default/Max), 0, 1, 0)
				Inline.ZIndex = 5

				UICorner_4.CornerRadius = UDim.new(0, 2)
				UICorner_4.Parent = Inline

				Cir.Name = "Cir"
				Cir.Parent = Inline
				Cir.AnchorPoint = Vector2.new(1, 0.5)
				Cir.BackgroundColor3 = NEVERLOSE.Themes.MainColor
				Cir.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Cir.BorderSizePixel = 0
				Cir.Position = UDim2.new(1, 0, 0.5, 0)
				Cir.Rotation = 0.010
				Cir.Size = UDim2.new(3, 0, 3, 0)
				Cir.SizeConstraint = Enum.SizeConstraint.RelativeYY
				Cir.ZIndex = 5

				UICorner_5.CornerRadius = UDim.new(0.5, 0)
				UICorner_5.Parent = Cir

				Frame.Parent = Slider
				Frame.AnchorPoint = Vector2.new(0, 0.5)
				Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Frame.BackgroundTransparency = 1.000
				Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Frame.BorderSizePixel = 0
				Frame.Position = UDim2.new(0.477050841, 0, 0.500000358, 0)
				Frame.Size = UDim2.new(0.322948873, 0, 0.900000036, 0)
				Frame.ZIndex = 5

				local danger = false

				local function update(Input)
					local SizeScale = math.clamp((((Input.Position.X) - MoveFrame.AbsolutePosition.X) / MoveFrame.AbsoluteSize.X), 0, 1)
					local Valuea = math.floor(((Max - Min) * SizeScale) + Min)
					local Size = UDim2.fromScale(math.clamp(SizeScale+0.15,0,1), 1)
					ValueText.Text = tostring(Valuea)
					TweenService:Create(Inline,TweenInfo.new(0.1),{Size = Size}):Play()
					callback(Valuea)
				end

				Frame.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						danger = true
						update(Input)
						TweenService:Create(LabelText,TweenInfo.new(0.1),{TextTransparency=0}):Play()
					end
				end)

				Frame.InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						danger = false
						TweenService:Create(LabelText,TweenInfo.new(0.1),{TextTransparency=0.3}):Play()
					end
				end)

				InputService.InputChanged:Connect(function(Input)
					if danger then
						if (Input.UserInputType==Enum.UserInputType.MouseMovement or Input.UserInputType==Enum.UserInputType.Touch)  then
							update(Input)
						end
					end
				end)

				local func={}

				function func:Value(s)
					ValueText.Text = tostring(s)
					Inline.Size=UDim2.fromScale((s/Max),1)

					callback(s)
				end

				function func:Text(t)
					LabelText.Text=tostring(t)
				end

				update_section_size()
				return func
			end

			function sectionfunc:AddDropdown(DropdownName,data,Default,callback)
				data=data or {}
				Default=Default or data[1]
				callback=callback or function()

				end

				local Dropdown = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local UICorner = Instance.new("UICorner")
				local LabelText = Instance.new("TextLabel")
				local TopBar = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local ValueText = Instance.new("TextLabel")
				local Icon = Instance.new("TextLabel")
				local DownBar = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")
				local UIStroke_2 = Instance.new("UIStroke")
				local UIListLayout = Instance.new("UIListLayout")

				Dropdown.Name = "Dropdown"
				Dropdown.Parent = Section
				Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.BackgroundTransparency = 1.000
				Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Dropdown.BorderSizePixel = 0
				Dropdown.Position = UDim2.new(0.0500000231, 0, 0.601014614, 0)
				Dropdown.Size = UDim2.new(0.899999976, 0, -0.351014495, 0)
				Dropdown.ZIndex = 5

				UIAspectRatioConstraint.Parent = Dropdown
				UIAspectRatioConstraint.AspectRatio = 7.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				UICorner.CornerRadius = UDim.new(0, 3)
				UICorner.Parent = Dropdown

				LabelText.Name = "LabelText"
				LabelText.Parent = Dropdown
				LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
				LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelText.BackgroundTransparency = 1.000
				LabelText.BorderColor3 = Color3.fromRGB(0, 0, 0)
				LabelText.BorderSizePixel = 0
				LabelText.Position = UDim2.new(0.296666116, 0, 0.499999374, 0)
				LabelText.Size = UDim2.new(0.593582511, -10, 0.75, -10)
				LabelText.ZIndex = 6
				LabelText.Font = Enum.Font.SourceSansSemibold
				LabelText.Text = DropdownName or "Label-Test"
				LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelText.TextScaled = true
				LabelText.TextSize = 14.000
				LabelText.TextWrapped = true
				LabelText.TextXAlignment = Enum.TextXAlignment.Left

				TopBar.Name = "TopBar"
				TopBar.Parent = Dropdown
				TopBar.Active = true
				TopBar.AnchorPoint = Vector2.new(1, 0.5)
				TopBar.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
				TopBar.BackgroundTransparency = 0.500
				TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TopBar.BorderSizePixel = 0
				TopBar.Position = UDim2.new(0.950000167, 0, 0.500000715, 0)
				TopBar.Size = UDim2.new(0.5, 0, 0.5, 0)
				TopBar.ZIndex = 6

				UICorner_2.CornerRadius = UDim.new(0, 2)
				UICorner_2.Parent = TopBar

				UIStroke.Thickness = 0.500
				UIStroke.Color = NEVERLOSE.Themes.StrokeColor
				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke.Parent = TopBar

				ValueText.Name = "ValueText"
				ValueText.Parent = TopBar
				ValueText.AnchorPoint = Vector2.new(0.5, 0.5)
				ValueText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ValueText.BackgroundTransparency = 1.000
				ValueText.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ValueText.BorderSizePixel = 0
				ValueText.Position = UDim2.new(0.358571023, 0, 0.500001013, 0)
				ValueText.Size = UDim2.new(0.697142839, 0, 0.998000145, 0)
				ValueText.ZIndex = 6
				ValueText.TextXAlignment = Enum.TextXAlignment.Left
				ValueText.Font = Enum.Font.SourceSansSemibold
				ValueText.Text = tostring(Default)
				ValueText.TextTransparency = 0.3
				ValueText.TextColor3 = Color3.fromRGB(255, 255, 255)
				ValueText.TextScaled = true
				ValueText.TextSize = 14.000
				ValueText.TextWrapped = true

				Icon.Name = "Icon"
				Icon.Parent = TopBar
				Icon.AnchorPoint = Vector2.new(1, 0.5)
				Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Icon.BackgroundTransparency = 1.000
				Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Icon.BorderSizePixel = 0
				Icon.Position = UDim2.new(1, 0, 0.5, 0)
				Icon.Rotation = 90.000
				Icon.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
				Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
				Icon.ZIndex = 6
				Icon.Font = Enum.Font.SourceSans
				Icon.Text = "<"
				Icon.TextColor3 = Color3.fromRGB(255, 255, 255)
				Icon.TextScaled = true
				Icon.TextSize = 14.000
				Icon.TextWrapped = true

				DownBar.Name = "DownBar"
				DownBar.Parent = Dropdown
				DownBar.Active = true
				DownBar.AnchorPoint = Vector2.new(1, 0)
				DownBar.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
				DownBar.BackgroundTransparency = 0
				DownBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DownBar.BorderSizePixel = 0
				DownBar.Position = UDim2.new(0.948214233, 0, 0.873961239, 0)
				DownBar.Size = UDim2.new(0.308999985, 0, 0, 0)
				DownBar.Visible = false
				DownBar.ZIndex = 10

				UIStroke_2.Thickness = 0.500
				UIStroke_2.Color = NEVERLOSE.Themes.StrokeColor
				UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke_2.Parent = DownBar

				UIListLayout.Parent = DownBar
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0, 2)

				local choose = Default
				local DropdownToggle = false

				DownBar:GetPropertyChangedSignal('Size'):Connect(function()
					if DownBar.Size.Y.Offset<4 then
						DownBar.Visible=false
					else
						DownBar.Visible=true
					end
				end)

				local function get_list_size()
					local a=0

					for i,v:TextButton in ipairs(DownBar:GetChildren()) do
						if v:isA('TextButton') then
							a=a + 9
						end
					end

					return a + 15
				end

				local function get_list_v4()
					local a=0

					for i,v:TextButton in ipairs(DownBar:GetChildren()) do
						if v:isA('TextButton') then
							a=a + v.AbsoluteSize.Y
						end
					end

					return a + 15
				end

				local function auto_updatea()
					if DropdownToggle then
						TweenService:Create(DownBar,TweenInfo.new(0.1),{Size=UDim2.new(0.5,0,0,get_list_v4())}):Play()
					else
						TweenService:Create(DownBar,TweenInfo.new(0.1),{Size=UDim2.new(0.5,0,0,0)}):Play()
					end
				end

				local function DropdownToggleEffect(val)
					if val then
						Dropdown.Visible=true
						TweenService:Create(Icon,TweenInfo.new(0.15),{Rotation=90}):Play()
						TweenService:Create(LabelText,TweenInfo.new(0.4),{TextTransparency=0}):Play()

						TweenService:Create(DownBar,TweenInfo.new(0.1),{Size=UDim2.new(0.4,0,0,get_list_size())}):Play()

						auto_updatea()

						for i,v:TextButton in ipairs(DownBar:GetChildren()) do
							if v:isA('TextButton') then
								v.Size=UDim2.new(0,0,0,0)
								v.TextTransparency=1
								TweenService:Create(v,TweenInfo.new(0.01+(i/100)),{
									Size  = UDim2.new(0.99000001, 0, 0.5, 0),
									TextTransparency=0.3
								}):Play()
							end
						end
					else
						for i,v:TextButton in ipairs(DownBar:GetChildren()) do
							if v:isA('TextButton') then
								v.TextTransparency=.3
								TweenService:Create(v,TweenInfo.new(0.04),{
									Size  = UDim2.new(0,0,0,0),
									TextTransparency=1
								}):Play()
							end
						end

						TweenService:Create(Icon,TweenInfo.new(0.15),{Rotation=-90}):Play()
						TweenService:Create(LabelText,TweenInfo.new(0.4),{TextTransparency=0.3}):Play()

						TweenService:Create(DownBar,TweenInfo.new(0.1),{Size=UDim2.new(0.4,0,0,0)}):Play()
					end
				end

				DropdownToggleEffect(DropdownToggle)

				cretate_button(Dropdown).MouseButton1Click:Connect(function()
						local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://6895079853"
Sound2.Looped = false
Sound2.Volume = 1
Sound2.Parent = game:GetService("SoundService")
Sound2:Play()

Sound2.Ended:Connect(function()
	Sound2:Destroy()
     end)
					DropdownToggle=not DropdownToggle
					DropdownToggleEffect(DropdownToggle)
				end)

				local function newbutton()
					local Dropdown = Instance.new("TextButton")
					local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

					Dropdown.Name = "Dropdown"
					Dropdown.Parent = DownBar
					Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Dropdown.BackgroundTransparency = 1.000
					Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Dropdown.BorderSizePixel = 0
					Dropdown.Size = UDim2.new(0.99000001, 0, 0.5, 0)
					Dropdown.ZIndex = 1000
					Dropdown.Font = Enum.Font.SourceSansSemibold
					Dropdown.Text = "List"
					Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
					Dropdown.TextScaled = false
					Dropdown.TextSize = 13.000
					Dropdown.TextWrapped = true
					Dropdown.TextXAlignment = Enum.TextXAlignment.Left
					TweenService:Create(Dropdown,TweenInfo.new(0.1),{TextTransparency=0.3}):Play()
					Dropdown.ZIndex = 10000
					UIAspectRatioConstraint.Parent = Dropdown
					UIAspectRatioConstraint.AspectRatio = 4.5
					UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

					Dropdown.MouseEnter:Connect(function()
						TweenService:Create(Dropdown,TweenInfo.new(0.1),{TextTransparency=0}):Play()
					end)

					Dropdown.MouseLeave:Connect(function()
						TweenService:Create(Dropdown,TweenInfo.new(0.1),{TextTransparency=0.3}):Play()
					end)

					return Dropdown
				end

				local function refresh()
					for i,v:TextButton in ipairs(DownBar:GetChildren()) do
						if v:isA('TextButton') then
							v:Destroy()
						end
					end

					for i,v in ipairs(data) do
						local button=newbutton()
						button.Text=tostring(v)
						button.MouseButton1Click:Connect(function()
							ValueText.Text=tostring(v)
							choose=v
							callback(v)
						end)

					end
				end

				table.insert(NEVERLOSE.auto_function,auto_updatea)
				refresh()

				local func={}

				function func:Refresh(new)
					data=new or data
					refresh()
				end

				update_section_size()

				function func:Text(a)
					LabelText.Text=tostring(a)
				end

				function func:Get()
					return choose
				end
				return func
			end

			function sectionfunc:Hide()
				TweenService:Create(Section,TweenInfo.new(0.2),{Size=UDim2.new(0.97,0,0,1)}):Play()
				section_value=false
				TweenService:Create(lay,TweenInfo.new(1),{BackgroundTransparency=1}):Play()
				TweenService:Create(Section,TweenInfo.new(1),{BackgroundTransparency=1}):Play()
				TweenService:Create(UIStroke,TweenInfo.new(1),{Transparency=1}):Play()
				TweenService:Create(Header,TweenInfo.new(0.3),{TextTransparency=1}):Play()
			end

			function sectionfunc:Show()
				update_section_size(true)section_value=true
				TweenService:Create(Header,TweenInfo.new(0.3),{TextTransparency=0}):Play()
				TweenService:Create(lay,TweenInfo.new(1),{BackgroundTransparency=0}):Play()
				TweenService:Create(Section,TweenInfo.new(1),{BackgroundTransparency=0}):Play()
				TweenService:Create(UIStroke,TweenInfo.new(1),{Transparency=0}):Play()
			end

			return sectionfunc
		end


		return TabFunctions
	end

	function WindowFunctinos:Delete()
		return ScreenGui:Destroy()
	end

	local dragToggle = nil
	local dragSpeed = 0
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(Frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	Frame_3.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = false
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	InputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)

	return WindowFunctinos
end

function NEVERLOSE:KeySystem(TitleName,LinkKey,callback)
	local Functions = {}

	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Frame_2 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local PasteKey = Instance.new("TextBox")
	local UIStroke = Instance.new("UIStroke")
	local UICorner_3 = Instance.new("UICorner")
	local CopyKey = Instance.new("TextButton")
	local UIStroke_2 = Instance.new("UIStroke")
	local UICorner_4 = Instance.new("UICorner")
	local Submit = Instance.new("TextButton")
	local UIStroke_3 = Instance.new("UIStroke")
	local UICorner_5 = Instance.new("UICorner")

	ScreenGui.Parent = CoreGui
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset=true
	ScreenGui.ZIndexBehavior=Enum.ZIndexBehavior.Global

	Frame.Parent = ScreenGui
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = NEVERLOSE.Themes.BlackgroundColor
	Frame.BackgroundTransparency = 0.100
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0, 0, 0, 0)

	UICorner.Parent = Frame

	Frame_2.Parent = Frame
	Frame_2.BackgroundColor3 = NEVERLOSE.Themes.BlackColor
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(-0.00109238492, 0, 0.081521742, 0)
	Frame_2.Size = UDim2.new(1, 0, 0.913586974, 0)
	Frame_2.ZIndex = 2

	UICorner_2.CornerRadius = UDim.new(0, 2)
	UICorner_2.Parent = Frame_2

	Title.Name = "Title"
	Title.Parent = Frame
	Title.AnchorPoint = Vector2.new(0.5, 0)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.5, 0, 0.143000007, 0)
	Title.Size = UDim2.new(0.899999976, 0, 0.150000006, 0)
	Title.ZIndex = 4
	Title.Font = Enum.Font.SourceSansBold
	Title.Text = TitleName or "Key System"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextStrokeColor3 = Color3.fromRGB(0, 255, 255)
	Title.TextStrokeTransparency = 0.860
	Title.TextWrapped = true

	PasteKey.Name = "PasteKey"
	PasteKey.Parent = Frame
	PasteKey.AnchorPoint = Vector2.new(0.5, 0)
	PasteKey.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
	PasteKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
	PasteKey.BorderSizePixel = 0
	PasteKey.Position = UDim2.new(0.50000006, 0, 0.373641312, 0)
	PasteKey.Size = UDim2.new(0.899999976, 0, 0.25, 0)
	PasteKey.ZIndex = 4
	PasteKey.ClearTextOnFocus = false
	PasteKey.Font = Enum.Font.SourceSansSemibold
	PasteKey.Text = ""
	PasteKey.TextColor3 = Color3.fromRGB(255, 255, 255)
	PasteKey.TextScaled = true
	PasteKey.TextSize = 14.000
	PasteKey.TextTransparency = 0.390
	PasteKey.TextWrapped = true

	UIStroke.Color = NEVERLOSE.Themes.StrokeColor
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Parent = PasteKey

	UICorner_3.CornerRadius = UDim.new(0, 3)
	UICorner_3.Parent = PasteKey

	CopyKey.Name = "CopyKey"
	CopyKey.Parent = Frame
	CopyKey.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
	CopyKey.BackgroundTransparency = 0.200
	CopyKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CopyKey.BorderSizePixel = 0
	CopyKey.Position = UDim2.new(0.0489396416, 0, 0.754076123, 0)
	CopyKey.Size = UDim2.new(0.42039147, 0, 0.182608709, 0)
	CopyKey.ZIndex = 5
	CopyKey.Font = Enum.Font.SourceSansBold
	CopyKey.Text = "Get Key"
	CopyKey.TextColor3 = Color3.fromRGB(255, 255, 255)
	CopyKey.TextScaled = true
	CopyKey.TextSize = 14.000
	CopyKey.TextStrokeColor3 = Color3.fromRGB(0, 255, 247)
	CopyKey.TextStrokeTransparency = 0.760
	CopyKey.TextWrapped = true

	UIStroke_2.Color = NEVERLOSE.Themes.StrokeColor
	UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_2.Parent = CopyKey

	UICorner_4.CornerRadius = UDim.new(0, 3)
	UICorner_4.Parent = CopyKey

	Submit.Name = "Submit"
	Submit.Parent = Frame
	Submit.BackgroundColor3 = NEVERLOSE.Themes.ButtonBlackgroundColor
	Submit.BackgroundTransparency = 0.200
	Submit.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Submit.BorderSizePixel = 0
	Submit.Position = UDim2.new(0.517944396, 0, 0.754076123, 0)
	Submit.Size = UDim2.new(0.428548098, 0, 0.182608709, 0)
	Submit.ZIndex = 5
	Submit.Font = Enum.Font.SourceSansBold
	Submit.Text = "Submit"
	Submit.TextColor3 = Color3.fromRGB(255, 255, 255)
	Submit.TextScaled = true
	Submit.TextSize = 14.000
	Submit.TextStrokeColor3 = Color3.fromRGB(0, 255, 247)
	Submit.TextStrokeTransparency = 0.760
	Submit.TextWrapped = true

	UIStroke_3.Color = NEVERLOSE.Themes.StrokeColor
	UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_3.Parent = Submit

	UICorner_5.CornerRadius = UDim.new(0, 3)
	UICorner_5.Parent = Submit

	TweenService:Create(Frame,TweenInfo.new(0.4,Enum.EasingStyle.Quint),{Size=UDim2.new(0.35, 0, 0.35, 0)}):Play()

	CopyKey.MouseButton1Click:Connect(function()
			local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://6895079853"
Sound2.Looped = false
Sound2.Volume = 1
Sound2.Parent = game:GetService("SoundService")
Sound2:Play()

Sound2.Ended:Connect(function()
	Sound2:Destroy()
     end)
		pcall(function()
			setclipboard(tostring(LinkKey))
		end)

		pcall(function()
			toclipboard(tostring(LinkKey))
		end)
	end)

	local asd=false

	local function_call

	Submit.MouseButton1Click:Connect(function()
			local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://6895079853"
Sound2.Looped = false
Sound2.Volume = 1
Sound2.Parent = game:GetService("SoundService")
Sound2:Play()

Sound2.Ended:Connect(function()
	Sound2:Destroy()
     end)
		if asd then
			return
		end

		asd=true
		if callback(PasteKey.Text) then
			TweenService:Create(Frame,TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{Size=UDim2.new(0,0,0,0)}):Play()
			function_call=function_call or function()

			end

			task.spawn(function()
				task.wait(.45)
				ScreenGui:Destroy()
			end)

			function_call(PasteKey.Text)

			return

		else
			PasteKey.Text=''

		end

		asd=false
	end)

	task.spawn(function()
		local dragToggle = nil
		local dragSpeed = 0.2
		local dragStart = nil
		local startPos = nil

		local function updateInput(input)
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
				startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			game:GetService('TweenService'):Create(Frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end

		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not toggle_valu then 
				dragToggle = false
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		InputService.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				if dragToggle then
					updateInput(input)
				end
			end
		end)
	end)

	function Functions:Callback(func)
		function_call=func
	end

	return Functions
end

function NEVERLOSE:Notification()
	local Notification_ = {
		MaxNotifications = 5
	}

	local Notification = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")

	Notification.Name = "Notification"
	Notification.Parent = CoreGui
	Notification.ResetOnSpawn = false
	Notification.ZIndexBehavior=Enum.ZIndexBehavior.Global
	Notification.IgnoreGuiInset=true
	ProtectGui(Notification)

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = Notification
	MainFrame.AnchorPoint = Vector2.new(1, 1)
	MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainFrame.BackgroundTransparency = 1.000
	MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.99000001, 0, 0.99000001, 0)
	MainFrame.Size = UDim2.new(0.35, 0, 0.100000001, 0)

	UIListLayout.Parent = MainFrame
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout.Padding = UDim.new(0, 4)
	function Notification_:Notify(Type,Head,Body,countdown)
		if (#MainFrame:GetChildren()) > Notification_.MaxNotifications then
			return false
		end

		local typeicon = {
			['error'] = "9072920609",
			['success'] = "9073052584",
			['warning'] = "9072448788",
			['info'] = "9072944922"
		}

		local iconId = typeicon[tostring(Type or "error"):lower()]

		local Notify = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local UIStroke = Instance.new("UIStroke")
		local IconImage = Instance.new("ImageLabel")
		local HeadTitle = Instance.new("TextLabel")
		local BodyTitle = Instance.new("TextLabel")
		local Countdown = Instance.new("Frame")
		local CloseButton = Instance.new("ImageButton")

		Notify.Name = "Notify"
		Notify.Parent = MainFrame
		Notify.BackgroundColor3 = NEVERLOSE.Themes.SectionColor
		Notify.BackgroundTransparency = 0.100
		Notify.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Notify.BorderSizePixel = 0
		Notify.ClipsDescendants = true
		Notify.Size = UDim2.new(0.75,0,0,0)

		UICorner.CornerRadius = UDim.new(0, 3)
		UICorner.Parent = Notify

		UIStroke.Color = NEVERLOSE.Themes.StrokeColor
		UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke.Parent = Notify

		IconImage.Name = "IconImage"
		IconImage.Parent = Notify
		IconImage.AnchorPoint = Vector2.new(0.5, 0.5)
		IconImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		IconImage.BackgroundTransparency = 1.000
		IconImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
		IconImage.BorderSizePixel = 0
		IconImage.Position = UDim2.new(0.0549999997, 0, 0.5, 0)
		IconImage.Size = UDim2.new(0.850000024, 0, 0.850000024, 0)
		IconImage.SizeConstraint = Enum.SizeConstraint.RelativeYY
		IconImage.ZIndex = 5
		IconImage.Image = "rbxassetid://"..tostring(iconId)
		IconImage.ImageTransparency=1
		IconImage.ImageColor3=NEVERLOSE.Themes.MainColor

		HeadTitle.Name = "HeadTitle"
		HeadTitle.Parent = Notify
		HeadTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		HeadTitle.BackgroundTransparency = 1.000
		HeadTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
		HeadTitle.BorderSizePixel = 0
		HeadTitle.Position = UDim2.new(0.130612239, 0, 0.0750002638, 0)
		HeadTitle.Size = UDim2.new(0.738775492, 0, 0.369384199, 0)
		HeadTitle.ZIndex = 7
		HeadTitle.Font = Enum.Font.SourceSansSemibold
		HeadTitle.Text = Head or "Head"
		HeadTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
		HeadTitle.TextScaled = true
		HeadTitle.TextSize = 14.000
		HeadTitle.TextWrapped = true
		HeadTitle.TextXAlignment = Enum.TextXAlignment.Left
		HeadTitle.TextTransparency=1
		BodyTitle.Name = "BodyTitle"
		BodyTitle.Parent = Notify
		BodyTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		BodyTitle.BackgroundTransparency = 1.000
		BodyTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
		BodyTitle.BorderSizePixel = 0
		BodyTitle.Position = UDim2.new(0.130612239, 0, 0.444384605, 0)
		BodyTitle.Size = UDim2.new(0.738775492, 0, 0.47554332, 0)
		BodyTitle.ZIndex = 7
		BodyTitle.Font = Enum.Font.SourceSansSemibold
		BodyTitle.Text = Body or "Body"
		BodyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
		BodyTitle.TextScaled = true
		BodyTitle.TextSize = 14.000
		BodyTitle.TextTransparency = 1
		BodyTitle.TextWrapped = true
		BodyTitle.TextXAlignment = Enum.TextXAlignment.Left

		Countdown.Name = "Countdown"
		Countdown.Parent = Notify
		Countdown.AnchorPoint = Vector2.new(0, 1)
		Countdown.BackgroundColor3 = NEVERLOSE.Themes.MainColor
		Countdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Countdown.BorderSizePixel = 0
		Countdown.Position = UDim2.new(0, 0, 1.07500005, 0)
		Countdown.Size = UDim2.new(0, 0, 0.100000001, 0)
		Countdown.ZIndex = 6
		Countdown.BackgroundTransparency=1

		local currenttime = 0.3
		local function start_vu()
			local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://5153734608"
Sound2.Looped = false
Sound2.Volume = 1
Sound2.Parent = game:GetService("SoundService")
Sound2:Play()

Sound2.Ended:Connect(function()
	Sound2:Destroy()
     end)
			TweenService:Create(Notify,TweenInfo.new(currenttime/2,Enum.EasingStyle.Quint),{Size=UDim2.new(0.99,0,0.75,0)}):Play()
			TweenService:Create(UIStroke,TweenInfo.new(currenttime,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Transparency=0}):Play()
			TweenService:Create(HeadTitle,TweenInfo.new(currenttime,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{TextTransparency=0}):Play()
			TweenService:Create(BodyTitle,TweenInfo.new(currenttime,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{TextTransparency=0.3}):Play()
			TweenService:Create(Countdown,TweenInfo.new(currenttime,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{BackgroundTransparency=0}):Play()
			TweenService:Create(IconImage,TweenInfo.new(currenttime,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{ImageTransparency=0}):Play()
			TweenService:Create(CloseButton,TweenInfo.new(currenttime,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{ImageTransparency=0}):Play()
		end


		local function end_vu()
			local trantween = TweenService:Create(Notify,TweenInfo.new(currenttime,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Size=UDim2.new(0.75,0,0,0)})
			TweenService:Create(UIStroke,TweenInfo.new(currenttime/2,Enum.EasingStyle.Quad),{Transparency=1}):Play()
			TweenService:Create(HeadTitle,TweenInfo.new(currenttime/2,Enum.EasingStyle.Quad),{TextTransparency=1}):Play()
			TweenService:Create(BodyTitle,TweenInfo.new(currenttime/2,Enum.EasingStyle.Quad),{TextTransparency=1}):Play()
			TweenService:Create(Countdown,TweenInfo.new(currenttime/2,Enum.EasingStyle.Quad),{BackgroundTransparency=1}):Play()
			TweenService:Create(IconImage,TweenInfo.new(currenttime/2,Enum.EasingStyle.Quad),{ImageTransparency=1}):Play()
			TweenService:Create(CloseButton,TweenInfo.new(currenttime/2,Enum.EasingStyle.Quad),{ImageTransparency=1}):Play()
			trantween:Play()

			trantween.Completed:Connect(function()
				Notify:Destroy()
			end)
		end

		start_vu()

		task.spawn(function()
			CloseButton.MouseButton1Click:Connect(end_vu)

			if countdown then

				pcall(function()
					task.wait(1.3)
					local tween = TweenService:Create(Countdown,TweenInfo.new(tonumber(countdown) or 3,Enum.EasingStyle.Linear),{Size=UDim2.new(1,0,0.1,0)
					})

					tween:Play()

					tween.Completed:Wait()
					task.wait(0.5)
					end_vu()
				end)
			end
		end)
	end

	return Notification_
end

task.spawn(function()
	_G.index_neverlose=true
	while _G.index_neverlose do task.wait(0)
		pcall(function()
			for i,v in ipairs(NEVERLOSE.auto_function) do task.wait()
				pcall(function()
					task.spawn(v)
				end)
			end
		end)
	end
end)

return NEVERLOSE
