local placeId = game.PlaceId

if placeId == 9015014224 or placeId == 11520107397 or placeId == 6403373529 or placeId == 124596094333302 then

local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local SearchBox = game.CoreGui.NEVERLOSE.Frame.SearchBox

SearchBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local Value = SearchBox.Text

        if LocalPlayer.Character:FindFirstChild("entered") == nil then
            local glove = workspace.Lobby:FindFirstChild(Value)
            if glove and glove:FindFirstChild("ClickDetector") then
                fireclickdetector(glove.ClickDetector)
            end
        end
    end
end)

game.CoreGui.NEVERLOSE.Frame.SearchBox.PlaceholderText = "Search Gloves"
