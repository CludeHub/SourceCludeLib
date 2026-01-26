# By **Clude*

# NEVERLOSE.CC UI

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

Example:AddButton("Click me", function()
end)

Example:AddToggle('Toggle',false,function(val)
    print("Toggle",val)
end)

Example:AddSlider('Slider',1,100,50,function(val)
    print('slider',val)
end)

Example:AddDropdown('Dropdown',{"1","2","3"},"2",function(val)
    print("dropdown",val)
end)

Example:AddButton("Test Notification",function()
    print('button')
end)

Example:Colorpicker("Color", Color3.fromRGB(0, 172, 255), function(val)
end)
end)
```

# Key System
```lua

local function Start(Key)
	-- your code here
end

local KeySystem = NEVERLOSE:KeySystem("Key System","https://link",function(key)
	if key=='1234' then
		return true
	end
	return false
end)

KeySystem:Callback(Start)
```

# Example Source Script Counter Strike 2 Cheat
```lua
local NEVERLOSE = loadstring(game:HttpGet("https://raw.githubusercontent.com/CludeHub/SourceCludeLib/refs/heads/main/NerverLoseLibEdited.lua"))()
    local Window = NEVERLOSE:AddWindow("NEVERLOSE","SSG-08",'original')

    
Window:AddTabLabel("Aimbot")
    local RageTab = Window:AddTab("Rage","crosshair")

    local Main = RageTab:AddSection("MAIN","left")
    Main:AddToggle("Enabled",true,function(v)end)
    Main:AddToggle("Silent Aim",true,function(v)end)
    Main:AddToggle("Automatic Fire",true,function(v)end)
    Main:AddToggle("Penetrate Walls",true,function(v)end)
    Main:AddSlider("Field of View",1,180,180,function(v)end)

    local Selection = RageTab:AddSection("SELECTION","left")
    Selection:AddDropdown("Target",{"Highest Damage","Closest"},"Highest Damage",function(v)end)
    Selection:AddDropdown("Hitboxes",{"Head","Chest","Stomach"},"Head",function(v)end)
    Selection:AddDropdown("Multipoint",{"Head","Chest","Stomach"},"Head",function(v)end)
    Selection:AddSlider("Hit Chance",1,100,65,function(v)end)
    Selection:AddSlider("Min Damage",1,100,100,function(v)end)
    Selection:AddToggle("Auto Stop",true,function(v)end)
    Selection:AddToggle("Auto Scope",true,function(v)end)

    local Other = RageTab:AddSection("OTHER","right")
    Other:AddDropdown("History",{"Maximum","Medium","Low"},"Maximum",function(v)end)
    Other:AddToggle("Delay Shot",true,function(v)end)
    Other:AddToggle("Duck Peek Assist",false,function(v)end)
    Other:AddToggle("Quick Peek Assist",false,function(v)end)
    Other:AddDropdown("Magic Bullet",{"Off","On"},"Off",function(v)end)
    Other:AddDropdown("Rapid Fire",{"Default","Instant"},"Default",function(v)end)

    local AntiAim = RageTab:AddSection("ANTI-AIM","right")
    AntiAim:AddToggle("Enabled",false,function(v)end)
    AntiAim:AddDropdown("Pitch",{"Down","Up","Zero"},"Down",function(v)end)
    AntiAim:AddDropdown("Yaw",{"Backward","Forward","Zero"},"Backward",function(v)end)
    AntiAim:AddDropdown("Yaw Jitter",{"Disabled","Low","High"},"Disabled",function(v)end)
    AntiAim:AddToggle("Slow Walk",false,function(v)end)
    AntiAim:AddToggle("Freestanding",false,function(v)end)



```
