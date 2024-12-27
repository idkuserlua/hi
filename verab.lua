local p = game:GetService("Players")
local lp = p.LocalPlayer
local w = game.Workspace
local l = game:GetService("Lighting")
local s = game:GetService("SoundService")

-- Function to create the sound effect
local function playSound()
    local a = Instance.new("Sound", s)
    a.SoundId = "rbxassetid://1843716839"
    a.Looped = true
    a.Volume = 1
    a.PlaybackSpeed = 0.7
    a:Play()
end

-- Function to change the skybox and environment to a dark theme
local function darkenEnvironment()
    local sky = Instance.new("Sky", l)
    sky.SkyboxBk = "rbxassetid://0"
    sky.SkyboxDn = "rbxassetid://0"
    sky.SkyboxFt = "rbxassetid://0"
    sky.SkyboxLf = "rbxassetid://0"
    sky.SkyboxRt = "rbxassetid://0"
    sky.SkyboxUp = "rbxassetid://0"
    
    for _, part in pairs(w:GetDescendants()) do
        if part:IsA("BasePart") then
            part.BrickColor = BrickColor.new("Black")
            part.Material = Enum.Material.SmoothPlastic
        end
    end
    
    l.Ambient = Color3.new(0, 0, 0)
    l.OutdoorAmbient = Color3.new(0, 0, 0)
    l.Brightness = 0
end

-- Function to create a messy sign that follows the player
local function createSignForPlayer(player)
    spawn(function()
        while true do
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local root = player.Character.HumanoidRootPart
                local sign = w:FindFirstChild("Sign_" .. player.Name) or Instance.new("Part")
                
                sign.Name = "Sign_" .. player.Name
                sign.Size = Vector3.new(10, 5, 0.2)
                sign.Anchored = true
                sign.CanCollide = false
                sign.BrickColor = BrickColor.new("Black")
                sign.Material = Enum.Material.Neon
                sign.Parent = w
                
                local surfaceGui = sign:FindFirstChild("SurfaceGui") or Instance.new("SurfaceGui", sign)
                surfaceGui.Face = Enum.NormalId.Front
                surfaceGui.AlwaysOnTop = true
                
                local textLabel = surfaceGui:FindFirstChild("TextLabel") or Instance.new("TextLabel", surfaceGui)
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.Text = player.DisplayName
                textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                textLabel.Font = Enum.Font.SciFi
                textLabel.TextScaled = true
                textLabel.BackgroundTransparency = 1
                textLabel.TextStrokeTransparency = 0
                
                -- Update the sign position to stay in front of the player
                sign.CFrame = root.CFrame * CFrame.new(0, 3, -5)
                wait(0.1)
            end
        end
    end)
end

-- Apply effects to all players
local function applyEffectsToPlayers()
    for _, player in pairs(p:GetPlayers()) do
        if player ~= lp then
            createSignForPlayer(player)
        end
    end
end

playSound()
darkenEnvironment()
applyEffectsToPlayers()
