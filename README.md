# By **Clude*

# NEVERLOSE.CC UI
This is how it's look like (real)
![CludeLib UI](https://github.com/CludeHub/SourceCludeLib/blob/c3bcda14e7e285ef43947c78405d26432a5faac9/e976a087e4ce36998318741ce77d28ec611a6a2a_2_1035x604.png)
![Clude](https://github.com/CludeHub/SourceCludeLib/blob/c3bcda14e7e285ef43947c78405d26432a5faac9/bfca45da0a0086cb167be4c180410d5920b26230.png)
![the Ui](https://github.com/CludeHub/SourceCludeLib/blob/f4873eb6d51b643053667460594ac9b89f56ee64/Screenshot_20250724_022304_com.roblox.client.jpg)
![Ui](https://github.com/CludeHub/SourceCludeLib/blob/d416d43d1d7fcae0c9349097f450090870249c65/IMG_20250731_184148.jpg)
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

# Example Source Script Counter Strike 2 Cheat
```lua
local NEVERLOSE = loadstring(game:HttpGet("https://raw.githubusercontent.com/CludeHub/SourceCludeLib/refs/heads/main/NerverLoseLibEdited.lua"))()
local LOADER = loadstring(game:HttpGet("https://raw.githubusercontent.com/CludeHub/SourceCludeLib/refs/heads/main/loader.Function.lua"))()

LOADER:Add(function()

local Window = NEVERLOSE:AddWindow("NEVERLOSE", "CS:GO CHEAT", 'original')

Window:AddTabLabel('Aimbot')

local RageBot = Window:AddTab('Ragebot', 'CrossHair')
local AntiAim = Window:AddTab('Anti Aim', 'retry')
local LegitBot = Window:AddTab('Legitbt', 'mouse')

Window:AddTabLabel('Visual')

local Players = Window:AddTab('Players', 'user')
local Weapon = Window:AddTab('Weapon', 'gun')
local Grenades = Window:AddTab('Grenades', 'grenade')
local World = Window:AddTab('World', 'earth')
local View = Window:AddTab('View', 'locked')

Window:AddTabLabel('Miscellaneous')

local Main = Window:AddTab('Main', 'list')
local Inventory = Window:AddTab('Inventory', 'sword')
local Scripts = Window:AddTab('Scripts', 'code')
local Config = Window:AddTab('Config', 'gear')

local movement = Main:AddSection('Movement', "left")
local spammers = Main:AddSection('Spammers', "left")
local other = Main:AddSection('Other', "right")
local buybot = Main:AddSection('BuyBot', "right")

local esp = Players:AddSection('ESP', "left")
local glow = Players:AddSection('Glow', "left")
local chams = Players:AddSection('Chams', "right")

local esp2 = Weapon:AddSection('ESP', "left")
local glow2 = Weapon:AddSection('Glow', "left")
local chams2 = Weapon:AddSection('Chams', "right")

local esp3 = Grenades:AddSection('ESP', "left")
local glow3 = Grenades:AddSection('Glow', "left")
local chams3 = Grenades:AddSection('Chams', "right")

local worldmain = World:AddSection('Main', "left")
local worldfog = World:AddSection('Fog', "left")
local worldmisc = World:AddSection('Misc', "right")
local worldhit = World:AddSection('Hit', "right")

local viewcamera = View:AddSection('Camera', "left")
local viewthirdperson = View:AddSection('Thirdperson', "left")
local viewviewmodel = View:AddSection('View Model', "right")
local viewmisc = View:AddSection('Misc', "right")



local ragemain = RageBot:AddSection('Main', "left")
local accuracy = RageBot:AddSection('Accuracy', "left")
local exploits = RageBot:AddSection('Exploits', "right")
local mindamage = RageBot:AddSection('Min. Damage', "right")
local ragemisc = RageBot:AddSection('Misc', "right")


local aimmain = AntiAim:AddSection('Main', "left")
local fakelag = AntiAim:AddSection('Fake Lag', "left")
local fakeangle = AntiAim:AddSection('Fake Angle', "right")
local aimmisc = AntiAim:AddSection('Misc', "right")



local legitmain = LegitBot:AddSection('Main', "left")
local recoil = LegitBot:AddSection('Recoil Control', "left")
local aims = LegitBot:AddSection('Aim', "right")
local delay = LegitBot:AddSection('Delay', "right")
local autofire = LegitBot:AddSection('Auto Fire', "right")


local inventory = Inventory:AddSection('Inventory', "left")
local inventory2 = Inventory:AddSection('Inventory 2', "right")



movement:AddToggle('Auto Jump', false, function(val)
    print("Auto Jump", val)
end)

movement:AddToggle('Auto Strafe', false, function(val)
    print("Auto Strafe", val)
end)

movement:AddSlider('Smoothing', 1, 100, 1, function(val)
    print("Smoothing", val)
end)

movement:AddToggle('WASD Strafe', false, function(val)
    print("WASD Strafe", val)
end)

movement:AddToggle('Circle Strafe', false, function(val)
    print("Circle Strafe", val)
end)

movement:AddToggle('Quick Stop', false, function(val)
    print("Quick Stop", val)
end)

movement:AddToggle('Strafe Assist', false, function(val)
    print("Strafe Assist", val)
end)

movement:AddToggle('Auto Peek', false, function(val)
    print("Auto Peek", val)
end)

movement:AddToggle('Edge Jump', false, function(val)
    print("Edge Jump", val)
end)

movement:AddToggle('Infinity Duck', false, function(val)
    print("Infinity Duck", val)
end)

movement:AddToggle('Blockbot', false, function(val)
    print("Blockbot", val)
end)

spammers:AddToggle('Clantag', false, function(val)
    print("Clantag", val)
end)

spammers:AddToggle('Chat Spam', false, function(val)
    print("Chat Spam", val)
end)

other:AddToggle('Anti Untrusted', false, function(val)
    print("Anti Untrusted", val)
end)

other:AddDropdown('Event Log', {'Damage', 'Hurt', 'Spam'}, 'Damage', function(val)
    print("Event Log", val)
end)

other:AddDropdown('Windows', {'BindList', 'SpectatorList', 'KeybindList'}, 'BindList', function(val)
    print("Windows", val)
end)

other:AddToggle('Filter Server Ads', false, function(val)
    print("Filter Server Ads", val)
end)

other:AddToggle('Filter Console', false, function(val)
    print("Filter Console", val)
end)

other:AddToggle('Unlock Cvars', false, function(val)
    print("Unlock Cvars", val)
end)

other:AddToggle('Fast Reload', false, function(val)
    print("Fast Reload", val)
end)

other:AddToggle('Fast Weapon Switch', false, function(val)
    print("Fast Weapon Switch", val)
end)

other:AddSlider('Fake Ping', 1, 100, 0, function(val)
    print("Fake Ping", val)
end)

buybot:AddToggle('Enable BuyBot', false, function(val)
    print("BuyBot Enabled:", val)
end)

buybot:AddDropdown('Primary', {'AK-47', 'M4A1-S', 'AWP', 'SG-553'}, 'AK-47', function(val)
    print("Primary Selected:", val)
end)

buybot:AddDropdown('Secondary', {'Glock', 'USP-S', 'Deagle', 'P250'}, 'Glock', function(val)
    print("Secondary Selected:", val)
end)

buybot:AddDropdown('Equipment', {'Kevlar', 'Helmet', 'Defuse Kit', 'Grenades'}, 'Kevlar', function(val)
    print("Equipment Selected:", val)
end)

esp:AddToggle('Enable ESP', false, function(val)
    print("ESP Enabled:", val)
end)

esp:AddToggle('Through Walls', false, function(val)
    print("Through Walls ESP:", val)
end)

esp:AddDropdown('Bullet Tracer', {'None', 'Line', 'Beam', 'Laser'}, 'None', function(val)
    print("Bullet Tracer Type:", val)
end)

esp:AddToggle('Dynamic Boxes', false, function(val)
    print("Dynamic Boxes:", val)
end)

esp:AddToggle('In-Game Radar', false, function(val)
    print("In-Game Radar Enabled:", val)
end)

esp:AddToggle('Dormant', false, function(val)
    print("Dormant ESP:", val)
end)

esp:AddToggle('Shared ESP', false, function(val)
    print("Shared ESP:", val)
end)

esp:AddDropdown('Sound ESP', {'None', 'Circle', 'Fade Circle', 'Wave'}, 'None', function(val)
    print("Sound ESP:", val)
end)

esp:AddDropdown('Offscreen ESP', {'Arrow', 'Triangle', 'Line', 'Glow Dot'}, 'Arrow', function(val)
    print("Offscreen ESP:", val)
end)

glow:AddToggle('Enable Glow', false, function(val)
    print("Glow Enabled:", val)
end)

chams:AddToggle('Enable Chams', false, function(val)
    print("Chams Enabled:", val)
end)

chams:AddToggle('Through Walls', false, function(val)
    print("Through Walls:", val)
end)

chams:AddDropdown('Style', {'Textured', 'Flat', 'Glow', 'Glow Outline', 'Glass', 'Material'}, 'Textured', function(val)
    print("Chams Style:", val)
end)

chams:AddToggle('Backtrack', false, function(val)
    print("Backtrack Enabled:", val)
end)

chams:AddDropdown('Backtrack Style', {'Textured', 'Flat', 'Glow', 'Glow Outline', 'Glass', 'Material'}, 'Textured', function(val)
    print("Backtrack Style:", val)
end)

chams:AddToggle('On Shot', false, function(val)
    print("On Shot Enabled:", val)
end)

chams:AddDropdown('On Shot Style', {'Textured', 'Flat', 'Glow', 'Glow Outline', 'Glass', 'Material'}, 'Textured', function(val)
    print("On Shot Style:", val)
end)

chams:AddToggle('Ragdolls', false, function(val)
    print("Ragdolls Enabled:", val)
end)

chams:AddDropdown('Ragdoll Style', {'Textured', 'Flat', 'Glow', 'Glow Outline', 'Glass', 'Material'}, 'Textured', function(val)
    print("Ragdoll Style:", val)
end)

esp2:AddToggle('Enable ESP', false, function(val)
    print("Weapon ESP Enabled:", val)
end)

esp2:AddToggle('Through Walls', false, function(val)
    print("Weapon ESP Through Walls:", val)
end)

glow2:AddToggle('Enable Glow', false, function(val)
    print("Weapon Glow Enabled:", val)
end)

chams2:AddToggle('Enable Chams', false, function(val)
    print("Weapon Chams Enabled:", val)
end)

chams2:AddToggle('Through Walls', false, function(val)
    print("Weapon Chams Through Walls:", val)
end)

chams2:AddDropdown('Style', {'Textured', 'Flat', 'Glow', 'Glow Outline', 'Glass', 'Material'}, 'Textured', function(val)
    print("Weapon Chams Style:", val)
end)

esp3:AddToggle('Enable ESP', false, function(val)
    print("Grenade ESP Enabled:", val)
end)

esp3:AddToggle('Through Walls', false, function(val)
    print("Grenade ESP Through Walls:", val)
end)

esp3:AddToggle('Warning', false, function(val)
    print("Grenade Warning Enabled:", val)
end)

esp3:AddToggle('Trajectory', false, function(val)
    print("Grenade Trajectory Enabled:", val)
end)

esp3:AddToggle('Prediction', false, function(val)
    print("Grenade Prediction Enabled:", val)
end)

chams3:AddToggle('Enable Chams', false, function(val)
    print("Grenade Chams Enabled:", val)
end)

chams3:AddToggle('Through Walls', false, function(val)
    print("Grenade Chams Through Walls:", val)
end)

glow3:AddToggle('Through Walls', false, function(val)
    print("Grenade Chams Through Walls:", val)
end)

chams3:AddDropdown('Style', {'Textured', 'Flat', 'Glow', 'Glow Outline', 'Glass', 'Material'}, 'Textured', function(val)
    print("Grenade Chams Style:", val)
end)

worldmain:AddToggle('Night Mode', false, function(val)
    print("Night Mode:", val)
end)

worldmain:AddDropdown('Sky Box', {'Night 1', 'Night 2', 'Night 3', 'Day 1', 'Day 2', 'Day 3'}, 'Night 3', function(val)
    print("Sky Box Selected:", val)
end)

worldmain:AddToggle('Post Processing', false, function(val)
    print("Post Processing:", val)
end)

worldmain:AddSlider('Asus Walls', 0, 100, 50, function(val)
    print("Asus Walls Transparency:", val)
end)

worldmain:AddSlider('Asus Props', 0, 100, 50, function(val)
    print("Asus Props Transparency:", val)
end)

worldmain:AddDropdown('Removals', {'Smoke', 'Flashbang', 'Both'}, 'Smoke', function(val)
    print("Removals Selected:", val)
end)

worldmain:AddDropdown('Ragdoll Physics', {'Default', 'Rubber', 'Metal', 'Ragdoll Off'}, 'Default', function(val)
    print("Ragdoll Physics:", val)
end)

worldfog:AddToggle('Enable Fog', false, function(val)
    print("Fog Enabled:", val)
end)

worldfog:AddSlider('Start Distance', 0, 10000, 500, function(val)
    print("Fog Start Distance:", val)
end)

worldfog:AddSlider('End Distance', 0, 10000, 1000, function(val)
    print("Fog End Distance:", val)
end)

worldfog:AddSlider('Density', 0, 100, 10, function(val)
    print("Fog Density:", val)
end)

worldmisc:AddToggle('NoScope Crosshair', false, function(val)
    print("NoScope Crosshair:", val)
end)

worldmisc:AddDropdown('Autowall Crosshair', {'Off', 'Red/Green', 'Penetrable Only', 'Always On'}, 0, function(val)
    print("Autowall Crosshair Mode:", val)
end)

worldmisc:AddToggle('Damage Indicator', false, function(val)
    print("Damage Indicator:", val)
end)

worldmisc:AddToggle('Preserve Killfeed', false, function(val)
    print("Preserve Killfeed:", val)
end)

worldmisc:AddDropdown('Reveals', {'None', 'Reveal Ranks', 'Reveal Money', 'Reveal Both'}, 0, function(val)
    print("Reveals Option:", val)
end)


worldhit:AddToggle('Hit Marker', false, function(val)
    print("Hit Marker Enabled:", val)
end)

worldhit:AddToggle('Hit Sound', false, function(val)
    print("Hit Sound Enabled:", val)
end)

worldhit:AddSlider('Volume', 0, 100, 50, function(val)
    print("Hit Sound Volume:", val)
end)

worldhit:AddToggle('Client Bullet Impacts', false, function(val)
    print("Client Bullet Impacts Enabled:", val)
end)

worldhit:AddToggle('Server Bullet Impacts', false, function(val)
    print("Server Bullet Impacts Enabled:", val)
end)

worldhit:AddSlider('Duration', 0, 10, 5, function(val)
    print("Bullet Impacts Duration:", val)
end)


viewcamera:AddSlider('FOV', 60, 150, 90, function(val)
    print("FOV Set To:", val)
end)

viewcamera:AddSlider('Force FOV in Scope', 60, 150, 90, function(val)
    print("Force FOV In Scope:", val)
end)

viewcamera:AddSlider('Remove Scope', 0, 100, 100, function(val)
    print("Remove Scope Amount:", val)
end)

viewcamera:AddSlider('Remove Visual Recoil', 0, 100, 100, function(val)
    print("Visual Recoil Removed:", val)
end)




viewviewmodel:AddSlider('FOV', 60, 150, 90, function(val)
    print("Viewmodel FOV:", val)
end)

viewviewmodel:AddSlider('X', -50, 50, 0, function(val)
    print("Viewmodel X Offset:", val)
end)

viewviewmodel:AddSlider('Y', -50, 50, 0, function(val)
    print("Viewmodel Y Offset:", val)
end)

viewviewmodel:AddSlider('Z', -50, 50, 0, function(val)
    print("Viewmodel Z Offset:", val)
end)

viewviewmodel:AddSlider('ROLL', -180, 180, 0, function(val)
    print("Viewmodel Roll:", val)
end)


viewthirdperson:AddSlider('Enable Thirdperson', 0, 1, 0, function(val)
    print("Thirdperson Enabled:", val)
end)

viewthirdperson:AddToggle('Distance', false, function(val)
    print("Thirdperson Distance Toggle:", val)
end)

viewthirdperson:AddSlider('In Spectators', 0, 1, 0, function(val)
    print("Thirdperson In Spectators:", val)
end)


viewmisc:AddToggle('Aspect Ratio', false, function(val)
    print("Aspect Ratio Enabled:", val)
end)

viewmisc:AddSlider('Value', 0, 200, 100, function(val)
    print("Aspect Ratio Value:", val)
end)


ragemain:AddToggle('Enable Ragebot', false, function(val)
    print("Ragebot Enabled:", val)
end)

ragemain:AddToggle('Silent Aim', false, function(val)
    print("Silent Aim:", val)
end)

ragemain:AddSlider('Fov', 0, 180, 90, function(val)
    print("Ragebot FOV:", val)
end)

ragemain:AddToggle('Override Resolver', false, function(val)
    print("Override Resolver:", val)
end)



accuracy:AddSlider('Hit Chance', 0, 100, 50, function(val)
    print("Hit Chance:", val)
end)

accuracy:AddToggle('Static Point Scale', false, function(val)
    print("Static Point Scale Enabled:", val)
end)

accuracy:AddDropdown('Safe Points', {'Off', 'Center Only', 'Force Center'}, 0, function(val)
    print("Safe Points Mode:", val)
end)

accuracy:AddDropdown('Force Conditions', {'None', 'Force Head', 'Force Limbs', 'Force Both'}, 0, function(val)
    print("Force Conditions Selected:", val)
end)

accuracy:AddToggle('Head Safety if Lethal', false, function(val)
    print("Head Safety if Lethal Enabled:", val)
end)

accuracy:AddDropdown('Body Aim', {'Default', 'Prefer Body', 'Force Body', 'After Misses'}, 0, function(val)
    print("Body Aim Mode:", val)
end)

accuracy:AddSlider('Max Misses', 0, 10, 2, function(val)
    print("Max Misses To Force Safepoint:", val)
end)


exploits:AddToggle('Hide Shots', false, function(val)
    print("Hide Shots Enabled:", val)
end)

exploits:AddToggle('Double Tap', false, function(val)
    print("Double Tap Enabled:", val)
end)

exploits:AddDropdown('Mode', {'Default', 'Teleport'}, 0, function(val)
    print("Double Tap Mode:", val)
end)

exploits:AddToggle('Teleport Boost', false, function(val)
    print("Teleport Boost Enabled:", val)
end)



mindamage:AddSlider('Visible', 0, 100, 30, function(val)
    print("Minimum Damage Visible:", val)
end)

mindamage:AddSlider('Autowall', 0, 100, 20, function(val)
    print("Minimum Damage Autowall:", val)
end)



ragemisc:AddToggle('Auto Stop', false, function(val)
    print("Auto Stop Enabled:", val)
end)

ragemisc:AddDropdown('Conditions', {'Always', 'Only Lethal', 'Force Head', 'Force Body'}, 0, function(val)
    print("Auto Stop Condition:", val)
end)

ragemisc:AddToggle('Auto Scope', false, function(val)
    print("Auto Scope Enabled:", val)
end)


aimmain:AddToggle('Enable Antiaim', false, function(val)
    print("Antiaim Enabled:", val)
end)

aimmain:AddDropdown('Pitch', {'Off', 'Up', 'Down', 'Zero', 'Jitter'}, 0, function(val)
    print("Pitch Selected:", val)
end)

aimmain:AddDropdown('Yaw Base', {'Local View', 'At Target', 'Backwards', 'Left', 'Right'}, 0, function(val)
    print("Yaw Base Selected:", val)
end)

aimmain:AddSlider('Yaw Add', -180, 180, 0, function(val)
    print("Yaw Add:", val)
end)

aimmain:AddDropdown('Yaw Modifier', {'Off', 'Center', 'Jitter', 'Random'}, 0, function(val)
    print("Yaw Modifier Selected:", val)
end)

aimmain:AddSlider('Yaw Modifier Degree', 0, 180, 0, function(val)
    print("Yaw Modifier Degree:", val)
end)



fakelag:AddToggle('Enable Fake Lag', false, function(val)
    print("Fake Lag Enabled:", val)
end)

fakelag:AddDropdown('Triggers', {'Always', 'On Peek', 'On Move', 'On Shot'}, 0, function(val)
    print("Fake Lag Trigger:", val)
end)

fakelag:AddSlider('Limit', 1, 16, 14, function(val)
    print("Fake Lag Limit:", val)
end)

fakelag:AddSlider('Trigger Limit', 1, 16, 8, function(val)
    print("Fake Lag Trigger Limit:", val)
end)

fakelag:AddSlider('Randomization', 0, 100, 0, function(val)
    print("Fake Lag Randomization:", val)
end)


fakeangle:AddToggle('Enable Fake Angles', false, function(val)
    print("Fake Angles Enabled:", val)
end)

fakeangle:AddSlider('Inverter', -180, 180, 0, function(val)
    print("Inverter Value:", val)
end)

fakeangle:AddSlider('Fake Limits', 0, 60, 30, function(val)
    print("Fake Limits:", val)
end)

fakeangle:AddDropdown('Fake Options', {'Static', 'Jitter', 'Switch', 'Random'}, 0, function(val)
    print("Fake Options Selected:", val)
end)

fakeangle:AddDropdown('LBY Mode', {'Normal', 'Opposite', 'Break LBY'}, 0, function(val)
    print("LBY Mode Selected:", val)
end)

fakeangle:AddDropdown('Freestanding Desync', {'Off', 'On Damage', 'On Peek'}, 0, function(val)
    print("Freestanding Desync Mode:", val)
end)

fakeangle:AddDropdown('Desync On-Shot', {'Off', 'Static', 'Switch', 'Jitter'}, 0, function(val)
    print("Desync On-Shot Mode:", val)
end)


aimmain:AddDropdown('Slow Walk', {'Off', 'Always On', 'On Key'}, 0, function(val)
    print("Slow Walk Mode:", val)
end)

aimmain:AddDropdown('Leg Movement', {'Sliding', 'Walking'}, 0, function(val)
    print("Leg Movement Style:", val)
end)

aimmain:AddToggle('Fake Duck', false, function(val)
    print("Fake Duck Enabled:", val)
end)


legitmain:AddToggle('Enable Legit Bot', false, function(val)
    print("Legit Bot Enabled:", val)
end)

legitmain:AddDropdown('Activation', {'Always On', 'On Key'}, 0, function(val)
    print("Legitbot Activation:", val)
end)

legitmain:AddDropdown('Disable Aimbot If', {'None', 'Flashed', 'Air', 'Reloading'}, 0, function(val)
    print("Disable Aimbot Condition:", val)
end)

legitmain:AddSlider('Backtracking', 0, 200, 100, function(val)
    print("Backtracking Ticks:", val)
end)

legitmain:AddSlider('Draw FOV', 0, 180, 90, function(val)
    print("FOV Radius:", val)
end)

legitmain:AddToggle('Autopistol', false, function(val)
    print("Autopistol Enabled:", val)
end)




recoil:AddToggle('Enable RCS', false, function(val)
    print("RCS Enabled:", val)
end)

recoil:AddToggle('Standalone', false, function(val)
    print("Standalone RCS Enabled:", val)
end)

recoil:AddSlider('Pitch', 0, 100, 50, function(val)
    print("RCS Pitch:", val)
end)

recoil:AddSlider('Yaw', 0, 100, 50, function(val)
    print("RCS Yaw:", val)
end)


aims:AddSlider('FOV', 0, 180, 90, function(val)
    print("Aimbot FOV:", val)
end)

aims:AddSlider('Smooth', 1, 100, 50, function(val)
    print("Aimbot Smooth:", val)
end)


delay:AddSlider('After Kill', 0, 1, 0, function(val)
    print("After Kill Delay Enabled:", val)
end)

delay:AddSlider('First Bullet Delay', 0, 500, 100, function(val)
    print("First Bullet Delay (ms):", val)
end)

autofire:AddToggle('Enable Auto Fire', false, function(val)
    print("Auto Fire Enabled:", val)
end)

autofire:AddSlider('Hitchance', 0, 100, 50, function(val)
    print("Auto Fire Hitchance:", val)
end)

-- INVENTORY SECTION
inventory:AddToggle('Enable Inventory', false, function(val)
    print("Inventory Enabled:", val)
end)

inventory:AddDropdown('Glove Changer', {'Crimson Weave', 'Vice', 'Pandora', 'Emerald Web'}, 0, function(val)
    print("Glove Selected:", val)
end)

inventory:AddDropdown('Knife Changer', {'Karambit', 'Butterfly', 'M9 Bayonet', 'Talon'}, 0, function(val)
    print("Knife Selected:", val)
end)

inventory:AddDropdown('Skin Quality', {'Factory New', 'Minimal Wear', 'Field-Tested', 'Well-Worn', 'Battle-Scarred'}, 0, function(val)
    print("Skin Quality Selected:", val)
end)

inventory:AddDropdown('Stickers', {'Holo', 'Foil', 'Gold', 'Paper'}, 0, function(val)
    print("Sticker Type:", val)
end)

inventory:AddToggle('StatTrak', false, function(val)
    print("StatTrak Enabled:", val)
end)

inventory:AddSlider('StatTrak Kills', 0, 99999, 0, function(val)
    print("StatTrak Kills Set:", val)
end)

inventory:AddDropdown('Weapon Charms', {'Skull', 'Star', 'Heart', 'Diamond'}, 0, function(val)
    print("Charm Selected:", val)
end)

inventory:AddDropdown('Inventory Display', {'Grid View', 'List View', 'Compact', 'Detailed'}, 0, function(val)
    print("Inventory Display Mode:", val)
end)

inventory:AddToggle('Enable Medal Case', false, function(val)
    print("Medal Case Enabled:", val)
end)

inventory:AddDropdown('Medal Display', {'Show All', 'Favorites Only', 'Hide Duplicates'}, 0, function(val)
    print("Medal Display Option:", val)
end)

inventory:AddSlider('Medal Size', 0, 100, 50, function(val)
    print("Medal Size Set:", val)
end)

inventory:AddToggle('Enable Loadout Presets', false, function(val)
    print("Loadout Presets Enabled:", val)
end)

inventory:AddDropdown('Loadout Preset', {'Aggressive', 'Defensive', 'Default', 'Eco'}, 0, function(val)
    print("Loadout Preset Selected:", val)
end)

inventory:AddSlider('Item Glow Intensity', 0, 100, 20, function(val)
    print("Item Glow Intensity:", val)
end)

inventory:AddDropdown('Item Outline Style', {'Soft', 'Sharp', 'Blurred', 'Neon'}, 0, function(val)
    print("Outline Style Selected:", val)
end)

inventory:AddToggle('Auto Equip New Skins', false, function(val)
    print("Auto Equip Enabled:", val)
end)

inventory:AddSlider('Inventory Volume', 0, 100, 50, function(val)
    print("Inventory Volume:", val)
end)

inventory:AddDropdown('Inspect Animation', {'Spin', 'Flip', 'Zoom', 'Glitch'}, 0, function(val)
    print("Inspect Animation Selected:", val)
end)

inventory:AddToggle('Enable Pattern Override', false, function(val)
    print("Pattern Override Enabled:", val)
end)

inventory:AddSlider('Pattern Index', 0, 1000, 0, function(val)
    print("Pattern Index Set:", val)
end)



-- INVENTORY2 SECTION
inventory2:AddToggle('Enable Inventory2', false, function(val)
    print("Inventory2 Enabled:", val)
end)

inventory2:AddDropdown('Case Opening Style', {'Classic', 'Fast Open', 'Cinematic', 'Silent'}, 0, function(val)
    print("Case Opening Style:", val)
end)

inventory2:AddDropdown('Case Glow', {'Rainbow', 'Pulse', 'Static', 'Fade'}, 0, function(val)
    print("Case Glow Selected:", val)
end)

inventory2:AddToggle('Auto Case Open', false, function(val)
    print("Auto Case Open Enabled:", val)
end)

inventory2:AddSlider('Case Open Speed', 1, 10, 5, function(val)
    print("Case Open Speed:", val)
end)

inventory2:AddDropdown('Display Mode', {'Showcase', 'Stacked', 'Hidden', 'Full View'}, 0, function(val)
    print("Display Mode Selected:", val)
end)

inventory2:AddDropdown('Background Theme', {'Dark', 'Light', 'Cyber', 'Retro'}, 0, function(val)
    print("Background Theme Selected:", val)
end)

inventory2:AddToggle('Enable Trade-Up Simulator', false, function(val)
    print("Trade-Up Simulator Enabled:", val)
end)

inventory2:AddDropdown('Trade-Up Result', {'Higher Tier', 'Same Tier', 'Random', 'Secret'}, 0, function(val)
    print("Trade-Up Result Selected:", val)
end)

inventory2:AddSlider('Skin Brightness', 0, 100, 50, function(val)
    print("Skin Brightness:", val)
end)

inventory2:AddDropdown('Music Kit', {'Rock', 'Trap', 'Electronic', 'Classic'}, 0, function(val)
    print("Music Kit Selected:", val)
end)

inventory2:AddSlider('Music Volume', 0, 100, 50, function(val)
    print("Music Volume Set:", val)
end)

inventory2:AddDropdown('Item Rotation', {'Static', 'Auto Rotate', 'Mouse Control', 'Spin'}, 0, function(val)
    print("Item Rotation Mode:", val)
end)

inventory2:AddToggle('Enable Skin Shaders', false, function(val)
    print("Skin Shaders Enabled:", val)
end)

inventory2:AddSlider('Shader Intensity', 0, 100, 50, function(val)
    print("Shader Intensity:", val)
end)

inventory2:AddDropdown('Skin Reflection', {'Matte', 'Glossy', 'Pearlescent', 'Chrome'}, 0, function(val)
    print("Reflection Type Selected:", val)
end)

inventory2:AddToggle('Enable Scratch Wear', false, function(val)
    print("Scratch Wear Enabled:", val)
end)

inventory2:AddSlider('Scratch Amount', 0, 100, 20, function(val)
    print("Scratch Amount:", val)
end)
end)
```
