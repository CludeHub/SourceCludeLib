
---

# By: **C-A-T-S-U-S*
# Edited by: **CludeHub*

## # Load NEVERLOSE UI Library
```lua
local NEVERLOSE = loadstring(game:HttpGet("https://raw.githubusercontent.com/CludeHub/SourceCludeLib/refs/heads/main/NerverLoseLibEdited.lua"))()
```

Guide: This loads the NEVERLOSE UI library from the GitHub repository.

---

# Create Theme Selection and Main Window and Notification System
```lua
local Window = NEVERLOSE:AddWindow("NEVERLOSE","TEXT HERE",'dark') -- dark, neon
```
```lua
local Notification = NEVERLOSE:Notification()
Notification.MaxNotifications = 6
Notification:Notify("info","Notification","Test Notification")
```

Guide: This code creates the main window and initializes the notification system. You can set the number of max notifications here.


---

# Add Tab Label
```lua
Window:AddTabLabel('Home')
```
Guide: This adds a label to the window, marking the first tab as "Home."


---

# Create Tabs
```lua
local ExampleTab = Window:AddTab('Example Tab','ads')
```

Guide: Adds tabs to the window. The tabs can be customized with icons (like earth,ads,locked,home,folder,list,code,gun,sword,farm,shop,sun,user,mouse,gear,cosmetics,grenade,retry,crosshair)


---

# Create Left Section in Example Tab
```lua
local Example = ExampleTab:AddSection('Example',"left")
```
# Creating Label
```
Example:AddLabel("Label")
```
Guide: Creates a section in the "Example Tab" aligned to the left, and adds a label called "Label."


---

# Create Button
```lua
Example:AddButton("Test Notification",function()
    print('button')
end)
```

Guide: This creates a button


---

# Create Toggle
```lua
Example:AddToggle('Toggle',false,function(val)
    print("Toggle",val)
end)
```
Guide: Adds a toggle button. It prints the toggle value (true or false) whenever the toggle is changed.


---

# Create Keybind
```lua
Example:AddKeybind('Keybind',Enum.KeyCode.X,function(val)
    print('keybind',val)
end)
```
Guide: Creates a keybind that triggers the function when the X key is pressed, printing the keybind value.


---

# Create Slider
```lua
Example:AddSlider('Slider',1,100,50,function(val)
    print('slider',val)
end)
```
Guide: Creates a slider with a range from 1 to 100, with an initial value of 50. It prints the slider value when adjusted.


---

# Create Dropdown
```lua
Example:AddDropdown('Dropdown',{1,2,3},2,function(val)
    print("dropdown",val)
end)
```
Guide: Adds a dropdown menu with values {1, 2, 3}, and an initial selection of 2. It prints the selected value when changed.


---

# Key System
```lua
local function Start(Key)
	-- script here
end

local KeySystem = NEVERLOSE:KeySystem("Key System","https://example",function(key)
	if key=='1234' then
		return true
	end
	return false
end)

KeySystem:Callback(Start)
```
---
