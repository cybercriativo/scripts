-- Lista de membros autorizados
local membros_autorizados = {"EspacialCar", "NoobdoRodox"}

-- Obtém o nome do jogador no jogo
local jogador = game.Players.LocalPlayer
local nome_do_jogador = jogador.Name
getgenv().doRaidBoss = false
local bossPath = workspace.Client.Enemies.RaidBoss

-- Funções

function getRaidBoss()
     
    while doRaidBoss == true do
        for _, boss in pairs(bossPath:GetChildren()) do
            -- Verifica se o filho é um Model e se possui uma RootPart
            if boss:IsA("Model") and boss:FindFirstChild("HumanoidRootPart") then
                local rootPart = boss.HumanoidRootPart

                -- Obtém o CFrame da RootPart
                local rootPartCFrame = rootPart.CFrame

                -- Imprime a matriz de transformação do CFrame
                print("CFrame da RootPart do boss:", rootPartCFrame)
                
                function teleportTo(placeCFrame)
                    local plyr = game.Players.LocalPlayer;
                    if plyr.Character then
                        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
                    end
                end
                wait(1)
                teleportTo(rootPartCFrame)
                wait(1)
            end
        end
    end
end
--Fim Das Funções


-- Função para verificar se o jogador está na lista de membros autorizados
local function jogadorEstaAutorizado()
    for _, membro in ipairs(membros_autorizados) do
        print("Comparando", nome_do_jogador, membro)
        if nome_do_jogador == membro then
            return true
        end
    end
end

-- Lógica principal
if jogadorEstaAutorizado() then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

    OrionLib:MakeNotification({
        Name = "Anime Punch Simulator",
        Content = "Anime Punch Sim",
        Image = "rbxassetid://4483345998",
        Time = 5
    })


    local Window = OrionLib:MakeWindow({Name = "Campeao Sim", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "Orion"})

    --Player Tab--

    local PlayerTab = Window:MakeTab({
        Name = "Player",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local PlayerSection = PlayerTab:AddSection({
        Name = "Auto Click"
    })


    PlayerSection:AddToggle({
        Name = "Auto Raid Boss",
        Default = false,
        Callback = function(Value)
            doRaidBoss = Value;
            if doRaidBoss == true then
                getRaidBoss();
                wait(1)
            end
        end    
    })

    --Player Tab End--

    --Settings Tab--

    local SettingsTab = Window:MakeTab({
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
    })

    --Settings End--

    OrionLib:Init()
else
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

    OrionLib:MakeNotification({
        Name = "Anime Punch Simulator",
        Content = "Anime Punch Sim",
        Image = "rbxassetid://4483345998",
        Time = 5
    })


    local Window = OrionLib:MakeWindow({Name = "Campeao Sim Free", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "Orion"})

    --Player Tab--

    local PlayerTab = Window:MakeTab({
        Name = "Player",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local PlayerSection = PlayerTab:AddSection({
        Name = "Farm Card"
    })


    PlayerSection:AddToggle({
        Name = "Farm Card Raid",
        Default = false,
        Callback = function(Value)
            getCardRaid = Value;
            if getCardRaid == true then
                doCardRaid();
            end
        end    
    })

    --Player Tab End--

    --Settings Tab--

    local SettingsTab = Window:MakeTab({
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
    })

    --Settings End--

    OrionLib:Init()
end
