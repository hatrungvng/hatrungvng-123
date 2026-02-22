------------------------------------------------
-- CORE HUB SYSTEM
------------------------------------------------

repeat wait() until game:IsLoaded()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local VirtualUser = game:GetService("VirtualUser")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Stats = game:GetService("Stats")

local LocalPlayer = Players.LocalPlayer

------------------------------------------------
-- HUB INFO
------------------------------------------------

local Hub = {

Name = "TRUNGHUB",
Version = "v5.0",
Owner = "HÀTRUNG",
ScriptID = "111644419594912",
Discord = "discord.gg/YourServer"

}

------------------------------------------------
-- SETTINGS
------------------------------------------------

_G.AutoFarm=false
_G.AutoQuest=false
_G.AutoBoss=false
_G.FastAttack=false
_G.AutoStats=false
_G.AutoHaki=false
_G.Magnet=false
_G.BringMob=false
_G.AutoFruit=false

------------------------------------------------
-- ANTI AFK
------------------------------------------------

LocalPlayer.Idled:Connect(function()

VirtualUser:Button2Down(Vector2.new(0,0),
workspace.CurrentCamera.CFrame)

wait(1)

VirtualUser:Button2Up(Vector2.new(0,0),
workspace.CurrentCamera.CFrame)

end)

------------------------------------------------
-- FPS SYSTEM
------------------------------------------------

local FPS=60

spawn(function()

while wait(1) do

FPS=math.floor(
1/RunService.RenderStepped:Wait())

end

end)

------------------------------------------------
-- PING SYSTEM
------------------------------------------------

function GetPing()

return math.floor(
Stats.Network.ServerStatsItem["Data Ping"]:GetValue())

end

------------------------------------------------
-- SEA CHECK
------------------------------------------------

function GetSea()

if game.PlaceId==2753915549 then

return "First Sea"

elseif game.PlaceId==4442272183 then

return "Second Sea"

elseif game.PlaceId==7449423635 then

return "Third Sea"

end

end

------------------------------------------------
-- TWEEN FUNCTION
------------------------------------------------

function TweenTo(Pos)

local Tween=
TweenService:Create(

LocalPlayer.Character.HumanoidRootPart,

TweenInfo.new(2),

{CFrame=CFrame.new(Pos)}

)

Tween:Play()

end

print("CORE HUB LOADED")
 
------------------------------------------------
-- UI SYSTEM
------------------------------------------------

local Library = loadstring(game:HttpGet(
"https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window=
Library.CreateLib(
Hub.Name,
"DarkTheme")

print("UI LOADED")

------------------------------------------------
-- INFO TAB
------------------------------------------------

local InfoTab=Window:NewTab("Info")

local HubInfo=
InfoTab:NewSection("Hub")

HubInfo:NewLabel(
"Hub : "..Hub.Name)

HubInfo:NewLabel(
"Version : "..Hub.Version)

HubInfo:NewLabel(
"Owner : "..Hub.Owner)

HubInfo:NewLabel(
"ScriptID : "..Hub.ScriptID)

HubInfo:NewLabel(
"Discord : "..Hub.Discord)

local PlayerInfo=
InfoTab:NewSection("Player")

PlayerInfo:NewLabel(
"Name : "..LocalPlayer.Name)

PlayerInfo:NewLabel(
"Display : "..LocalPlayer.DisplayName)

PlayerInfo:NewLabel(
"UserID : "..LocalPlayer.UserId)

print("INFO TAB LOADED")

------------------------------------------------
-- AUTO FARM ENGINE
------------------------------------------------

spawn(function()

while wait() do

if _G.AutoFarm then

pcall(function()

for i,v in pairs(
workspace.Enemies:GetChildren()) do

if v:FindFirstChild(
"HumanoidRootPart") then

TweenTo(
v.HumanoidRootPart.Position)

end

end

end)

end

end

end)

print("FARM ENGINE LOADED")

------------------------------------------------
-- AUTO QUEST ENGINE
------------------------------------------------

spawn(function()

while wait(3) do

if _G.AutoQuest then

ReplicatedStorage.Remotes.CommF_:InvokeServer(

"StartQuest",
"BanditQuest1",
1)

end

end

end)

print("QUEST ENGINE LOADED")

--// ===== COMBAT SETTINGS =====

_G.FastAttack = true
_G.AutoHaki = true
_G.AutoSkillZ = false
_G.AutoSkillX = false
_G.AutoSkillC = false
_G.AutoSkillV = false

spawn(function()
while wait(0.1) do

if _G.FastAttack then
pcall(function()

local CombatFramework =
require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

local activeController =
CombatFramework.activeController

if activeController then

activeController.timeToNextAttack = 0

activeController.hitboxMagnitude = 60

end

end)
end

end
end)

spawn(function()
while wait(1) do

if _G.AutoHaki then

pcall(function()

if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")

end

end)

end

end
end)

spawn(function()
while wait(0.2) do

pcall(function()

if _G.AutoSkillZ then

game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)

end

if _G.AutoSkillX then

game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)

end

if _G.AutoSkillC then

game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)

end

if _G.AutoSkillV then

game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)

end

end)

end
end)

--// ===== TELEPORT =====

function TP(place)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = place

end


Island1 = CFrame.new(1000,50,1000)
Island2 = CFrame.new(-5000,50,-2000)
Island3 = CFrame.new(3000,50,-6000)


function TPIsland1()

TP(Island1)

end

function TPIsland2()

TP(Island2)

end

function TPIsland3()

TP(Island3)

end

--// ===== AUTO BOSS =====

_G.AutoBoss = false

spawn(function()
while wait(1) do

if _G.AutoBoss then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if string.find(v.Name,"Boss") then

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame * CFrame.new(0,20,0)

until v.Humanoid.Health <= 0 or not _G.AutoBoss

end

end

end

end
end)

--// ===== AUTO CHEST =====

_G.AutoChest = false

spawn(function()

while wait(1) do

if _G.AutoChest then

for i,v in pairs(game.Workspace:GetDescendants()) do

if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.CFrame

wait(1)

end

end

end

end

end)

--// ===== AUTO FRUIT =====

_G.AutoFruit = false

spawn(function()

while wait(3) do

if _G.AutoFruit then

for i,v in pairs(game.Workspace:GetChildren()) do

if string.find(v.Name,"Fruit") then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.Handle.CFrame

end

end

end

end

end)

--// ===== ESP ENEMY =====

_G.EnemyESP = false

spawn(function()

while wait(5) do

if _G.EnemyESP then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if not v:FindFirstChild("ESP") then

local Billboard = Instance.new("BillboardGui",v)

Billboard.Name = "ESP"

Billboard.Size = UDim2.new(0,100,0,40)

Billboard.AlwaysOnTop = true

local Text = Instance.new("TextLabel",Billboard)

Text.Size = UDim2.new(1,0,1,0)

Text.Text = v.Name

Text.BackgroundTransparency = 1

Text.TextColor3 = Color3.fromRGB(255,0,0)

end

end

end

end

end)

--// ===== HUB INFO =====

HubName = "LEGEND HUB"
HubID = "ID: 001"
HubDiscord = "discord.gg/legend"
HubOwner = "Owner: You"

--// ===== LOAD UI =====

local Library = loadstring(game:HttpGet(
"https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"
))()

local Window = Library.CreateLib(
HubName.." | "..HubID,
"BloodTheme"
)


--// ===== TAB MAIN =====

local MainTab = Window:NewTab("Main")

local MainSection =
MainTab:NewSection("Hub Info")


MainSection:NewLabel("Name : "..HubName)

MainSection:NewLabel(HubOwner)

MainSection:NewLabel(HubDiscord)



--// ===== TAB FARM =====

local FarmTab =
Window:NewTab("Auto Farm")

local FarmSection =
FarmTab:NewSection("Level Farm")


FarmSection:NewToggle(
"Auto Farm Level",
"Farm",
function(v)

_G.AutoFarm = v

end)


FarmSection:NewToggle(
"Fast Attack",
"Fast",
function(v)

_G.FastAttack = v

end)



FarmSection:NewToggle(
"Auto Haki",
"Haki",
function(v)

_G.AutoHaki = v

end)




--// ===== TAB COMBAT =====

local CombatTab =
Window:NewTab("Combat")


local CombatSection =
CombatTab:NewSection("Skills")


CombatSection:NewToggle(
"Skill Z",
"Z",
function(v)

_G.AutoSkillZ = v

end)


CombatSection:NewToggle(
"Skill X",
"X",
function(v)

_G.AutoSkillX = v

end)


CombatSection:NewToggle(
"Skill C",
"C",
function(v)

_G.AutoSkillC = v

end)


CombatSection:NewToggle(
"Skill V",
"V",
function(v)

_G.AutoSkillV = v

end)



--// ===== TAB BOSS =====

local BossTab =
Window:NewTab("Boss")


local BossSection =
BossTab:NewSection("Boss Farm")


BossSection:NewToggle(
"Auto Boss",
"Boss",
function(v)

_G.AutoBoss = v

end)

--// ===== TAB TELEPORT =====

local TeleportTab =
Window:NewTab("Teleport")

local TPSection =
TeleportTab:NewSection("Islands")


TPSection:NewButton(
"Island 1",
"TP",
function()

TPIsland1()

end)


TPSection:NewButton(
"Island 2",
"TP",
function()

TPIsland2()

end)


TPSection:NewButton(
"Island 3",
"TP",
function()

TPIsland3()

end)

--// ===== TAB MISC =====

local MiscTab =
Window:NewTab("Misc")

local MiscSection =
MiscTab:NewSection("Extra")


MiscSection:NewToggle(
"Auto Chest",
"Chest",
function(v)

_G.AutoChest = v

end)


MiscSection:NewToggle(
"Auto Fruit",
"Fruit",
function(v)

_G.AutoFruit = v

end)


MiscSection:NewToggle(
"Enemy ESP",
"ESP",
function(v)

_G.EnemyESP = v

end)

--// ===== SERVER TAB =====

local ServerTab =
Window:NewTab("Server")

local ServerSection =
ServerTab:NewSection("Server")


ServerSection:NewButton(
"Rejoin",
"rejoin",
function()

game:GetService("TeleportService"):
Teleport(game.PlaceId,
game.Players.LocalPlayer)

end)



ServerSection:NewButton(
"Server Hop",
"hop",
function()

loadstring(game:HttpGet(
"https://raw.githubusercontent.com/realredz/BloxFruits/main/ServerHop.lua"
))()

end)

--// ===== AUTO RAID =====

_G.AutoRaid = false

spawn(function()
while wait(5) do

if _G.AutoRaid then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"RaidsNpc","Select","Flame"
)

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"RaidsNpc","Start"
)

end)

end

end
end)

--// ===== AUTO SEA BEAST =====

_G.AutoSeaBeast = false

spawn(function()
while wait(2) do

if _G.AutoSeaBeast then

for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame * CFrame.new(0,40,0)

until v.Humanoid.Health <= 0 or not _G.AutoSeaBeast

end

end

end
end)

--// ===== AUTO ELITE =====

_G.AutoElite = false

spawn(function()
while wait(2) do

if _G.AutoElite then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"EliteHunter"
)

end)

end

end
end)

--// ===== AUTO STATS =====

_G.AutoStats = false

spawn(function()
while wait(1) do

if _G.AutoStats then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"AddPoint","Melee",1
)

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"AddPoint","Defense",1
)

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"AddPoint","Sword",1
)

end)

end

end
end)

--// ===== AUTO MASTERY =====

_G.AutoMastery = false

spawn(function()

while wait(1) do

if _G.AutoMastery then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)

until v.Humanoid.Health <= 0 or not _G.AutoMastery

end

end

end

end)

--// ===== BRING MOB =====

_G.BringMob = false

spawn(function()

while wait(1) do

if _G.BringMob then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

pcall(function()

v.HumanoidRootPart.CFrame =
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

v.HumanoidRootPart.CanCollide = false

end)

end

end

end

end)

--// ===== AIM SKILL =====

_G.AimBotSkill = false

spawn(function()

while wait() do

if _G.AimBotSkill then

local enemy =
game.Workspace.Enemies:FindFirstChildWhichIsA("Model")

if enemy then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
enemy.HumanoidRootPart.CFrame * CFrame.new(0,20,0)

end

end

end

end)

--// ===== SELECT WEAPON =====

SelectWeapon = ""

function EquipWeapon()

for i,v in pairs(
game.Players.LocalPlayer.Backpack:GetChildren()
) do

if v.Name == SelectWeapon then

game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)

end

end

end

--// ===== PLAYER BOOST =====

_G.Speed = 50
_G.Jump = 50

spawn(function()

while wait() do

pcall(function()

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed =
_G.Speed

game.Players.LocalPlayer.Character.Humanoid.JumpPower =
_G.Jump

end)

end

end)

--// ===== NO CLIP =====

_G.NoClip = false

spawn(function()

while wait() do

if _G.NoClip then

for i,v in pairs(
game.Players.LocalPlayer.Character:GetDescendants()
) do

if v:IsA("BasePart") then

v.CanCollide = false

end

end

end

end

end)

--// ===== ANTI AFK =====

spawn(function()

local vu = game:GetService("VirtualUser")

game.Players.LocalPlayer.Idled:Connect(function()

vu:Button2Down(Vector2.new(0,0),
workspace.CurrentCamera.CFrame)

wait(1)

vu:Button2Up(Vector2.new(0,0),
workspace.CurrentCamera.CFrame)

end)

end)

--// ===== SMART FARM =====

_G.SmartFarm = false

spawn(function()
while wait(1) do

if _G.SmartFarm then

pcall(function()

local Level =
game.Players.LocalPlayer.Data.Level.Value

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if v:FindFirstChild("Humanoid") then

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)

until v.Humanoid.Health <= 0 or not _G.SmartFarm

end

end

end)

end

end
end)

--// ===== AUTO DOUGH KING =====

_G.AutoDoughKing = false

spawn(function()

while wait(5) do

if _G.AutoDoughKing then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if string.find(v.Name,"Dough") then

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame * CFrame.new(0,30,0)

until v.Humanoid.Health <= 0 or not _G.AutoDoughKing

end

end

end

end

end)

--// ===== AUTO FACTORY =====

_G.AutoFactory = false

spawn(function()

while wait(3) do

if _G.AutoFactory then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if string.find(v.Name,"Core") then

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame

until not _G.AutoFactory

end

end

end

end

end)

--// ===== AUTO MIRAGE =====

_G.AutoMirage = false

spawn(function()

while wait(5) do

if _G.AutoMirage then

pcall(function()

for i,v in pairs(game.Workspace:GetChildren()) do

if string.find(v.Name,"Mirage") then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.CFrame

end

end

end)

end

end

end)

--// ===== AUTO RACE V4 =====

_G.AutoRace = false

spawn(function()

while wait(3) do

if _G.AutoRace then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"RaceV4Progress","Check"
)

end)

end

end

end)

--// ===== AUTO HAKI COLOR =====

_G.AutoColor = false

spawn(function()

while wait(5) do

if _G.AutoColor then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"ColorsDealer","2"
)

end)

end

end

end)

--// ===== FRUIT SNIPER =====

_G.FruitSniper = false

spawn(function()

while wait(2) do

if _G.FruitSniper then

for i,v in pairs(game.Workspace:GetChildren()) do

if string.find(v.Name,"Fruit") then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.Handle.CFrame

end

end

end

end

end)

--// ===== AUTO QUEST =====

_G.AutoQuest = false

spawn(function()

while wait(5) do

if _G.AutoQuest then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"StartQuest",
"BanditQuest1",
1
)

end)

end

end

end)

--// ===== KILL PLAYER =====

_G.KillPlayer = false

spawn(function()

while wait() do

if _G.KillPlayer then

for i,v in pairs(game.Players:GetPlayers()) do

if v ~= game.Players.LocalPlayer then

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.Character.HumanoidRootPart.CFrame

until not _G.KillPlayer

end

end

end

end

end)

--// ===== AUTO BOUNTY =====

_G.AutoBounty = false

spawn(function()

while wait(2) do

if _G.AutoBounty then

for i,v in pairs(game.Players:GetPlayers()) do

if v ~= game.Players.LocalPlayer then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.Character.HumanoidRootPart.CFrame

end

end

end

end

end)

--// ===== ELITE HUNTER =====

_G.EliteHunter = false

spawn(function()

while wait(5) do

if _G.EliteHunter then

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"EliteHunter"
)

end

end

end)

--// ===== AUTO CDK =====

_G.AutoCDK = false

spawn(function()

while wait(5) do

if _G.AutoCDK then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"CDKQuest","Progress"
)

end)

end

end

end)

--// ===== SEA EVENT =====

_G.SeaEvent = false

spawn(function()

while wait(5) do

if _G.SeaEvent then

for i,v in pairs(game.Workspace:GetChildren()) do

if string.find(v.Name,"Ship") then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.CFrame

end

end

end

end

end)

--// ===== FPS BOOST =====

_G.FPSBoost = true

if _G.FPSBoost then

for i,v in pairs(game:GetDescendants()) do

if v:IsA("Part")
or v:IsA("MeshPart") then

v.Material = Enum.Material.SmoothPlastic

v.Reflectance = 0

end

end

end

--// ===== AUTO REJOIN =====

_G.AutoRejoin = false

spawn(function()

while wait(10) do

if _G.AutoRejoin then

if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ErrorPrompt") then

game:GetService("TeleportService"):
Teleport(game.PlaceId)

end

end

end

end)

--// ===== PLAYER ESP =====

_G.PlayerESP = false

spawn(function()
while wait(5) do

if _G.PlayerESP then

for i,v in pairs(game.Players:GetPlayers()) do

if v ~= game.Players.LocalPlayer then

if v.Character and not v.Character:FindFirstChild("ESP") then

local Bill = Instance.new("BillboardGui",v.Character)

Bill.Name = "ESP"

Bill.Size = UDim2.new(0,100,0,40)

Bill.AlwaysOnTop = true

local Text = Instance.new("TextLabel",Bill)

Text.Size = UDim2.new(1,0,1,0)

Text.BackgroundTransparency = 1

Text.Text = v.Name

Text.TextColor3 = Color3.fromRGB(255,255,0)

end

end

end

end

end
end)

--// ===== CHEST ESP =====

_G.ChestESP = false

spawn(function()

while wait(5) do

if _G.ChestESP then

for i,v in pairs(game.Workspace:GetDescendants()) do

if v.Name == "Chest1"
or v.Name == "Chest2"
or v.Name == "Chest3" then

if not v:FindFirstChild("ESP") then

local Bill = Instance.new("BillboardGui",v)

Bill.Name = "ESP"

Bill.Size = UDim2.new(0,100,0,40)

Bill.AlwaysOnTop = true

local Text = Instance.new("TextLabel",Bill)

Text.Size = UDim2.new(1,0,1,0)

Text.Text = "Chest"

Text.BackgroundTransparency = 1

Text.TextColor3 = Color3.fromRGB(255,255,0)

end

end

end

end

end

end)

--// ===== AUTO BONES =====

_G.AutoBones = false

spawn(function()

while wait(2) do

if _G.AutoBones then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if string.find(v.Name,"Reborn") then

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)

until v.Humanoid.Health <= 0 or not _G.AutoBones

end

end

end

end

end)

--// ===== AUTO ECTOPLASM =====

_G.AutoEcto = false

spawn(function()

while wait(2) do

if _G.AutoEcto then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if string.find(v.Name,"Ship") then

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame

until v.Humanoid.Health <= 0 or not _G.AutoEcto

end

end

end

end

end)

--// ===== AUTO MATERIAL =====

_G.AutoMaterial = false

spawn(function()

while wait(2) do

if _G.AutoMaterial then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame

until v.Humanoid.Health <= 0 or not _G.AutoMaterial

end

end

end

end)

--// ===== SELECT SWORD =====

SwordSelect = ""

function EquipSword()

for i,v in pairs(
game.Players.LocalPlayer.Backpack:GetChildren()
) do

if v.Name == SwordSelect then

game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)

end

end

end

--// ===== SELECT GUN =====

GunSelect = ""

function EquipGun()

for i,v in pairs(
game.Players.LocalPlayer.Backpack:GetChildren()
) do

if v.Name == GunSelect then

game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)

end

end

end

--// ===== AUTO AWAKEN =====

_G.AutoAwaken = false

spawn(function()

while wait(5) do

if _G.AutoAwaken then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"Awakener","Awaken"
)

end)

end

end

end)

--// ===== AUTO TRIAL =====

_G.AutoTrial = false

spawn(function()

while wait(5) do

if _G.AutoTrial then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"RaceV4Progress","BeginTrial"
)

end)

end

end

end)

--// ===== AUTO FRAGMENT =====

_G.AutoFragment = false

spawn(function()

while wait(3) do

if _G.AutoFragment then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame

until v.Humanoid.Health <= 0 or not _G.AutoFragment

end

end

end

end)

--// ===== AUTO DARKBEARD =====

_G.AutoDarkbeard = false

spawn(function()

while wait(5) do

if _G.AutoDarkbeard then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if string.find(v.Name,"Darkbeard") then

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame

until v.Humanoid.Health <= 0

end

end

end

end

end)

--// ===== AUTO RIP INDRA =====

_G.AutoIndra = false

spawn(function()

while wait(5) do

if _G.AutoIndra then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if string.find(v.Name,"rip_indra") then

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame

until v.Humanoid.Health <= 0

end

end

end

end

end)

--// ===== AUTO CAKE =====

_G.AutoCake = false

spawn(function()

while wait(5) do

if _G.AutoCake then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if string.find(v.Name,"Cake") then

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame

until v.Humanoid.Health <= 0

end

end

end

end

end)

--// ===== AUTO TUSHITA =====

_G.AutoTushita = false

spawn(function()

while wait(5) do

if _G.AutoTushita then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"TushitaProgress"
)

end)

end

end

end)

--// ===== AUTO YAMA =====

_G.AutoYama = false

spawn(function()

while wait(5) do

if _G.AutoYama then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"YamaProgress"
)

end)

end

end

end)

--// ===== DRAGON TALON =====

_G.AutoTalon = false

spawn(function()

while wait(5) do

if _G.AutoTalon then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"BuyDragonTalon"
)

end)

end

end

end)

--// ===== SUPERHUMAN =====

_G.AutoSuperhuman = false

spawn(function()

while wait(5) do

if _G.AutoSuperhuman then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"BuySuperhuman"
)

end)

end

end

end)

--// ===== GOD HUMAN =====

_G.AutoGodhuman = false

spawn(function()

while wait(5) do

if _G.AutoGodhuman then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"BuyGodhuman"
)

end)

end

end

end)

--// ===== DEATH STEP =====

_G.AutoDeathStep = false

spawn(function()

while wait(5) do

if _G.AutoDeathStep then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"BuyDeathStep"
)

end)

end

end

end)

--// ===== ELECTRIC CLAW =====

_G.AutoClaw = false

spawn(function()

while wait(5) do

if _G.AutoClaw then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"BuyElectricClaw"
)

end)

end

end

end)

--// ===== AUTO PORTAL =====

_G.AutoPortal = false

spawn(function()
while wait(5) do

if _G.AutoPortal then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"TravelZou"
)

end)

end

end
end)

--// ===== AUTO LEVIATHAN =====

_G.AutoLeviathan = false

spawn(function()

while wait(3) do

if _G.AutoLeviathan then

for i,v in pairs(game.Workspace:GetChildren()) do

if string.find(v.Name,"Leviathan") then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame * CFrame.new(0,50,0)

end

end

end

end

end)

--// ===== AUTO KITSUNE =====

_G.AutoKitsune = false

spawn(function()

while wait(5) do

if _G.AutoKitsune then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if string.find(v.Name,"Kitsune") then

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame * CFrame.new(0,25,0)

until v.Humanoid.Health <= 0

end

end

end

end

end)

--// ===== MOB AURA =====

_G.MobAura = false

spawn(function()

while wait() do

if _G.MobAura then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if v:FindFirstChild("Humanoid") then

v.Humanoid.Health = 0

end

end

end

end

end)

--// ===== AUTO TRADE =====

_G.AutoTrade = false

spawn(function()

while wait(10) do

if _G.AutoTrade then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"TradeFruit"
)

end)

end

end

end)

--// ===== FULL BRING =====

_G.FullBring = false

spawn(function()

while wait(1) do

if _G.FullBring then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

pcall(function()

v.HumanoidRootPart.CFrame =
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

end)

end

end

end

end)

--// ===== SAFE POS =====

_G.SafeFarm = false

spawn(function()

while wait() do

if _G.SafeFarm then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
* CFrame.new(0,30,0)

end

end

end)

--// ===== DAMAGE BOOST =====

_G.DamageBoost = false

spawn(function()

while wait() do

if _G.DamageBoost then

pcall(function()

local CombatFramework =
require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)

CombatFramework.activeController.hitboxMagnitude = 120

end)

end

end

end)

--// ===== BEST WEAPON =====

_G.AutoBestWeapon = false

spawn(function()

while wait(3) do

if _G.AutoBestWeapon then

for i,v in pairs(
game.Players.LocalPlayer.Backpack:GetChildren()
) do

game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)

end

end

end

end)

--// ===== INVISIBLE =====

_G.Invisible = false

spawn(function()

while wait() do

if _G.Invisible then

for i,v in pairs(
game.Players.LocalPlayer.Character:GetDescendants()
) do

if v:IsA("BasePart") then

v.Transparency = 1

end

end

end

end

end)

--// ===== TP ENEMY =====

_G.AutoTPEnemy = false

spawn(function()

while wait() do

if _G.AutoTPEnemy then

local enemy =
game.Workspace.Enemies:FindFirstChildWhichIsA("Model")

if enemy then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
enemy.HumanoidRootPart.CFrame

end

end

end

end)

--// ===== LOW HP ESCAPE =====

_G.AutoEscape = false

spawn(function()

while wait() do

if _G.AutoEscape then

if game.Players.LocalPlayer.Character.Humanoid.Health < 200 then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(0,300,0)

end

end

end

end)

--// ===== LOW HP ESCAPE =====

_G.AutoEscape = false

spawn(function()

while wait() do

if _G.AutoEscape then

if game.Players.LocalPlayer.Character.Humanoid.Health < 200 then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(0,300,0)

end

end

end

end)

--// ===== OPEN CHEST =====

_G.OpenChest = false

spawn(function()

while wait(2) do

if _G.OpenChest then

for i,v in pairs(game.Workspace:GetDescendants()) do

if string.find(v.Name,"Chest") then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.CFrame

end

end

end

end

end)

--// ===== SERVER CHECK =====

spawn(function()

while wait(20) do

if #game.Players:GetPlayers() > 10 then

print("Server Full")

end

end

end)

--// ===== AUTO RESET =====

_G.AutoReset = false

spawn(function()

while wait(10) do

if _G.AutoReset then

game.Players.LocalPlayer.Character.Humanoid.Health = 0

end

end

end)

--// ===== AUTO MONEY =====

_G.AutoMoney = false

spawn(function()

while wait(2) do

if _G.AutoMoney then

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

repeat wait()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.HumanoidRootPart.CFrame

until v.Humanoid.Health <= 0

end

end

end

end)

--// ===== LOW SERVER =====

_G.LowServer = false

spawn(function()

while wait(15) do

if _G.LowServer then

if #game.Players:GetPlayers() > 8 then

game:GetService("TeleportService"):
Teleport(game.PlaceId)

end

end

end

end)

--// ===== AUTO SPIN =====

_G.AutoSpin = false

spawn(function()

while wait(10) do

if _G.AutoSpin then

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"Cousin","Buy"
)

end

end

end)

--// ===== AUTO RECONNECT =====

spawn(function()

game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(v)

if v.Name == "ErrorPrompt" then

game:GetService("TeleportService"):
Teleport(game.PlaceId)

end

end)

end)

--// ===== SEA 1 TP =====

function TPSea1()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"TravelMain"
)

end

--// ===== SEA 2 TP =====

function TPSea2()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"TravelDressrosa"
)

end

--// ===== SEA 3 TP =====

function TPSea3()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"TravelZou"
)

end

--// ===== QUEST ALL LEVEL =====

_G.AutoQuestAll = false

spawn(function()

while wait(5) do

if _G.AutoQuestAll then

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"StartQuest","BanditQuest1",1
)

end)

end

end

end)

--// ===== FRUIT ESP =====

_G.FruitESP = false

spawn(function()

while wait(5) do

if _G.FruitESP then

for i,v in pairs(game.Workspace:GetChildren()) do

if string.find(v.Name,"Fruit") then

if not v:FindFirstChild("ESP") then

local Bill = Instance.new("BillboardGui",v)

Bill.Name = "ESP"

Bill.Size = UDim2.new(0,100,0,40)

Bill.AlwaysOnTop = true

local Text = Instance.new("TextLabel",Bill)

Text.Size = UDim2.new(1,0,1,0)

Text.Text = "FRUIT"

Text.BackgroundTransparency = 1

Text.TextColor3 = Color3.fromRGB(255,255,0)

end

end

end

end

end

end)

--// ===== PLAYER RADAR =====

_G.PlayerRadar = false

spawn(function()

while wait(5) do

if _G.PlayerRadar then

for i,v in pairs(game.Players:GetPlayers()) do

if v ~= game.Players.LocalPlayer then

print("Player Found:",v.Name)

end

end

end

end

end)

--// ===== AWAKEN ALL =====

_G.AwakenAll = false

spawn(function()

while wait(5) do

if _G.AwakenAll then

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"Awakener","Awaken"
)

end

end

end)

--// ===== AUTO CRAFT =====

_G.AutoCraft = false

spawn(function()

while wait(10) do

if _G.AutoCraft then

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"Craft"
)

end

end

end)

--// ===== CHEST FAST =====

_G.FastChest = false

spawn(function()

while wait(1) do

if _G.FastChest then

for i,v in pairs(game.Workspace:GetDescendants()) do

if string.find(v.Name,"Chest") then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
v.CFrame

end

end

end

end

end)

--// ===== EQUIP FRUIT =====

_G.AutoFruitEquip = false

spawn(function()

while wait(5) do

if _G.AutoFruitEquip then

for i,v in pairs(
game.Players.LocalPlayer.Backpack:GetChildren()
) do

if string.find(v.Name,"Fruit") then

game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)

end

end

end

end

end)

--// ===== STORE FRUIT =====

_G.AutoStore = false

spawn(function()

while wait(10) do

if _G.AutoStore then

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"StoreFruit"
)

end

end

end)

--// ===== RANDOM TP =====

_G.RandomTP = false

spawn(function()

while wait(5) do

if _G.RandomTP then

local x = math.random(-5000,5000)

local z = math.random(-5000,5000)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(x,200,z)

end

end

end)

--// ===== FOLLOW PLAYER =====

_G.AutoFollow = false

spawn(function()

while wait() do

if _G.AutoFollow then

local p =
game.Players:GetPlayers()[2]

if p and p.Character then

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
p.Character.HumanoidRootPart.CFrame

end

end

end

end)

--// ===== TEAM SELECT =====

spawn(function()

wait(3)

pcall(function()

game:GetService("ReplicatedStorage")
.Remotes.CommF_:InvokeServer(
"SetTeam","Pirates"
)

end)

end)

--// ===== HAKI TRAIN =====

_G.HakiTrain = false

spawn(function()

while wait(2) do

if _G.HakiTrain then

game:GetService("VirtualInputManager")
:SendKeyEvent(true,"J",false,game)

end

end

end)

--// ===== CAMERA =====

_G.Zoom = 200

game.Players.LocalPlayer.CameraMaxZoomDistance =
_G.Zoom

--// ===== REMOVE FOG =====

game.Lighting.FogEnd = 100000

--// ===== NO ANIMATION =====

for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do

if v:IsA("Animation") then

v:Destroy()

end

end

--// ===== SAVE SETTINGS =====

Settings = {

AutoFarm = _G.AutoFarm,

AutoBoss = _G.AutoBoss

}

print("Settings Saved")

--// ===== HUB LOADED =====

print("LEGEND HUB LOADED")

print("FULL VERSION")

print("NO KEY")

print("READY")


