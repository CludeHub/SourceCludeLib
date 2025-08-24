local Loader = {}
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local LocalPlayer = Players.LocalPlayer

-- Helper to make UI
local function Create(class, props)
    local obj = Instance.new(class)
    for k,v in pairs(props) do
        obj[k] = v
    end
    return obj
end

-- Bounce animation
local function openFrame(frame)
    frame.Visible = true
    frame.Size = UDim2.new(0,100,0,60)
    local tween = TweenService:Create(frame, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0,620,0,343)
    })
    tween:Play()
end

function Loader:Load(paid, gamepassLink, gamepassId, scriptToRun)
    -- Thumbnail
    local thumb = ""
    pcall(function()
        thumb = Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
    end)

    -- ScreenGui
    local gui = Create("ScreenGui", {
        Name = "NL_LoaderV2",
        Parent = LocalPlayer.PlayerGui
    })

    -- Main frame
    local main = Create("Frame", {
        Name = "Main",
        Size = UDim2.new(0,620,0,343),
        Position = UDim2.new(0.5,0,0.5,0),
        AnchorPoint = Vector2.new(0.5,0.5),
        BackgroundColor3 = Color3.fromRGB(0,0,0),
        BorderColor3 = Color3.fromRGB(27,42,53),
        Visible = false,
        Draggable = true,
        Parent = gui
    })
    openFrame(main)

    -- Right panel
    local right = Create("Frame", {
        Size = UDim2.new(0,170,0,230),
        Position = UDim2.new(0.7,5,0,70),
        BackgroundColor3 = Color3.fromRGB(19,19,19),
        Parent = main
    })
    Create("UICorner",{Parent=right})

    -- Cost
    Create("TextLabel", {
        Name = "Cost",
        Size = UDim2.new(0,150,0,40),
        Position = UDim2.new(0,10,0,9),
        BackgroundTransparency = 1,
        Text = "3 ROBUX",
        Font = Enum.Font.SourceSansBold,
        TextColor3 = Color3.new(1,1,1),
        TextScaled = true,
        Parent = right
    })

    -- Product label
    local product = Create("TextLabel", {
        Name = "Product",
        Size = UDim2.new(0,150,0,40),
        Position = UDim2.new(0,10,0,120),
        BackgroundTransparency = 1,
        Text = "NEVERLOSE.CC",
        Font = Enum.Font.SourceSansBold,
        TextColor3 = Color3.new(1,1,1),
        TextScaled = true,
        Parent = right
    })

    -- Action button
    local actionBtn = Create("TextButton", {
        Name = "Action",
        Size = UDim2.new(0,130,0,40),
        Position = UDim2.new(0,20,0,178),
        BackgroundColor3 = Color3.fromRGB(0,222,255),
        Font = Enum.Font.SourceSansBold,
        TextSize = 24,
        TextColor3 = Color3.new(1,1,1),
        TextStrokeColor3 = Color3.fromRGB(0,228,255),
        TextStrokeTransparency = 0,
        Parent = right
    })
    Create("UICorner",{Parent=actionBtn})

    -- Username + thumbnail
    Create("TextLabel", {
        Name = "Username",
        Size = UDim2.new(0,100,0,20),
        Position = UDim2.new(0,33,0.9,5),
        BackgroundTransparency = 1,
        Text = LocalPlayer.DisplayName,
        Font = Enum.Font.SourceSansBold,
        TextColor3 = Color3.new(1,1,1),
        TextScaled = true,
        TextXAlignment = Enum.TextXAlignment.Left,
        ZIndex = 2,
        Parent = main
    })

    Create("ImageLabel", {
        Name = "UserImage",
        Size = UDim2.new(0,25,0,25),
        Position = UDim2.new(0,2,0.9,2),
        Image = thumb,
        BackgroundColor3 = Color3.fromRGB(127,127,127),
        Parent = main
    })

    -- Title
    Create("TextLabel", {
        Name = "Title",
        Size = UDim2.new(0,100,0,60),
        Text = "NL",
        Font = Enum.Font.GothamBlack,
        TextColor3 = Color3.new(1,1,1),
        TextStrokeColor3 = Color3.fromRGB(0,217,255),
        TextStrokeTransparency = 0,
        BackgroundTransparency = 1,
        Parent = main
    })

    -- Description container
    local descCont = Create("Frame", {
        Size = UDim2.new(0,430,0,230),
        Position = UDim2.new(0,6,0.2,0),
        BackgroundColor3 = Color3.fromRGB(29,29,29),
        BackgroundTransparency = 1,
        Parent = main
    })
    Create("UICorner",{Parent=descCont})

    Create("TextLabel", {
        Name = "Desc",
        Size = UDim2.new(0,100,0,20),
        Text = "Description",
        BackgroundTransparency = 1,
        Font = Enum.Font.SourceSansBold,
        TextColor3 = Color3.new(1,1,1),
        TextScaled = true,
        Parent = descCont
    })

    Create("TextBox", {
        Name = "Box",
        Size = UDim2.new(0,428,0,190),
        Position = UDim2.new(0,0,0,30),
        BackgroundTransparency = 1,
        Text = "NEVERLOSE.CC UI Library is a sleek, modern, and customizable menu system...",
        Font = Enum.Font.SourceSansBold,
        TextColor3 = Color3.fromRGB(234,234,234),
        TextScaled = true,
        Parent = descCont
    })

    -- YouTube button
    local yt = Create("ImageButton", {
        Name = "Youtube",
        Size = UDim2.new(0,25,0,23),
        Position = UDim2.new(0.9,30,0.9,6),
        BackgroundTransparency = 1,
        Image = "rbxthumb://type=Asset&id=109761116499579&w=420&h=420",
        Parent = main
    })
    yt.MouseButton1Click:Connect(function()
        setclipboard("https://www.youtube.com/@clude80")
    end)

    -- GitHub button
    local gh = Create("ImageButton", {
        Name = "Github",
        Size = UDim2.new(0,25,0,23),
        Position = UDim2.new(0.9,0,0.9,6),
        BackgroundTransparency = 1,
        Image = "rbxthumb://type=Asset&id=134167125149091&w=420&h=420",
        Parent = main
    })
    gh.MouseButton1Click:Connect(function()
        setclipboard("https://github.com/CludeHub")
    end)

    -- Close button
    local close = Create("TextButton", {
        Name = "Close",
        Size = UDim2.new(0,40,0,36),
        Position = UDim2.new(0.9,19,0,0),
        BackgroundTransparency = 1,
        Text = "X",
        Font = Enum.Font.SourceSansBold,
        TextColor3 = Color3.new(1,1,1),
        TextScaled = true,
        Parent = main
    })
    close.MouseButton1Click:Connect(function()
        gui:Destroy()
    end)

    -- Logic
    local userHasPass = false
    if paid then
        local success, hasPass = pcall(function()
            return MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, gamepassId)
        end)
        userHasPass = success and hasPass
    else
        userHasPass = true
    end

    if userHasPass then
        actionBtn.Text = "START"
        product.Text = MarketplaceService:GetProductInfo(game.PlaceId).Name
        actionBtn.MouseButton1Click:Connect(function()
            gui:Destroy()
            if type(scriptToRun) == "function" then
                scriptToRun()
            elseif type(scriptToRun) == "string" then
                loadstring(scriptToRun)()
            end
        end)
    else
        actionBtn.Text = "BUY"
        actionBtn.MouseButton1Click:Connect(function()
            if setclipboard then
                setclipboard(gamepassLink or ("https://www.roblox.com/game-pass/"..tostring(gamepassId)))
            end
            print("Link Copied")
        end)
    end
end

return Loader
