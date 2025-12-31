local WindUI = loadstring(game:HttpGet("https://github.com/ewewe514/WindUI/releases/latest/download/main.lua"))()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CoreGui = game:GetService("CoreGui")

local Window = WindUI:CreateWindow({
    Folder = "Ringta Scripts",
    Title = "RINGTA SCRIPTS",
    Icon = "star",
    Author = "RINGTA and BUBLIK6241",
    Theme = "Dark",
    Size = UDim2.fromOffset(620, 460),
    HasOutline = true,
})

Window:EditOpenButton({
    Title = "Open RINGTA SCRIPTS",
    Icon = "pointer",
    CornerRadius = UDim.new(0, 6),
    StrokeThickness = 2,
    Color = ColorSequence.new(Color3.fromRGB(200, 0, 255), Color3.fromRGB(0, 200, 255)),
    Draggable = true,
    OnlyMobile = false,
})



MainSection = Window:Section({
    Title = "Main",
    Opened = true,
})

local Tabs = {
    Home = Window:Tab({ Title = "(Logs)", Icon = "star" }),
    Main = Window:Tab({ Title = "Dupe (Logs)", Icon = "star" }),
    Teleport = Window:Tab({ Title = "Teleport", Icon = "rocket" }),
    Bring = Window:Tab({ Title = "Bring All Items", Icon = "package" }),
    AutoDays = Window:Tab({ Title = "Auto Day Farm", Icon = "sun" }),
    KillAll = Window:Tab({ Title = "Godmode", Icon = "skull" }),
    Esp = Window:Tab({ Title = "Diamond Farm", Icon = "eye" }),
}

local Themes = {}

for Name, _ in pairs(WindUI:GetThemes()) do
    table.insert(Themes, Name)
end

Tabs.Home:Dropdown({
    Title = "Theme",
    Multi = false,
    AllowNone = false,
    Value = "Dark",
    Values = Themes,
    Callback = function(v)
        WindUI:SetTheme(v)
    end
})

Tabs.Home:Toggle({
    Title = "Transparency",
    Icon = "palette",
    Value = WindUI:GetTransparency(),
    Callback = function(v)
        Window:ToggleTransparency(v)
    end
})

Tabs.AutoDays:Toggle({
    Title = "Enable Godmode",
    Default = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/NEWTPTRAIN.github.io/refs/heads/main/TRAIN.LUA"))()
    end,
})


Tabs.AutoDays:Toggle({
    Title = "Auto Get All Candies",
    Default = false,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/NEWTPTRAIN.github.io/refs/heads/main/TRAIN.LUA"))()
    end,
})

Tabs.AutoDays:Button({
    Title = "Auto Save All Children",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/castletpfast.github.io/refs/heads/main/FASTCASTLE.lua"))()
    end,
})

Tabs.AutoDays:Button({
    Title = "Diamond Farm Fast",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/castletpfast.github.io/refs/heads/main/FASTCASTLE.lua"))()
    end,
})
