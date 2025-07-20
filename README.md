# By: **C-A-T-S-U-S**
# Edited by: **CludeHub**

# NEVERLOSE.CC UI
This is how it's look like (real)
![CludeLib UI](https://github.com/CludeHub/SourceCludeLib/blob/c3bcda14e7e285ef43947c78405d26432a5faac9/e976a087e4ce36998318741ce77d28ec611a6a2a_2_1035x604.png)
![Clude](https://github.com/CludeHub/SourceCludeLib/blob/c3bcda14e7e285ef43947c78405d26432a5faac9/bfca45da0a0086cb167be4c180410d5920b26230.png)

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
