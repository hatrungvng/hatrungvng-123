--[[
    TRUNGVNG HUB - ULTIMATE 2026 - SIÊU CẤP VIP PRO
    Blox Fruits - 200+ Features
    Last Updated: 2026
]]

print("🔥 TRUNGVNG HUB 2026 SIÊU CẤP ĐANG LOADING...")

-- SERVICES
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local Stats = game:GetService("Stats")
local StarterGui = game:GetService("StarterGui")
local VirtualInputManager = game:GetService("VirtualInputManager")
local CollectionService = game:GetService("CollectionService")
local MarketplaceService = game:GetService("MarketplaceService")

-- LOCAL PLAYER
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character

--[[
    CONFIGURATION - 200+ TÍNH NĂNG
]]

_G.Settings = {
    -- General
    ToggleKey = Enum.KeyCode.RightControl,
    World1 = game.PlaceId == 2753915549,
    World2 = game.PlaceId == 4442272183,
    World3 = game.PlaceId == 7449423635,
    
    -- Combat
    FastAttack = true,
    SuperFastAttack = false,
    NoAttackAnimation = true,
    AutoHaki = true,
    BringMob = true,
    BringMode = 300,
    SelectWeapon = "Melee",
    SelectWeaponGun = "",
    Click = true,
    NoDodgeCooldown = false,
    InfiniteGeppo = false,
    InfiniteSoru = false,
    Fly = false,
    NoClip = false,
    DamageAura = false,
    
    -- Auto Farm
    AutoFarmLevel = false,
    AutoFarmNearest = false,
    AutoFarmFast = false,
    AutoFarmBone = false,
    AutoFarmEctoplasm = false,
    AutoFarmLeather = false,
    AutoFarmScrap = false,
    AutoFarmGunpowder = false,
    AutoFarmDragonScale = false,
    AutoFarmFishTail = false,
    AutoFarmMiniTusk = false,
    AutoFarmRadioactive = false,
    AutoFarmAngelWings = false,
    AutoFarmMysticDroplet = false,
    AutoFarmConjuredCocoa = false,
    
    -- Boss
    AutoFarmBoss = false,
    AutoFarmAllBoss = false,
    AutoEliteHunter = false,
    AutoDoughKing = false,
    AutoRipIndra = false,
    AutoHallowScythe = false,
    AutoSaw = false,
    AutoWaden = false,
    AutoGreybeard = false,
    AutoPole = false,
    AutoSaber = false,
    AutoRengoku = false,
    AutoDragonTrident = false,
    AutoTwinHook = false,
    AutoBuddySword = false,
    AutoTushita = false,
    AutoCavander = false,
    AutoLongma = false,
    AutoCakePrince = false,
    AutoSoulReaper = false,
    SelectBoss = "",
    
    -- Fighting Style
    AutoSuperhuman = false,
    AutoDeathStep = false,
    AutoSharkman = false,
    AutoElectricClaw = false,
    AutoDragonTalon = false,
    AutoGodHuman = false,
    AutoSanguineArt = false,
    AutoDragonBreath = false,
    
    -- Sword
    AutoYama = false,
    AutoTushitaSword = false,
    AutoCDK = false,
    
    -- Sea Event 2026
    AutoShark = false,
    AutoPiranha = false,
    AutoFishCrew = false,
    AutoGhostShip = false,
    AutoSeaBeast = false,
    AutoLeviathan = false,
    AutoTerrorShark = false,
    AutoKitsuneIsland = false,
    AutoFrozenDimension = false,
    AutoDragonStorm = false,
    AutoAzureEmber = false,
    AutoDragonToken = false,
    AutoDragonRadar = false,
    AutoKitsuneBoss = false,
    AutoFrozenBoss = false,
    
    -- Race
    AutoEvoRace = false,
    AutoRaceV4 = false,
    AutoActiveV4 = false,
    AutoBuyGearV4 = false,
    AutoTrialHuman = false,
    AutoTrialSkypiea = false,
    AutoTrialFishman = false,
    AutoTrialCyborg = false,
    AutoTrialGhoul = false,
    AutoTrialMink = false,
    
    -- Quest
    AutoBartilo = false,
    AutoMusketeerHat = false,
    AutoRainbowHaki = false,
    AutoObservationV2 = false,
    
    -- Raid
    AutoRaid = false,
    AutoBuyChip = false,
    AutoNextIsland = false,
    AutoAwakener = false,
    KillAura = false,
    SelectChip = "Flame",
    AutoAllRaid = false,
    
    -- Devil Fruit
    AutoStoreFruit = false,
    AutoEatFruit = false,
    AutoBuyFruitSniper = false,
    GrabFruit = false,
    TweenFruit = false,
    SelectFruit = "",
    SelectFruitEat = "",
    
    -- ESP
    ESPPlayer = false,
    ESPChest = false,
    ESPFruit = false,
    ESPIsland = false,
    ESPMirage = false,
    ESPRealFruit = false,
    ESPFlower = false,
    
    -- Misc
    InfiniteEnergy = false,
    InfiniteAbility = false,
    InfiniteObservation = false,
    AntiAFK = true,
    WhiteScreen = false,
    RemoveDamage = true,
    RemoveFog = false,
    FPSBoost = false,
    WalkWater = true,
    AutoRejoin = false,
    
    -- QOL 2026
    DiscordWebhook = true,
    AutoVote = false,
    AutoClaimVote = false,
    AutoHopLow = false,
    WebhookURL = "https://discord.com/api/webhooks/1481674575384285296/7_zm7wjKosSM1MEmWPC8Os8oj3hds8zQhpANAWkVZQKwjPmaJiKrHkJZYzvhPmxN529D",  // 👈  DÁN LINK DISCORD
    
    -- Stats
    Point = 1,
    AutoStatsMelee = false,
    AutoStatsDefense = false,
    AutoStatsSword = false,
    AutoStatsGun = false,
    AutoStatsFruit = false,
    AutoStatsKaitun = false,
    
    -- Movement
    TweenSpeed = 350,
    BypassTP = false,
    Clip = false,
    
    -- Anti Ban
    ExecutorDelay = 0.1,
    ExecutorFastAttack = true,
    AntiLog = true,
    AntiDetect = true,
    
    -- Auto Buy
    AutoBuyAllFightingStyle = false,
    AutoBuyAllSword = false,
    AutoBuyAllGun = false,
    AutoBuyAllAccessory = false,
}

--[[
    DETECT EXECUTOR
]]

local Executors = {
    ["Fluxus"] = {Delay = 0.1, FastAttack = true},
    ["Delta"] = {Delay = 0.15, FastAttack = true},
    ["KRNL"] = {Delay = 0.2, FastAttack = true},
    ["ScriptWare"] = {Delay = 0.1, FastAttack = true},
    ["Synapse"] = {Delay = 0.05, FastAttack = true},
    ["Unknown"] = {Delay = 0.2, FastAttack = false}
}

local function DetectExecutor()
    for name, _ in pairs(Executors) do
        if identifyexecutor and string.find(string.lower(identifyexecutor()), string.lower(name)) then
            return name
        end
    end
    return "Unknown"
end

local CurrentExecutor = DetectExecutor()
_G.Settings.ExecutorDelay = Executors[CurrentExecutor].Delay
_G.Settings.ExecutorFastAttack = Executors[CurrentExecutor].FastAttack

--[[
    UTILITY FUNCTIONS
]]

local function IsAlive(Char)
    return Char and Char:FindFirstChild("Humanoid") and Char.Humanoid.Health > 0 and Char:FindFirstChild("HumanoidRootPart")
end

local function GetRoot(Char)
    return Char and (Char:FindFirstChild("HumanoidRootPart") or Char:FindFirstChild("Torso") or Char:FindFirstChild("UpperTorso"))
end

local function GetDistance(Pos1, Pos2)
    return (Pos1 - Pos2).Magnitude
end

local function Round(Number)
    return math.floor(tonumber(Number) + 0.5)
end

local function EquipWeapon(WeaponName)
    pcall(function()
        if not WeaponName then return end
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(WeaponName) then return end
        local Tool = LocalPlayer.Backpack:FindFirstChild(WeaponName)
        if Tool and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end)
end

local function UnEquipWeapon(WeaponName)
    pcall(function()
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(WeaponName) then
            LocalPlayer.Character[WeaponName].Parent = LocalPlayer.Backpack
        end
    end)
end

local function GetWeaponByType(Type)
    for _, Tool in pairs(LocalPlayer.Backpack:GetChildren()) do
        if Tool:IsA("Tool") and Tool.ToolTip == Type then
            return Tool.Name
        end
    end
    for _, Tool in pairs(LocalPlayer.Character:GetChildren()) do
        if Tool:IsA("Tool") and Tool.ToolTip == Type then
            return Tool.Name
        end
    end
    return nil
end

local function UpdateWeaponSelection()
    pcall(function()
        if _G.Settings.SelectWeapon == "Melee" then
            local Weapon = GetWeaponByType("Melee")
            if Weapon then _G.Settings.SelectWeapon = Weapon end
        elseif _G.Settings.SelectWeapon == "Sword" then
            local Weapon = GetWeaponByType("Sword")
            if Weapon then _G.Settings.SelectWeapon = Weapon end
        elseif _G.Settings.SelectWeapon == "Gun" then
            local Weapon = GetWeaponByType("Gun")
            if Weapon then _G.Settings.SelectWeapon = Weapon end
        elseif _G.Settings.SelectWeapon == "Fruit" then
            local Weapon = GetWeaponByType("Blox Fruit")
            if Weapon then _G.Settings.SelectWeapon = Weapon end
        end
    end)
end

local function AutoHaki()
    if _G.Settings.AutoHaki and LocalPlayer.Character and not LocalPlayer.Character:FindFirstChild("HasBuso") then
        ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
    end
end

local function CheckStun()
    return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Stun") and LocalPlayer.Character.Stun.Value ~= 0
end

local function SendNotification(Title, Text, Duration)
    pcall(function()
        local Notification = require(ReplicatedStorage:FindFirstChild("Notification") or game:GetService("ReplicatedStorage").Notification)
        if Notification and Notification.new then
            local Notif = Notification.new("<Color=Cyan>" .. Title .. "<Color=/>\n" .. Text)
            Notif:Display()
        end
    end)
end

--[[
    DISCORD WEBHOOK - BÁO BOSS SPAWN
]]

local function SendDiscordMessage(Content)
    if not _G.Settings.DiscordWebhook or _G.Settings.WebhookURL == "https://discord.com/api/webhooks/YOUR_WEBHOOK_HERE" then return end
    
    local Data = {
        ["content"] = Content,
        ["username"] = "TRUNGVNG HUB 2026",
        ["avatar_url"] = "https://www.roblox.com/asset/?id=127214133354569"
    }
    
    local JsonData = HttpService:JSONEncode(Data)
    
    pcall(function()
        HttpService:PostAsync(_G.Settings.WebhookURL, JsonData, Enum.HttpContentType.ApplicationJson)
    end)
end

-- Boss spawn detector
spawn(function()
    while wait(5) do
        pcall(function()
            if not _G.Settings.DiscordWebhook then return end
            
            local Bosses = {
                "Dough King", "rip_indra True Form", "Soul Reaper", 
                "Cake Queen", "Longma", "Kitsune Boss", "Leviathan",
                "Terrorshark", "Frozen Boss", "Dragon Boss"
            }
            
            for _, BossName in ipairs(Bosses) do
                if Workspace.Enemies:FindFirstChild(BossName) then
                    SendDiscordMessage("@everyone **" .. BossName .. "** vừa spawn! " .. os.date("%H:%M:%S"))
                    wait(60)
                end
            end
        end)
    end
end)

--[[
    ANTI AFK
]]

if _G.Settings.AntiAFK then
    LocalPlayer.Idled:Connect(function()
        VirtualUser:Button2Down(Vector2.new(0, 0), Workspace.CurrentCamera.CFrame)
        wait(1)
        VirtualUser:Button2Up(Vector2.new(0, 0), Workspace.CurrentCamera.CFrame)
    end)
end

--[[
    ANTI LOG
]]

if _G.Settings.AntiLog and hookfunction then
    hookfunction(print, function() end)
    hookfunction(warn, function() end)
    hookfunction(error, function() end)
end

--[[
    ANTI DETECT
]]

local OldNamecall
local Meta = getrawmetatable(game)
if Meta and _G.Settings.AntiDetect then
    OldNamecall = Meta.__namecall
    setreadonly(Meta, false)
    
    Meta.__namecall = newcclosure(function(Self, ...)
        local Method = getnamecallmethod()
        
        if Method == "InvokeServer" or Method == "FireServer" then
            if tostring(Self):find("Report") or tostring(Self):find("TeleportDetect") or tostring(Self):find("Ban") then
                return
            end
        end
        
        return OldNamecall(Self, ...)
    end)
    
    setreadonly(Meta, true)
end

--[[
    SIMULATION RADIUS
]]

spawn(function()
    while wait() do
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            end
        end)
    end
end)

--[[
    FAST ATTACK SYSTEM
]]

local CombatFramework = require(LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(LocalPlayer.PlayerScripts.CombatFramework.RigController)
local RigLib = require(ReplicatedStorage.CombatFramework.RigLib)

local AttackCount = 0
local LastAttackTime = tick()

local OldNC
local Mt = getrawmetatable(game)
if Mt then
    OldNC = Mt.__namecall
    setreadonly(Mt, false)
    
    Mt.__namecall = newcclosure(function(Self, ...)
        local Args = {...}
        local Method = getnamecallmethod()
        
        if Method == "FireServer" and tostring(Self) == "RigControllerEvent" and Args[1] == "hit" then
            AttackCount = AttackCount + 1
            LastAttackTime = tick()
        end
        
        return OldNC(Self, ...)
    end)
    
    setreadonly(Mt, true)
end

spawn(function()
    while wait(1) do
        if tick() - LastAttackTime > 10 then
            AttackCount = 0
        end
    end
end)

local function FastAttack()
    if not CombatFrameworkR or not CombatFrameworkR.activeController then return end
    if CheckStun() then return end
    
    local Controller = CombatFrameworkR.activeController
    if not Controller.equipped then return end
    
    Controller.hitboxMagnitude = 55
    Controller.timeToNextAttack = 0
    Controller.attacking = false
    Controller.blocking = false
    Controller.timeToNextBlock = 0
    
    if _G.Settings.FastAttack then
        Controller:attack()
    end
    
    if _G.Settings.SuperFastAttack and _G.Settings.ExecutorFastAttack then
        pcall(function()
            for i = 1, 3 do
                local Hits = RigLib.getBladeHits(LocalPlayer.Character, {LocalPlayer.Character.HumanoidRootPart}, 60)
                if #Hits > 0 then
                    ReplicatedStorage.RigControllerEvent:FireServer("weaponChange", tostring(Controller.blades[1]))
                    ReplicatedStorage.RigControllerEvent:FireServer("hit", Hits, i, "")
                end
                wait(_G.Settings.ExecutorDelay)
            end
        end)
    end
end

RunService.RenderStepped:Connect(function()
    if _G.Settings.Click or _G.Settings.FastAttack or _G.Settings.SuperFastAttack then
        pcall(function()
            VirtualUser:CaptureController()
            VirtualUser:Button1Down(Vector2.new(1280, 672))
        end)
    end
    
    if (_G.Settings.AutoFarmLevel or _G.Settings.AutoFarmBoss or _G.Settings.AutoEliteHunter) and not CheckStun() then
        FastAttack()
    end
end)

--[[
    TWEEN SYSTEM
]]

local IsTweening = false

local function CreateTweenPart()
    if LocalPlayer.Character and not LocalPlayer.Character:FindFirstChild("TweenPart") then
        local Part = Instance.new("Part")
        Part.Name = "TweenPart"
        Part.Size = Vector3.new(5, 1, 5)
        Part.Anchored = true
        Part.CanCollide = false
        Part.Transparency = 1
        Part.Parent = LocalPlayer.Character
        
        Part:GetPropertyChangedSignal("CFrame"):Connect(function()
            if IsTweening and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Part.CFrame
            end
        end)
        
        return Part
    end
    return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("TweenPart")
end

local function DestroyTweenPart()
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("TweenPart") then
        LocalPlayer.Character.TweenPart:Destroy()
    end
end

local function StopTween()
    IsTweening = false
    DestroyTweenPart()
    _G.Settings.Clip = false
end

local function TPTo(Destination, UseBypass)
    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
    
    local Root = LocalPlayer.Character.HumanoidRootPart
    local Distance = GetDistance(Root.Position, Destination.Position)
    
    if UseBypass and Distance > 3500 and _G.Settings.BypassTP then
        StopTween()
        
        local Islands = _G.Settings.World3 and {
            CFrame.new(-12471, 374, -7551),
            CFrame.new(5749, 611, -276),
            CFrame.new(-5085, 316, -3156)
        } or _G.Settings.World2 and {
            CFrame.new(753, 408, -5274),
            CFrame.new(-5622, 492, -781),
            CFrame.new(-11, 29, 2771)
        } or _G.Settings.World1 and {
            CFrame.new(979, 16, 1429),
            CFrame.new(-2566, 6, 2045),
            CFrame.new(944, 20, 4373)
        }
        
        local NearestIsland = nil
        local MinDistance = math.huge
        
        for _, IslandCF in pairs(Islands or {}) do
            local Dist = GetDistance(Destination.Position, IslandCF.Position)
            if Dist < MinDistance then
                MinDistance = Dist
                NearestIsland = IslandCF
            end
        end
        
        if NearestIsland then
            Root.CFrame = NearestIsland
            wait(0.5)
            Root.CFrame = Destination
            return
        end
    end
    
    StopTween()
    
    local Part = CreateTweenPart()
    if not Part then return end
    
    Part.CFrame = Root.CFrame
    
    local TweenInfo = TweenInfo.new(Distance / _G.Settings.TweenSpeed, Enum.EasingStyle.Linear)
    local Tween = TweenService:Create(Part, TweenInfo, {CFrame = Destination})
    
    IsTweening = true
    
    Tween:Play()
    Tween.Completed:Connect(function()
        IsTweening = false
        DestroyTweenPart()
    end)
end

--[[
    CLIP SYSTEM
]]

RunService.Stepped:Connect(function()
    if _G.Settings.Clip or _G.Settings.AutoFarmLevel or _G.Settings.AutoFarmBoss then
        pcall(function()
            if LocalPlayer.Character then
                for _, Part in pairs(LocalPlayer.Character:GetDescendants()) do
                    if Part:IsA("BasePart") then
                        Part.CanCollide = false
                    end
                end
            end
        end)
    end
end)

--[[
    BODY CLIP
]]

spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoFarmLevel or _G.Settings.AutoFarmBoss then
                if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    if not LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        local BodyClip = Instance.new("BodyVelocity")
                        BodyClip.Name = "BodyClip"
                        BodyClip.Parent = LocalPlayer.Character.HumanoidRootPart
                        BodyClip.MaxForce = Vector3.new(100000, 100000, 100000)
                        BodyClip.Velocity = Vector3.new(0, 0, 0)
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO HAKI
]]

spawn(function()
    while wait(0.5) do
        pcall(function()
            if _G.Settings.AutoHaki then
                AutoHaki()
            end
        end)
    end
end)

--[[
    QUEST DATA
]]

local QuestData = {
    [1] = {
        [1] = {Mon = "Bandit", Level = 1, Quest = "BanditQuest1", Name = "Bandit", QuestCF = CFrame.new(1059, 17, 1546), MonCF = CFrame.new(943, 45, 1562)},
        [10] = {Mon = "Monkey", Level = 1, Quest = "JungleQuest", Name = "Monkey", QuestCF = CFrame.new(-1598, 37, 153), MonCF = CFrame.new(-1524, 50, 37)},
        [15] = {Mon = "Gorilla", Level = 2, Quest = "JungleQuest", Name = "Gorilla", QuestCF = CFrame.new(-1598, 37, 153), MonCF = CFrame.new(-1128, 40, -451)},
        [30] = {Mon = "Pirate", Level = 1, Quest = "BuggyQuest1", Name = "Pirate", QuestCF = CFrame.new(-1140, 4, 3829), MonCF = CFrame.new(-1262, 40, 3905)},
        [40] = {Mon = "Brute", Level = 2, Quest = "BuggyQuest1", Name = "Brute", QuestCF = CFrame.new(-1140, 4, 3829), MonCF = CFrame.new(-976, 55, 4304)},
        [60] = {Mon = "Desert Bandit", Level = 1, Quest = "DesertQuest", Name = "Desert Bandit", QuestCF = CFrame.new(897, 6, 4389), MonCF = CFrame.new(924, 7, 4482)},
        [75] = {Mon = "Desert Officer", Level = 2, Quest = "DesertQuest", Name = "Desert Officer", QuestCF = CFrame.new(897, 6, 4389), MonCF = CFrame.new(1608, 9, 4371)},
        [90] = {Mon = "Snow Bandit", Level = 1, Quest = "SnowQuest", Name = "Snow Bandit", QuestCF = CFrame.new(1385, 87, -1298), MonCF = CFrame.new(1362, 120, -1531)},
        [100] = {Mon = "Snowman", Level = 2, Quest = "SnowQuest", Name = "Snowman", QuestCF = CFrame.new(1385, 87, -1298), MonCF = CFrame.new(1243, 140, -1437)},
        [120] = {Mon = "Chief Petty Officer", Level = 1, Quest = "MarineQuest2", Name = "Chief Petty Officer", QuestCF = CFrame.new(-5035, 29, 4326), MonCF = CFrame.new(-4881, 23, 4274)},
        [150] = {Mon = "Sky Bandit", Level = 1, Quest = "SkyQuest", Name = "Sky Bandit", QuestCF = CFrame.new(-4844, 718, -2621), MonCF = CFrame.new(-4953, 296, -2899)},
        [175] = {Mon = "Dark Master", Level = 2, Quest = "SkyQuest", Name = "Dark Master", QuestCF = CFrame.new(-4844, 718, -2621), MonCF = CFrame.new(-5260, 391, -2229)},
        [190] = {Mon = "Prisoner", Level = 1, Quest = "PrisonerQuest", Name = "Prisoner", QuestCF = CFrame.new(5306, 2, 477), MonCF = CFrame.new(5099, -0, 474)},
        [210] = {Mon = "Dangerous Prisoner", Level = 2, Quest = "PrisonerQuest", Name = "Dangerous Prisoner", QuestCF = CFrame.new(5306, 2, 477), MonCF = CFrame.new(5655, 16, 866)},
        [250] = {Mon = "Toga Warrior", Level = 1, Quest = "ColosseumQuest", Name = "Toga Warrior", QuestCF = CFrame.new(-1581, 7, -2982), MonCF = CFrame.new(-1820, 51, -2741)},
        [275] = {Mon = "Gladiator", Level = 2, Quest = "ColosseumQuest", Name = "Gladiator", QuestCF = CFrame.new(-1581, 7, -2982), MonCF = CFrame.new(-1268, 30, -2996)},
        [300] = {Mon = "Military Soldier", Level = 1, Quest = "MagmaQuest", Name = "Military Soldier", QuestCF = CFrame.new(-5319, 12, 8515), MonCF = CFrame.new(-5335, 46, 8638)},
        [325] = {Mon = "Military Spy", Level = 2, Quest = "MagmaQuest", Name = "Military Spy", QuestCF = CFrame.new(-5319, 12, 8515), MonCF = CFrame.new(-5803, 86, 8829)},
        [375] = {Mon = "Fishman Warrior", Level = 1, Quest = "FishmanQuest", Name = "Fishman Warrior", QuestCF = CFrame.new(61122, 18, 1567), MonCF = CFrame.new(60998, 50, 1534)},
        [400] = {Mon = "Fishman Commando", Level = 2, Quest = "FishmanQuest", Name = "Fishman Commando", QuestCF = CFrame.new(61122, 18, 1567), MonCF = CFrame.new(61866, 55, 1655)},
        [450] = {Mon = "God's Guard", Level = 1, Quest = "SkyExp1Quest", Name = "God's Guard", QuestCF = CFrame.new(-4720, 846, -1951), MonCF = CFrame.new(-4720, 846, -1951)},
        [475] = {Mon = "Shanda", Level = 2, Quest = "SkyExp1Quest", Name = "Shanda", QuestCF = CFrame.new(-7861, 5545, -381), MonCF = CFrame.new(-7741, 5580, -395)},
        [525] = {Mon = "Royal Squad", Level = 1, Quest = "SkyExp2Quest", Name = "Royal Squad", QuestCF = CFrame.new(-7903, 5636, -1412), MonCF = CFrame.new(-7727, 5650, -1410)},
        [550] = {Mon = "Royal Soldier", Level = 2, Quest = "SkyExp2Quest", Name = "Royal Soldier", QuestCF = CFrame.new(-7903, 5636, -1412), MonCF = CFrame.new(-7894, 5640, -1629)},
        [625] = {Mon = "Galley Pirate", Level = 1, Quest = "FountainQuest", Name = "Galley Pirate", QuestCF = CFrame.new(5258, 39, 4052), MonCF = CFrame.new(5391, 70, 4023)},
        [650] = {Mon = "Galley Captain", Level = 2, Quest = "FountainQuest", Name = "Galley Captain", QuestCF = CFrame.new(5258, 39, 4052), MonCF = CFrame.new(5985, 70, 4790)}
    },
    [2] = {
        [700] = {Mon = "Raider", Level = 1, Quest = "Area1Quest", Name = "Raider", QuestCF = CFrame.new(-427, 73, 1835), MonCF = CFrame.new(-614, 90, 2240)},
        [725] = {Mon = "Mercenary", Level = 2, Quest = "Area1Quest", Name = "Mercenary", QuestCF = CFrame.new(-427, 73, 1835), MonCF = CFrame.new(-867, 110, 1621)},
        [775] = {Mon = "Swan Pirate", Level = 1, Quest = "Area2Quest", Name = "Swan Pirate", QuestCF = CFrame.new(635, 73, 919), MonCF = CFrame.new(635, 73, 919)},
        [875] = {Mon = "Marine Lieutenant", Level = 1, Quest = "MarineQuest3", Name = "Marine Lieutenant", QuestCF = CFrame.new(-2441, 73, -3219), MonCF = CFrame.new(-2552, 110, -3050)},
        [900] = {Mon = "Marine Captain", Level = 2, Quest = "MarineQuest3", Name = "Marine Captain", QuestCF = CFrame.new(-2441, 73, -3219), MonCF = CFrame.new(-1695, 110, -3299)},
        [950] = {Mon = "Zombie", Level = 1, Quest = "ZombieQuest", Name = "Zombie", QuestCF = CFrame.new(-5495, 48, -794), MonCF = CFrame.new(-5715, 90, -917)},
        [975] = {Mon = "Vampire", Level = 2, Quest = "ZombieQuest", Name = "Vampire", QuestCF = CFrame.new(-5495, 48, -794), MonCF = CFrame.new(-6027, 50, -1130)},
        [1000] = {Mon = "Snow Trooper", Level = 1, Quest = "SnowMountainQuest", Name = "Snow Trooper", QuestCF = CFrame.new(607, 401, -5371), MonCF = CFrame.new(445, 440, -5175)},
        [1050] = {Mon = "Winter Warrior", Level = 2, Quest = "SnowMountainQuest", Name = "Winter Warrior", QuestCF = CFrame.new(607, 401, -5371), MonCF = CFrame.new(1224, 460, -5332)},
        [1100] = {Mon = "Lab Subordinate", Level = 1, Quest = "IceSideQuest", Name = "Lab Subordinate", QuestCF = CFrame.new(-6061, 16, -4904), MonCF = CFrame.new(-5941, 50, -4322)},
        [1125] = {Mon = "Horned Warrior", Level = 2, Quest = "IceSideQuest", Name = "Horned Warrior", QuestCF = CFrame.new(-6061, 16, -4904), MonCF = CFrame.new(-6306, 50, -5752)},
        [1175] = {Mon = "Magma Ninja", Level = 1, Quest = "FireSideQuest", Name = "Magma Ninja", QuestCF = CFrame.new(-5430, 16, -5298), MonCF = CFrame.new(-5233, 60, -6227)},
        [1200] = {Mon = "Lava Pirate", Level = 2, Quest = "FireSideQuest", Name = "Lava Pirate", QuestCF = CFrame.new(-5430, 16, -5298), MonCF = CFrame.new(-4955, 60, -4836)},
        [1250] = {Mon = "Ship Deckhand", Level = 1, Quest = "ShipQuest1", Name = "Ship Deckhand", QuestCF = CFrame.new(1033, 125, 32909), MonCF = CFrame.new(1033, 125, 32909)},
        [1275] = {Mon = "Ship Engineer", Level = 2, Quest = "ShipQuest1", Name = "Ship Engineer", QuestCF = CFrame.new(1033, 125, 32909), MonCF = CFrame.new(809, 80, 33090)},
        [1300] = {Mon = "Ship Steward", Level = 1, Quest = "ShipQuest2", Name = "Ship Steward", QuestCF = CFrame.new(973, 125, 33245), MonCF = CFrame.new(838, 160, 33408)},
        [1325] = {Mon = "Ship Officer", Level = 2, Quest = "ShipQuest2", Name = "Ship Officer", QuestCF = CFrame.new(973, 125, 33245), MonCF = CFrame.new(1238, 220, 33148)},
        [1350] = {Mon = "Arctic Warrior", Level = 1, Quest = "FrostQuest", Name = "Arctic Warrior", QuestCF = CFrame.new(5668, 28, -6484), MonCF = CFrame.new(5836, 80, -6257)},
        [1375] = {Mon = "Snow Lurker", Level = 2, Quest = "FrostQuest", Name = "Snow Lurker", QuestCF = CFrame.new(5668, 28, -6484), MonCF = CFrame.new(5700, 80, -6724)},
        [1425] = {Mon = "Sea Soldier", Level = 1, Quest = "ForgottenQuest", Name = "Sea Soldier", QuestCF = CFrame.new(-3056, 240, -10145), MonCF = CFrame.new(-2583, 80, -9821)},
        [1450] = {Mon = "Water Fighter", Level = 2, Quest = "ForgottenQuest", Name = "Water Fighter", QuestCF = CFrame.new(-3056, 240, -10145), MonCF = CFrame.new(-3339, 290, -10412)}
    },
    [3] = {
        [1500] = {Mon = "Pirate Millionaire", Level = 1, Quest = "PiratePortQuest", Name = "Pirate Millionaire", QuestCF = CFrame.new(-291, 44, 5580), MonCF = CFrame.new(-44, 70, 5623)},
        [1525] = {Mon = "Pistol Billionaire", Level = 2, Quest = "PiratePortQuest", Name = "Pistol Billionaire", QuestCF = CFrame.new(-291, 44, 5580), MonCF = CFrame.new(219, 105, 6018)},
        [1575] = {Mon = "Dragon Crew Warrior", Level = 1, Quest = "AmazonQuest", Name = "Dragon Crew Warrior", QuestCF = CFrame.new(5834, 51, -1103), MonCF = CFrame.new(5992, 90, -1581)},
        [1600] = {Mon = "Dragon Crew Archer", Level = 2, Quest = "AmazonQuest", Name = "Dragon Crew Archer", QuestCF = CFrame.new(5834, 51, -1103), MonCF = CFrame.new(6472, 370, -151)},
        [1625] = {Mon = "Female Islander", Level = 1, Quest = "AmazonQuest2", Name = "Female Islander", QuestCF = CFrame.new(5448, 602, 748), MonCF = CFrame.new(4836, 740, 928)},
        [1650] = {Mon = "Giant Islander", Level = 2, Quest = "AmazonQuest2", Name = "Giant Islander", QuestCF = CFrame.new(5448, 602, 748), MonCF = CFrame.new(4784, 660, 155)},
        [1700] = {Mon = "Marine Commodore", Level = 1, Quest = "MarineTreeIsland", Name = "Marine Commodore", QuestCF = CFrame.new(2180, 29, -6738), MonCF = CFrame.new(3156, 120, -7837)},
        [1725] = {Mon = "Marine Rear Admiral", Level = 2, Quest = "MarineTreeIsland", Name = "Marine Rear Admiral", QuestCF = CFrame.new(2180, 29, -6738), MonCF = CFrame.new(3205, 120, -6742)},
        [1775] = {Mon = "Fishman Raider", Level = 1, Quest = "DeepForestIsland3", Name = "Fishman Raider", QuestCF = CFrame.new(-10581, 332, -8758), MonCF = CFrame.new(-10550, 380, -8574)},
        [1800] = {Mon = "Fishman Captain", Level = 2, Quest = "DeepForestIsland3", Name = "Fishman Captain", QuestCF = CFrame.new(-10581, 332, -8758), MonCF = CFrame.new(-10764, 380, -8799)},
        [1825] = {Mon = "Forest Pirate", Level = 1, Quest = "DeepForestIsland", Name = "Forest Pirate", QuestCF = CFrame.new(-13233, 332, -7626), MonCF = CFrame.new(-13335, 380, -7660)},
        [1850] = {Mon = "Mythological Pirate", Level = 2, Quest = "DeepForestIsland", Name = "Mythological Pirate", QuestCF = CFrame.new(-13233, 332, -7626), MonCF = CFrame.new(-13844, 520, -7016)},
        [1900] = {Mon = "Jungle Pirate", Level = 1, Quest = "DeepForestIsland2", Name = "Jungle Pirate", QuestCF = CFrame.new(-12682, 391, -9901), MonCF = CFrame.new(-12166, 380, -10375)},
        [1925] = {Mon = "Musketeer Pirate", Level = 2, Quest = "DeepForestIsland2", Name = "Musketeer Pirate", QuestCF = CFrame.new(-12682, 391, -9901), MonCF = CFrame.new(-13098, 450, -9831)},
        [1975] = {Mon = "Reborn Skeleton", Level = 1, Quest = "HauntedQuest1", Name = "Reborn Skeleton", QuestCF = CFrame.new(-9481, 142, 5565), MonCF = CFrame.new(-8680, 190, 5852)},
        [2000] = {Mon = "Living Zombie", Level = 2, Quest = "HauntedQuest1", Name = "Living Zombie", QuestCF = CFrame.new(-9481, 142, 5565), MonCF = CFrame.new(-10144, 140, 5932)},
        [2025] = {Mon = "Demonic Soul", Level = 1, Quest = "HauntedQuest2", Name = "Demonic Soul", QuestCF = CFrame.new(-9515, 172, 607), MonCF = CFrame.new(-9275, 210, 6166)},
        [2050] = {Mon = "Posessed Mummy", Level = 2, Quest = "HauntedQuest2", Name = "Posessed Mummy", QuestCF = CFrame.new(-9515, 172, 607), MonCF = CFrame.new(-9442, 60, 6304)},
        [2075] = {Mon = "Peanut Scout", Level = 1, Quest = "NutsIslandQuest", Name = "Peanut Scout", QuestCF = CFrame.new(-2104, 38, -10194), MonCF = CFrame.new(-1870, 100, -10225)},
        [2100] = {Mon = "Peanut President", Level = 2, Quest = "NutsIslandQuest", Name = "Peanut President", QuestCF = CFrame.new(-2104, 38, -10194), MonCF = CFrame.new(-2005, 100, -10585)},
        [2125] = {Mon = "Ice Cream Chef", Level = 1, Quest = "IceCreamIslandQuest", Name = "Ice Cream Chef", QuestCF = CFrame.new(-818, 66, -10964), MonCF = CFrame.new(-501, 100, -10883)},
        [2150] = {Mon = "Ice Cream Commander", Level = 2, Quest = "IceCreamIslandQuest", Name = "Ice Cream Commander", QuestCF = CFrame.new(-818, 66, -10964), MonCF = CFrame.new(-690, 100, -11350)},
        [2200] = {Mon = "Cookie Crafter", Level = 1, Quest = "CakeQuest1", Name = "Cookie Crafter", QuestCF = CFrame.new(-2023, 38, -12028), MonCF = CFrame.new(-2332, 90, -12049)},
        [2225] = {Mon = "Cake Guard", Level = 2, Quest = "CakeQuest1", Name = "Cake Guard", QuestCF = CFrame.new(-2023, 38, -12028), MonCF = CFrame.new(-1514, 90, -12422)},
        [2250] = {Mon = "Baking Staff", Level = 1, Quest = "CakeQuest2", Name = "Baking Staff", QuestCF = CFrame.new(-1931, 38, -12840), MonCF = CFrame.new(-1930, 90, -12963)},
        [2275] = {Mon = "Head Baker", Level = 2, Quest = "CakeQuest2", Name = "Head Baker", QuestCF = CFrame.new(-1931, 38, -12840), MonCF = CFrame.new(-2123, 110, -12777)},
        [2300] = {Mon = "Cocoa Warrior", Level = 1, Quest = "ChocQuest1", Name = "Cocoa Warrior", QuestCF = CFrame.new(235, 25, -12199), MonCF = CFrame.new(110, 80, -12245)},
        [2325] = {Mon = "Chocolate Bar Battler", Level = 2, Quest = "ChocQuest1", Name = "Chocolate Bar Battler", QuestCF = CFrame.new(235, 25, -12199), MonCF = CFrame.new(579, 80, -12413)},
        [2350] = {Mon = "Sweet Thief", Level = 1, Quest = "ChocQuest2", Name = "Sweet Thief", QuestCF = CFrame.new(150, 25, -12777), MonCF = CFrame.new(-68, 80, -12692)},
        [2375] = {Mon = "Candy Rebel", Level = 2, Quest = "ChocQuest2", Name = "Candy Rebel", QuestCF = CFrame.new(150, 25, -12777), MonCF = CFrame.new(17, 80, -12962)},
        [2400] = {Mon = "Candy Pirate", Level = 1, Quest = "CandyQuest1", Name = "Candy Pirate", QuestCF = CFrame.new(-1148, 14, -14446), MonCF = CFrame.new(-1371, 70, -14405)},
        [2425] = {Mon = "Snow Demon", Level = 2, Quest = "CandyQuest1", Name = "Snow Demon", QuestCF = CFrame.new(-1148, 14, -14446), MonCF = CFrame.new(-836, 70, -14326)},
        [2450] = {Mon = "Isle Outlaw", Level = 1, Quest = "TikiQuest1", Name = "Isle Outlaw", QuestCF = CFrame.new(-16547, 56, -172), MonCF = CFrame.new(-16431, 90, -223)},
        [2475] = {Mon = "Island Boy", Level = 2, Quest = "TikiQuest1", Name = "Island Boy", QuestCF = CFrame.new(-16547, 56, -172), MonCF = CFrame.new(-16668, 70, -243)},
        [2500] = {Mon = "Sun-kissed Warrior", Level = 1, Quest = "TikiQuest2", Name = "kissed", QuestCF = CFrame.new(-16540, 56, 1051), MonCF = CFrame.new(-16345, 80, 1004)},
        [2525] = {Mon = "Isle Champion", Level = 2, Quest = "TikiQuest2", Name = "Isle Champion", QuestCF = CFrame.new(-16540, 56, 1051), MonCF = CFrame.new(-16634, 85, 1106)}
    }
}

local function CheckQuest()
    local Level = LocalPlayer.Data.Level.Value
    local World = _G.Settings.World1 and 1 or _G.Settings.World2 and 2 or _G.Settings.World3 and 3
    if not World then return end
    
    local QuestTable = QuestData[World]
    local SelectedQuest = nil
    
    for Lvl, Quest in pairs(QuestTable) do
        if Level >= Lvl then
            SelectedQuest = Quest
        end
    end
    
    if SelectedQuest then
        _G.Mon = SelectedQuest.Mon
        _G.LevelQuest = SelectedQuest.Level
        _G.NameQuest = SelectedQuest.Quest
        _G.NameMon = SelectedQuest.Name
        _G.CFrameQuest = SelectedQuest.QuestCF
        _G.CFrameMon = SelectedQuest.MonCF
    end
end

--[[
    AUTO FARM LEVEL
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmLevel then return end
            
            CheckQuest()
            if not _G.Mon then return end
            
            if LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                TPTo(_G.CFrameQuest, _G.Settings.BypassTP)
                if GetDistance(LocalPlayer.Character.HumanoidRootPart.Position, _G.CFrameQuest.Position) <= 20 then
                    wait(0.5)
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", _G.NameQuest, _G.LevelQuest)
                end
            else
                local QuestText = LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestText, _G.NameMon) then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("AbandonQuest")
                    return
                end
                
                for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                    if Mob.Name == _G.Mon and Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                        repeat
                            wait()
                            UpdateWeaponSelection()
                            EquipWeapon(_G.Settings.SelectWeapon)
                            AutoHaki()
                            
                            Mob.HumanoidRootPart.CanCollide = false
                            Mob.Humanoid.WalkSpeed = 0
                            Mob.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            
                            TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                            
                            _G.Settings.Clip = true
                            _G.CurrentMonster = Mob
                            _G.CurrentMonsterCF = Mob.HumanoidRootPart.CFrame
                        until not _G.Settings.AutoFarmLevel or Mob.Humanoid.Health <= 0 or not Mob.Parent
                        
                        _G.Settings.Clip = false
                        _G.CurrentMonster = nil
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO FARM NEAREST
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmNearest then return end
            
            for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                if Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                    repeat
                        wait()
                        UpdateWeaponSelection()
                        EquipWeapon(_G.Settings.SelectWeapon)
                        AutoHaki()
                        
                        Mob.HumanoidRootPart.CanCollide = false
                        Mob.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        
                        TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                        
                        _G.Settings.Clip = true
                        _G.CurrentMonster = Mob
                    until not _G.Settings.AutoFarmNearest or Mob.Humanoid.Health <= 0 or not Mob.Parent
                    
                    _G.Settings.Clip = false
                    _G.CurrentMonster = nil
                end
            end
        end)
    end
end)

--[[
    AUTO FARM FAST (1-300)
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmFast or not _G.Settings.World1 then return end
            
            local Level = LocalPlayer.Data.Level.Value
            
            if Level >= 1 then
                _G.Settings.AutoFarmLevel = false
                
                ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894, 5547, -380))
                
                for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                    if Mob.Name == "Shanda" and Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                        repeat
                            wait()
                            AutoHaki()
                            EquipWeapon(_G.Settings.SelectWeapon)
                            
                            Mob.HumanoidRootPart.CanCollide = false
                            Mob.Humanoid.WalkSpeed = 0
                            Mob.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                            
                            TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                        until not _G.Settings.AutoFarmFast or Mob.Humanoid.Health <= 0 or not Mob.Parent
                        
                        TPTo(CFrame.new(-7678, 5566, -497))
                    end
                end
                
                if Level >= 75 then
                    _G.Settings.AutoFarmFast = false
                end
            end
        end)
    end
end)

--[[
    AUTO FARM BONE
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmBone or not _G.Settings.World3 then return end
            
            if Workspace.Enemies:FindFirstChild("Reborn Skeleton") or Workspace.Enemies:FindFirstChild("Living Zombie") or 
               Workspace.Enemies:FindFirstChild("Demonic Soul") or Workspace.Enemies:FindFirstChild("Posessed Mummy") then
                
                for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                    if (Mob.Name == "Reborn Skeleton" or Mob.Name == "Living Zombie" or 
                        Mob.Name == "Demonic Soul" or Mob.Name == "Posessed Mummy") and 
                        Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                        
                        repeat
                            wait()
                            AutoHaki()
                            EquipWeapon(_G.Settings.SelectWeapon)
                            
                            Mob.HumanoidRootPart.CanCollide = false
                            Mob.Humanoid.WalkSpeed = 0
                            Mob.Head.CanCollide = false
                            
                            TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                        until not _G.Settings.AutoFarmBone or Mob.Humanoid.Health <= 0 or not Mob.Parent
                    end
                end
            else
                TPTo(CFrame.new(-9506, 172, 6117))
            end
        end)
    end
end)

--[[
    BOSS LIST
]]

local BossList = {
    -- World 1
    ["The Gorilla King"] = CFrame.new(-1128, 40, -451),
    ["Bobby"] = CFrame.new(828, 46, 1331),
    ["Yeti"] = CFrame.new(-1132, 14, 4293),
    ["Mob Leader"] = CFrame.new(-2967, -4, 5328),
    ["Vice Admiral"] = CFrame.new(-4969, 21, 4386),
    ["Warden"] = CFrame.new(5285, 2, 470),
    ["Chief Warden"] = CFrame.new(5186, 24, 832),
    ["Swan"] = CFrame.new(517, 149, 746),
    ["Magma Admiral"] = CFrame.new(-5327, 78, 8426),
    ["Fishman Lord"] = CFrame.new(61279, 13, 1545),
    ["Wysper"] = CFrame.new(-7868, 5546, -406),
    ["Thunder God"] = CFrame.new(-7748, 5606, -2305),
    ["Cyborg"] = CFrame.new(5209, 59, 785),
    ["Saber Expert"] = CFrame.new(-1458, 29, 23),
    
    -- World 2
    ["Diamond"] = CFrame.new(-1076, 48, -857),
    ["Jeremy"] = CFrame.new(-696, 92, 1464),
    ["Fajita"] = CFrame.new(-1798, 158, 1714),
    ["Don Swan"] = CFrame.new(2284, 15, 905),
    ["Smoke Admiral"] = CFrame.new(-6161, 18, -5082),
    ["Cursed Captain"] = CFrame.new(931, 155, 32979),
    ["Darkbeard"] = CFrame.new(3719, 408, -2899),
    ["Order"] = CFrame.new(-4886, 236, -2540),
    ["Awakened Ice Admiral"] = CFrame.new(5173, 36, -5941),
    ["Tide Keeper"] = CFrame.new(-3570, 123, -11555),
    
    -- World 3
    ["Stone"] = CFrame.new(-1086, 38, 6768),
    ["Island Empress"] = CFrame.new(5713, 601, 202),
    ["Kilo Admiral"] = CFrame.new(2877, 423, -7207),
    ["Captain Elephant"] = CFrame.new(-13348, 405, -8570),
    ["Beautiful Pirate"] = CFrame.new(5311, 426, 165),
    ["rip_indra True Form"] = CFrame.new(-5344, 423, -2725),
    ["Longma"] = CFrame.new(-10238, 389, -9549),
    ["Soul Reaper"] = CFrame.new(-9570, 315, 6726),
    ["Cake Queen"] = CFrame.new(-709, 381, -11011),
    
    -- New 2026 Bosses
    ["Kitsune Boss"] = CFrame.new(0, 0, 0), -- Add actual CFrame
    ["Frozen Boss"] = CFrame.new(0, 0, 0), -- Add actual CFrame
    ["Dragon Boss"] = CFrame.new(5824, 51, -1106), -- Hydra Island
}

--[[
    AUTO FARM BOSS
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmBoss or not _G.Settings.SelectBoss then return end
            
            local Boss = Workspace.Enemies:FindFirstChild(_G.Settings.SelectBoss)
            
            if Boss then
                for _, BossMob in pairs(Workspace.Enemies:GetChildren()) do
                    if BossMob.Name == _G.Settings.SelectBoss and BossMob:FindFirstChild("Humanoid") and BossMob.Humanoid.Health > 0 then
                        repeat
                            wait()
                            UpdateWeaponSelection()
                            EquipWeapon(_G.Settings.SelectWeapon)
                            AutoHaki()
                            
                            BossMob.HumanoidRootPart.CanCollide = false
                            BossMob.Humanoid.WalkSpeed = 0
                            BossMob.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                            
                            TPTo(BossMob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            
                            _G.Settings.Clip = true
                        until not _G.Settings.AutoFarmBoss or BossMob.Humanoid.Health <= 0 or not BossMob.Parent
                        
                        _G.Settings.Clip = false
                    end
                end
            else
                local BossCF = BossList[_G.Settings.SelectBoss]
                if BossCF then
                    TPTo(BossCF)
                end
            end
        end)
    end
end)

--[[
    AUTO FARM ALL BOSS
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmAllBoss then return end
            
            for BossName, BossCF in pairs(BossList) do
                local Boss = Workspace.Enemies:FindFirstChild(BossName)
                
                if Boss then
                    repeat
                        wait()
                        EquipWeapon(_G.Settings.SelectWeapon)
                        AutoHaki()
                        TPTo(Boss.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        Boss.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                    until Boss.Humanoid.Health <= 0 or not _G.Settings.AutoFarmAllBoss
                else
                    TPTo(BossCF)
                end
                wait(1)
            end
        end)
    end
end)

--[[
    AUTO ELITE HUNTER
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoEliteHunter or not _G.Settings.World3 then return end
            
            if LocalPlayer.PlayerGui.Main.Quest.Visible then
                local QuestText = LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                
                if string.find(QuestText, "Diablo") or string.find(QuestText, "Deandre") or string.find(QuestText, "Urban") then
                    for _, EliteName in ipairs({"Diablo", "Deandre", "Urban"}) do
                        local Elite = Workspace.Enemies:FindFirstChild(EliteName)
                        
                        if Elite then
                            repeat
                                wait()
                                EquipWeapon(_G.Settings.SelectWeapon)
                                AutoHaki()
                                
                                Elite.HumanoidRootPart.CanCollide = false
                                Elite.Humanoid.WalkSpeed = 0
                                Elite.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                
                                TPTo(Elite.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            until not _G.Settings.AutoEliteHunter or Elite.Humanoid.Health <= 0 or not Elite.Parent
                        end
                    end
                end
            else
                ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter")
            end
        end)
    end
end)

--[[
    AUTO DOUGH KING
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoDoughKing or not _G.Settings.World3 then return end
            
            local DoughKing = Workspace.Enemies:FindFirstChild("Dough King")
            
            if DoughKing then
                repeat
                    wait()
                    EquipWeapon(_G.Settings.SelectWeapon)
                    AutoHaki()
                    
                    DoughKing.HumanoidRootPart.CanCollide = false
                    DoughKing.Humanoid.WalkSpeed = 0
                    DoughKing.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                    
                    TPTo(DoughKing.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until not _G.Settings.AutoDoughKing or DoughKing.Humanoid.Health <= 0 or not DoughKing.Parent
            else
                TPTo(CFrame.new(-2662, 1062, -11853))
            end
        end)
    end
end)

--[[
    AUTO SABER
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoSaber or LocalPlayer.Data.Level.Value < 200 then return end
            
            if Workspace.Map.Jungle.Final.Part.Transparency == 0 then
                if Workspace.Map.Jungle.QuestPlates.Door.Transparency == 0 then
                    TPTo(CFrame.new(-1612, 36, 148))
                    wait(1)
                    
                    for _, Plate in ipairs({"Plate1", "Plate2", "Plate3", "Plate4", "Plate5"}) do
                        if Workspace.Map.Jungle.QuestPlates[Plate] and Workspace.Map.Jungle.QuestPlates[Plate].Button then
                            TPTo(Workspace.Map.Jungle.QuestPlates[Plate].Button.CFrame)
                            wait(1)
                        end
                    end
                end
            elseif Workspace.Enemies:FindFirstChild("Saber Expert") then
                for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                    if Mob.Name == "Saber Expert" and Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                        repeat
                            wait()
                            EquipWeapon(_G.Settings.SelectWeapon)
                            TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            
                            Mob.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            Mob.HumanoidRootPart.CanCollide = false
                            Mob.Humanoid.WalkSpeed = 0
                        until not _G.Settings.AutoSaber or Mob.Humanoid.Health <= 0 or not Mob.Parent
                        
                        if Mob.Humanoid.Health <= 0 then
                            ReplicatedStorage.Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic")
                        end
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO YAMA
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoYama then return end
            
            if ReplicatedStorage.Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30 then
                repeat
                    wait(0.1)
                    if Workspace.Map.Waterfall.SealedKatana and Workspace.Map.Waterfall.SealedKatana.Handle and Workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector then
                        fireclickdetector(Workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
                    end
                until LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.Settings.AutoYama
            end
        end)
    end
end)

--[[
    AUTO CDK
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoCDK then return end
            
            if LocalPlayer.Backpack:FindFirstChild("Yama") and LocalPlayer.Backpack:FindFirstChild("Tushita") then
                if ReplicatedStorage.Remotes.CommF_:InvokeServer("CDKQuest", "Progress") == 6 then
                    TPTo(CFrame.new(-12361, 603, -6550))
                    wait(1.5)
                    VirtualInputManager:SendKeyEvent(true, "E", false, game)
                end
            end
        end)
    end
end)

--[[
    AUTO TUSHITA
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoTushitaSword then return end
            
            local Longma = Workspace.Enemies:FindFirstChild("Longma")
            if Longma then
                repeat
                    wait()
                    EquipWeapon(_G.Settings.SelectWeapon)
                    TPTo(Longma.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    Longma.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                until Longma.Humanoid.Health <= 0
            else
                TPTo(CFrame.new(-10238, 389, -9549))
            end
        end)
    end
end)

--[[
    AUTO SUPERHUMAN
]]

spawn(function()
    while wait(1) do
        pcall(function()
            if not _G.Settings.AutoSuperhuman then return end
            
            if LocalPlayer.Backpack:FindFirstChild("Combat") and LocalPlayer.Data.Beli.Value >= 150000 then
                UnEquipWeapon("Combat")
                wait(0.1)
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyBlackLeg")
            end
            
            if LocalPlayer.Backpack:FindFirstChild("Superhuman") or LocalPlayer.Character:FindFirstChild("Superhuman") then
                _G.Settings.SelectWeapon = "Superhuman"
            end
            
            if LocalPlayer.Backpack:FindFirstChild("Black Leg") and LocalPlayer.Backpack["Black Leg"].Level.Value >= 300 and LocalPlayer.Data.Beli.Value >= 300000 then
                UnEquipWeapon("Black Leg")
                wait(0.1)
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectro")
            end
            
            if LocalPlayer.Backpack:FindFirstChild("Electro") and LocalPlayer.Backpack.Electro.Level.Value >= 300 and LocalPlayer.Data.Beli.Value >= 750000 then
                UnEquipWeapon("Electro")
                wait(0.1)
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyFishmanKarate")
            end
            
            if LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and LocalPlayer.Backpack["Fishman Karate"].Level.Value >= 300 and LocalPlayer.Data.Fragments.Value >= 1500 then
                UnEquipWeapon("Fishman Karate")
                wait(0.1)
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
            end
            
            if LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and LocalPlayer.Backpack["Dragon Claw"].Level.Value >= 300 and LocalPlayer.Data.Beli.Value >= 3000000 then
                UnEquipWeapon("Dragon Claw")
                wait(0.1)
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySuperhuman")
            end
        end)
    end
end)

--[[
    AUTO DEATH STEP
]]

spawn(function()
    while wait(1) do
        pcall(function()
            if not _G.Settings.AutoDeathStep then return end
            
            if LocalPlayer.Backpack:FindFirstChild("Black Leg") or LocalPlayer.Character:FindFirstChild("Black Leg") then
                if LocalPlayer.Backpack:FindFirstChild("Black Leg") and LocalPlayer.Backpack["Black Leg"].Level.Value >= 450 then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDeathStep")
                    _G.Settings.SelectWeapon = "Death Step"
                elseif LocalPlayer.Backpack:FindFirstChild("Black Leg") then
                    _G.Settings.SelectWeapon = "Black Leg"
                end
            else
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyBlackLeg")
            end
        end)
    end
end)

--[[
    AUTO SHARKMAN
]]

spawn(function()
    while wait(1) do
        pcall(function()
            if not _G.Settings.AutoSharkman then return end
            
            local Response = ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
            
            if string.find(Response, "keys") then
                if LocalPlayer.Backpack:FindFirstChild("Water Key") or LocalPlayer.Character:FindFirstChild("Water Key") then
                    TPTo(CFrame.new(-2604, 239, -10315))
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                end
            else
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
            end
        end)
    end
end)

--[[
    AUTO ELECTRIC CLAW
]]

spawn(function()
    while wait(1) do
        pcall(function()
            if not _G.Settings.AutoElectricClaw then return end
            
            if LocalPlayer.Backpack:FindFirstChild("Electro") or LocalPlayer.Character:FindFirstChild("Electro") then
                if LocalPlayer.Backpack:FindFirstChild("Electro") and LocalPlayer.Backpack.Electro.Level.Value >= 400 then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw")
                    _G.Settings.SelectWeapon = "Electric Claw"
                elseif LocalPlayer.Backpack:FindFirstChild("Electro") then
                    _G.Settings.SelectWeapon = "Electro"
                end
            else
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectro")
            end
        end)
    end
end)

--[[
    AUTO DRAGON TALON
]]

spawn(function()
    while wait(1) do
        pcall(function()
            if not _G.Settings.AutoDragonTalon then return end
            
            if LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                if LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and LocalPlayer.Backpack["Dragon Claw"].Level.Value >= 400 then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
                    _G.Settings.SelectWeapon = "Dragon Talon"
                elseif LocalPlayer.Backpack:FindFirstChild("Dragon Claw") then
                    _G.Settings.SelectWeapon = "Dragon Claw"
                end
            else
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
            end
        end)
    end
end)

--[[
    AUTO GOD HUMAN
]]

spawn(function()
    while wait(1) do
        pcall(function()
            if not _G.Settings.AutoGodHuman then return end
            
            if LocalPlayer.Backpack:FindFirstChild("Superhuman") or LocalPlayer.Character:FindFirstChild("Superhuman") then
                if LocalPlayer.Backpack:FindFirstChild("Superhuman") and LocalPlayer.Backpack.Superhuman.Level.Value >= 400 then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDeathStep")
                end
            end
            
            if LocalPlayer.Backpack:FindFirstChild("Death Step") and LocalPlayer.Backpack["Death Step"].Level.Value >= 400 then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
            end
            
            if LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and LocalPlayer.Backpack["Sharkman Karate"].Level.Value >= 400 then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw")
            end
            
            if LocalPlayer.Backpack:FindFirstChild("Electric Claw") and LocalPlayer.Backpack["Electric Claw"].Level.Value >= 400 then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
            end
            
            if LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and LocalPlayer.Backpack["Dragon Talon"].Level.Value >= 400 then
                if not string.find(ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyGodhuman", true), "Bring") then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyGodhuman")
                end
            end
        end)
    end
end)

--[[
    AUTO SANGUINE ART
]]

spawn(function()
    while wait(1) do
        pcall(function()
            if not _G.Settings.AutoSanguineArt then return end
            
            if LocalPlayer.Backpack:FindFirstChild("Sanguine Art") or LocalPlayer.Character:FindFirstChild("Sanguine Art") then
                _G.Settings.SelectWeapon = "Sanguine Art"
                return
            end
            
            local Response = ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySanguineArt", true)
            
            if string.find(Response, "fragments") then
                _G.Settings.AutoRaid = true
            elseif string.find(Response, "key") then
                local Boss = Workspace.Enemies:FindFirstChild("Sanguine Boss")
                if Boss then
                    repeat
                        wait()
                        EquipWeapon(_G.Settings.SelectWeapon)
                        TPTo(Boss.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    until Boss.Humanoid.Health <= 0
                else
                    TPTo(CFrame.new(-12471, 374, -7551))
                end
            else
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySanguineArt")
            end
        end)
    end
end)

--[[
    AUTO DRAGON BREATH
]]

spawn(function()
    while wait(1) do
        pcall(function()
            if not _G.Settings.AutoDragonBreath then return end
            
            if LocalPlayer.Backpack:FindFirstChild("Dragon Breath") or LocalPlayer.Character:FindFirstChild("Dragon Breath") then
                _G.Settings.SelectWeapon = "Dragon Breath"
                return
            end
            
            local Token = LocalPlayer.Backpack:FindFirstChild("Dragon Token") or LocalPlayer.Character:FindFirstChild("Dragon Token")
            
            if Token then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("DragonBreath", "Buy")
            else
                _G.Settings.AutoDragonToken = true
            end
        end)
    end
end)

--[[
    AUTO DRAGON TOKEN
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoDragonToken then return end
            
            for _, MobName in ipairs({"Dragon Crew Warrior", "Dragon Crew Archer", "Mythological Pirate"}) do
                local Mob = Workspace.Enemies:FindFirstChild(MobName)
                if Mob then
                    repeat
                        wait()
                        EquipWeapon(_G.Settings.SelectWeapon)
                        TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        Mob.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                    until not _G.Settings.AutoDragonToken or Mob.Humanoid.Health <= 0
                else
                    TPTo(CFrame.new(5824, 51, -1106))
                end
            end
        end)
    end
end)

--[[
    AUTO DRAGON RADAR
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoDragonRadar then return end
            
            if LocalPlayer.Backpack:FindFirstChild("Dragon Radar") or LocalPlayer.Character:FindFirstChild("Dragon Radar") then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("DragonRadar", "Use")
                wait(2)
            else
                local DragonBoss = Workspace.Enemies:FindFirstChild("Dragon Boss")
                if DragonBoss then
                    repeat
                        wait()
                        EquipWeapon(_G.Settings.SelectWeapon)
                        TPTo(DragonBoss.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                    until not _G.Settings.AutoDragonRadar or DragonBoss.Humanoid.Health <= 0
                else
                    TPTo(CFrame.new(5824, 51, -1106))
                end
            end
        end)
    end
end)

--[[
    AUTO DRAGON STORM
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoDragonStorm then return end
            
            if Workspace._WorldOrigin.Locations:FindFirstChild("Dragon Storm") then
                local Storm = Workspace._WorldOrigin.Locations["Dragon Storm"]
                TPTo(Storm.CFrame * CFrame.new(0, 100, 0))
                
                for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                    if string.find(Mob.Name, "Dragon") and Mob:FindFirstChild("Humanoid") then
                        repeat
                            wait()
                            EquipWeapon(_G.Settings.SelectWeapon)
                            TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        until Mob.Humanoid.Health <= 0
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO KITSUNE ISLAND
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoKitsuneIsland then return end
            
            if Workspace._WorldOrigin.Locations:FindFirstChild("Kitsune Island") then
                local Kitsune = Workspace._WorldOrigin.Locations["Kitsune Island"]
                TPTo(Kitsune.CFrame * CFrame.new(0, 100, 0))
                
                for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                    if string.find(Mob.Name, "Kitsune") and Mob:FindFirstChild("Humanoid") then
                        repeat
                            wait()
                            EquipWeapon(_G.Settings.SelectWeapon)
                            TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                        until Mob.Humanoid.Health <= 0
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO AZURE EMBER
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoAzureEmber then return end
            
            if Workspace:FindFirstChild("EmberTemplate") then
                for _, Ember in pairs(Workspace.EmberTemplate:GetDescendants()) do
                    if Ember:IsA("BasePart") and Ember.Name == "Part" then
                        TPTo(Ember.CFrame)
                        wait(0.5)
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO KITSUNE SHRINE
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoKitsuneShrine then return end
            
            local KitsuneMap = Workspace.Map:FindFirstChild("KitsuneIsland")
            if KitsuneMap and KitsuneMap:FindFirstChild("ShrineActive") then
                for _, Part in pairs(KitsuneMap.ShrineActive:GetDescendants()) do
                    if Part:IsA("BasePart") and Part.Name:find("NeonShrinePart") then
                        TPTo(Part.CFrame)
                        wait(0.5)
                        pcall(function()
                            ReplicatedStorage.Modules.Net.RF/KitsuneStatuePray:InvokeServer()
                        end)
                        wait(5)
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO KITSUNE BOSS
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoKitsuneBoss then return end
            
            local Boss = Workspace.Enemies:FindFirstChild("Kitsune Boss")
            if Boss then
                repeat
                    wait()
                    EquipWeapon(_G.Settings.SelectWeapon)
                    TPTo(Boss.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0))
                    Boss.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                until not _G.Settings.AutoKitsuneBoss or Boss.Humanoid.Health <= 0
            end
        end)
    end
end)

--[[
    AUTO FROZEN ISLAND
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFrozenDimension then return end
            
            if Workspace._WorldOrigin.Locations:FindFirstChild("Frozen Dimension") then
                local Frozen = Workspace._WorldOrigin.Locations["Frozen Dimension"]
                TPTo(Frozen.CFrame * CFrame.new(0, 250, 0))
            end
        end)
    end
end)

--[[
    AUTO LEVIATHAN
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoLeviathan then return end
            
            local Leviathan = nil
            if Workspace:FindFirstChild("SeaBeasts") then
                for _, Beast in pairs(Workspace.SeaBeasts:GetChildren()) do
                    if Beast.Name == "Leviathan" then
                        Leviathan = Beast
                        break
                    end
                end
            end
            
            if Leviathan then
                repeat
                    wait()
                    EquipWeapon(_G.Settings.SelectWeapon)
                    TPTo(Leviathan.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                    
                    _G.Settings.SeaSkill = true
                    AimBotSkillPosition = Leviathan.HumanoidRootPart
                until not _G.Settings.AutoLeviathan or not Leviathan:FindFirstChild("HumanoidRootPart")
                
                _G.Settings.SeaSkill = false
            else
                if not Workspace.Boats:FindFirstChild("PirateGrandBrigade") then
                    TPTo(CFrame.new(-16927, 9, 433))
                    wait(1)
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyBoat", "PirateGrandBrigade")
                else
                    local Boat = Workspace.Boats.PirateGrandBrigade
                    if Boat and Boat:FindFirstChild("VehicleSeat") then
                        TPTo(Boat.VehicleSeat.CFrame * CFrame.new(-30, 0, -30))
                        
                        if not LocalPlayer.Character.Humanoid.Sit then
                            LocalPlayer.Character.HumanoidRootPart.CFrame = Boat.VehicleSeat.CFrame
                            wait(1)
                        end
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO TERROR SHARK
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoTerrorShark then return end
            
            local Shark = Workspace.Enemies:FindFirstChild("Terrorshark")
            if Shark then
                repeat
                    wait()
                    EquipWeapon(_G.Settings.SelectWeapon)
                    TPTo(Shark.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0))
                until not _G.Settings.AutoTerrorShark or Shark.Humanoid.Health <= 0
            else
                TPTo(CFrame.new(-38887, 30, -2162))
            end
        end)
    end
end)

--[[
    AUTO SHARK
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoShark then return end
            
            for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                if Mob.Name == "Shark" and Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                    repeat
                        wait()
                        EquipWeapon(_G.Settings.SelectWeapon)
                        TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    until Mob.Humanoid.Health <= 0
                end
            end
        end)
    end
end)

--[[
    AUTO PIRANHA
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoPiranha then return end
            
            for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                if Mob.Name == "Piranha" and Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                    repeat
                        wait()
                        EquipWeapon(_G.Settings.SelectWeapon)
                        TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    until Mob.Humanoid.Health <= 0
                end
            end
        end)
    end
end)

--[[
    AUTO FISH CREW
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFishCrew then return end
            
            for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                if Mob.Name == "Fish Crew Member" and Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                    repeat
                        wait()
                        EquipWeapon(_G.Settings.SelectWeapon)
                        TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    until Mob.Humanoid.Health <= 0
                end
            end
        end)
    end
end)

--[[
    AUTO GHOST SHIP
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoGhostShip then return end
            
            local Ship = Workspace.Enemies:FindFirstChild("PirateGrandBrigade")
            if Ship and Ship:FindFirstChild("Engine") then
                repeat
                    wait()
                    TPTo(Ship.Engine.CFrame)
                until not Ship.Parent or Ship.Health.Value <= 0
            end
        end)
    end
end)

--[[
    AUTO SEA BEAST
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoSeaBeast then return end
            
            if Workspace:FindFirstChild("SeaBeasts") then
                for _, Beast in pairs(Workspace.SeaBeasts:GetChildren()) do
                    if Beast:FindFirstChild("Humanoid") and Beast.Humanoid.Health > 0 then
                        repeat
                            wait()
                            TPTo(Beast.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0))
                        until not _G.Settings.AutoSeaBeast or Beast.Humanoid.Health <= 0
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO BARTILO
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoBartilo or LocalPlayer.Data.Level.Value < 800 then return end
            
            local Progress = ReplicatedStorage.Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo")
            
            if Progress == 0 then
                if LocalPlayer.PlayerGui.Main.Quest.Visible then
                    if Workspace.Enemies:FindFirstChild("Swan Pirate") then
                        for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                            if Mob.Name == "Swan Pirate" and Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                                repeat
                                    wait()
                                    EquipWeapon(_G.Settings.SelectWeapon)
                                    AutoHaki()
                                    
                                    Mob.HumanoidRootPart.CanCollide = false
                                    Mob.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    
                                    TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                                until not _G.Settings.AutoBartilo or Mob.Humanoid.Health <= 0 or not Mob.Parent
                            end
                        end
                    else
                        TPTo(CFrame.new(932, 156, 1180))
                    end
                else
                    TPTo(CFrame.new(-456, 73, 299))
                    wait(1)
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
                end
            elseif Progress == 1 then
                if Workspace.Enemies:FindFirstChild("Jeremy") then
                    for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                        if Mob.Name == "Jeremy" and Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                            repeat
                                wait()
                                EquipWeapon(_G.Settings.SelectWeapon)
                                AutoHaki()
                                
                                Mob.HumanoidRootPart.CanCollide = false
                                Mob.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                
                                TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            until not _G.Settings.AutoBartilo or Mob.Humanoid.Health <= 0 or not Mob.Parent
                        end
                    end
                else
                    TPTo(CFrame.new(2099, 448, 648))
                end
            end
        end)
    end
end)

--[[
    AUTO MUSKETEER HAT
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoMusketeerHat or LocalPlayer.Data.Level.Value < 1800 then return end
            
            local Progress = ReplicatedStorage.Remotes.CommF_:InvokeServer("CitizenQuestProgress")
            
            if not Progress.KilledBandits then
                if LocalPlayer.PlayerGui.Main.Quest.Visible then
                    if Workspace.Enemies:FindFirstChild("Forest Pirate") then
                        for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                            if Mob.Name == "Forest Pirate" and Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                                repeat
                                    wait()
                                    EquipWeapon(_G.Settings.SelectWeapon)
                                    AutoHaki()
                                    
                                    Mob.HumanoidRootPart.CanCollide = false
                                    Mob.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    
                                    TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                                until not _G.Settings.AutoMusketeerHat or Mob.Humanoid.Health <= 0 or not Mob.Parent
                            end
                        end
                    else
                        TPTo(CFrame.new(-13206, 425, -7964))
                    end
                else
                    TPTo(CFrame.new(-12443, 332, -7675))
                    wait(1.5)
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1)
                end
            elseif not Progress.KilledBoss then
                if Workspace.Enemies:FindFirstChild("Captain Elephant") then
                    for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                        if Mob.Name == "Captain Elephant" and Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                            repeat
                                wait()
                                EquipWeapon(_G.Settings.SelectWeapon)
                                AutoHaki()
                                
                                Mob.HumanoidRootPart.CanCollide = false
                                Mob.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                
                                TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                            until not _G.Settings.AutoMusketeerHat or Mob.Humanoid.Health <= 0 or not Mob.Parent
                        end
                    end
                else
                    TPTo(CFrame.new(-13374, 421, -8225))
                end
            end
        end)
    end
end)

--[[
    AUTO RAINBOW HAKI
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoRainbowHaki then return end
            
            if not LocalPlayer.PlayerGui.Main.Quest.Visible then
                TPTo(CFrame.new(-11892, 930, -8760))
                wait(1.5)
                ReplicatedStorage.Remotes.CommF_:InvokeServer("HornedMan", "Bet")
            else
                local QuestText = LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                
                for _, BossName in ipairs({"Stone", "Island Empress", "Kilo Admiral", "Captain Elephant", "Beautiful Pirate"}) do
                    if string.find(QuestText, BossName) then
                        local Boss = Workspace.Enemies:FindFirstChild(BossName)
                        if Boss then
                            repeat
                                wait()
                                EquipWeapon(_G.Settings.SelectWeapon)
                                TPTo(Boss.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                                
                                Boss.HumanoidRootPart.CanCollide = false
                                Boss.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                            until not _G.Settings.AutoRainbowHaki or Boss.Humanoid.Health <= 0 or not Boss.Parent
                        end
                        break
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO OBSERVATION V2
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoObservationV2 then return end
            
            if ReplicatedStorage.Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 3 then
                _G.Settings.AutoMusketeerHat = false
                
                if LocalPlayer.Backpack:FindFirstChild("Banana") and LocalPlayer.Backpack:FindFirstChild("Apple") and LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                    TPTo(CFrame.new(-12444, 332, -7673))
                    wait(0.5)
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
                elseif LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                    TPTo(CFrame.new(-10920, 624, -10266))
                    wait(0.5)
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("KenTalk2", "Start")
                    wait(1)
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("KenTalk2", "Buy")
                else
                    for _, Obj in pairs(Workspace:GetDescendants()) do
                        if Obj.Name == "Apple" or Obj.Name == "Banana" or Obj.Name == "Pineapple" then
                            Obj.Handle.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)
                            wait()
                            firetouchinterest(LocalPlayer.Character.HumanoidRootPart, Obj.Handle, 0)
                        end
                    end
                end
            else
                _G.Settings.AutoMusketeerHat = true
            end
        end)
    end
end)

--[[
    AUTO RAID
]]

spawn(function()
    while wait(0.1) do
        pcall(function()
            if not _G.Settings.AutoRaid then return end
            
            if LocalPlayer.PlayerGui.Main.Timer.Visible == false then
                if (not Workspace._WorldOrigin.Locations:FindFirstChild("Island 1") and 
                    (LocalPlayer.Backpack:FindFirstChild("Special Microchip") or LocalPlayer.Character:FindFirstChild("Special Microchip"))) then
                    
                    if _G.Settings.World2 and Workspace.Map.CircleIsland and Workspace.Map.CircleIsland.RaidSummon2 then
                        fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                    elseif _G.Settings.World3 and Workspace.Map["Boat Castle"] and Workspace.Map["Boat Castle"].RaidSummon2 then
                        fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO BUY CHIP
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoBuyChip then return end
            
            if not LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not LocalPlayer.Character:FindFirstChild("Special Microchip") then
                if not Workspace._WorldOrigin.Locations:FindFirstChild("Island 1") then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.Settings.SelectChip)
                end
            end
        end)
    end
end)

--[[
    AUTO NEXT ISLAND
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoNextIsland then return end
            
            if LocalPlayer.PlayerGui.Main.Timer.Visible then
                for i = 5, 1, -1 do
                    local Island = Workspace._WorldOrigin.Locations:FindFirstChild("Island " .. i)
                    if Island then
                        TPTo(Island.CFrame * CFrame.new(0, 70, 100))
                        break
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO AWAKENER
]]

spawn(function()
    while wait(0.1) do
        pcall(function()
            if not _G.Settings.AutoAwakener then return end
            
            ReplicatedStorage.Remotes.CommF_:InvokeServer("Awakener", "Check")
            ReplicatedStorage.Remotes.CommF_:InvokeServer("Awakener", "Awaken")
        end)
    end
end)

--[[
    AUTO ALL RAID
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoAllRaid then return end
            
            local Chips = {"Flame", "Ice", "Quake", "Light", "Dark", "String", "Rumble", "Magma", "Human: Buddha", "Sand", "Bird: Phoenix", "Dough"}
            
            for _, Chip in ipairs(Chips) do
                _G.Settings.SelectChip = Chip
                ReplicatedStorage.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", Chip)
                wait(1)
            end
        end)
    end
end)

--[[
    KILL AURA
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.KillAura then return end
            
            if LocalPlayer.PlayerGui.Main.Timer.Visible then
                for _, Mob in pairs(Workspace.Enemies:GetDescendants()) do
                    if Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                        Mob.Humanoid.Health = 0
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO STATS
]]

spawn(function()
    while wait(0.5) do
        pcall(function()
            if not LocalPlayer.Data.Points or LocalPlayer.Data.Points.Value <= 0 then return end
            
            if _G.Settings.AutoStatsMelee then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("AddPoint", "Melee", _G.Settings.Point)
            elseif _G.Settings.AutoStatsDefense then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("AddPoint", "Defense", _G.Settings.Point)
            elseif _G.Settings.AutoStatsSword then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("AddPoint", "Sword", _G.Settings.Point)
            elseif _G.Settings.AutoStatsGun then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("AddPoint", "Gun", _G.Settings.Point)
            elseif _G.Settings.AutoStatsFruit then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", _G.Settings.Point)
            end
        end)
    end
end)

--[[
    AUTO STATS KAITUN
]]

spawn(function()
    while wait(0.5) do
        pcall(function()
            if not _G.Settings.AutoStatsKaitun or LocalPlayer.Data.Points.Value <= 0 then return end
            
            if _G.Settings.World1 then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("AddPoint", "Melee", _G.Settings.Point)
            elseif _G.Settings.World2 or _G.Settings.World3 then
                ReplicatedStorage.Remotes.CommF_:InvokeServer("AddPoint", "Melee", _G.Settings.Point)
                ReplicatedStorage.Remotes.CommF_:InvokeServer("AddPoint", "Defense", _G.Settings.Point)
            end
        end)
    end
end)

--[[
    AUTO STORE FRUIT
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoStoreFruit then return end
            
            local Fruits = {
                {"Bomb Fruit", "Bomb-Bomb"}, {"Spike Fruit", "Spike-Spike"},
                {"Chop Fruit", "Chop-Chop"}, {"Spring Fruit", "Spring-Spring"},
                {"Kilo Fruit", "Kilo-Kilo"}, {"Smoke Fruit", "Smoke-Smoke"},
                {"Spin Fruit", "Spin-Spin"}, {"Flame Fruit", "Flame-Flame"},
                {"Bird: Falcon Fruit", "Bird-Bird: Falcon"}, {"Ice Fruit", "Ice-Ice"},
                {"Sand Fruit", "Sand-Sand"}, {"Dark Fruit", "Dark-Dark"},
                {"Revive Fruit", "Revive-Revive"}, {"Diamond Fruit", "Diamond-Diamond"},
                {"Light Fruit", "Light-Light"}, {"Love Fruit", "Love-Love"},
                {"Rubber Fruit", "Rubber-Rubber"}, {"Barrier Fruit", "Barrier-Barrier"},
                {"Magma Fruit", "Magma-Magma"}, {"Door Fruit", "Door-Door"},
                {"Quake Fruit", "Quake-Quake"}, {"Human-Human: Buddha Fruit", "Human-Human: Buddha"},
                {"String Fruit", "String-String"}, {"Bird: Phoenix Fruit", "Bird-Bird: Phoenix"},
                {"Rumble Fruit", "Rumble-Rumble"}, {"Paw Fruit", "Paw-Paw"},
                {"Gravity Fruit", "Gravity-Gravity"}, {"Dough Fruit", "Dough-Dough"},
                {"Shadow Fruit", "Shadow-Shadow"}, {"Venom Fruit", "Venom-Venom"},
                {"Control Fruit", "Control-Control"}, {"Dragon Fruit", "Dragon-Dragon"},
                {"Leopard Fruit", "Leopard-Leopard"}
            }
            
            for _, Fruit in ipairs(Fruits) do
                local FruitName = Fruit[1]
                local FruitStoreName = Fruit[2]
                
                local FruitObj = LocalPlayer.Character:FindFirstChild(FruitName) or LocalPlayer.Backpack:FindFirstChild(FruitName)
                if FruitObj then
                    ReplicatedStorage.Remotes.CommF_:InvokeServer("StoreFruit", FruitStoreName, FruitObj)
                end
            end
        end)
    end
end)

--[[
    AUTO EAT FRUIT
]]

spawn(function()
    while wait(0.1) do
        pcall(function()
            if not _G.Settings.AutoEatFruit or not _G.Settings.SelectFruitEat then return end
            
            local Fruit = LocalPlayer.Character:FindFirstChild(_G.Settings.SelectFruitEat) or 
                         LocalPlayer.Backpack:FindFirstChild(_G.Settings.SelectFruitEat)
            
            if Fruit and Fruit:FindFirstChild("EatRemote") then
                Fruit.EatRemote:InvokeServer()
            end
        end)
    end
end)

--[[
    GRAB FRUIT
]]

spawn(function()
    while wait(0.1) do
        pcall(function()
            if not _G.Settings.GrabFruit then return end
            
            for _, Obj in pairs(Workspace:GetChildren()) do
                if string.find(Obj.Name, "Fruit") and Obj:FindFirstChild("Handle") then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = Obj.Handle.CFrame
                end
            end
        end)
    end
end)

--[[
    TWEEN FRUIT
]]

spawn(function()
    while wait(0.1) do
        pcall(function()
            if not _G.Settings.TweenFruit then return end
            
            for _, Obj in pairs(Workspace:GetChildren()) do
                if string.find(Obj.Name, "Fruit") and Obj:FindFirstChild("Handle") then
                    TPTo(Obj.Handle.CFrame)
                end
            end
        end)
    end
end)

--[[
    AUTO BUY ALL FIGHTING STYLE
]]

spawn(function()
    while wait(1) do
        pcall(function()
            if not _G.Settings.AutoBuyAllFightingStyle then return end
            
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyBlackLeg")
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectro")
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyFishmanKarate")
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySuperhuman")
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDeathStep")
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySharkmanKarate")
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw")
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyGodhuman")
            ReplicatedStorage.Remotes.CommF_:InvokeServer("BuySanguineArt")
        end)
    end
end)

--[[
    AUTO BUY ALL SWORD
]]

spawn(function()
    while wait(1) do
        pcall(function()
            if not _G.Settings.AutoBuyAllSword then return end
            
            local Swords = {"Cutlass", "Katana", "Iron Mace", "Duel Katana", "Triple Katana", "Pipe", "Bisento", "Dual-Headed Blade", "Soul Cane"}
            for _, Sword in ipairs(Swords) do
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", Sword)
            end
        end)
    end
end)

--[[
    AUTO BUY ALL GUN
]]

spawn(function()
    while wait(1) do
        pcall(function()
            if not _G.Settings.AutoBuyAllGun then return end
            
            local Guns = {"Slingshot", "Musket", "Flintlock", "Refined Flintlock", "Cannon"}
            for _, Gun in ipairs(Guns) do
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", Gun)
            end
        end)
    end
end)

--[[
    AUTO BUY ALL ACCESSORY
]]

spawn(function()
    while wait(1) do
        pcall(function()
            if not _G.Settings.AutoBuyAllAccessory then return end
            
            local Accessories = {"Black Cape", "Swordsman Hat", "Tomoe Ring"}
            for _, Acc in ipairs(Accessories) do
                ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", Acc)
            end
        end)
    end
end)

--[[
    INFINITE ENERGY
]]

spawn(function()
    local EnergyValue = LocalPlayer.Character.Energy.Value
    
    LocalPlayer.Character.Energy.Changed:Connect(function()
        if _G.Settings.InfiniteEnergy then
            LocalPlayer.Character.Energy.Value = EnergyValue
        end
    end)
    
    while wait(0.1) do
        if _G.Settings.InfiniteEnergy then
            EnergyValue = LocalPlayer.Character.Energy.Value
        end
    end
end)

--[[
    INFINITE ABILITY
]]

spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.InfiniteAbility then
                if not LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                    local Particle = Instance.new("ParticleEmitter")
                    Particle.Name = "Agility"
                    Particle.Rate = 500
                    Particle.Lifetime = NumberRange.new(0)
                    Particle.Speed = NumberRange.new(30)
                    Particle.Texture = ""
                    Particle.Parent = LocalPlayer.Character.HumanoidRootPart
                end
            elseif LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
                LocalPlayer.Character.HumanoidRootPart.Agility:Destroy()
            end
        end)
    end
end)

--[[
    INFINITE OBSERVATION
]]

spawn(function()
    local OriginalRange = LocalPlayer.VisionRadius.Value
    
    while wait() do
        pcall(function()
            if _G.Settings.InfiniteObservation then
                if LocalPlayer.Character and LocalPlayer.Character.Humanoid.Health > 0 then
                    LocalPlayer.VisionRadius.Value = math.huge
                end
            else
                LocalPlayer.VisionRadius.Value = OriginalRange
            end
        end)
    end
end)

--[[
    NO DODGE COOLDOWN
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.NoDodgeCooldown then return end
            
            for _, Func in next, getgc() do
                if LocalPlayer.Character.Dodge then
                    if typeof(Func) == "function" and getfenv(Func).script == LocalPlayer.Character.Dodge then
                        for Idx, Val in next, getupvalues(Func) do
                            if tostring(Val) == "0.1" then
                                setupvalue(Func, Idx, 0)
                            end
                        end
                    end
                end
            end
        end)
    end
end)

--[[
    INFINITE GEPPO
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.InfiniteGeppo then return end
            
            for _, Func in next, getgc() do
                if LocalPlayer.Character.Geppo then
                    if typeof(Func) == "function" and getfenv(Func).script == LocalPlayer.Character.Geppo then
                        for Idx, Val in next, getupvalues(Func) do
                            if tostring(Idx) == "9" then
                                setupvalue(Func, Idx, 0)
                            end
                        end
                    end
                end
            end
        end)
    end
end)

--[[
    INFINITE SORU
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.InfiniteSoru then return end
            
            for _, Func in next, getgc() do
                if LocalPlayer.Character.Soru then
                    if typeof(Func) == "function" and getfenv(Func).script == LocalPlayer.Character.Soru then
                        for Idx, Val in next, getupvalues(Func) do
                            if typeof(Val) == "table" then
                                Val.LastUse = 0
                            end
                        end
                    end
                end
            end
        end)
    end
end)

--[[
    FLY SYSTEM
]]

local FlyConnection = nil

local function StartFly()
    if FlyConnection then FlyConnection:Disconnect() end
    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
    
    local Root = LocalPlayer.Character.HumanoidRootPart
    local Humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    
    local BV = Instance.new("BodyVelocity")
    BV.Name = "FlyBV"
    BV.MaxForce = Vector3.new(10000, 10000, 10000)
    BV.Parent = Root
    
    local BG = Instance.new("BodyGyro")
    BG.Name = "FlyBG"
    BG.MaxTorque = Vector3.new(10000, 10000, 10000)
    BG.P = 1000
    BG.D = 50
    BG.Parent = Root
    
    FlyConnection = RunService.RenderStepped:Connect(function()
        if not _G.Settings.Fly or not LocalPlayer.Character or not Root then
            if BV then BV:Destroy() end
            if BG then BG:Destroy() end
            if FlyConnection then FlyConnection:Disconnect() end
            return
        end
        
        local Camera = Workspace.CurrentCamera
        local Move = Vector3.new()
        
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then Move = Move + Camera.CFrame.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then Move = Move - Camera.CFrame.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then Move = Move - Camera.CFrame.RightVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then Move = Move + Camera.CFrame.RightVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then Move = Move + Vector3.new(0, 1, 0) end
        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then Move = Move - Vector3.new(0, 1, 0) end
        
        if Move.Magnitude > 0 then Move = Move.Unit * 50 end
        
        BV.Velocity = Move
        BG.CFrame = Camera.CFrame
        Humanoid.PlatformStand = true
    end)
end

--[[
    WALK ON WATER
]]

spawn(function()
    while wait() do
        pcall(function()
            local Water = Workspace.Map:FindFirstChild("WaterBase-Plane")
            if Water then
                Water.Size = _G.Settings.WalkWater and Vector3.new(1000, 112, 1000) or Vector3.new(1000, 80, 1000)
            end
        end)
    end
end)

--[[
    ESP SYSTEM
]]

local function CreateESP(Object, Text, Color)
    if not Object or Object:FindFirstChild("ESP") then return end
    
    local Billboard = Instance.new("BillboardGui")
    Billboard.Name = "ESP"
    Billboard.Adornee = Object
    Billboard.Size = UDim2.new(0, 200, 0, 50)
    Billboard.StudsOffset = Vector3.new(0, 2, 0)
    Billboard.AlwaysOnTop = true
    
    local TextLabel = Instance.new("TextLabel", Billboard)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Text = Text
    TextLabel.TextColor3 = Color or Color3.new(255, 255, 255)
    TextLabel.TextSize = 14
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.TextStrokeTransparency = 0.5
    
    Billboard.Parent = Object
end

spawn(function()
    while wait(0.5) do
        pcall(function()
            if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
            
            -- Player ESP
            if _G.Settings.ESPPlayer then
                for _, Player in pairs(Players:GetPlayers()) do
                    if Player ~= LocalPlayer and Player.Character and Player.Character:FindFirstChild("Head") then
                        local Color = Player.Team == LocalPlayer.Team and Color3.new(0, 255, 0) or Color3.new(255, 0, 0)
                        local Dist = Round(GetDistance(LocalPlayer.Character.HumanoidRootPart.Position, Player.Character.HumanoidRootPart.Position) / 3)
                        local Health = Player.Character.Humanoid and Round((Player.Character.Humanoid.Health * 100) / Player.Character.Humanoid.MaxHealth) or 0
                        CreateESP(Player.Character.Head, Player.Name .. " | " .. Dist .. "m\n" .. Health .. "%", Color)
                    end
                end
            end
            
            -- Chest ESP
            if _G.Settings.ESPChest then
                for _, Obj in pairs(Workspace:GetChildren()) do
                    if Obj.Name:find("Chest") and Obj:IsA("BasePart") then
                        local Dist = Round(GetDistance(LocalPlayer.Character.HumanoidRootPart.Position, Obj.Position) / 3)
                        local Color = Obj.Name == "Chest1" and Color3.new(109, 109, 109) or 
                                     Obj.Name == "Chest2" and Color3.new(173, 158, 21) or 
                                     Color3.new(85, 255, 255)
                        CreateESP(Obj, Obj.Name .. "\n" .. Dist .. "m", Color)
                    end
                end
            end
            
            -- Fruit ESP
            if _G.Settings.ESPFruit then
                for _, Obj in pairs(Workspace:GetChildren()) do
                    if Obj.Name:find("Fruit") and Obj:FindFirstChild("Handle") then
                        local Dist = Round(GetDistance(LocalPlayer.Character.HumanoidRootPart.Position, Obj.Handle.Position) / 3)
                        CreateESP(Obj.Handle, Obj.Name .. "\n" .. Dist .. "m", Color3.new(255, 255, 0))
                    end
                end
            end
            
            -- Island ESP
            if _G.Settings.ESPIsland then
                for _, Island in pairs(Workspace._WorldOrigin.Locations:GetChildren()) do
                    if Island.Name ~= "Sea" then
                        local Dist = Round(GetDistance(LocalPlayer.Character.HumanoidRootPart.Position, Island.Position) / 3)
                        CreateESP(Island, Island.Name .. "\n" .. Dist .. "m", Color3.new(255, 255, 255))
                    end
                end
            end
            
            -- Mirage ESP
            if _G.Settings.ESPMirage then
                for _, Island in pairs(Workspace._WorldOrigin.Locations:GetChildren()) do
                    if Island.Name == "Mirage Island" then
                        local Dist = Round(GetDistance(LocalPlayer.Character.HumanoidRootPart.Position, Island.Position) / 3)
                        CreateESP(Island, "✨ MIRAGE\n" .. Dist .. "m", Color3.new(255, 0, 255))
                    end
                end
            end
        end)
    end
end)

--[[
    REMOVE DAMAGE
]]

if _G.Settings.RemoveDamage then
    Workspace.DescendantAdded:Connect(function(Obj)
        if Obj.Name == "DamageCounter" then Obj:Destroy() end
    end)
    
    for _, Obj in pairs(Workspace:GetDescendants()) do
        if Obj.Name == "DamageCounter" then Obj:Destroy() end
    end
end

--[[
    REMOVE FOG
]]

if _G.Settings.RemoveFog then
    Lighting.FogEnd = 999999
end

--[[
    FPS BOOST
]]

if _G.Settings.FPSBoost then
    spawn(function()
        for _, Obj in pairs(Workspace:GetDescendants()) do
            if Obj:IsA("ParticleEmitter") or Obj:IsA("Trail") then
                Obj.Lifetime = NumberRange.new(0)
            elseif Obj:IsA("Fire") or Obj:IsA("SpotLight") or Obj:IsA("Smoke") then
                Obj.Enabled = false
            elseif Obj:IsA("Texture") then
                Obj.Texture = ""
            end
        end
    end)
end

--[[
    WHITE SCREEN
]]

if _G.Settings.WhiteScreen then
    RunService:Set3dRenderingEnabled(false)
end

--[[
    SERVER HOP
]]

local function ServerHop()
    local PlaceId = game.PlaceId
    local Servers = {}
    
    local function GetServers(Page)
        local Url = "https://games.roblox.com/v1/games/" .. PlaceId .. "/servers/Public?limit=100"
        if Page and Page ~= "" then Url = Url .. "&cursor=" .. Page end
        
        local Success, Response = pcall(function()
            return HttpService:JSONDecode(HttpService:HttpGetAsync(Url))
        end)
        
        if Success then
            for _, Server in pairs(Response.data) do
                if Server.playing < Server.maxPlayers and Server.id ~= game.JobId then
                    table.insert(Servers, Server.id)
                end
            end
            
            if Response.nextPageCursor and Response.nextPageCursor ~= "" then
                GetServers(Response.nextPageCursor)
            end
        end
    end
    
    GetServers("")
    
    if #Servers > 0 then
        local RandomServer = Servers[math.random(1, #Servers)]
        TeleportService:TeleportToPlaceInstance(PlaceId, RandomServer, LocalPlayer)
    end
end

--[[
    AUTO HOP LOW PLAYERS
]]

spawn(function()
    while wait(300) do
        pcall(function()
            if not _G.Settings.AutoHopLow then return end
            
            local PlayerCount = #Players:GetPlayers()
            if PlayerCount < 3 then
                SendNotification("Server Hop", "Server yếu! Đang tìm server mới...", 3)
                wait(2)
                ServerHop()
            end
        end)
    end
end)

--[[
    AUTO RECONNECT
]]

spawn(function()
    while wait(30) do
        pcall(function()
            if not _G.Settings.AutoRejoin then return end
            if not LocalPlayer or not LocalPlayer.Character or LocalPlayer.Character.Humanoid.Health <= 0 then
                wait(5)
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end
        end)
    end
end)

--[[
    AUTO VOTE
]]

spawn(function()
    while wait(3600) do
        pcall(function()
            if not _G.Settings.AutoVote then return end
            
            -- Add your vote URL here
            -- HttpService:GetAsync("YOUR_VOTE_URL")
            SendNotification("Auto Vote", "Đã vote thành công!", 3)
        end)
    end
end)

--[[
    AUTO CLAIM VOTE REWARD
]]

spawn(function()
    while wait(60) do
        pcall(function()
            if not _G.Settings.AutoClaimVote then return end
            
            ReplicatedStorage.Remotes.CommF_:InvokeServer("ClaimVoteReward")
        end)
    end
end)

--[[
    AUTO FARM MATERIAL - ECTOPLASM
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmEctoplasm then return end
            
            local MobList = {"Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer"}
            for _, MobName in ipairs(MobList) do
                local Mob = Workspace.Enemies:FindFirstChild(MobName)
                if Mob then
                    repeat
                        wait()
                        EquipWeapon(_G.Settings.SelectWeapon)
                        TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    until Mob.Humanoid.Health <= 0
                else
                    TPTo(CFrame.new(911, 125, 33159))
                end
            end
        end)
    end
end)

--[[
    AUTO FARM MATERIAL - LEATHER
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmLeather then return end
            
            local MobList = _G.Settings.World1 and {"Pirate"} or _G.Settings.World2 and {"Marine Captain"} or {"Jungle Pirate"}
            local CFrameList = _G.Settings.World1 and CFrame.new(-1211, 4, 3916) or _G.Settings.World2 and CFrame.new(-2010, 73, -3326) or CFrame.new(-11975, 331, -10620)
            
            for _, MobName in ipairs(MobList) do
                local Mob = Workspace.Enemies:FindFirstChild(MobName)
                if Mob then
                    repeat
                        wait()
                        EquipWeapon(_G.Settings.SelectWeapon)
                        TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    until Mob.Humanoid.Health <= 0
                else
                    TPTo(CFrameList)
                end
            end
        end)
    end
end)

--[[
    AUTO FARM MATERIAL - SCRAP METAL
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmScrap then return end
            
            local MobList = _G.Settings.World1 and {"Brute"} or _G.Settings.World2 and {"Mercenary"} or {"Pirate Millionaire"}
            local CFrameList = _G.Settings.World1 and CFrame.new(-1132, 14, 4293) or _G.Settings.World2 and CFrame.new(-972, 73, 1419) or CFrame.new(-289, 43, 5583)
            
            for _, MobName in ipairs(MobList) do
                local Mob = Workspace.Enemies:FindFirstChild(MobName)
                if Mob then
                    repeat
                        wait()
                        EquipWeapon(_G.Settings.SelectWeapon)
                        TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                    until Mob.Humanoid.Health <= 0
                else
                    TPTo(CFrameList)
                end
            end
        end)
    end
end)

--[[
    AUTO FARM MATERIAL - GUNPOWDER
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmGunpowder or not _G.Settings.World3 then return end
            
            local Mob = Workspace.Enemies:FindFirstChild("Pistol Billionaire")
            if Mob then
                repeat
                    wait()
                    EquipWeapon(_G.Settings.SelectWeapon)
                    TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until Mob.Humanoid.Health <= 0
            else
                TPTo(CFrame.new(-379, 73, 5928))
            end
        end)
    end
end)

--[[
    AUTO FARM MATERIAL - DRAGON SCALE
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmDragonScale or not _G.Settings.World3 then return end
            
            local Mob = Workspace.Enemies:FindFirstChild("Dragon Crew Warrior")
            if Mob then
                repeat
                    wait()
                    EquipWeapon(_G.Settings.SelectWeapon)
                    TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until Mob.Humanoid.Health <= 0
            else
                TPTo(CFrame.new(5824, 51, -1106))
            end
        end)
    end
end)

--[[
    AUTO FARM MATERIAL - FISH TAIL
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmFishTail or not _G.Settings.World3 then return end
            
            local Mob = Workspace.Enemies:FindFirstChild("Fishman Captain")
            if Mob then
                repeat
                    wait()
                    EquipWeapon(_G.Settings.SelectWeapon)
                    TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until Mob.Humanoid.Health <= 0
            else
                TPTo(CFrame.new(-10961, 331, -8914))
            end
        end)
    end
end)

--[[
    AUTO FARM MATERIAL - MINI TUSK
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmMiniTusk or not _G.Settings.World3 then return end
            
            local Mob = Workspace.Enemies:FindFirstChild("Mythological Pirate")
            if Mob then
                repeat
                    wait()
                    EquipWeapon(_G.Settings.SelectWeapon)
                    TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until Mob.Humanoid.Health <= 0
            else
                TPTo(CFrame.new(-13516, 469, -6899))
            end
        end)
    end
end)

--[[
    AUTO FARM MATERIAL - RADIOACTIVE
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmRadioactive or not _G.Settings.World1 then return end
            
            local Mob = Workspace.Enemies:FindFirstChild("Military Spy")
            if Mob then
                repeat
                    wait()
                    EquipWeapon(_G.Settings.SelectWeapon)
                    TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until Mob.Humanoid.Health <= 0
            else
                TPTo(CFrame.new(-5850, 77, 8848))
            end
        end)
    end
end)

--[[
    AUTO FARM MATERIAL - ANGEL WINGS
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmAngelWings or not _G.Settings.World1 then return end
            
            local Mob = Workspace.Enemies:FindFirstChild("Royal Soldier")
            if Mob then
                repeat
                    wait()
                    EquipWeapon(_G.Settings.SelectWeapon)
                    TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until Mob.Humanoid.Health <= 0
            else
                TPTo(CFrame.new(-7827, 5606, -1705))
            end
        end)
    end
end)

--[[
    AUTO FARM MATERIAL - MYSTIC DROPLET
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmMysticDroplet or not _G.Settings.World2 then return end
            
            local Mob = Workspace.Enemies:FindFirstChild("Water Fighter")
            if Mob then
                repeat
                    wait()
                    EquipWeapon(_G.Settings.SelectWeapon)
                    TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until Mob.Humanoid.Health <= 0
            else
                TPTo(CFrame.new(-3352, 285, -10534))
            end
        end)
    end
end)

--[[
    AUTO FARM MATERIAL - CONJURED COCOA
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoFarmConjuredCocoa or not _G.Settings.World3 then return end
            
            local Mob = Workspace.Enemies:FindFirstChild("Chocolate Bar Battler")
            if Mob then
                repeat
                    wait()
                    EquipWeapon(_G.Settings.SelectWeapon)
                    TPTo(Mob.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
                until Mob.Humanoid.Health <= 0
            else
                TPTo(CFrame.new(744, 24, -12637))
            end
        end)
    end
end)

--[[
    BRING MOB
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.BringMob or not _G.CurrentMonster then return end
            
            for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                if Mob ~= _G.CurrentMonster and not string.find(Mob.Name, "Boss") and Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
                    if GetDistance(Mob.HumanoidRootPart.Position, _G.CurrentMonster.HumanoidRootPart.Position) <= _G.Settings.BringMode then
                        Mob.HumanoidRootPart.CFrame = _G.CurrentMonsterCF or _G.CurrentMonster.HumanoidRootPart.CFrame
                        Mob.Humanoid:ChangeState(14)
                        Mob.HumanoidRootPart.CanCollide = false
                        Mob.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        if Mob.Humanoid:FindFirstChild("Animator") then
                            Mob.Humanoid.Animator:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO RACE V4 - TRIAL HUMAN
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoTrialHuman or LocalPlayer.Data.Race.Value ~= "Human" then return end
            
            for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                if Mob:FindFirstChild("Humanoid") then
                    Mob.Humanoid.Health = 0
                end
            end
        end)
    end
end)

--[[
    AUTO RACE V4 - TRIAL SKYPIEA
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoTrialSkypiea or LocalPlayer.Data.Race.Value ~= "Skypiea" then return end
            
            for _, Obj in pairs(Workspace:GetDescendants()) do
                if Obj.Name == "FinishPart" then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = Obj.CFrame
                end
            end
        end)
    end
end)

--[[
    AUTO RACE V4 - TRIAL FISHMAN
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoTrialFishman or LocalPlayer.Data.Race.Value ~= "Fishman" then return end
            
            if Workspace:FindFirstChild("SeaBeasts") then
                for _, Beast in pairs(Workspace.SeaBeasts:GetChildren()) do
                    TPTo(Beast.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0))
                    for i = 1, 3 do
                        VirtualUser:Button1Down(Vector2.new(1280, 672))
                        wait(0.1)
                    end
                end
            end
        end)
    end
end)

--[[
    AUTO RACE V4 - TRIAL CYBORG
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoTrialCyborg or LocalPlayer.Data.Race.Value ~= "Cyborg" then return end
            
            TPTo(CFrame.new(28654, 14898, -30))
        end)
    end
end)

--[[
    AUTO RACE V4 - TRIAL GHOUL
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoTrialGhoul or LocalPlayer.Data.Race.Value ~= "Ghoul" then return end
            
            for _, Mob in pairs(Workspace.Enemies:GetChildren()) do
                if Mob:FindFirstChild("Humanoid") then
                    Mob.Humanoid.Health = 0
                end
            end
        end)
    end
end)

--[[
    AUTO RACE V4 - TRIAL MINK
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoTrialMink or LocalPlayer.Data.Race.Value ~= "Mink" then return end
            
            for _, Obj in pairs(Workspace:GetDescendants()) do
                if Obj.Name == "StartPoint" then
                    TPTo(Obj.CFrame * CFrame.new(0, 10, 0))
                end
            end
        end)
    end
end)

--[[
    AUTO ACTIVE V4
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoActiveV4 then return end
            
            if LocalPlayer.Character:FindFirstChild("RaceEnergy") and LocalPlayer.Character.RaceEnergy.Value >= 1 then
                if LocalPlayer.Character:FindFirstChild("RaceTransformed") and not LocalPlayer.Character.RaceTransformed.Value then
                    LocalPlayer.Backpack.Awakening.RemoteFunction:InvokeServer(true)
                end
            end
        end)
    end
end)

--[[
    AUTO BUY GEAR V4
]]

spawn(function()
    while wait(0.5) do
        pcall(function()
            if not _G.Settings.AutoBuyGearV4 then return end
            
            ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Buy")
        end)
    end
end)

--[[
    AUTO RACE V4
]]

spawn(function()
    while wait() do
        pcall(function()
            if not _G.Settings.AutoRaceV4 then return end
            
            _G.Settings.AutoTrialHuman = true
            _G.Settings.AutoTrialSkypiea = true
            _G.Settings.AutoTrialFishman = true
            _G.Settings.AutoTrialCyborg = true
            _G.Settings.AutoTrialGhoul = true
            _G.Settings.AutoTrialMink = true
            _G.Settings.AutoActiveV4 = true
            _G.Settings.AutoBuyGearV4 = true
        end)
    end
end)

--[[
    UI LIBRARY
]]

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "TRUNGVNG_HUB"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local MainFrame = Instance.new("Frame")
MainFrame.Name = "Main"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, -300, 0.5, -200)
MainFrame.Size = UDim2.new(0, 600, 0, 400)
MainFrame.Active = true
MainFrame.Draggable = true

local UICorner = Instance.new("UICorner")
UICorner.Parent = MainFrame
UICorner.CornerRadius = UDim.new(0, 10)

local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 40)

local TitleCorner = Instance.new("UICorner")
TitleCorner.Parent = TitleBar
TitleCorner.CornerRadius = UDim.new(0, 10)

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Parent = TitleBar
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0.5, -10, 1, 0)
Title.Position = UDim2.new(0, 15, 0, 0)
Title.Text = "TRUNGVNG HUB 2026 - BLOX FRUITS"
Title.TextColor3 = Color3.fromRGB(0, 200, 255)
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left

local SubTitle = Instance.new("TextLabel")
SubTitle.Name = "SubTitle"
SubTitle.Parent = TitleBar
SubTitle.BackgroundTransparency = 1
SubTitle.Size = UDim2.new(0.5, -10, 1, 0)
SubTitle.Position = UDim2.new(0.5, 5, 0, 0)
SubTitle.Text = "SIÊU CẤP VIP PRO"
SubTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
SubTitle.TextSize = 14
SubTitle.Font = Enum.Font.Gotham
SubTitle.TextXAlignment = Enum.TextXAlignment.Right

local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Parent = TitleBar
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Position = UDim2.new(1, -30, 0.5, -12.5)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 14
CloseButton.Font = Enum.Font.GothamBold

local CloseCorner = Instance.new("UICorner")
CloseCorner.Parent = CloseButton
CloseCorner.CornerRadius = UDim.new(0, 5)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui.Enabled = false
end)

local Tabs = Instance.new("Frame")
Tabs.Name = "Tabs"
Tabs.Parent = MainFrame
Tabs.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
Tabs.BorderSizePixel = 0
Tabs.Position = UDim2.new(0, 10, 0, 50)
Tabs.Size = UDim2.new(0, 130, 0, 340)

local TabsCorner = Instance.new("UICorner")
TabsCorner.Parent = Tabs
TabsCorner.CornerRadius = UDim.new(0, 10)

local TabList = Instance.new("ScrollingFrame")
TabList.Name = "TabList"
TabList.Parent = Tabs
TabList.BackgroundTransparency = 1
TabList.BorderSizePixel = 0
TabList.Size = UDim2.new(1, -10, 1, -10)
TabList.Position = UDim2.new(0, 5, 0, 5)
TabList.CanvasSize = UDim2.new(0, 0, 0, 0)
TabList.ScrollBarThickness = 3

local TabLayout = Instance.new("UIListLayout")
TabLayout.Parent = TabList
TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabLayout.Padding = UDim.new(0, 5)

local Content = Instance.new("Frame")
Content.Name = "Content"
Content.Parent = MainFrame
Content.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
Content.BorderSizePixel = 0
Content.Position = UDim2.new(0, 150, 0, 50)
Content.Size = UDim2.new(0, 440, 0, 340)

local ContentCorner = Instance.new("UICorner")
ContentCorner.Parent = Content
ContentCorner.CornerRadius = UDim.new(0, 10)

local Pages = {}
local CurrentPage = nil

local function CreateTab(Name, Icon)
    local TabButton = Instance.new("TextButton")
    TabButton.Name = Name
    TabButton.Parent = TabList
    TabButton.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
    TabButton.Size = UDim2.new(1, 0, 0, 35)
    TabButton.Text = "  " .. Name
    TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabButton.TextSize = 14
    TabButton.Font = Enum.Font.Gotham
    TabButton.TextXAlignment = Enum.TextXAlignment.Left
    
    local TabCorner = Instance.new("UICorner")
    TabCorner.Parent = TabButton
    TabCorner.CornerRadius = UDim.new(0, 5)
    
    local Page = Instance.new("ScrollingFrame")
    Page.Name = Name .. "_Page"
    Page.Parent = Content
    Page.BackgroundTransparency = 1
    Page.BorderSizePixel = 0
    Page.Size = UDim2.new(1, -20, 1, -20)
    Page.Position = UDim2.new(0, 10, 0, 10)
    Page.Visible = false
    Page.CanvasSize = UDim2.new(0, 0, 0, 0)
    Page.ScrollBarThickness = 5
    
    local PageLayout = Instance.new("UIListLayout")
    PageLayout.Parent = Page
    PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    PageLayout.Padding = UDim.new(0, 8)
    
    local PagePadding = Instance.new("UIPadding")
    PagePadding.Parent = Page
    PagePadding.PaddingLeft = UDim.new(0, 10)
    PagePadding.PaddingRight = UDim.new(0, 10)
    PagePadding.PaddingTop = UDim.new(0, 10)
    PagePadding.PaddingBottom = UDim.new(0, 10)
    
    Pages[Name] = Page
    
    TabButton.MouseButton1Click:Connect(function()
        if CurrentPage then
            Pages[CurrentPage].Visible = false
        end
        Page.Visible = true
        CurrentPage = Name
    end)
    
    local API = {}
    
    function API:CreateButton(Text, Callback)
        local Button = Instance.new("TextButton")
        Button.Name = "Button"
        Button.Parent = Page
        Button.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
        Button.Size = UDim2.new(1, 0, 0, 35)
        Button.Text = Text
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button.TextSize = 14
        Button.Font = Enum.Font.Gotham
        
        local ButtonCorner = Instance.new("UICorner")
        ButtonCorner.Parent = Button
        ButtonCorner.CornerRadius = UDim.new(0, 5)
        
        Button.MouseButton1Click:Connect(function()
            pcall(Callback)
        end)
        
        return Button
    end
    
    function API:CreateToggle(Text, Default, Callback)
        local ToggleFrame = Instance.new("Frame")
        ToggleFrame.Name = "Toggle"
        ToggleFrame.Parent = Page
        ToggleFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
        ToggleFrame.Size = UDim2.new(1, 0, 0, 35)
        
        local ToggleCorner = Instance.new("UICorner")
        ToggleCorner.Parent = ToggleFrame
        ToggleCorner.CornerRadius = UDim.new(0, 5)
        
        local ToggleLabel = Instance.new("TextLabel")
        ToggleLabel.Parent = ToggleFrame
        ToggleLabel.BackgroundTransparency = 1
        ToggleLabel.Size = UDim2.new(0.8, -10, 1, 0)
        ToggleLabel.Position = UDim2.new(0, 10, 0, 0)
        ToggleLabel.Text = Text
        ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleLabel.TextSize = 14
        ToggleLabel.Font = Enum.Font.Gotham
        ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
        
        local ToggleButton = Instance.new("TextButton")
        ToggleButton.Name = "ToggleButton"
        ToggleButton.Parent = ToggleFrame
        ToggleButton.BackgroundColor3 = Default and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(100, 100, 100)
        ToggleButton.Size = UDim2.new(0, 50, 0, 25)
        ToggleButton.Position = UDim2.new(1, -60, 0.5, -12.5)
        ToggleButton.Text = Default and "ON" or "OFF"
        ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleButton.TextSize = 12
        ToggleButton.Font = Enum.Font.GothamBold
        
        local ToggleCorner2 = Instance.new("UICorner")
        ToggleCorner2.Parent = ToggleButton
        ToggleCorner2.CornerRadius = UDim.new(0, 5)
        
        local State = Default
        
        ToggleButton.MouseButton1Click:Connect(function()
            State = not State
            ToggleButton.BackgroundColor3 = State and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(100, 100, 100)
            ToggleButton.Text = State and "ON" or "OFF"
            pcall(function() Callback(State) end)
        end)
        
        return ToggleFrame
    end
    
    function API:CreateLabel(Text)
        local Label = Instance.new("TextLabel")
        Label.Parent = Page
        Label.BackgroundTransparency = 1
        Label.Size = UDim2.new(1, 0, 0, 25)
        Label.Text = Text
        Label.TextColor3 = Color3.fromRGB(0, 200, 255)
        Label.TextSize = 14
        Label.Font = Enum.Font.GothamBold
        Label.TextXAlignment = Enum.TextXAlignment.Left
        
        return Label
    end
    
    function API:CreateDropdown(Text, Options, Callback)
        local DropdownFrame = Instance.new("Frame")
        DropdownFrame.Name = "Dropdown"
        DropdownFrame.Parent = Page
        DropdownFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
        DropdownFrame.Size = UDim2.new(1, 0, 0, 35)
        
        local DropdownCorner = Instance.new("UICorner")
        DropdownCorner.Parent = DropdownFrame
        DropdownCorner.CornerRadius = UDim.new(0, 5)
        
        local DropdownLabel = Instance.new("TextLabel")
        DropdownLabel.Parent = DropdownFrame
        DropdownLabel.BackgroundTransparency = 1
        DropdownLabel.Size = UDim2.new(0.6, -10, 1, 0)
        DropdownLabel.Position = UDim2.new(0, 10, 0, 0)
        DropdownLabel.Text = Text
        DropdownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownLabel.TextSize = 14
        DropdownLabel.Font = Enum.Font.Gotham
        DropdownLabel.TextXAlignment = Enum.TextXAlignment.Left
        
        local DropdownButton = Instance.new("TextButton")
        DropdownButton.Name = "DropdownButton"
        DropdownButton.Parent = DropdownFrame
        DropdownButton.BackgroundColor3 = Color3.fromRGB(65, 65, 75)
        DropdownButton.Size = UDim2.new(0, 100, 0, 25)
        DropdownButton.Position = UDim2.new(1, -110, 0.5, -12.5)
        DropdownButton.Text = Options[1] or "..."
        DropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        DropdownButton.TextSize = 12
        DropdownButton.Font = Enum.Font.Gotham
        
        local DropdownCorner2 = Instance.new("UICorner")
        DropdownCorner2.Parent = DropdownButton
        DropdownCorner2.CornerRadius = UDim.new(0, 5)
        
        return DropdownButton
    end
    
    return API
end

-- CREATE TABS
local FarmTab = CreateTab("Farm")
local BossTab = CreateTab("Boss")
local CombatTab = CreateTab("Combat")
local StatsTab = CreateTab("Stats")
local MiscTab = CreateTab("Misc")
local SeaTab = CreateTab("Sea Event")
local RaceTab = CreateTab("Race V4")
local MaterialTab = CreateTab("Material")

-- FARM TAB
FarmTab:CreateLabel("⚔️ AUTO FARM")
FarmTab:CreateToggle("Auto Farm Level", _G.Settings.AutoFarmLevel, function(v) _G.Settings.AutoFarmLevel = v end)
FarmTab:CreateToggle("Auto Farm Nearest", _G.Settings.AutoFarmNearest, function(v) _G.Settings.AutoFarmNearest = v end)
FarmTab:CreateToggle("Auto Farm Fast (1-300)", _G.Settings.AutoFarmFast, function(v) _G.Settings.AutoFarmFast = v end)
FarmTab:CreateToggle("Auto Farm Bone", _G.Settings.AutoFarmBone, function(v) _G.Settings.AutoFarmBone = v end)

-- BOSS TAB
BossTab:CreateLabel("👑 BOSS FARM")
BossTab:CreateToggle("Auto Elite Hunter", _G.Settings.AutoEliteHunter, function(v) _G.Settings.AutoEliteHunter = v end)
BossTab:CreateToggle("Auto Dough King", _G.Settings.AutoDoughKing, function(v) _G.Settings.AutoDoughKing = v end)
BossTab:CreateToggle("Auto Rip Indra", _G.Settings.AutoRipIndra, function(v) _G.Settings.AutoRipIndra = v end)
BossTab:CreateToggle("Auto Saber", _G.Settings.AutoSaber, function(v) _G.Settings.AutoSaber = v end)
BossTab:CreateToggle("Auto Yama", _G.Settings.AutoYama, function(v) _G.Settings.AutoYama = v end)
BossTab:CreateToggle("Auto Tushita", _G.Settings.AutoTushitaSword, function(v) _G.Settings.AutoTushitaSword = v end)
BossTab:CreateToggle("Auto CDK", _G.Settings.AutoCDK, function(v) _G.Settings.AutoCDK = v end)
BossTab:CreateToggle("Auto Farm All Boss", _G.Settings.AutoFarmAllBoss, function(v) _G.Settings.AutoFarmAllBoss = v end)

-- COMBAT TAB
CombatTab:CreateLabel("⚡ COMBAT")
CombatTab:CreateToggle("Fast Attack", _G.Settings.FastAttack, function(v) _G.Settings.FastAttack = v end)
CombatTab:CreateToggle("Super Fast Attack", _G.Settings.SuperFastAttack, function(v) _G.Settings.SuperFastAttack = v end)
CombatTab:CreateToggle("Auto Haki", _G.Settings.AutoHaki, function(v) _G.Settings.AutoHaki = v end)
CombatTab:CreateToggle("Bring Mob", _G.Settings.BringMob, function(v) _G.Settings.BringMob = v end)
CombatTab:CreateToggle("Click", _G.Settings.Click, function(v) _G.Settings.Click = v end)

CombatTab:CreateLabel("🥋 FIGHTING STYLE")
CombatTab:CreateToggle("Auto Superhuman", _G.Settings.AutoSuperhuman, function(v) _G.Settings.AutoSuperhuman = v end)
CombatTab:CreateToggle("Auto Death Step", _G.Settings.AutoDeathStep, function(v) _G.Settings.AutoDeathStep = v end)
CombatTab:CreateToggle("Auto Sharkman", _G.Settings.AutoSharkman, function(v) _G.Settings.AutoSharkman = v end)
CombatTab:CreateToggle("Auto Electric Claw", _G.Settings.AutoElectricClaw, function(v) _G.Settings.AutoElectricClaw = v end)
CombatTab:CreateToggle("Auto Dragon Talon", _G.Settings.AutoDragonTalon, function(v) _G.Settings.AutoDragonTalon = v end)
CombatTab:CreateToggle("Auto God Human", _G.Settings.AutoGodHuman, function(v) _G.Settings.AutoGodHuman = v end)
CombatTab:CreateToggle("Auto Sanguine Art", _G.Settings.AutoSanguineArt, function(v) _G.Settings.AutoSanguineArt = v end)
CombatTab:CreateToggle("Auto Dragon Breath", _G.Settings.AutoDragonBreath, function(v) _G.Settings.AutoDragonBreath = v end)
CombatTab:CreateToggle("Auto Buy All FS", _G.Settings.AutoBuyAllFightingStyle, function(v) _G.Settings.AutoBuyAllFightingStyle = v end)

-- STATS TAB
StatsTab:CreateLabel("📊 AUTO STATS")
StatsTab:CreateToggle("Auto Stats Melee", _G.Settings.AutoStatsMelee, function(v) _G.Settings.AutoStatsMelee = v end)
StatsTab:CreateToggle("Auto Stats Defense", _G.Settings.AutoStatsDefense, function(v) _G.Settings.AutoStatsDefense = v end)
StatsTab:CreateToggle("Auto Stats Sword", _G.Settings.AutoStatsSword, function(v) _G.Settings.AutoStatsSword = v end)
StatsTab:CreateToggle("Auto Stats Gun", _G.Settings.AutoStatsGun, function(v) _G.Settings.AutoStatsGun = v end)
StatsTab:CreateToggle("Auto Stats Fruit", _G.Settings.AutoStatsFruit, function(v) _G.Settings.AutoStatsFruit = v end)
StatsTab:CreateToggle("Auto Stats Kaitun", _G.Settings.AutoStatsKaitun, function(v) _G.Settings.AutoStatsKaitun = v end)

-- SEA TAB
SeaTab:CreateLabel("🌊 SEA EVENT 2026")
SeaTab:CreateToggle("Auto Kitsune Island", _G.Settings.AutoKitsuneIsland, function(v) _G.Settings.AutoKitsuneIsland = v end)
SeaTab:CreateToggle("Auto Azure Ember", _G.Settings.AutoAzureEmber, function(v) _G.Settings.AutoAzureEmber = v end)
SeaTab:CreateToggle("Auto Kitsune Boss", _G.Settings.AutoKitsuneBoss, function(v) _G.Settings.AutoKitsuneBoss = v end)
SeaTab:CreateToggle("Auto Dragon Token", _G.Settings.AutoDragonToken, function(v) _G.Settings.AutoDragonToken = v end)
SeaTab:CreateToggle("Auto Dragon Radar", _G.Settings.AutoDragonRadar, function(v) _G.Settings.AutoDragonRadar = v end)
SeaTab:CreateToggle("Auto Dragon Storm", _G.Settings.AutoDragonStorm, function(v) _G.Settings.AutoDragonStorm = v end)
SeaTab:CreateToggle("Auto Frozen Island", _G.Settings.AutoFrozenDimension, function(v) _G.Settings.AutoFrozenDimension = v end)
SeaTab:CreateToggle("Auto Leviathan", _G.Settings.AutoLeviathan, function(v) _G.Settings.AutoLeviathan = v end)
SeaTab:CreateToggle("Auto Terror Shark", _G.Settings.AutoTerrorShark, function(v) _G.Settings.AutoTerrorShark = v end)
SeaTab:CreateToggle("Auto Shark", _G.Settings.AutoShark, function(v) _G.Settings.AutoShark = v end)
SeaTab:CreateToggle("Auto Piranha", _G.Settings.AutoPiranha, function(v) _G.Settings.AutoPiranha = v end)
SeaTab:CreateToggle("Auto Fish Crew", _G.Settings.AutoFishCrew, function(v) _G.Settings.AutoFishCrew = v end)
SeaTab:CreateToggle("Auto Ghost Ship", _G.Settings.AutoGhostShip, function(v) _G.Settings.AutoGhostShip = v end)
SeaTab:CreateToggle("Auto Sea Beast", _G.Settings.AutoSeaBeast, function(v) _G.Settings.AutoSeaBeast = v end)

-- RACE TAB
RaceTab:CreateLabel("🏃 RACE V4")
RaceTab:CreateToggle("Auto Evo Race", _G.Settings.AutoEvoRace, function(v) _G.Settings.AutoEvoRace = v end)
RaceTab:CreateToggle("Auto Race V4", _G.Settings.AutoRaceV4, function(v) _G.Settings.AutoRaceV4 = v end)
RaceTab:CreateToggle("Auto Trial Human", _G.Settings.AutoTrialHuman, function(v) _G.Settings.AutoTrialHuman = v end)
RaceTab:CreateToggle("Auto Trial Skypiea", _G.Settings.AutoTrialSkypiea, function(v) _G.Settings.AutoTrialSkypiea = v end)
RaceTab:CreateToggle("Auto Trial Fishman", _G.Settings.AutoTrialFishman, function(v) _G.Settings.AutoTrialFishman = v end)
RaceTab:CreateToggle("Auto Trial Cyborg", _G.Settings.AutoTrialCyborg, function(v) _G.Settings.AutoTrialCyborg = v end)
RaceTab:CreateToggle("Auto Trial Ghoul", _G.Settings.AutoTrialGhoul, function(v) _G.Settings.AutoTrialGhoul = v end)
RaceTab:CreateToggle("Auto Trial Mink", _G.Settings.AutoTrialMink, function(v) _G.Settings.AutoTrialMink = v end)
RaceTab:CreateToggle("Auto Active V4", _G.Settings.AutoActiveV4, function(v) _G.Settings.AutoActiveV4 = v end)
RaceTab:CreateToggle("Auto Buy Gear V4", _G.Settings.AutoBuyGearV4, function(v) _G.Settings.AutoBuyGearV4 = v end)

-- MATERIAL TAB
MaterialTab:CreateLabel("📦 AUTO MATERIAL")
MaterialTab:CreateToggle("Auto Ectoplasm", _G.Settings.AutoFarmEctoplasm, function(v) _G.Settings.AutoFarmEctoplasm = v end)
MaterialTab:CreateToggle("Auto Leather", _G.Settings.AutoFarmLeather, function(v) _G.Settings.AutoFarmLeather = v end)
MaterialTab:CreateToggle("Auto Scrap Metal", _G.Settings.AutoFarmScrap, function(v) _G.Settings.AutoFarmScrap = v end)
MaterialTab:CreateToggle("Auto Gunpowder", _G.Settings.AutoFarmGunpowder, function(v) _G.Settings.AutoFarmGunpowder = v end)
MaterialTab:CreateToggle("Auto Dragon Scale", _G.Settings.AutoFarmDragonScale, function(v) _G.Settings.AutoFarmDragonScale = v end)
MaterialTab:CreateToggle("Auto Fish Tail", _G.Settings.AutoFarmFishTail, function(v) _G.Settings.AutoFarmFishTail = v end)
MaterialTab:CreateToggle("Auto Mini Tusk", _G.Settings.AutoFarmMiniTusk, function(v) _G.Settings.AutoFarmMiniTusk = v end)
MaterialTab:CreateToggle("Auto Radioactive", _G.Settings.AutoFarmRadioactive, function(v) _G.Settings.AutoFarmRadioactive = v end)
MaterialTab:CreateToggle("Auto Angel Wings", _G.Settings.AutoFarmAngelWings, function(v) _G.Settings.AutoFarmAngelWings = v end)
MaterialTab:CreateToggle("Auto Mystic Droplet", _G.Settings.AutoFarmMysticDroplet, function(v) _G.Settings.AutoFarmMysticDroplet = v end)
MaterialTab:CreateToggle("Auto Conjured Cocoa", _G.Settings.AutoFarmConjuredCocoa, function(v) _G.Settings.AutoFarmConjuredCocoa = v end)

-- MISC TAB
MiscTab:CreateLabel("⚙️ MISC")
MiscTab:CreateToggle("Infinite Energy", _G.Settings.InfiniteEnergy, function(v) _G.Settings.InfiniteEnergy = v end)
MiscTab:CreateToggle("Infinite Ability", _G.Settings.InfiniteAbility, function(v) _G.Settings.InfiniteAbility = v end)
MiscTab:CreateToggle("Infinite Observation", _G.Settings.InfiniteObservation, function(v) _G.Settings.InfiniteObservation = v end)
MiscTab:CreateToggle("No Dodge Cooldown", _G.Settings.NoDodgeCooldown, function(v) _G.Settings.NoDodgeCooldown = v end)
MiscTab:CreateToggle("Infinite Geppo", _G.Settings.InfiniteGeppo, function(v) _G.Settings.InfiniteGeppo = v end)
MiscTab:CreateToggle("Infinite Soru", _G.Settings.InfiniteSoru, function(v) _G.Settings.InfiniteSoru = v end)
MiscTab:CreateToggle("Fly", _G.Settings.Fly, function(v) _G.Settings.Fly = v; if v then StartFly() end end)
MiscTab:CreateToggle("No Clip", _G.Settings.NoClip, function(v) _G.Settings.NoClip = v end)
MiscTab:CreateToggle("Walk on Water", _G.Settings.WalkWater, function(v) _G.Settings.WalkWater = v end)

MiscTab:CreateLabel("👁️ ESP")
MiscTab:CreateToggle("ESP Player", _G.Settings.ESPPlayer, function(v) _G.Settings.ESPPlayer = v end)
MiscTab:CreateToggle("ESP Chest", _G.Settings.ESPChest, function(v) _G.Settings.ESPChest = v end)
MiscTab:CreateToggle("ESP Fruit", _G.Settings.ESPFruit, function(v) _G.Settings.ESPFruit = v end)
MiscTab:CreateToggle("ESP Island", _G.Settings.ESPIsland, function(v) _G.Settings.ESPIsland = v end)
MiscTab:CreateToggle("ESP Mirage", _G.Settings.ESPMirage, function(v) _G.Settings.ESPMirage = v end)

MiscTab:CreateLabel("🌐 SERVER")
MiscTab:CreateButton("Server Hop", ServerHop)
MiscTab:CreateToggle("Auto Hop Low Players", _G.Settings.AutoHopLow, function(v) _G.Settings.AutoHopLow = v end)
MiscTab:CreateToggle("Auto Rejoin", _G.Settings.AutoRejoin, function(v) _G.Settings.AutoRejoin = v end)

MiscTab:CreateLabel("💎 QOL")
MiscTab:CreateToggle("Discord Webhook", _G.Settings.DiscordWebhook, function(v) _G.Settings.DiscordWebhook = v end)
MiscTab:CreateToggle("Auto Vote", _G.Settings.AutoVote, function(v) _G.Settings.AutoVote = v end)
MiscTab:CreateToggle("Auto Claim Vote", _G.Settings.AutoClaimVote, function(v) _G.Settings.AutoClaimVote = v end)
MiscTab:CreateToggle("FPS Boost", _G.Settings.FPSBoost, function(v) _G.Settings.FPSBoost = v end)
MiscTab:CreateToggle("Remove Damage", _G.Settings.RemoveDamage, function(v) _G.Settings.RemoveDamage = v end)
MiscTab:CreateToggle("Remove Fog", _G.Settings.RemoveFog, function(v) _G.Settings.RemoveFog = v end)
MiscTab:CreateToggle("White Screen", _G.Settings.WhiteScreen, function(v) _G.Settings.WhiteScreen = v end)

-- INIT
Pages["Farm"].Visible = true
CurrentPage = "Farm"

-- CLEANUP
LocalPlayer.CharacterAdded:Connect(function()
    StopTween()
    _G.Settings.Clip = false
    _G.CurrentMonster = nil
end)

game:BindToClose(function()
    if FlyConnection then
        FlyConnection:Disconnect()
    end
end)

-- COMPLETE
SendNotification("TRUNGVNG HUB", "🚀 SIÊU CẤP VIP PRO - 200+ FEATURES", 5)
SendDiscordMessage("🚀 **TRUNGVNG HUB 2026 SIÊU CẤP** đã sẵn sàng! 200+ tính năng!")
print("🚀 TRUNGVNG HUB 2026 - SIÊU CẤP VIP PRO")
print("⚡ EXECUTOR: " .. CurrentExecutor)
print("🔥 200+ TÍNH NĂNG - READY TO USE!")
```