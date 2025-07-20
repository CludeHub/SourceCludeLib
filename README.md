# By: **C-A-T-S-U-S**
# Edited by: **CludeHub**

# NEVERLOSE.CC UI
![CludeLib UI](https://github.com/CludeHub/SourceCludeLib/blob/6c169c972087db4ae67fd741bfa35c23363a34d1/Screenshot_20250720_161237_com.roblox.client.jpg)

![SlapBattles](https://github.com/CludeHub/SourceCludeLib/blob/3b5da287223e5ec4fed0ae2fb3507eb1bbd312f5/IMG_20250719_020044.jp)

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
