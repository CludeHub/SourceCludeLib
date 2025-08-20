local Loader = {}

function Loader:Function(paid, gamepassLink, gamepassId, scriptToRun)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local thumbnail, isReady = Players:GetUserThumbnailAsync(
    LocalPlayer.UserId,
    Enum.ThumbnailType.HeadShot,
    Enum.ThumbnailSize.Size150x150
)

local NL_LOADER_8823 = Instance.new("ScreenGui")
NL_LOADER_8823.Name = "NL_LOADER"
local TweenService = game:GetService("TweenService")

local Frame_9227 = Instance.new("ImageLabel")
Frame_9227.Name = "Frame"
Frame_9227.Size = UDim2.new(0,0,0,0) -- start fully closed
Frame_9227.Position = UDim2.new(0,0,0,0)
Frame_9227.BackgroundColor3 = Color3.fromRGB(162,162,162)
Frame_9227.BorderSizePixel = 0
Frame_9227.Active = true
Frame_9227.Draggable = true
Frame_9227.BorderColor3 = Color3.fromRGB(27,42,53)
Frame_9227.ClipsDescendants = true
Frame_9227.Image = "rbxthumb://type=Asset&id=91016878031860&w=420&h=420"
Frame_9227.ScaleType = Enum.ScaleType.Stretch
Frame_9227.Parent = NL_LOADER_8823

-- Tween settings
local tweenInfo = TweenInfo.new(
    0.7, -- animation speed
    Enum.EasingStyle.Back, -- gives a smooth bounce-like effect
    Enum.EasingDirection.Out
)

-- Target size (final frame size)
local targetSize = UDim2.new(0,870,0,480)

-- Create tween
local tweenOpen = TweenService:Create(Frame_9227, tweenInfo, {Size = targetSize})

-- Play animation
tweenOpen:Play()
        
local Close_4757 = Instance.new("TextButton")
Close_4757.Name = "Close"
Close_4757.Size = UDim2.new(0,30,0,30)
Close_4757.Position = UDim2.new(0.9570000171661377,0,0.00800000037997961,0)
Close_4757.BackgroundColor3 = Color3.fromRGB(162,162,162)
Close_4757.BackgroundTransparency = 1
Close_4757.BorderSizePixel = 1
Close_4757.BorderColor3 = Color3.fromRGB(27,42,53)
Close_4757.ClipsDescendants = false
Close_4757.AnchorPoint = Vector2.new(0,0)
Close_4757.Visible = true
Close_4757.Active = true
Close_4757.Selectable = true
Close_4757.ZIndex = 15
Close_4757.Rotation = 0
Close_4757.LayoutOrder = 0
Close_4757.Text = "X"
Close_4757.Font = Enum.Font.SourceSansBold
Close_4757.TextSize = 8
Close_4757.TextColor3 = Color3.fromRGB(255,255,255)
Close_4757.TextStrokeColor3 = Color3.fromRGB(0,163,255)
Close_4757.TextStrokeTransparency = 0.5
Close_4757.TextTransparency = 0
Close_4757.TextWrapped = true
Close_4757.RichText = false
Close_4757.TextScaled = true
Close_4757.Parent = Frame_9227

Close_4757.MouseButton1Click:Connect(function()
Frame_9227:Destroy()
end)

local Holder1_1729 = Instance.new("ImageLabel")
Holder1_1729.Name = "Holder1"
Holder1_1729.Size = UDim2.new(0.6290000081062317,0,0.49000000953674316,0)
Holder1_1729.Position = UDim2.new(0.009999999776482582,0,0.16200000047683716,0)
Holder1_1729.BackgroundColor3 = Color3.fromRGB(162,162,162)
Holder1_1729.BackgroundTransparency = 0
Holder1_1729.BorderSizePixel = 1
Holder1_1729.BorderColor3 = Color3.fromRGB(27,42,53)
Holder1_1729.ClipsDescendants = false
Holder1_1729.AnchorPoint = Vector2.new(0,0)
Holder1_1729.Visible = true
Holder1_1729.Active = false
Holder1_1729.Selectable = false
Holder1_1729.ZIndex = 4
Holder1_1729.Rotation = 0
Holder1_1729.LayoutOrder = 0
Holder1_1729.Image = "rbxthumb://type=Asset&id=91016878031860&w=420&h=420"
Holder1_1729.ImageTransparency = 0
Holder1_1729.ScaleType = Enum.ScaleType.Stretch
Holder1_1729.SliceScale = 1
Holder1_1729.ResampleMode = Enum.ResamplerMode.Default
local UICorner_8267 = Instance.new("UICorner")
UICorner_8267.Name = "UICorner"
UICorner_8267.Parent = Holder1_1729
local DescBox_5884 = Instance.new("TextBox")
DescBox_5884.Name = "DescBox"
DescBox_5884.Size = UDim2.new(0.9800000190734863,0,0.8999999761581421,0)
DescBox_5884.Position = UDim2.new(0.00800000037997961,0,0.07000000029802322,0)
DescBox_5884.BackgroundColor3 = Color3.fromRGB(162,162,162)
DescBox_5884.BackgroundTransparency = 1
DescBox_5884.BorderSizePixel = 1
DescBox_5884.BorderColor3 = Color3.fromRGB(27,42,53)
DescBox_5884.ClipsDescendants = false
DescBox_5884.AnchorPoint = Vector2.new(0,0)
DescBox_5884.Visible = true
DescBox_5884.Active = true
DescBox_5884.Selectable = true
DescBox_5884.ZIndex = 5
DescBox_5884.Rotation = 0
DescBox_5884.LayoutOrder = 0
DescBox_5884.Text = [[NEVERLOSE.CC UI Library is a sleek, modern, and customizable menu system designed for smooth performance and professional visuals. Inspired by premium cheat menus, it features a minimal yet stylish interface with clean typography, sharp layouts, and adaptive scaling for all PC screen.

With its dark-themed design, smooth transitions, and customizable elements, the menu gives off a polished \"luxury software\" feel. The structure is lightweight, ensuring fast rendering and responsiveness even in complex environments]]
DescBox_5884.Font = Enum.Font.SourceSansBold
DescBox_5884.TextSize = 20
DescBox_5884.TextColor3 = Color3.fromRGB(255,255,255)
DescBox_5884.TextStrokeColor3 = Color3.fromRGB(0,179,255)
DescBox_5884.TextStrokeTransparency = 0.6000000238418579
DescBox_5884.TextTransparency = 0
DescBox_5884.TextWrapped = true
DescBox_5884.RichText = false
DescBox_5884.TextScaled = false
DescBox_5884.Parent = Holder1_1729
-- Stroke for Holder1_1729
local Stroke_7600 = Instance.new("UIStroke")
Stroke_7600.Color = Color3.fromRGB(0,29,54)
Stroke_7600.Thickness = 1
Stroke_7600.Transparency = 0
Stroke_7600.Parent = Holder1_1729
local desc_7429 = Instance.new("TextLabel")
desc_7429.Name = "desc"
desc_7429.Size = UDim2.new(0.4000000059604645,0,0.05000000074505806,0)
desc_7429.Position = UDim2.new(0.009999999776482582,0,0,0)
desc_7429.BackgroundColor3 = Color3.fromRGB(162,162,162)
desc_7429.BackgroundTransparency = 1
desc_7429.BorderSizePixel = 1
desc_7429.BorderColor3 = Color3.fromRGB(27,42,53)
desc_7429.ClipsDescendants = false
desc_7429.AnchorPoint = Vector2.new(0,0)
desc_7429.Visible = true
desc_7429.Active = false
desc_7429.Selectable = false
desc_7429.ZIndex = 5
desc_7429.Rotation = 0
desc_7429.LayoutOrder = 0
desc_7429.Text = "Description"
desc_7429.Font = Enum.Font.SourceSansBold
desc_7429.TextSize = 8
desc_7429.TextColor3 = Color3.fromRGB(255,255,255)
desc_7429.TextStrokeColor3 = Color3.fromRGB(0,0,0)
desc_7429.TextStrokeTransparency = 1
desc_7429.TextTransparency = 0
desc_7429.TextWrapped = true
desc_7429.RichText = false
desc_7429.TextScaled = true
desc_7429.Parent = Holder1_1729
local Line_7170 = Instance.new("Frame")
Line_7170.Name = "Line"
Line_7170.Size = UDim2.new(1,0,0,1)
Line_7170.Position = UDim2.new(0,0,0.05000000074505806,0)
Line_7170.BackgroundColor3 = Color3.fromRGB(0,46,72)
Line_7170.BackgroundTransparency = 0
Line_7170.BorderSizePixel = 0
Line_7170.BorderColor3 = Color3.fromRGB(27,42,53)
Line_7170.ClipsDescendants = false
Line_7170.AnchorPoint = Vector2.new(0,0)
Line_7170.Visible = true
Line_7170.Active = false
Line_7170.Selectable = false
Line_7170.ZIndex = 5
Line_7170.Rotation = 0
Line_7170.LayoutOrder = 0
Line_7170.Parent = Holder1_1729
Holder1_1729.Parent = Frame_9227
local imgholder_7507 = Instance.new("ImageLabel")
imgholder_7507.Name = "imgholder"
imgholder_7507.Size = UDim2.new(0.27000001072883606,0,0.3100000023841858,0)
imgholder_7507.Position = UDim2.new(0.008999999612569809,0,0.6790000200271606,0)
imgholder_7507.BackgroundColor3 = Color3.fromRGB(162,162,162)
imgholder_7507.BackgroundTransparency = 1
imgholder_7507.BorderSizePixel = 1
imgholder_7507.BorderColor3 = Color3.fromRGB(27,42,53)
imgholder_7507.ClipsDescendants = false
imgholder_7507.AnchorPoint = Vector2.new(0,0)
imgholder_7507.Visible = true
imgholder_7507.Active = false
imgholder_7507.Selectable = false
imgholder_7507.ZIndex = 1
imgholder_7507.Rotation = 0
imgholder_7507.LayoutOrder = 0
imgholder_7507.Image = "rbxthumb://type=Asset&id=84280913592738&w=420&h=420"
imgholder_7507.ImageTransparency = 0
imgholder_7507.ScaleType = Enum.ScaleType.Stretch
imgholder_7507.SliceScale = 1
imgholder_7507.ResampleMode = Enum.ResamplerMode.Default
local UICorner_2020 = Instance.new("UICorner")
UICorner_2020.Name = "UICorner"
UICorner_2020.Parent = imgholder_7507
-- Stroke for imgholder_7507
local Stroke_5980 = Instance.new("UIStroke")
Stroke_5980.Color = Color3.fromRGB(0,29,54)
Stroke_5980.Thickness = 2
Stroke_5980.Transparency = 0
Stroke_5980.Parent = imgholder_7507
imgholder_7507.Parent = Frame_9227
local imgholder3_7732 = Instance.new("ImageLabel")
imgholder3_7732.Name = "imgholder3"
imgholder3_7732.Size = UDim2.new(0.27000001072883606,0,0.3100000023841858,0)
imgholder3_7732.Position = UDim2.new(0.6100000143051147,0,0.6790000200271606,0)
imgholder3_7732.BackgroundColor3 = Color3.fromRGB(162,162,162)
imgholder3_7732.BackgroundTransparency = 1
imgholder3_7732.BorderSizePixel = 1
imgholder3_7732.BorderColor3 = Color3.fromRGB(27,42,53)
imgholder3_7732.ClipsDescendants = false
imgholder3_7732.AnchorPoint = Vector2.new(0,0)
imgholder3_7732.Visible = true
imgholder3_7732.Active = false
imgholder3_7732.Selectable = false
imgholder3_7732.ZIndex = 1
imgholder3_7732.Rotation = 0
imgholder3_7732.LayoutOrder = 0
imgholder3_7732.Image = "rbxthumb://type=Asset&id=76041899061294&w=420&h=420"
imgholder3_7732.ImageTransparency = 0
imgholder3_7732.ScaleType = Enum.ScaleType.Stretch
imgholder3_7732.SliceScale = 1
imgholder3_7732.ResampleMode = Enum.ResamplerMode.Default
local UICorner_1862 = Instance.new("UICorner")
UICorner_1862.Name = "UICorner"
UICorner_1862.Parent = imgholder3_7732
-- Stroke for imgholder3_7732
local Stroke_8997 = Instance.new("UIStroke")
Stroke_8997.Color = Color3.fromRGB(0,29,54)
Stroke_8997.Thickness = 2
Stroke_8997.Transparency = 0
Stroke_8997.Parent = imgholder3_7732
imgholder3_7732.Parent = Frame_9227
local imgholder2_5250 = Instance.new("ImageLabel")
imgholder2_5250.Name = "imgholder2"
imgholder2_5250.Size = UDim2.new(0.27000001072883606,0,0.3100000023841858,0)
imgholder2_5250.Position = UDim2.new(0.3100000023841858,0,0.6790000200271606,0)
imgholder2_5250.BackgroundColor3 = Color3.fromRGB(162,162,162)
imgholder2_5250.BackgroundTransparency = 1
imgholder2_5250.BorderSizePixel = 1
imgholder2_5250.BorderColor3 = Color3.fromRGB(27,42,53)
imgholder2_5250.ClipsDescendants = false
imgholder2_5250.AnchorPoint = Vector2.new(0,0)
imgholder2_5250.Visible = true
imgholder2_5250.Active = false
imgholder2_5250.Selectable = false
imgholder2_5250.ZIndex = 1
imgholder2_5250.Rotation = 0
imgholder2_5250.LayoutOrder = 0
imgholder2_5250.Image = "rbxthumb://type=Asset&id=101168631741325&w=420&h=420"
imgholder2_5250.ImageTransparency = 0
imgholder2_5250.ScaleType = Enum.ScaleType.Stretch
imgholder2_5250.SliceScale = 1
imgholder2_5250.ResampleMode = Enum.ResamplerMode.Default
local UICorner_3184 = Instance.new("UICorner")
UICorner_3184.Name = "UICorner"
UICorner_3184.Parent = imgholder2_5250
-- Stroke for imgholder2_5250
local Stroke_8917 = Instance.new("UIStroke")
Stroke_8917.Color = Color3.fromRGB(0,29,54)
Stroke_8917.Thickness = 2
Stroke_8917.Transparency = 0
Stroke_8917.Parent = imgholder2_5250
imgholder2_5250.Parent = Frame_9227
local UICorner_6967 = Instance.new("UICorner")
UICorner_6967.Name = "UICorner"
UICorner_6967.Parent = Frame_9227
-- Stroke for Frame_9227
local Stroke_4015 = Instance.new("UIStroke")
Stroke_4015.Color = Color3.fromRGB(0,29,54)
Stroke_4015.Thickness = 1
Stroke_4015.Transparency = 0
Stroke_4015.Parent = Frame_9227
local UserData_3381 = Instance.new("Frame")
UserData_3381.Name = "UserData"
UserData_3381.Size = UDim2.new(0,200,0,46)
UserData_3381.Position = UDim2.new(0,4,0,2)
UserData_3381.BackgroundColor3 = Color3.fromRGB(162,162,162)
UserData_3381.BackgroundTransparency = 1
UserData_3381.BorderSizePixel = 1
UserData_3381.BorderColor3 = Color3.fromRGB(27,42,53)
UserData_3381.ClipsDescendants = false
UserData_3381.AnchorPoint = Vector2.new(0,0)
UserData_3381.Visible = true
UserData_3381.Active = false
UserData_3381.Selectable = false
UserData_3381.ZIndex = 1
UserData_3381.Rotation = 0
UserData_3381.LayoutOrder = 0
local DownLine_4123 = Instance.new("Frame")
DownLine_4123.Name = "DownLine"
DownLine_4123.Size = UDim2.new(0.699999988079071,0,0,1)
DownLine_4123.Position = UDim2.new(0,0,0.8999999761581421,0)
DownLine_4123.BackgroundColor3 = Color3.fromRGB(0,37,70)
DownLine_4123.BackgroundTransparency = 0
DownLine_4123.BorderSizePixel = 0
DownLine_4123.BorderColor3 = Color3.fromRGB(27,42,53)
DownLine_4123.ClipsDescendants = false
DownLine_4123.AnchorPoint = Vector2.new(0,0)
DownLine_4123.Visible = true
DownLine_4123.Active = false
DownLine_4123.Selectable = false
DownLine_4123.ZIndex = 5
DownLine_4123.Rotation = 0
DownLine_4123.LayoutOrder = 0
DownLine_4123.Parent = UserData_3381
local UserImage_3838 = Instance.new("ImageLabel")
UserImage_3838.Name = "UserImage"
UserImage_3838.Size = UDim2.new(0.17000000178813934,0,0.6990000009536743,0)
UserImage_3838.Position = UDim2.new(0,0,0,0)
UserImage_3838.BackgroundColor3 = Color3.fromRGB(255,255,255)
UserImage_3838.BackgroundTransparency = 0
UserImage_3838.BorderSizePixel = 1
UserImage_3838.BorderColor3 = Color3.fromRGB(27,42,53)
UserImage_3838.ClipsDescendants = false
UserImage_3838.AnchorPoint = Vector2.new(0,0)
UserImage_3838.Visible = true
UserImage_3838.Active = false
UserImage_3838.Selectable = false
UserImage_3838.ZIndex = 4
UserImage_3838.Rotation = 0
UserImage_3838.LayoutOrder = 0
UserImage_3838.Image = thumbnail
UserImage_3838.ImageTransparency = 0
UserImage_3838.ScaleType = Enum.ScaleType.Stretch
UserImage_3838.SliceScale = 1
UserImage_3838.ResampleMode = Enum.ResamplerMode.Default
local UICorner_7700 = Instance.new("UICorner")
UICorner_7700.Name = "UICorner"
UICorner_7700.Parent = UserImage_3838
UserImage_3838.Parent = UserData_3381
local Username_8774 = Instance.new("TextButton")
Username_8774.Name = "Username"
Username_8774.Size = UDim2.new(0.4000000059604645,0,0.4000000059604645,0)
Username_8774.Position = UDim2.new(0.20000000298023224,0,0.20000000298023224,0)
Username_8774.BackgroundColor3 = Color3.fromRGB(162,162,162)
Username_8774.BackgroundTransparency = 1
Username_8774.BorderSizePixel = 1
Username_8774.BorderColor3 = Color3.fromRGB(27,42,53)
Username_8774.ClipsDescendants = false
Username_8774.AnchorPoint = Vector2.new(0,0)
Username_8774.Visible = true
Username_8774.Active = true
Username_8774.Selectable = true
Username_8774.ZIndex = 1
Username_8774.Rotation = 0
Username_8774.LayoutOrder = 0
Username_8774.Text = LocalPlayer.DisplayName
Username_8774.Font = Enum.Font.SourceSansBold
Username_8774.TextSize = 19
Username_8774.TextColor3 = Color3.fromRGB(255,255,255)
Username_8774.TextStrokeColor3 = Color3.fromRGB(0,0,0)
Username_8774.TextStrokeTransparency = 1
Username_8774.TextTransparency = 0
Username_8774.TextWrapped = true
Username_8774.RichText = false
Username_8774.TextScaled = true
Username_8774.Parent = UserData_3381
UserData_3381.Parent = Frame_9227
local Shadows_1449 = Instance.new("Frame")
Shadows_1449.Name = "Shadows"
Shadows_1449.Size = UDim2.new(0.003000000026077032,0,0.8980000019073486,0)
Shadows_1449.Position = UDim2.new(0.9850000143051147,0,0.07900000363588333,0)
Shadows_1449.BackgroundColor3 = Color3.fromRGB(0,33,56)
Shadows_1449.BackgroundTransparency = 0
Shadows_1449.BorderSizePixel = 1
Shadows_1449.BorderColor3 = Color3.fromRGB(27,42,53)
Shadows_1449.ClipsDescendants = false
Shadows_1449.AnchorPoint = Vector2.new(0,0)
Shadows_1449.Visible = true
Shadows_1449.Active = false
Shadows_1449.Selectable = false
Shadows_1449.ZIndex = 10
Shadows_1449.Rotation = 0
Shadows_1449.LayoutOrder = 0
local UICorner_8276 = Instance.new("UICorner")
UICorner_8276.Name = "UICorner"
UICorner_8276.Parent = Shadows_1449
Shadows_1449.Parent = Frame_9227
local Title_1703 = Instance.new("TextLabel")
Title_1703.Name = "Title"
Title_1703.Size = UDim2.new(0,200,0,50)
Title_1703.Position = UDim2.new(0.3499999940395355,0,0,0)
Title_1703.BackgroundColor3 = Color3.fromRGB(162,162,162)
Title_1703.BackgroundTransparency = 1
Title_1703.BorderSizePixel = 1
Title_1703.BorderColor3 = Color3.fromRGB(27,42,53)
Title_1703.ClipsDescendants = false
Title_1703.AnchorPoint = Vector2.new(0,0)
Title_1703.Visible = true
Title_1703.Active = false
Title_1703.Selectable = false
Title_1703.ZIndex = 3
Title_1703.Rotation = 0
Title_1703.LayoutOrder = 0
Title_1703.Text = "NEVERLOSE"
Title_1703.Font = Enum.Font.GothamBlack
Title_1703.TextSize = 8
Title_1703.TextColor3 = Color3.fromRGB(255,255,255)
Title_1703.TextStrokeColor3 = Color3.fromRGB(0,172,242)
Title_1703.TextStrokeTransparency = 0
Title_1703.TextTransparency = 0
Title_1703.TextWrapped = true
Title_1703.RichText = false
Title_1703.TextScaled = true
Title_1703.Parent = Frame_9227
local Holder2_8883 = Instance.new("ImageLabel")
Holder2_8883.Name = "Holder2"
Holder2_8883.Size = UDim2.new(0.30000001192092896,0,0.49000000953674316,0)
Holder2_8883.Position = UDim2.new(0.6650000214576721,0,0.16200000047683716,0)
Holder2_8883.BackgroundColor3 = Color3.fromRGB(162,162,162)
Holder2_8883.BackgroundTransparency = 0
Holder2_8883.BorderSizePixel = 1
Holder2_8883.BorderColor3 = Color3.fromRGB(27,42,53)
Holder2_8883.ClipsDescendants = false
Holder2_8883.AnchorPoint = Vector2.new(0,0)
Holder2_8883.Visible = true
Holder2_8883.Active = false
Holder2_8883.Selectable = false
Holder2_8883.ZIndex = 4
Holder2_8883.Rotation = 0
Holder2_8883.LayoutOrder = 0
Holder2_8883.Image = "rbxthumb://type=Asset&id=91016878031860&w=420&h=420"
Holder2_8883.ImageTransparency = 0
Holder2_8883.ScaleType = Enum.ScaleType.Stretch
Holder2_8883.SliceScale = 1
Holder2_8883.ResampleMode = Enum.ResamplerMode.Default
local UICorner_6129 = Instance.new("UICorner")
UICorner_6129.Name = "UICorner"
UICorner_6129.Parent = Holder2_8883
local product_6625 = Instance.new("TextLabel")
product_6625.Name = "product"
product_6625.Size = UDim2.new(0.6000000238418579,0,0.30000001192092896,0)
product_6625.Position = UDim2.new(0.20999999344348907,0,0,0)
product_6625.BackgroundColor3 = Color3.fromRGB(162,162,162)
product_6625.BackgroundTransparency = 1
product_6625.BorderSizePixel = 1
product_6625.BorderColor3 = Color3.fromRGB(27,42,53)
product_6625.ClipsDescendants = false
product_6625.AnchorPoint = Vector2.new(0,0)
product_6625.Visible = true
product_6625.Active = false
product_6625.Selectable = false
product_6625.ZIndex = 5
product_6625.Rotation = 0
product_6625.LayoutOrder = 0
product_6625.Text = "3 ROBUX"
product_6625.Font = Enum.Font.GothamBlack
product_6625.TextSize = 8
product_6625.TextColor3 = Color3.fromRGB(255,255,255)
product_6625.TextStrokeColor3 = Color3.fromRGB(0,206,255)
product_6625.TextStrokeTransparency = 0.800000011920929
product_6625.TextTransparency = 0
product_6625.TextWrapped = true
product_6625.RichText = false
product_6625.TextScaled = true
product_6625.Parent = Holder2_8883
-- Stroke for Holder2_8883
local Stroke_8187 = Instance.new("UIStroke")
Stroke_8187.Color = Color3.fromRGB(0,29,54)
Stroke_8187.Thickness = 1
Stroke_8187.Transparency = 0
Stroke_8187.Parent = Holder2_8883

    local Players = game:GetService("Players")
    local MarketplaceService = game:GetService("MarketplaceService")
    local LocalPlayer = Players.LocalPlayer
    local gamename = MarketplaceService:GetProductInfo(game.PlaceId).Name

    local BuyButton = Instance.new("TextButton")
    BuyButton.Name = "Buy"
    BuyButton.Size = UDim2.new(0.6, 0, 0.2, 0)
    BuyButton.Position = UDim2.new(0.209, 0, 0.434, 0)
    BuyButton.BackgroundColor3 = Color3.fromRGB(0, 182, 255)
    BuyButton.Text = "BUY"
    BuyButton.Font = Enum.Font.SourceSansBold
    BuyButton.TextSize = 18
    BuyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    BuyButton.ZIndex = 99
    BuyButton.Parent = Holder2_8883

    local userHasPass = false
    if paid then
        local success, hasPass = pcall(function()
            return MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, gamepassId)
        end)
        userHasPass = success and hasPass
    end

    if userHasPass then
        BuyButton.Text = "START"
        product_6625.Text = gamename
        BuyButton.MouseButton1Click:Connect(function()
            print("START CLICKED")
            Frame_9227:Destroy()
            if type(scriptToRun) == "function" then
                scriptToRun()
            elseif type(scriptToRun) == "string" then
                loadstring(scriptToRun)()
            end
        end)
    else
        BuyButton.Text = "BUY"
        BuyButton.MouseButton1Click:Connect(function()
            if setclipboard then
                setclipboard(gamepassLink or "https://www.roblox.com/game-pass/1233310627/NEVERLOSE-CC-LOADER")
            end
            print("Link Copied")
        end)
    end
local UICorner_3273 = Instance.new("UICorner")
UICorner_3273.Name = "UICorner"
UICorner_3273.Parent = Buy_5088
Buy_5088.Parent = Holder2_8883
Holder2_8883.Parent = Frame_9227
local TitleIcon_7247 = Instance.new("ImageLabel")
TitleIcon_7247.Name = "TitleIcon"
TitleIcon_7247.Size = UDim2.new(0,56,0,45)
TitleIcon_7247.Position = UDim2.new(0.6100000143051147,0,0,2)
TitleIcon_7247.BackgroundColor3 = Color3.fromRGB(162,162,162)
TitleIcon_7247.BackgroundTransparency = 1
TitleIcon_7247.BorderSizePixel = 1
TitleIcon_7247.BorderColor3 = Color3.fromRGB(27,42,53)
TitleIcon_7247.ClipsDescendants = false
TitleIcon_7247.AnchorPoint = Vector2.new(0,0)
TitleIcon_7247.Visible = true
TitleIcon_7247.Active = false
TitleIcon_7247.Selectable = false
TitleIcon_7247.ZIndex = 1
TitleIcon_7247.Rotation = 0
TitleIcon_7247.LayoutOrder = 0
TitleIcon_7247.Image = "rbxthumb://type=Asset&id=102025908220000&w=420&h=420"
TitleIcon_7247.ImageColor3 = Color3.fromRGB(0, 172, 247)
TitleIcon_7247.ImageTransparency = 0
TitleIcon_7247.ScaleType = Enum.ScaleType.Stretch
TitleIcon_7247.SliceScale = 1
TitleIcon_7247.ResampleMode = Enum.ResamplerMode.Default
TitleIcon_7247.Parent = Frame_9227

NL_LOADER_8823.Parent = game.CoreGui
    end

return Loader
