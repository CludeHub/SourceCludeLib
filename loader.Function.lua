local LOADER = {}

function LOADER:Add(callback)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local imageUrl = Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)

local NEVERLOSE_Loader_Service_2535 = Instance.new("ScreenGui")
NEVERLOSE_Loader_Service_2535.Name = "Loader_Service"
NEVERLOSE_Loader_Service_2535.Parent = game.CoreGui

local LOADERFrame_5373 = Instance.new("Frame")
LOADERFrame_5373.Name = "LOADERFrame"
LOADERFrame_5373.Size = UDim2.new(0,640,0,540)
LOADERFrame_5373.Position = UDim2.new(0.34,0,0.5,0)
LOADERFrame_5373.BackgroundColor3 = Color3.fromRGB(1,17,33)
LOADERFrame_5373.BackgroundTransparency = 0.2
LOADERFrame_5373.BorderSizePixel = 1
LOADERFrame_5373.BorderColor3 = Color3.fromRGB(27,42,53)
LOADERFrame_5373.AnchorPoint = Vector2.new(0.5,0.5)
LOADERFrame_5373.Active = true
LOADERFrame_5373.Draggable = true
LOADERFrame_5373.ZIndex = 1
LOADERFrame_5373.Parent = NEVERLOSE_Loader_Service_2535

local UICorner_Loader = Instance.new("UICorner", LOADERFrame_5373)
UICorner_Loader.CornerRadius = UDim.new(0,2)

-- Optimized Dump of NEVERLOSE_Loader_Service UI
local Close_9943 = Instance.new("TextButton")
Close_9943.Name = "Close"
Close_9943.Size = UDim2.new(0,30,0,30)
Close_9943.Position = UDim2.new(0.8999999761581421,30,0,4)
Close_9943.BackgroundColor3 = Color3.fromRGB(163,162,165)
Close_9943.BackgroundTransparency = 1
Close_9943.ClipsDescendants = false
Close_9943.Active = true
Close_9943.Selectable = true
Close_9943.Text = "x"
Close_9943.Font = Enum.Font.Legacy
Close_9943.TextSize = 20
Close_9943.TextColor3 = Color3.fromRGB(255,255,255)
Close_9943.TextStrokeColor3 = Color3.fromRGB(255,255,255)
Close_9943.TextTransparency = 0.30000001192092896
Close_9943.TextWrapped = false
Close_9943.RichText = false
Close_9943.TextScaled = false
Close_9943.TextXAlignment = Enum.TextXAlignment.Center
Close_9943.TextYAlignment = Enum.TextYAlignment.Center
Close_9943.TextDirection = Enum.TextDirection.Auto
Close_9943.Parent = LOADERFrame_5373

  -- Optimized Dump of NEVERLOSE_Loader_Service UI
local TabButton_4903 = Instance.new("Frame")
TabButton_4903.Name = "TabButton"
TabButton_4903.Size = UDim2.new(0.30000001192092896,-6,0.0500999999910593033,0)
TabButton_4903.Position = UDim2.new(0,3,0.14000000149011612,9)
TabButton_4903.BackgroundColor3 = Color3.fromRGB(0,170,255)
TabButton_4903.BackgroundTransparency = 0.5
TabButton_4903.ClipsDescendants = false
TabButton_4903.Active = true
TabButton_4903.Selectable = false
local Corner_2322 = Instance.new("UICorner")
Corner_2322.CornerRadius = UDim.new(0,6)
Corner_2322.Parent = TabButton_4903
TabButton_4903.Parent = LOADERFrame_5373

  -- Optimized Dump of NEVERLOSE_Loader_Service UI
local TabLabels_6459 = Instance.new("TextLabel")
TabLabels_6459.Name = "TabLabels"
TabLabels_6459.Size = UDim2.new(0.30000001192092896,0,0.03999999910593033,0)
TabLabels_6459.Position = UDim2.new(0,0,0.12090012431144714,0)
TabLabels_6459.BackgroundColor3 = Color3.fromRGB(163,162,165)
TabLabels_6459.BackgroundTransparency = 1
TabLabels_6459.ClipsDescendants = false
TabLabels_6459.Active = true
TabLabels_6459.Selectable = false
TabLabels_6459.Text = "Subscription"
TabLabels_6459.Font = Enum.Font.SourceSansBold
TabLabels_6459.TextSize = 14
TabLabels_6459.TextColor3 = Color3.fromRGB(93,155,196)
TabLabels_6459.TextTransparency = 0.6000000238418579
TabLabels_6459.TextWrapped = false
TabLabels_6459.RichText = false
TabLabels_6459.TextScaled = false
TabLabels_6459.TextXAlignment = Enum.TextXAlignment.Left
TabLabels_6459.TextYAlignment = Enum.TextYAlignment.Center
TabLabels_6459.TextDirection = Enum.TextDirection.LeftToRight
TabLabels_6459.Parent = LOADERFrame_5373

  
-- Optimized Dump of NEVERLOSE_Loader_Service UI
local TabLabel_9765 = Instance.new("TextLabel")
TabLabel_9765.Name = "TabLabel"
TabLabel_9765.Size = UDim2.new(0.12000011652708054,0,0.03999870643019676,0)
TabLabel_9765.Position = UDim2.new(0,0,0.144000000149011612,9)
TabLabel_9765.BackgroundColor3 = Color3.fromRGB(163,162,165)
TabLabel_9765.BackgroundTransparency = 1
TabLabel_9765.ClipsDescendants = false
TabLabel_9765.Active = true
TabLabel_9765.Selectable = false
TabLabel_9765.ZIndex = 4
TabLabel_9765.Text = "CS:GO"
TabLabel_9765.Font = Enum.Font.SourceSansBold
TabLabel_9765.TextSize = 8
TabLabel_9765.TextColor3 = Color3.fromRGB(255,255,255)
TabLabel_9765.TextWrapped = true
TabLabel_9765.RichText = false
TabLabel_9765.TextScaled = true
TabLabel_9765.TextXAlignment = Enum.TextXAlignment.Center
TabLabel_9765.TextYAlignment = Enum.TextYAlignment.Center
TabLabel_9765.TextDirection = Enum.TextDirection.Auto
TabLabel_9765.Parent = LOADERFrame_5373
  
local Container_6323 = Instance.new("Frame")
Container_6323.Name = "Container"
Container_6323.Size = UDim2.new(0.7,0,1,0)
Container_6323.Position = UDim2.new(0.3,0,0,0)
Container_6323.BackgroundColor3 = Color3.fromRGB(9,9,19)
Container_6323.BorderSizePixel = 1
Container_6323.BorderColor3 = Color3.fromRGB(27,42,53)
Container_6323.ZIndex = 1
Container_6323.Parent = LOADERFrame_5373

local UICorner_Container = Instance.new("UICorner", Container_6323)
UICorner_Container.CornerRadius = UDim.new(0,2)

local Header_2835 = Instance.new("Frame")
Header_2835.Name = "Header"
Header_2835.Size = UDim2.new(1,0,0.1,0)
Header_2835.BackgroundColor3 = Color3.fromRGB(7,7,17)
Header_2835.BorderSizePixel = 1
Header_2835.BorderColor3 = Color3.fromRGB(27,42,53)
Header_2835.ZIndex = 1
Header_2835.Parent = Container_6323

local UICorner_Header = Instance.new("UICorner", Header_2835)
UICorner_Header.CornerRadius = UDim.new(0,2)

local title_4673 = Instance.new("TextLabel")
title_4673.Name = "title"
title_4673.Size = UDim2.new(0.17,0,0.8,0)
title_4673.Position = UDim2.new(0.04,0,0,0)
title_4673.BackgroundTransparency = 1
title_4673.Text = "CS:GO"
title_4673.Font = Enum.Font.Legacy
title_4673.TextSize = 39
title_4673.TextColor3 = Color3.fromRGB(255,255,255)
title_4673.TextTransparency = 0.3
title_4673.TextScaled = true
title_4673.ZIndex = 1
title_4673.Parent = Header_2835

local outlo_1146 = Instance.new("Frame")
outlo_1146.Name = "outlo"
outlo_1146.Size = UDim2.new(1,0,0,1)
outlo_1146.Position = UDim2.new(0,0,1,0)
outlo_1146.BackgroundColor3 = Color3.fromRGB(0,76,99)
outlo_1146.BackgroundTransparency = 0.876
outlo_1146.BorderSizePixel = 1
outlo_1146.BorderColor3 = Color3.fromRGB(27,42,53)
outlo_1146.ZIndex = 1
outlo_1146.Parent = Header_2835

local Section99_5226 = Instance.new("Frame")
Section99_5226.Name = "Section99"
Section99_5226.Size = UDim2.new(0.675,0,0.45,0)
Section99_5226.Position = UDim2.new(0.31,0,0.149,0)
Section99_5226.BackgroundColor3 = Color3.fromRGB(0,17,35)
Section99_5226.BorderSizePixel = 1
Section99_5226.BorderColor3 = Color3.fromRGB(27,42,53)
Section99_5226.ZIndex = 5
Section99_5226.Parent = LOADERFrame_5373

local UICorner_Section = Instance.new("UICorner", Section99_5226)
UICorner_Section.CornerRadius = UDim.new(0,2)

local Stroke_2100 = Instance.new("UIStroke", Section99_5226)
Stroke_2100.Color = Color3.fromRGB(0,35,50)
Stroke_2100.Thickness = 1

local sub_6788 = Instance.new("TextLabel")
sub_6788.Name = "sub"
sub_6788.Size = UDim2.new(0.2,0,0.1,0)
sub_6788.Position = UDim2.new(0,0,0.7,0)
sub_6788.BackgroundTransparency = 1
sub_6788.Text = "Subscription"
sub_6788.Font = Enum.Font.SourceSansBold
sub_6788.TextSize = 8
sub_6788.TextColor3 = Color3.fromRGB(255,255,255)
sub_6788.TextScaled = true
sub_6788.ZIndex = 87
sub_6788.Parent = Section99_5226

local desc_8598 = Instance.new("TextLabel")
desc_8598.Name = "desc"
desc_8598.Size = UDim2.new(0.2,0,0.1,0)
desc_8598.Text = "Description"
desc_8598.Font = Enum.Font.SourceSansBold
desc_8598.TextSize = 8
desc_8598.TextColor3 = Color3.fromRGB(255,255,255)
desc_8598.TextTransparency = 0.1
desc_8598.BackgroundTransparency = 1
desc_8598.TextScaled = true
desc_8598.ZIndex = 20
desc_8598.Parent = Section99_5226

local Box_4580 = Instance.new("TextBox")
Box_4580.Name = "Box"
Box_4580.Size = UDim2.new(0.986,0,0.56,0)
Box_4580.Position = UDim2.new(0.008,0,0.13,0)
Box_4580.BackgroundTransparency = 1
Box_4580.Text = [[
Neverlose for CS:GO will make you feel like a real professional.
One of the best legit and rage aimbots will allow you to kill all your enemies, and incredibly beautiful and customizable visuals will give your game new colors.
]]
Box_4580.MultiLine = true
Box_4580.TextWrapped = true
Box_4580.Font = Enum.Font.SourceSansBold
Box_4580.TextScaled = true
Box_4580.TextColor3 = Color3.fromRGB(255,255,255)
Box_4580.TextTransparency = 0.3
Box_4580.TextXAlignment = Enum.TextXAlignment.Left
Box_4580.TextYAlignment = Enum.TextYAlignment.Top
Box_4580.TextDirection = Enum.TextDirection.LeftToRight
Box_4580.ZIndex = 29
Box_4580.Parent = Section99_5226
Box_4580.Active = false

local box2_9082 = Instance.new("TextBox")
box2_9082.Name = "box2"
box2_9082.Size = UDim2.new(0.968,0,0.15,0)
box2_9082.Position = UDim2.new(0.02,0,0.824,0)
box2_9082.BackgroundTransparency = 1
box2_9082.Text = "You do not have a subscription."
box2_9082.Font = Enum.Font.SourceSansBold
box2_9082.TextSize = 9
box2_9082.TextColor3 = Color3.fromRGB(255,255,255)
box2_9082.TextTransparency = 0.3
box2_9082.TextXAlignment = Enum.TextXAlignment.Left
box2_9082.TextYAlignment = Enum.TextYAlignment.Top
box2_9082.TextDirection = Enum.TextDirection.LeftToRight
box2_9082.ZIndex = 89
box2_9082.Active = false
box2_9082.Parent = Section99_5226

local outlo_bruh = Instance.new("Frame", Section99_5226)
outlo_bruh.Name = "outlo_bruh"
outlo_bruh.Size = UDim2.new(1,0,0,1)
outlo_bruh.Position = UDim2.new(0,0,0.1,0)
outlo_bruh.BackgroundColor3 = Color3.fromRGB(0,76,99)
outlo_bruh.BackgroundTransparency = 0.782
outlo_bruh.ZIndex = 19

local outlo_83 = Instance.new("Frame", Section99_5226)
outlo_83.Name = "outlo_83"
outlo_83.Size = UDim2.new(1,0,0,1)
outlo_83.Position = UDim2.new(0,0,0.806,0)
outlo_83.BackgroundColor3 = Color3.fromRGB(0,76,99)
outlo_83.BackgroundTransparency = 0.782
outlo_83.ZIndex = 99

local ImageLabel_8773 = Instance.new("ImageLabel", LOADERFrame_5373)
ImageLabel_8773.Name = "ImageLabel"
ImageLabel_8773.Size = UDim2.new(0.06,0,0.07,0)
ImageLabel_8773.Position = UDim2.new(0.008,0,0.915,0)
ImageLabel_8773.BackgroundTransparency = 1
ImageLabel_8773.Image = imageUrl

local UICorner_Image = Instance.new("UICorner", ImageLabel_8773)
UICorner_Image.CornerRadius = UDim.new(1,0)

local TitleHeader_4414 = Instance.new("TextLabel", LOADERFrame_5373)
TitleHeader_4414.Name = "TitleHeader"
TitleHeader_4414.Size = UDim2.new(0.3,0,0.08,0)
TitleHeader_4414.Text = "NEVERLOSE"
TitleHeader_4414.Font = Enum.Font.GothamBlack
TitleHeader_4414.TextSize = 8
TitleHeader_4414.TextColor3 = Color3.fromRGB(255,255,255)
TitleHeader_4414.TextStrokeColor3 = Color3.fromRGB(0,251,255)
TitleHeader_4414.TextStrokeTransparency = 0.78
TitleHeader_4414.TextScaled = true
TitleHeader_4414.BackgroundTransparency = 1

local UsernameLo_2940 = Instance.new("TextLabel", LOADERFrame_5373)
UsernameLo_2940.Name = "UsernameLo"
UsernameLo_2940.Size = UDim2.new(0.2,0,0.049,0)
UsernameLo_2940.Position = UDim2.new(0.078,0,0.92,0)
UsernameLo_2940.BackgroundTransparency = 1
UsernameLo_2940.Text = game.Players.LocalPlayer.Name
UsernameLo_2940.Font = Enum.Font.SourceSansBold
UsernameLo_2940.TextSize = 8
UsernameLo_2940.TextColor3 = Color3.fromRGB(255,255,255)
UsernameLo_2940.TextScaled = true

local outlo_2 = Instance.new("Frame", LOADERFrame_5373)
outlo_2.Name = "outlo_2"
outlo_2.Size = UDim2.new(0.3,0,0,1)
outlo_2.Position = UDim2.new(0,0,0.899,0)
outlo_2.BackgroundColor3 = Color3.fromRGB(0,76,99)
outlo_2.BackgroundTransparency = 0.4
outlo_2.ZIndex = 1

local Button_3290 = Instance.new("Frame")
Button_3290.Name = "Button"
Button_3290.Size = UDim2.new(0.37000003457069397, 0, 0.07999999821186066, 0)
Button_3290.Position = UDim2.new(0.3005000054836273, 0, 0.8600000143051147, 0)
Button_3290.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
Button_3290.BackgroundTransparency = 1
Button_3290.BorderSizePixel = 1
Button_3290.BorderColor3 = Color3.fromRGB(27, 42, 53)
Button_3290.ZIndex = 33
Button_3290.Parent = Container_6323

local Start_4076 = Instance.new("TextButton")
Start_4076.Name = "Start"
Start_4076.Size = UDim2.new(1, 0, 1, 0)
Start_4076.BackgroundColor3 = Color3.fromRGB(0, 172, 255)
Start_4076.BorderSizePixel = 0
Start_4076.BorderColor3 = Color3.fromRGB(27, 42, 53)
Start_4076.ZIndex = 99
Start_4076.Text = ""
Start_4076.Font = Enum.Font.SourceSansBold
Start_4076.TextSize = 8
Start_4076.TextColor3 = Color3.fromRGB(27, 42, 53)
Start_4076.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
Start_4076.TextStrokeTransparency = 1
Start_4076.AutoButtonColor = false

local UICorner_6058 = Instance.new("UICorner")
UICorner_6058.Name = "UICorner"
UICorner_6058.Parent = Start_4076
UICorner_6058.CornerRadius = UDim.new(0, 5)

local icon_7544 = Instance.new("ImageLabel")
icon_7544.Name = "icon"
icon_7544.Size = UDim2.new(0.2, 0, 0.8, 0)
icon_7544.Position = UDim2.new(0.06, 0, 0.1, 0)
icon_7544.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
icon_7544.BackgroundTransparency = 1
icon_7544.BorderSizePixel = 1
icon_7544.BorderColor3 = Color3.fromRGB(27, 42, 53)
icon_7544.ZIndex = 999
icon_7544.ScaleType = Enum.ScaleType.Stretch
icon_7544.Image = "rbxthumb://type=Asset&id=101432810803389&w=420&h=420"
icon_7544.Parent = Start_4076

local LabelTex_2935 = Instance.new("TextLabel")
LabelTex_2935.Name = "LabelTex"
LabelTex_2935.Size = UDim2.new(0.46, 0, 0.56, 0)
LabelTex_2935.Position = UDim2.new(0.4, -10, 0.26, 0)
LabelTex_2935.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
LabelTex_2935.BackgroundTransparency = 1
LabelTex_2935.BorderSizePixel = 1
LabelTex_2935.BorderColor3 = Color3.fromRGB(27, 42, 53)
LabelTex_2935.ZIndex = 123
LabelTex_2935.Text = "Start"
LabelTex_2935.Font = Enum.Font.SourceSansBold
LabelTex_2935.TextSize = 8
LabelTex_2935.TextColor3 = Color3.fromRGB(255, 255, 255)
LabelTex_2935.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
LabelTex_2935.TextStrokeTransparency = 1
LabelTex_2935.TextWrapped = true
LabelTex_2935.TextScaled = true
LabelTex_2935.Parent = Start_4076

Start_4076.Parent = Button_3290

Start_4076.MouseButton1Click:Connect(function()
local Sound2 = Instance.new("Sound")
Sound2.SoundId = "rbxassetid://6895079853"
Sound2.Looped = false
Sound2.Volume = 1
Sound2.Parent = game:GetService("SoundService")
Sound2:Play()
Sound2.Ended:Connect(function()
Sound2:Destroy()
end)
NEVERLOSE_Loader_Service_2535:Destroy()
if callback then
callback()
end
end)

end

return LOADER
