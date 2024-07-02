local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Mentos Hub",
    LoadingTitle = "Mentos Hub",
    LoadingSubtitle = "by mentos",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local PlayerTab = Window:CreateTab("Player(Blox Fruits)", 4483362458) -- Title, Image

 local Slider = PlayerTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {10, 100},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 10,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    game.Players.LocalPlayer.Character:SetAttribute("SpeedMultiplier", Value)
    end,
 })

 local Slider = PlayerTab:CreateSlider({
    Name = "Dash Length",
    Range = {10, 1000},
    Increment = 1,
    Suffix = "Length",
    CurrentValue = 10,
    Flag = "Slider2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
     game.Players.LocalPlayer.Character:SetAttribute("DashLength", Value)
    end,
 })

 local Slider = PlayerTab:CreateSlider({
    Name = "Jump Height",
    Range = {10, 500},
    Increment = 1,
    Suffix = "Height",
    CurrentValue = 10,
    Flag = "Slider3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
     game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
 })

 local AimbotTab = Window:CreateTab("Aimbot(Recomended for FFA because you can aim to your teammates)", 4483362458) -- Title, Image

 local Button = AimbotTab:CreateButton({
    Name = "Start",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()()
        local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
        Aimbot.Load()
        ExunysDeveloperAimbot.Load()    
    end,
 })

 local BGPTab = Window:CreateTab("Big Paintball(NOT 2)", 4483362458) -- Title, Image

 local Button = BGPTab:CreateButton({
    Name = "Start",
    Callback = function()
        getgenv().Enabled = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/WetCheezit/Releases/main/Big-Paintball/KillAll.lua"))()  
    end,
 })

 local YanTab = Window:CreateTab("ForYan", 4483362458) -- Title, Image

 local Button = BGPTab:CreateButton({
    Name = "Start",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/mentosbabapro/a/main/suzelock.lua"))()

    end,
 })
