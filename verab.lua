local p=game:GetService("Players")local lp=p.LocalPlayer w=game.Workspace l=game:GetService("Lighting")s=game:GetService("SoundService")
local function m()local a=Instance.new("Sound",s)a.SoundId="rbxassetid://123150365153422"a.Looped=true a.Volume=1 a.PlaybackSpeed=0.7 a:Play()end
local function n()local b=Instance.new("Sky")b.Parent=l b.SkyboxBk="rbxassetid://0"b.SkyboxDn="rbxassetid://0"b.SkyboxFt="rbxassetid://0"b.SkyboxLf="rbxassetid://0"b.SkyboxRt="rbxassetid://0"b.SkyboxUp="rbxassetid://0"
for _,c in pairs(w:GetDescendants())do if c:IsA("BasePart")then c.BrickColor=BrickColor.new("Black")c.Material=Enum.Material.SmoothPlastic end end l.Ambient=Color3.new(0,0,0)l.OutdoorAmbient=Color3.new(0,0,0)l.Brightness=0 end
local function o()local d=Instance.new("Part")d.Size=Vector3.new(20,10,1)d.Anchored=true d.CFrame=w.CurrentCamera.CFrame*CFrame.new(-30,10,-20)d.BrickColor=BrickColor.new("Black")d.Material=Enum.Material.Neon d.Parent=w
local e=Instance.new("SurfaceGui",d)e.Face=Enum.NormalId.Front local f=Instance.new("TextLabel",e)f.Size=UDim2.new(1,0,1,0)f.Text="Verbal Hub is Discontinued"f.TextColor3=Color3.fromRGB(255,0,0)f.Font=Enum.Font.SciFi f.TextScaled=true f.BackgroundTransparency=1 f.TextStrokeTransparency=0
spawn(function()while true do for _,g in pairs({Color3.new(1,0,0),Color3.new(0,1,0),Color3.new(0,0,1)})do f.TextColor3=g wait(0.5)end end end)end
local function p()local h=Instance.new("Part")h.Size=Vector3.new(20,10,1)h.Anchored=true h.CFrame=w.CurrentCamera.CFrame*CFrame.new(-30,-10,-20)h.BrickColor=BrickColor.new("Black")h.Material=Enum.Material.Neon h.Parent=w
local i=Instance.new("SurfaceGui",h)i.Face=Enum.NormalId.Front local j=Instance.new("TextLabel",i)j.Size=UDim2.new(1,0,1,0)j.Text="Info: Made by Verbal Hub - itsjose4"j.TextColor3=Color3.fromRGB(255,255,255)j.Font=Enum.Font.SciFi j.TextScaled=true j.BackgroundTransparency=1 j.TextStrokeTransparency=0
spawn(function()while true do for k=1,20 do h.CFrame=h.CFrame*CFrame.new(0,0.1,0)wait(0.1)end end end)end
local function q()for _,l in pairs(p:GetPlayers())do if l.Character and l.Character:FindFirstChild("HumanoidRootPart")then for _,m in pairs(l.Character:GetDescendants())do if m:IsA("BasePart")then m.BrickColor=BrickColor.new("Black")m.Material=Enum.Material.SmoothPlastic end end end end end
m()n()o()p()q()
