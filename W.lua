if game.Workspace.TheOrotund:FindFirstChild("Highlight") then
game.Workspace.TheOrotund.Highlight:Destroy()
end
if game.Workspace.TheCajoler:FindFirstChild("Highlight") then
game.Workspace.TheCajoler.Highlight:Destroy()
end
local orothigh = Instance.new("Highlight")
orothigh.Parent = game.Workspace.TheOrotund
orothigh.OutlineColor = Color3.fromRGB(225,0,0)
orothigh.Enabled = false
local cajohigh = Instance.new("Highlight")
cajohigh.Parent = game.Workspace.TheCajoler
cajohigh.OutlineColor = Color3.fromRGB(0,225,0)
cajohigh.Enabled = false
--GUI
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "The Maze | "..identifyexecutor(), HidePremium = false, SaveConfig = true, ConfigFolder = "The Maze Ballz",IntroText = "The Maze"})
--TABS
local h = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local m = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local p = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local e = Window:MakeTab({
	Name = "ESP",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local t = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local c = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--SECTIONS
local ho = h:AddSection({
	Name = "Home"
})

local ma = m:AddSection({
	Name = "Main"
})

local s = m:AddSection({
	Name = "Sounds"
})

local pl = p:AddSection({
	Name = "Player"
})

local es = e:AddSection({
	Name = "ESP"
})

local te = t:AddSection({
	Name = "Teleport"
})

local cr = c:AddSection({
	Name = "Credits"
})
--BUTTONS
ma:AddToggle({
	Name = "Fullbright",
	Default = false,
	Callback = function(v)
	if v then
    local lighting = game:GetService("Lighting");
    lighting.Ambient = Color3.fromRGB(255, 255, 255);
    lighting.Brightness = 50;
    lighting.FogEnd = 1e10;
    lighting.Blur.Enabled = false
    lighting.Greyish.Enabled = false
    game.Players.LocalPlayer.PlayerGui.CurrentView.Enabled = false
    else
    local lighting = game:GetService("Lighting");
    lighting.Ambient = Color3.fromRGB(8, 8, 8);
    lighting.Brightness = 1;
    lighting.FogEnd = 95;
    lighting.Blur.Enabled = true
    lighting.Greyish.Enabled = true
    game.Players.LocalPlayer.PlayerGui.CurrentView.Enabled = true
    end
	end    
})

ma:AddButton({
	Name = "Remove Trees",
	Callback = function()
game.Workspace.Trees:Destroy()
  	end    
})

ma:AddButton({
	Name = "Spam Axe (Reset to stop)",
	Callback = function()
      	loopEnabled = true
repeat
    wait(0)
    if loopEnabled then
        for _, a in pairs(game:GetService("Workspace"):GetDescendants()) do
            if a.Name == "ClickDetector" and a.Parent.Parent.Name == "Axe" then
                fireclickdetector(a)
            end
        end
        for _, a in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if a.Name == "Axe" and not game.Players.LocalPlayer.Character:FindFirstChild("Axe") then
                a.Parent = game.Players.LocalPlayer.Character
            end
        end
    end
    until game.Players.LocalPlayer.Character.Humanoid.Health == 0
  	end    
})

ma:AddButton({
	Name = "Get All Rocks",
	Callback = function()
      		if game.Workspace.SpawnedObjects:FindFirstChild("Rock1") then
                if game.Workspace.SpawnedObjects.Rock1.Handle:FindFirstChild("ClickDetector") then
                    fireclickdetector(game.Workspace.SpawnedObjects.Rock1.Handle.ClickDetector)
                end
            end
            if game.Workspace.SpawnedObjects:FindFirstChild("Rock2") then
                if game.Workspace.SpawnedObjects.Rock2.Handle:FindFirstChild("ClickDetector") then
                    fireclickdetector(game.Workspace.SpawnedObjects.Rock2.Handle.ClickDetector)
                end
            end
  	end    
})

ma:AddButton({
	Name = "Get All Batteries",
	Callback = function()
      		if game.Workspace.SpawnedObjects:FindFirstChild("Battery1") then
                if game.Workspace.SpawnedObjects.Battery1.Handle:FindFirstChild("ClickDetector") then
                    fireclickdetector(game.Workspace.SpawnedObjects.Battery1.Handle.ClickDetector)
                end
            end
            if game.Workspace.SpawnedObjects:FindFirstChild("Battery2") then
                if game.Workspace.SpawnedObjects.Battery2.Handle:FindFirstChild("ClickDetector") then
                    fireclickdetector(game.Workspace.SpawnedObjects.Battery2.Handle.ClickDetector)
                end
            end
            if game.Workspace.SpawnedObjects:FindFirstChild("Battery3") then
                if game.Workspace.SpawnedObjects.Battery3.Handle:FindFirstChild("ClickDetector") then
                    fireclickdetector(game.Workspace.SpawnedObjects.Battery3.Handle.ClickDetector)
                end
            end
            if game.Workspace.SpawnedObjects:FindFirstChild("Battery4") then
                if game.Workspace.SpawnedObjects.Battery4.Handle:FindFirstChild("ClickDetector") then
                    fireclickdetector(game.Workspace.SpawnedObjects.Battery4.Handle.ClickDetector)
                end
            end
  	end    
})

ma:AddButton({
	Name = "Get Axe",
	Callback = function()
      		if game.Workspace:FindFirstChild("Axe") then
                if game.Workspace.Axe.Handle:FindFirstChild("ClickDetector") then
                    fireclickdetector(game.Workspace.Axe.Handle.ClickDetector)
                end
            end
  	end    
})

ma:AddButton({
	Name = "Get Flashlight",
	Callback = function()
      		if game.Workspace:FindFirstChild("Flashlight") then
                if game.Workspace.Flashlight.Flashlight:FindFirstChild("ClickDetector") then
                    fireclickdetector(game.Workspace.Flashlight.Flashlight.ClickDetector)
                end
            end
  	end    
})

ma:AddButton({
	Name = "Get Camera",
	Callback = function()
if game.Workspace:FindFirstChild("Camera") then
local model = game.Workspace.Camera
for _,v in pairs(model:GetChildren())  do
  if v:IsA("Model") and v.Name == "ViewModel" then
   model.Name = "Camera2"
  end
end
end
wait(0.01)
if game.Workspace:FindFirstChild("Camera") then
    if game.Workspace.Camera.Camera:FindFirstChild("ClickDetector") then
            fireclickdetector(game.Workspace.Camera.Camera.ClickDetector)
        end
    end
end    
})

s:AddLabel("Sounds is heard by all players")

s:AddButton({
	Name = "Play All Sound",
	Callback = function()
 for _, sound in next, workspace:GetDescendants() do
  if sound:IsA("Sound") then
   sound:Play()
  end
 end
end    
})

s:AddButton({
	Name = "Play Flashlight Sound (On)",
	Callback = function()
 for _, sound in next, workspace:GetDescendants() do
  if sound:IsA("Sound") and sound.SoundId == "http://www.roblox.com/asset/?id=115959318" then
   sound:Play()
  end
 end
end    
})

s:AddButton({
	Name = "Play Flashlight Sound (Charge)",
	Callback = function()
 for _, sound in next, workspace:GetDescendants() do
  if sound:IsA("Sound") and sound.SoundId == "rbxassetid://2034189546" and sound.Name == "Charge" then
   sound:Play()
  end
 end
end    
})

s:AddButton({
	Name = "Play Flashlight Sound (Die)",
	Callback = function()
 for _, sound in next, workspace:GetDescendants() do
  if sound:IsA("Sound") and sound.Name == "Die" then
   sound:Play()
  end
 end
end    
})

s:AddButton({
	Name = "Play Camera Sound (Shot)",
	Callback = function()
 for _, sound in next, workspace:GetDescendants() do
  if sound:IsA("Sound") and sound.SoundId == "rbxassetid://278060974" then
   sound:Play()
  end
 end
end    
})

s:AddButton({
	Name = "Play DroppedAxe Sound (Hit)",
	Callback = function()
 for _, sound in next, workspace:GetDescendants() do
  if sound:IsA("Sound") and sound.SoundId == "rbxassetid://1837829456" then
   sound:Play()
  end
 end
end    
})

s:AddButton({
	Name = "Play DroppedAxe Sound (Whoosh)",
	Callback = function()
 for _, sound in next, workspace:GetDescendants() do
  if sound:IsA("Sound") and sound.SoundId == "rbxassetid://711753382" then
   sound:Play()
  end
 end
end    
})

s:AddButton({
	Name = "Play WoodPlanks Sound (Break)",
	Callback = function()
 for _, sound in next, workspace:GetDescendants() do
  if sound:IsA("Sound") and sound.SoundId == "rbxassetid://147685617" then
   sound:Play()
  end
 end
end    
})

s:AddButton({
	Name = "Play Player Sound (FallDamage)",
	Callback = function()
 for _, sound in next, workspace:GetDescendants() do
  if sound:IsA("Sound") and sound.SoundId == "rbxassetid://138201809" then
   sound:Play()
  end
 end
end    
})

s:AddButton({
	Name = "Play Player Sound (Running)",
	Callback = function()
 for _, sound in next, workspace:GetDescendants() do
  if sound:IsA("Sound") and sound.SoundId == "rbxasset://sounds/action_footsteps_plastic.mp3" then
   sound:Play()
  end
 end
end    
})

s:AddButton({
	Name = "Play Orotund Sound (Chase)",
	Callback = function()
local random = math.random(1,5)
if random == 1 then
game.Workspace.TheOrotund.Head.Horror1:Play()
elseif random == 2 then
game.Workspace.TheOrotund.Head.Horror2:Play()
elseif random == 3 then
game.Workspace.TheOrotund.Head.Horror3:Play()
elseif random == 4 then
game.Workspace.TheOrotund.Head.Horror4:Play()
elseif random == 5 then
game.Workspace.TheOrotund.Head.Horror5:Play()
end
end    
})

s:AddButton({
	Name = "Play Orotund Sound (Scream)",
	Callback = function()
game.Workspace.TheOrotund.Head.Scream:Play()
end    
})

s:AddButton({
	Name = "Play Orotund Sound (Footstep)",
	Callback = function()
game.Workspace.TheOrotund.Head.Footstep:Play()
end    
})

s:AddButton({
	Name = "Play Orotund Sound (Footstep) 2",
	Callback = function()
game.Workspace.TheOrotund.Footsteps.Footstep:Play()
end    
})

s:AddButton({
	Name = "Play Orotund Sound (Kill)",
	Callback = function()
game.Workspace.TheOrotund.HumanoidRootPart.Kill.Kill1:Play()
end    
})

s:AddButton({
	Name = "Play Cajoler Sound (Chase)",
	Callback = function()
local random = math.random(1,5)
if random == 1 then
game.Workspace.TheCajoler.Head.Chase1:Play()
elseif random == 2 then
game.Workspace.TheCajoler.Head.Chase2:Play()
elseif random == 3 then
game.Workspace.TheCajoler.Head.Chase3:Play()
end
end    
})

s:AddButton({
	Name = "Play Cajoler Sound (Splat)",
	Callback = function()
game.Workspace.TheCajoler.Head.Splat:Play()
end    
})

s:AddButton({
	Name = "Play Cajoler Sound (Kill)",
	Callback = function()
game.Workspace.TheCajoler.HumanoidRootPart.Kill.Kill1:Play()
end    
})

pl:AddToggle({
	Name = "Unlock FirstPerson v1",
	Default = false,
	Callback = function(v)
	if v then
        game.Players.LocalPlayer.PlayerGui.FirstPerson.Value = false
    else
        game.Players.LocalPlayer.PlayerGui.FirstPerson.Value = true
    end
	end    
})

pl:AddToggle({
	Name = "Unlock FirstPerson v2",
	Default = false,
	Callback = function(v)
	if v then
        game.Players.LocalPlayer.PlayerGui.FirstPerson.Value = false
        game.Players.LocalPlayer.PlayerGui.FirstPerson.Script.Enabled = false
        game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
        game.Players.LocalPlayer.CameraMaxZoomDistance = 50
    else
        game.Players.LocalPlayer.PlayerGui.FirstPerson.Value = true
        game.Players.LocalPlayer.PlayerGui.FirstPerson.Script.Enabled = true
        game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
        game.Players.LocalPlayer.CameraMaxZoomDistance = 0.5
    end
	end    
})

pl:AddButton({
	Name = "GodMode",
	Callback = function()
      	game.Players.LocalPlayer.Character.TYPE:Destroy()
  	end    
})

pl:AddButton({
	Name = "Remove FallDamage",
	Callback = function()
      	game.Players.LocalPlayer.Character.FallDamage:Destroy()
  	end    
})

es:AddToggle({
	Name = "Highlight Orotund",
	Default = false,
	Callback = function(v)
    local otorhigh = Instance.new("Highlight")
	if v then
        orothigh.Enabled = true
    else
        orothigh.Enabled = false
    end
	end    
})

local trans1 = es:AddSlider({
	Name = "Highlight OutlineTransparency (Orotund)",
	Min = 0,
	Max = 1,
	Default = 0,
	Color = Color3.fromRGB(225,0,0),
	Increment = 0.1,
	ValueName = "%",
	Callback = function(v)
		orothigh.OutlineTransparency = v
	end    
})

local trans2 = es:AddSlider({
	Name = "Highlight FillTransparency (Orotund)",
	Min = 0,
	Max = 1,
	Default = 0.5,
	Color = Color3.fromRGB(180,0,0),
	Increment = 0.1,
	ValueName = "%",
	Callback = function(v)
		orothigh.FillTransparency = v
	end    
})

local color1 = es:AddColorpicker({
	Name = "Highlight FillColor (Orotund)",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(v)
		orothigh.FillColor = v
	end	  
})

local color2 = es:AddColorpicker({
	Name = "Highlight OutlineColor (Orotund)",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(v)
		orothigh.OutlineColor = v
	end	  
})

es:AddButton({
	Name = "Reset",
	Callback = function()
      		trans1:Set(0)
            trans2:Set(0.5)
            color1:Set(Color3.fromRGB(255,0,0))
            color2:Set(Color3.fromRGB(255,0,0))
  	end    
})

es:AddToggle({
	Name = "Highlight Cajoler",
	Default = false,
	Callback = function(v)
    local otorhigh = Instance.new("Highlight")
	if v then
        cajohigh.Enabled = true
    else
        cajohigh.Enabled = false
    end
	end    
})

local trans3 = es:AddSlider({
	Name = "Highlight OutlineTransparency (Cajoler)",
	Min = 0,
	Max = 1,
	Default = 0,
	Color = Color3.fromRGB(0,0,255),
	Increment = 0.1,
	ValueName = "%",
	Callback = function(v)
		cajohigh.OutlineTransparency = v
	end    
})

local trans4 = es:AddSlider({
	Name = "Highlight FillTransparency (Cajoler)",
	Min = 0,
	Max = 1,
	Default = 0.5,
	Color = Color3.fromRGB(0,0,180),
	Increment = 0.1,
	ValueName = "%",
	Callback = function(v)
		cajohigh.FillTransparency = v
	end    
})

local color3 = es:AddColorpicker({
	Name = "Highlight FillColor (Cajoler)",
	Default = Color3.fromRGB(0, 0, 255),
	Callback = function(v)
		cajohigh.FillColor = v
	end	  
})

local color4 = es:AddColorpicker({
	Name = "Highlight OutlineColor (Cajoler)",
	Default = Color3.fromRGB(0, 0, 255),
	Callback = function(v)
		cajohigh.OutlineColor = v
	end	  
})

es:AddButton({
	Name = "Reset",
	Callback = function()
      		trans3:Set(0)
            trans4:Set(0.5)
            color3:Set(Color3.fromRGB(0,0,255))
            color4:Set(Color3.fromRGB(0,0,255))
  	end    
})

te:AddButton({
	Name = "Cave (Out)",
	Callback = function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-259.668304, 19.8173637, -71.8225174, -0.764655232, -0.0332947075, 0.643578947, -0.0299841259, 0.99942106, 0.0160787012, -0.643741667, -0.00700248871, -0.765210867)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end    
})

te:AddButton({
	Name = "Cave (In)",
	Callback = function()
local rand = math.random(1,6)
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
if rand == 1 then
pl.CFrame = game.Workspace.Teleporters.Positions.Pos1.CFrame
elseif rand == 2 then
pl.CFrame = game.Workspace.Teleporters.Positions.Pos2.CFrame
elseif rand == 3 then
pl.CFrame = game.Workspace.Teleporters.Positions.Pos3.CFrame
elseif rand == 4 then
pl.CFrame = game.Workspace.Teleporters.Positions.Pos4.CFrame
elseif rand == 5 then
pl.CFrame = game.Workspace.Teleporters.Positions.Pos5.CFrame
elseif rand == 6 then
pl.CFrame = game.Workspace.Teleporters.Positions.Pos6.CFrame
end
end    
})

te:AddButton({
	Name = "Campervan",
	Callback = function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-179.681091, 20.7378273, -136.245087, 0.91303575, -0.00175878801, -0.407875776, 0.00200626208, 0.999997973, 0.00017898716, 0.407874644, -0.000981727382, 0.913037419)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end    
})

te:AddButton({
	Name = "Ruins",
	Callback = function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(52.2030029, 17.009119, -215.972214, 0.101293422, 0.0114408778, -0.994790792, 0.000623355911, 0.999932945, 0.0115634892, 0.994856417, -0.00179141411, 0.101279505)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end    
})

te:AddButton({
	Name = "Piano",
	Callback = function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(-49.0355301, 15, -723.310974, 0.999604881, -9.10099551e-09, 0.0281083826, 9.66981162e-09, 1, -2.01005914e-08, -0.0281083826, 2.03644515e-08, 0.999604881)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end    
})

te:AddButton({
	Name = "Cemetry",
	Callback = function()
local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(316.69986, 15.00002, -499.407959, 0.742414773, 0.000193147498, -0.669940531, -0.000273512298, 0.99999994, -1.47954543e-05, 0.669940472, 0.000194221328, 0.742414773)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
end    
})

c:AddLabel("Made by 3EloHIyChay123123")
c:AddLabel("My Discord: 3EloHIyChay123123#7087")
c:AddLabel("Hub: Orion Hub")
c:AddButton({
	Name = "Copy Orion GitHub",
	Callback = function()
      	setclipboard("https://github.com/shlexware/Orion/blob/main/Documentation.md")
  	end    
})

local parag = h:AddParagraph("Time:","Time")
local parag2 = h:AddParagraph("Day:","Time")
while true do
	local TimeInUnix = os.time()
	
	local stringToFormat = "%H:%M:%S"
    local stringToFormat2 = "%A, %B %dth"
	
	local result = os.date(stringToFormat, TimeInUnix)
    local result2 = os.date(stringToFormat2, TimeInUnix)
	
    parag:Set(result, "sus")
    parag2:Set(result2, "sus")
	
	wait(0)
end
