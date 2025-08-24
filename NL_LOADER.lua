
local Loader = {}

function Loader:Load(paid, link, gamepassId, callback)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local thumbnail, isReady = Players:GetUserThumbnailAsync(
    LocalPlayer.UserId,
    Enum.ThumbnailType.HeadShot,
    Enum.ThumbnailSize.Size150x150
)
-- Full Dump of NEVERLOSE_Loader_Service UI
local NL_LoaderV2_9804 = Instance.new("ScreenGui")
NL_LoaderV2_9804.Name = "NL_LoaderV2"
local TweenService = game:GetService("TweenService")

local Frame_3541 = Instance.new("Frame")
Frame_3541.Name = "Frame"
Frame_3541.Size = UDim2.new(0,620,0,343)
Frame_3541.Position = UDim2.new(0.5,0,0.5,0)
Frame_3541.BackgroundColor3 = Color3.fromRGB(0,0,0)
Frame_3541.BackgroundTransparency = 0
Frame_3541.BorderSizePixel = 1
Frame_3541.BorderColor3 = Color3.fromRGB(27,42,53)
Frame_3541.ClipsDescendants = false
Frame_3541.AnchorPoint = Vector2.new(0.5,0.5)
Frame_3541.Visible = false -- hidden until animation
Frame_3541.Active = true
Frame_3541.Selectable = false
Frame_3541.ZIndex = 1
Frame_3541.Rotation = 0
Frame_3541.Draggable = true
Frame_3541.Parent = NL_LoaderV2_9804
Frame_3541.LayoutOrder = 0

-- Animation
local function openFrame(frame)
	frame.Visible = true
	frame.Size = UDim2.new(0, 100, 0, 60) -- start small

	local tweenInfo = TweenInfo.new(
		0.6, -- duration
		Enum.EasingStyle.Back, -- bounce/pop effect
		Enum.EasingDirection.Out
	)

	local tween = TweenService:Create(frame, tweenInfo, {
		Size = UDim2.new(0, 620, 0, 343)
	})
	tween:Play()
end

-- Run animation
openFrame(Frame_3541)
local Con2_2260 = Instance.new("Frame")
Con2_2260.Name = "Con2"
Con2_2260.Size = UDim2.new(0,170,0,230)
Con2_2260.Position = UDim2.new(0.6990000009536743,5,0,70)
Con2_2260.BackgroundColor3 = Color3.fromRGB(19,19,19)
Con2_2260.BackgroundTransparency = 0
Con2_2260.BorderSizePixel = 1
Con2_2260.BorderColor3 = Color3.fromRGB(27,42,53)
Con2_2260.ClipsDescendants = false
Con2_2260.AnchorPoint = Vector2.new(0,0)
Con2_2260.Visible = true
Con2_2260.Active = false
Con2_2260.Selectable = false
Con2_2260.ZIndex = 1
Con2_2260.Rotation = 0
Con2_2260.LayoutOrder = 0
local Cost_7026 = Instance.new("TextLabel")
Cost_7026.Name = "Cost"
Cost_7026.Size = UDim2.new(0,150,0,40)
Cost_7026.Position = UDim2.new(0,10,0,9)
Cost_7026.BackgroundColor3 = Color3.fromRGB(162,162,162)
Cost_7026.BackgroundTransparency = 1
Cost_7026.BorderSizePixel = 1
Cost_7026.BorderColor3 = Color3.fromRGB(27,42,53)
Cost_7026.ClipsDescendants = false
Cost_7026.AnchorPoint = Vector2.new(0,0)
Cost_7026.Visible = true
Cost_7026.Active = false
Cost_7026.Selectable = false
Cost_7026.ZIndex = 1
Cost_7026.Rotation = 0
Cost_7026.LayoutOrder = 0
Cost_7026.Text = "3 ROBUX"
Cost_7026.Font = Enum.Font.SourceSansBold
Cost_7026.TextSize = 8
Cost_7026.TextColor3 = Color3.fromRGB(255,255,255)
Cost_7026.TextStrokeColor3 = Color3.fromRGB(0,0,0)
Cost_7026.TextStrokeTransparency = 1
Cost_7026.TextTransparency = 0
Cost_7026.TextWrapped = true
Cost_7026.RichText = false
Cost_7026.TextScaled = true
Cost_7026.Parent = Con2_2260
local UICorner_5581 = Instance.new("UICorner")
UICorner_5581.Name = "UICorner"
UICorner_5581.Parent = Con2_2260
local product_4121 = Instance.new("TextLabel")
product_4121.Name = "product"
product_4121.Size = UDim2.new(0,150,0,40)
product_4121.Position = UDim2.new(0,10,0,120)
product_4121.BackgroundColor3 = Color3.fromRGB(162,162,162)
product_4121.BackgroundTransparency = 1
product_4121.BorderSizePixel = 1
product_4121.BorderColor3 = Color3.fromRGB(27,42,53)
product_4121.ClipsDescendants = false
product_4121.AnchorPoint = Vector2.new(0,0)
product_4121.Visible = true
product_4121.Active = false
product_4121.Selectable = false
product_4121.ZIndex = 1
product_4121.Rotation = 0
product_4121.LayoutOrder = 0
product_4121.Text = "NEVERLOSE.CC"
product_4121.Font = Enum.Font.SourceSansBold
product_4121.TextSize = 8
product_4121.TextColor3 = Color3.fromRGB(255,255,255)
product_4121.TextStrokeColor3 = Color3.fromRGB(0,0,0)
product_4121.TextStrokeTransparency = 1
product_4121.TextTransparency = 0
product_4121.TextWrapped = true
product_4121.RichText = false
product_4121.TextScaled = true
product_4121.Parent = Con2_2260

-- Full Dump of NEVERLOSE_Loader_Service UI
local language_2100 = Instance.new("TextButton")
language_2100.Name = "language"
language_2100.Size = UDim2.new(0.6500006914138794,0,0.10000059753656387,-15)
language_2100.Position = UDim2.new(0.1600000560283661,0,0,3)
language_2100.BackgroundColor3 = Color3.fromRGB(16,16,16)
language_2100.BackgroundTransparency = 1
language_2100.BorderSizePixel = 1
language_2100.BorderColor3 = Color3.fromRGB(27,42,53)
language_2100.ClipsDescendants = false
language_2100.AnchorPoint = Vector2.new(0,0)
language_2100.Visible = true
language_2100.Active = true
language_2100.Selectable = true
language_2100.ZIndex = 1
language_2100.Rotation = 0
language_2100.LayoutOrder = 0
language_2100.Text = "CS2 NEVERLOSE CHEAT"
language_2100.Font = Enum.Font.Legacy
language_2100.TextSize = 10
language_2100.TextColor3 = Color3.fromRGB(255,255,255)
language_2100.TextStrokeColor3 = Color3.fromRGB(0,0,0)
language_2100.TextStrokeTransparency = 1
language_2100.TextTransparency = 0.30000001192092896
language_2100.TextWrapped = true
language_2100.RichText = false
language_2100.TextScaled = true
local Line2_6226 = Instance.new("Frame")
Line2_6226.Name = "Line2"
Line2_6226.Size = UDim2.new(1,0,0,1)
Line2_6226.Position = UDim2.new(0,0,1,3)
Line2_6226.BackgroundColor3 = Color3.fromRGB(48,47,48)
Line2_6226.BackgroundTransparency = 0
Line2_6226.BorderSizePixel = 0
Line2_6226.BorderColor3 = Color3.fromRGB(27,42,53)
Line2_6226.ClipsDescendants = false
Line2_6226.AnchorPoint = Vector2.new(0,0)
Line2_6226.Visible = true
Line2_6226.Active = true
Line2_6226.Selectable = false
Line2_6226.ZIndex = 1
Line2_6226.Rotation = 0
Line2_6226.LayoutOrder = 0
Line2_6226.Parent = language_2100
language_2100.Parent = Frame


    local Players = game:GetService("Players")
    local MarketplaceService = game:GetService("MarketplaceService")
    local LocalPlayer = Players.LocalPlayer

    -- Create button
    local Button = Instance.new("TextButton")
    Button.Name = "LoaderButton"
    Button.Size = UDim2.new(0, 150, 0, 50)
    Button.Position = UDim2.new(0.5, -75, 0.5, 80)
    Button.Text = paid and "BUY" or "START"
    Button.TextSize = 14
    Button.BackgroundColor3 = Color3.fromRGB(0, 72, 247)
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Font = Enum.Font.SourceSansBold
    Button.Parent = Con2_2260

    local function runScript()
        if callback then
            callback()
        end
    end

    Button.MouseButton1Click:Connect(function()
        if paid then
            local success, owns = pcall(function()
                return MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, gamepassId)
            end)

            if owns then
                Button.Text = "START"
                runScript()
            else
                Button.Text = "BUY"
                MarketplaceService:PromptGamePassPurchase(LocalPlayer, gamepassId)
            end
        else
            runScript()
        end
    end)
    
local UICorner_8870 = Instance.new("UICorner")
UICorner_8870.Name = "UICorner"
UICorner_8870.Parent = Button

Con2_2260.Parent = Frame_3541

local Username_4763 = Instance.new("TextLabel")
Username_4763.Name = "Username"
Username_4763.Size = UDim2.new(0,100,0,20)
Username_4763.Position = UDim2.new(0,33,0.8980000019073486,5)
Username_4763.BackgroundColor3 = Color3.fromRGB(162,162,162)
Username_4763.BackgroundTransparency = 1
Username_4763.BorderSizePixel = 1
Username_4763.BorderColor3 = Color3.fromRGB(27,42,53)
Username_4763.ClipsDescendants = false
Username_4763.AnchorPoint = Vector2.new(0,0)
Username_4763.Visible = true
Username_4763.Active = false
Username_4763.Selectable = false
Username_4763.ZIndex = 2
Username_4763.Rotation = 0
Username_4763.LayoutOrder = 0
Username_4763.Text = LocalPlayer.DisplayName
Username_4763.Font = Enum.Font.SourceSansBold
Username_4763.TextSize = 8
Username_4763.TextColor3 = Color3.fromRGB(255,255,255)
Username_4763.TextStrokeColor3 = Color3.fromRGB(0,0,0)
Username_4763.TextStrokeTransparency = 1
Username_4763.TextTransparency = 0
Username_4763.TextWrapped = true
Username_4763.RichText = false
Username_4763.TextScaled = true
Username_4763.TextXAlignment = Enum.TextXAlignment.Left
Username_4763.Parent = Frame_3541
local Line_2416 = Instance.new("Frame")
Line_2416.Name = "Line"
Line_2416.Size = UDim2.new(1,0,0,1)
Line_2416.Position = UDim2.new(0,0,0.8989999890327454,-2)
Line_2416.BackgroundColor3 = Color3.fromRGB(88,88,88)
Line_2416.BackgroundTransparency = 0.4000000059604645
Line_2416.BorderSizePixel = 0
Line_2416.BorderColor3 = Color3.fromRGB(127,127,127)
Line_2416.ClipsDescendants = false
Line_2416.AnchorPoint = Vector2.new(0,0)
Line_2416.Visible = true
Line_2416.Active = false
Line_2416.Selectable = false
Line_2416.ZIndex = 3
Line_2416.Rotation = 0
Line_2416.LayoutOrder = 0
Line_2416.Parent = Frame_3541
local Youtube_6175 = Instance.new("ImageButton")
Youtube_6175.Name = "Youtube"
Youtube_6175.Size = UDim2.new(0,25,0,23)
Youtube_6175.Position = UDim2.new(0.8980000019073486,30,0.8980000019073486,6)
Youtube_6175.BackgroundColor3 = Color3.fromRGB(162,162,162)
Youtube_6175.BackgroundTransparency = 1
Youtube_6175.BorderSizePixel = 1
Youtube_6175.BorderColor3 = Color3.fromRGB(27,42,53)
Youtube_6175.ClipsDescendants = false
Youtube_6175.AnchorPoint = Vector2.new(0,0)
Youtube_6175.Visible = true
Youtube_6175.Active = true
Youtube_6175.Selectable = true
Youtube_6175.ZIndex = 1
Youtube_6175.Rotation = 0
Youtube_6175.LayoutOrder = 0
Youtube_6175.Image = "rbxthumb://type=Asset&id=109761116499579&w=420&h=420"
Youtube_6175.ImageTransparency = 0
Youtube_6175.ScaleType = Enum.ScaleType.Stretch
Youtube_6175.SliceScale = 1
Youtube_6175.ResampleMode = Enum.ResamplerMode.Default
Youtube_6175.Parent = Frame_3541

Youtube_6175.MouseButton1Click:Connect(function()
setclipboard("https://www.youtube.com/@clude80")
end)


local UICorner_6303 = Instance.new("UICorner")
UICorner_6303.Name = "UICorner"
UICorner_6303.Parent = Frame_3541
local Container_2186 = Instance.new("Frame")
Container_2186.Name = "Container"
Container_2186.Size = UDim2.new(0,430,0,230)
Container_2186.Position = UDim2.new(0,6,0.20000000298023224,0)
Container_2186.BackgroundColor3 = Color3.fromRGB(29,29,29)
Container_2186.BackgroundTransparency = 1
Container_2186.BorderSizePixel = 1
Container_2186.BorderColor3 = Color3.fromRGB(27,42,53)
Container_2186.ClipsDescendants = false
Container_2186.AnchorPoint = Vector2.new(0,0)
Container_2186.Visible = true
Container_2186.Active = false
Container_2186.Selectable = false
Container_2186.ZIndex = 1
Container_2186.Rotation = 0
Container_2186.LayoutOrder = 0
local UICorner_7326 = Instance.new("UICorner")
UICorner_7326.Name = "UICorner"
UICorner_7326.Parent = Container_2186
local Desc_5805 = Instance.new("TextLabel")
Desc_5805.Name = "Desc"
Desc_5805.Size = UDim2.new(0,100,0,20)
Desc_5805.Position = UDim2.new(0,0,0,0)
Desc_5805.BackgroundColor3 = Color3.fromRGB(162,162,162)
Desc_5805.BackgroundTransparency = 1
Desc_5805.BorderSizePixel = 1
Desc_5805.BorderColor3 = Color3.fromRGB(27,42,53)
Desc_5805.ClipsDescendants = false
Desc_5805.AnchorPoint = Vector2.new(0,0)
Desc_5805.Visible = true
Desc_5805.Active = false
Desc_5805.Selectable = false
Desc_5805.ZIndex = 1
Desc_5805.Rotation = 0
Desc_5805.LayoutOrder = 0
Desc_5805.Text = "Description"
Desc_5805.Font = Enum.Font.SourceSansBold
Desc_5805.TextSize = 8
Desc_5805.TextColor3 = Color3.fromRGB(255,255,255)
Desc_5805.TextStrokeColor3 = Color3.fromRGB(0,0,0)
Desc_5805.TextStrokeTransparency = 1
Desc_5805.TextTransparency = 0
Desc_5805.TextWrapped = true
Desc_5805.RichText = false
Desc_5805.TextScaled = true
Desc_5805.Parent = Container_2186
local Box_3479 = Instance.new("TextBox")
Box_3479.Name = "Box"
Box_3479.Size = UDim2.new(0,428,0,190)
Box_3479.Position = UDim2.new(0,0,0,30)
Box_3479.BackgroundColor3 = Color3.fromRGB(162,162,162)
Box_3479.BackgroundTransparency = 1
Box_3479.BorderSizePixel = 1
Box_3479.BorderColor3 = Color3.fromRGB(27,42,53)
Box_3479.ClipsDescendants = true
Box_3479.AnchorPoint = Vector2.new(0,0)
Box_3479.Visible = true
Box_3479.Active = true
Box_3479.Selectable = true
Box_3479.ZIndex = 1
Box_3479.Rotation = 0
Box_3479.LayoutOrder = 0
Box_3479.Text = [[NEVERLOSE.CC UI Library is a sleek, modern, and customizable menu system designed for smooth performance and professional visuals. Inspired by premium cheat menus, it features a minimal yet stylish interface with clean typography, sharp layouts, and adaptive scaling for all PC screen.

With its dark-themed design, smooth transitions, and customizable elements, the menu gives off a polished \\\"luxury software\\\" feel. The structure is lightweight, ensuring fast rendering and responsiveness even in complex environments]]
Box_3479.Font = Enum.Font.SourceSansBold
Box_3479.TextSize = 11
Box_3479.TextColor3 = Color3.fromRGB(234,234,234)
Box_3479.TextStrokeColor3 = Color3.fromRGB(0,0,0)
Box_3479.TextStrokeTransparency = 1
Box_3479.TextTransparency = 0
Box_3479.TextWrapped = true
Box_3479.RichText = false
Box_3479.TextScaled = true
Box_3479.Parent = Container_2186
Container_2186.Parent = Frame_3541

-- Full Dump of NEVERLOSE_Loader_Service UI
local language_2100 = Instance.new("TextButton")
language_2100.Name = "language"
language_2100.Size = UDim2.new(0.6500006914138794,0,0.10000059753656387,-15)
language_2100.Position = UDim2.new(0.1600000560283661,0,0,3)
language_2100.BackgroundColor3 = Color3.fromRGB(16,16,16)
language_2100.BackgroundTransparency = 1
language_2100.BorderSizePixel = 1
language_2100.BorderColor3 = Color3.fromRGB(27,42,53)
language_2100.ClipsDescendants = false
language_2100.AnchorPoint = Vector2.new(0,0)
language_2100.Visible = true
language_2100.Active = true
language_2100.Selectable = true
language_2100.ZIndex = 1
language_2100.Rotation = 0
language_2100.LayoutOrder = 0
language_2100.Text = "CS2 NEVERLOSE CHEAT"
language_2100.Font = Enum.Font.Legacy
language_2100.TextSize = 10
language_2100.TextColor3 = Color3.fromRGB(255,255,255)
language_2100.TextStrokeColor3 = Color3.fromRGB(0,0,0)
language_2100.TextStrokeTransparency = 1
language_2100.TextTransparency = 0.30000001192092896
language_2100.TextWrapped = true
language_2100.RichText = false
language_2100.TextScaled = true
local Line2_6226 = Instance.new("Frame")
Line2_6226.Name = "Line2"
Line2_6226.Size = UDim2.new(1,0,0,1)
Line2_6226.Position = UDim2.new(0,0,1,3)
Line2_6226.BackgroundColor3 = Color3.fromRGB(48,47,48)
Line2_6226.BackgroundTransparency = 0
Line2_6226.BorderSizePixel = 0
Line2_6226.BorderColor3 = Color3.fromRGB(27,42,53)
Line2_6226.ClipsDescendants = false
Line2_6226.AnchorPoint = Vector2.new(0,0)
Line2_6226.Visible = true
Line2_6226.Active = true
Line2_6226.Selectable = false
Line2_6226.ZIndex = 1
Line2_6226.Rotation = 0
Line2_6226.LayoutOrder = 0
Line2_6226.Parent = language_2100
language_2100.Parent = game.Players.LocalPlayer.PlayerGui


local Github_2848 = Instance.new("ImageButton")
Github_2848.Name = "Github"
Github_2848.Size = UDim2.new(0,25,0,23)
Github_2848.Position = UDim2.new(0.8980000019073486,0,0.8980000019073486,6)
Github_2848.BackgroundColor3 = Color3.fromRGB(162,162,162)
Github_2848.BackgroundTransparency = 1
Github_2848.BorderSizePixel = 1
Github_2848.BorderColor3 = Color3.fromRGB(27,42,53)
Github_2848.ClipsDescendants = false
Github_2848.AnchorPoint = Vector2.new(0,0)
Github_2848.Visible = true
Github_2848.Active = true
Github_2848.Selectable = true
Github_2848.ZIndex = 1
Github_2848.Rotation = 0
Github_2848.LayoutOrder = 0
Github_2848.Image = "rbxthumb://type=Asset&id=134167125149091&w=420&h=420"
Github_2848.ImageTransparency = 0
Github_2848.ScaleType = Enum.ScaleType.Stretch
Github_2848.SliceScale = 1
Github_2848.ResampleMode = Enum.ResamplerMode.Default
Github_2848.Parent = Frame_3541

Github_2848.MouseButton1Click:Connect(function()
setclipboard("https://github.com/CludeHub")
end)

local Shadow_3735 = Instance.new("Frame")
Shadow_3735.Name = "Shadow"
Shadow_3735.Size = UDim2.new(0,1,0,247)
Shadow_3735.Position = UDim2.new(0.8980000019073486,58,0,55)
Shadow_3735.BackgroundColor3 = Color3.fromRGB(70,70,70)
Shadow_3735.BackgroundTransparency = 0
Shadow_3735.BorderSizePixel = 0
Shadow_3735.BorderColor3 = Color3.fromRGB(0,190,255)
Shadow_3735.ClipsDescendants = false
Shadow_3735.AnchorPoint = Vector2.new(0,0)
Shadow_3735.Visible = true
Shadow_3735.Active = false
Shadow_3735.Selectable = false
Shadow_3735.ZIndex = 1
Shadow_3735.Rotation = 0
Shadow_3735.LayoutOrder = 0
Shadow_3735.Parent = Frame_3541
local Close_2040 = Instance.new("TextButton")
Close_2040.Name = "Close"
Close_2040.Size = UDim2.new(0,40,0,36)
Close_2040.Position = UDim2.new(0.8980000019073486,19,0,0)
Close_2040.BackgroundColor3 = Color3.fromRGB(162,162,162)
Close_2040.BackgroundTransparency = 1
Close_2040.BorderSizePixel = 1
Close_2040.BorderColor3 = Color3.fromRGB(27,42,53)
Close_2040.ClipsDescendants = false
Close_2040.AnchorPoint = Vector2.new(0,0)
Close_2040.Visible = true
Close_2040.Active = true
Close_2040.Selectable = true
Close_2040.ZIndex = 1
Close_2040.Rotation = 0
Close_2040.LayoutOrder = 0
Close_2040.Text = "x"
Close_2040.Font = Enum.Font.SourceSansBold
Close_2040.TextSize = 8
Close_2040.TextColor3 = Color3.fromRGB(255,255,255)
Close_2040.TextStrokeColor3 = Color3.fromRGB(0,0,0)
Close_2040.TextStrokeTransparency = 1
Close_2040.TextTransparency = 0
Close_2040.TextWrapped = true
Close_2040.RichText = false
Close_2040.TextScaled = true
Close_2040.Parent = Frame_3541
local UserImage_8989 = Instance.new("ImageLabel")
UserImage_8989.Name = "UserImage"
UserImage_8989.Size = UDim2.new(0,25,0,25)
UserImage_8989.Position = UDim2.new(0,2,0.8980000019073486,2)
UserImage_8989.BackgroundColor3 = Color3.fromRGB(127,127,127)
UserImage_8989.BackgroundTransparency = 0
UserImage_8989.BorderSizePixel = 1
UserImage_8989.BorderColor3 = Color3.fromRGB(27,42,53)
UserImage_8989.ClipsDescendants = false
UserImage_8989.AnchorPoint = Vector2.new(0,0)
UserImage_8989.Visible = true
UserImage_8989.Active = false
UserImage_8989.Selectable = false
UserImage_8989.ZIndex = 1
UserImage_8989.Rotation = 0
UserImage_8989.LayoutOrder = 0
UserImage_8989.Image = thumbnail
UserImage_8989.ImageTransparency = 0
UserImage_8989.ScaleType = Enum.ScaleType.Stretch
UserImage_8989.SliceScale = 1
UserImage_8989.ResampleMode = Enum.ResamplerMode.Default
local UICorner_3723 = Instance.new("UICorner")
UICorner_3723.Name = "UICorner"
UICorner_3723.Parent = UserImage_8989
UserImage_8989.Parent = Frame_3541
local Title_3845 = Instance.new("TextLabel")
Title_3845.Name = "Title"
Title_3845.Size = UDim2.new(0,100,0,60)
Title_3845.Position = UDim2.new(0,0,0,0)
Title_3845.BackgroundColor3 = Color3.fromRGB(162,162,162)
Title_3845.BackgroundTransparency = 1
Title_3845.BorderSizePixel = 1
Title_3845.BorderColor3 = Color3.fromRGB(27,42,53)
Title_3845.ClipsDescendants = false
Title_3845.AnchorPoint = Vector2.new(0,0)
Title_3845.Visible = true
Title_3845.Active = false
Title_3845.Selectable = false
Title_3845.ZIndex = 1
Title_3845.Rotation = 0
Title_3845.LayoutOrder = 0
Title_3845.Text = "NL"
Title_3845.Font = Enum.Font.GothamBlack
Title_3845.TextSize = 8
Title_3845.TextColor3 = Color3.fromRGB(255,255,255)
Title_3845.TextStrokeColor3 = Color3.fromRGB(0,217,255)
Title_3845.TextStrokeTransparency = 0
Title_3845.TextTransparency = 0
Title_3845.TextWrapped = true
Title_3845.RichText = false
Title_3845.TextScaled = true
Title_3845.Parent = Frame_3541
NL_LoaderV2_9804.Parent = game.Players.LocalPlayer.PlayerGui

end

return Loader
