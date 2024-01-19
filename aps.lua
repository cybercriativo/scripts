getgenv().getCardRaid = false;
getgenv().getRaidBoss = false;

function doCardRaid()

    spawn(function() 
        
        while getCardRaid == true do
            --Mundo 1

            local args = {
                [1] = "Teleport",
                [2] = "Spawn",
                [3] = "Leaf City"
            }
            
            game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            wait(1)

            local args = {
                [1] = "Attack",
                [2] = "Click",
                [3] = {
                    ["Enemy"] = workspace.Server.Enemies.World:FindFirstChild("Leaf City").Orochimare,
                    ["Type"] = "World"
                }
            }
            
            game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            wait(3)
            
            --Mundo 2
            local args = {
                [1] = "Teleport",
                [2] = "Spawn",
                [3] = "Desert Piece"
            }
            
            game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            wait(1)


            local args = {
                [1] = "Attack",
                [2] = "Click",
                [3] = {
                    ["Enemy"] = workspace.Server.Enemies.World:FindFirstChild("Desert Piece"):FindFirstChild("White Beard"),
                    ["Type"] = "World"
                }
            }
            
            game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            wait(3)

            --Mundo 3
            local args = {
                [1] = "Teleport",
                [2] = "Spawn",
                [3] = "Slayer Village"
            }
            
            game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            wait(1)            


            local args = {
                [1] = "Attack",
                [2] = "Click",
                [3] = {
                    ["Enemy"] = workspace.Server.Enemies.World:FindFirstChild("Slayer Village").Yoreche,
                    ["Type"] = "World"
                }
            }
            
            game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            wait(3)


            local args = {
                [1] = "Teleport",
                [2] = "Spawn",
                [3] = "Cursed Academy"
            }
            
            game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            wait(1)            


            local args = {
                [1] = "Attack",
                [2] = "Click",
                [3] = {
                    ["Enemy"] = workspace.Server.Enemies.World:FindFirstChild("Cursed Academy").Sukene,
                    ["Type"] = "World"
                }
            }
            
            game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            wait(3)

            local args = {
                [1] = "Teleport",
                [2] = "Spawn",
                [3] = "Dragon City"
            }
            
            game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            wait(1)            
            

            local args = {
                [1] = "Attack",
                [2] = "Click",
                [3] = {
                    ["Enemy"] = workspace.Server.Enemies.World:FindFirstChild("Dragon City").Broli,
                    ["Type"] = "World"
                }
            }
            
            game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            wait(10)

        end        
        

    end)

end


function teleportTo(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
end


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
    Name = "Anime Punch Simulator",
    Content = "Anime Punch Sim",
    Image = "rbxassetid://4483345998",
    Time = 5
})


local Window = OrionLib:MakeWindow({Name = "Campeao Sim", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "Orion"})

--Player Tab--

local FarmTab = Window:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local PlayerSection = PlayerTab:AddSection({
    Name = "Farm Card"
})


FarmTab:AddToggle({
    Name = "Farm Card Raid",
    Default = false,
    Callback = function(Value)
        getCardRaid = Value;
        if getCardRaid == true then
            doCardRaid();
        end
    end    
})

FarmTab:AddToggle({
    Name = "Auto Raid Boss",
    Default = false,
    Callback = function(Value)
        getCardRaid = Value;
        if getRaidBoss == true then
            doRaidBoss();
        end
    end 
})

FarmTab:AddButton({
    Name = "Destroy UI",
    Callback = function()
        OrionLib:Destroy()
    end    
})

--Farm Tab End--

--Settings Tab--

/*local SettingsTab = Window:MakeTab({
    Name = "Settings",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local SettingsSection = SettingsTab:AddSection({
    Name = "Settings"
})

SettingsSection:AddButton({
    Name = "Destroy UI",
    Callback = function()
        OrionLib:Destroy()
    end    
})*/

--Settings End--

OrionLib:Init()
