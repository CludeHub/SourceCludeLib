# By: **C-A-T-S-U-S**
# Edited by: **CludeHub**

# counterstrike
![CludeLib UI](https://raw.githubusercontent.com/CludeHub/SourceCludeLib/83409df25261506df7b536920ba09b3a2e51e9f6/IMG_20250719_015647.jpg)

# slap battles
![SlapBattles](https://github.com/CludeHub/SourceCludeLib/blob/3b5da287223e5ec4fed0ae2fb3507eb1bbd312f5/IMG_20250719_020044.jpg)

# USAGE
```lua
local NEVERLOSE = loadstring(game:HttpGet("https://raw.githubusercontent.com/CludeHub/SourceCludeLib/refs/heads/main/NerverLoseLibEdited.lua"))()
local LOADER = loadstring(game:HttpGet("https://raw.githubusercontent.com/CludeHub/SourceCludeLib/refs/heads/main/loader.Function.lua"))()

LOADER:Add(function()
local Window = NEVERLOSE:AddWindow("NEVERLOSE","TEXT HERE",'original')

local Notification = NEVERLOSE:Notification()
Notification.MaxNotifications = 6
Notification:Notify("info","Notification","Test Notification")

Window:AddTabLabel('Home')

local ExampleTab = Window:AddTab('Example Tab','ads')

local Example = ExampleTab:AddSection('Example',"left")

Example:AddLabel("Label")

Example:AddButton("Test Notification",function()
    print('button')
end)

Example:AddToggle('Toggle',false,function(val)
    print("Toggle",val)
end)

Example:AddKeybind('Keybind',Enum.KeyCode.X,function(val)
    print('keybind',val)
end)

Example:AddSlider('Slider',1,100,50,function(val)
    print('slider',val)
end)

Example:AddDropdown('Dropdown',{1,2,3},2,function(val)
    print("dropdown",val)
end)
end)
```
