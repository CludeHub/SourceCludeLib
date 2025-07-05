local function CreateYeloLibra()
    local YeloLibra = {}

    function YeloLibra:CreateWindow(titleText)
        local ScreenGui = Instance.new("ScreenGui")
        ScreenGui.Name = "YeloLibraUI"
        ScreenGui.IgnoreGuiInset = true
        ScreenGui.ResetOnSpawn = false
        ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        local MainFrame = Instance.new("Frame")
        MainFrame.Name = "MainFrame"
        MainFrame.Size = UDim2.new(1, 0, 1.2, 0)
        MainFrame.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
        MainFrame.Active = true
        MainFrame.Draggable = true
        MainFrame.Parent = ScreenGui

        local UIScale = Instance.new("UIScale")
        UIScale.Scale = 0.7
        UIScale.Parent = MainFrame

        -- SIDEBAR
        local Sidebar = Instance.new("Frame")
        Sidebar.Name = "Sidebar"
        Sidebar.Size = UDim2.new(0.18, 0, 1, 0)
        Sidebar.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
        Sidebar.Position = UDim2.new(0, 0, 0, 0)
        Sidebar.Parent = MainFrame

        Instance.new("UICorner", Sidebar).CornerRadius = UDim.new(0, 4)

        local Title = Instance.new("TextLabel")
        Title.Name = "Title"
        Title.Size = UDim2.new(1, 0, 0, 30)
        Title.Position = UDim2.new(0, 0, 0.04, 0)
        Title.BackgroundTransparency = 1
        Title.Text = titleText or "YeloLibra"
        Title.Font = Enum.Font.GothamBold
        Title.TextSize = 24
        Title.TextColor3 = Color3.fromRGB(230, 230, 230)
        Title.TextXAlignment = Enum.TextXAlignment.Center
        Title.Parent = Sidebar

        -- TOPBAR
        local TopBar = Instance.new("Frame")
        TopBar.Name = "TopBar"
        TopBar.Size = UDim2.new(0.82, 0, 0.07, 0)
        TopBar.Position = UDim2.new(0.18, 0, 0, 0)
        TopBar.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
        TopBar.Parent = MainFrame
        Instance.new("UICorner", TopBar).CornerRadius = UDim.new(0, 4)

        local PageTitle = Instance.new("TextLabel")
        PageTitle.Name = "PageTitle"
        PageTitle.Size = UDim2.new(1, 0, 1, 0)
        PageTitle.BackgroundTransparency = 1
        PageTitle.Text = "Documents"
        PageTitle.Font = Enum.Font.GothamBold
        PageTitle.TextSize = 22
        PageTitle.TextColor3 = Color3.fromRGB(230, 230, 230)
        PageTitle.TextXAlignment = Enum.TextXAlignment.Left
        PageTitle.Position = UDim2.new(0, 20, 0, 0)
        PageTitle.Parent = TopBar

        -- HEADERTABS
        local HeaderTabs = Instance.new("Frame")
        HeaderTabs.Name = "HeaderTabs"
        HeaderTabs.Size = UDim2.new(0.82, 0, 0.055, 0)
        HeaderTabs.Position = UDim2.new(0.18, 0, 0.07, 0)
        HeaderTabs.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        HeaderTabs.Parent = MainFrame
        Instance.new("UICorner", HeaderTabs).CornerRadius = UDim.new(0, 4)

        -- CONTENT
        local ContentFrame = Instance.new("Frame")
        ContentFrame.Name = "ContentFrame"
        ContentFrame.Size = UDim2.new(0.82, 0, 0.875, 0)
        ContentFrame.Position = UDim2.new(0.18, 0, 0.125, 0)
        ContentFrame.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
        ContentFrame.Parent = MainFrame
        Instance.new("UICorner", ContentFrame).CornerRadius = UDim.new(0, 4)

        -- Methods
        local Window = {}

        function Window:SetPageTitle(text)
            PageTitle.Text = text
        end

        function Window:AddSidebarTab(name, callback)
            local index = #Sidebar:GetChildren()
            local Button = Instance.new("TextButton")
            Button.Name = name
            Button.Size = UDim2.new(0.9, 0, 0, 30)
            Button.Position = UDim2.new(0.05, 0, 0, 40 + (index * 36))
            Button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
            Button.Text = name
            Button.Font = Enum.Font.Gotham
            Button.TextSize = 16
            Button.TextColor3 = Color3.fromRGB(200, 200, 200)
            Button.AutoButtonColor = false
            Button.BorderSizePixel = 0
            Button.Parent = Sidebar

            Instance.new("UICorner", Button).CornerRadius = UDim.new(0, 4)

            local Stroke = Instance.new("UIStroke")
            Stroke.Color = Color3.fromRGB(40, 40, 40)
            Stroke.Thickness = 1
            Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            Stroke.Parent = Button

            if callback then
                Button.MouseButton1Click:Connect(callback)
            end
        end

        function Window:AddHeaderTab(name, callback)
            local index = #HeaderTabs:GetChildren()
            local TabBtn = Instance.new("TextButton")
            TabBtn.Name = name
            TabBtn.Size = UDim2.new(0, 150, 1, 0)
            TabBtn.Position = UDim2.new(0, (index - 1) * 160, 0, 0)
            TabBtn.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
            TabBtn.Text = name
            TabBtn.Font = Enum.Font.Gotham
            TabBtn.TextSize = 14
            TabBtn.TextColor3 = Color3.fromRGB(190, 190, 190)
            TabBtn.BorderSizePixel = 0
            TabBtn.Parent = HeaderTabs

            Instance.new("UICorner", TabBtn).CornerRadius = UDim.new(0, 4)

            local Stroke = Instance.new("UIStroke")
            Stroke.Color = Color3.fromRGB(40, 40, 40)
            Stroke.Thickness = 1
            Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            Stroke.Parent = TabBtn

            if callback then
                TabBtn.MouseButton1Click:Connect(callback)
            end
        end

        function Window:GetContentFrame()
            return ContentFrame
        end

        return Window
    end

    return YeloLibra
end

return CreateYeloLibra()
