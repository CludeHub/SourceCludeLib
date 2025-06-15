
---

# NEVERLOSE UI PC, TABLET
# By: **C-A-T-S-U-S*
# Edited by: **CludeHub*

# About Neverlose
![Goo](https://github.com/CludeHub/SourceCludeLib/blob/f9c87ac4e7108b95a017195ff366f3dd4d820771/IMG_20250614_150349.png)
# Example UI Arsenal
![Alt Text](https://github.com/CludeHub/SourceCludeLib/blob/2470b439e72f89455ea5ea04655f0248c8003796/Screenshot_20250614_180428_com.roblox.client.jpg)
![Image Alt](https://github.com/CludeHub/SourceCludeLib/blob/ddc7e4d5691820eed14d18faba41507cbb4f196a/Screenshot_20250614_180436_com.roblox.client.jpg)
## # Load NEVERLOSE UI Library
```lua
local NEVERLOSE = loadstring(game:HttpGet("https://raw.githubusercontent.com/CludeHub/SourceCludeLib/refs/heads/main/NerverLoseLibEdited.lua"))()
```

Guide: This loads the NEVERLOSE UI library from the GitHub repository.

---

# Create Main Window and Notification System
```lua
local Window = NEVERLOSE:AddWindow("NEVERLOSE","TEXT HERE")
```
```lua
local Notification = NEVERLOSE:Notification()
Notification.MaxNotifications = 6
Notification:Notify("info","Notification","Test Notification")
    Notification:Notify("warning","Notification","Don't Spam",4)
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

Guide: Adds tabs to the window. The tabs can be customized with icons (like earth,ads,locked,home,folder,list,code,gun,sword,farm,shop,sun,user,mouse,gear,cosmetics)


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

# Create Right Section in Example Tab
```lua
local Test = ExampleTab:AddSection('Test',"right")

Test:AddToggle('Example',true,function(val)
    if val then
        Example:Show()
    else
        Example:Hide()
    end
end)
```
Guide: Adds a toggle in the right section of the "Example Tab." If toggled on, it shows the "Example" section; if toggled off, it hides the section.


---

# Create Section in MainTab
```lua
local SectionTest = MainTab:AddSection('Test',"left")

SectionTest:AddButton("Kick",function()
    game.Players.LocalPlayer:Kick()
end)
```
Guide: Adds a button in the "MainTab" to kick the local player from the game (this line is commented out for safety).
