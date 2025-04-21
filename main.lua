-- Carrega a biblioteca Fluent
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

if not Fluent then
    warn("Erro ao carregar o Fluent! Hub não pode ser iniciado.")
    return
end

Fluent:Notify({
    Title = "Executado com sucesso 🚀",
    Content = "Bem-vindo ao Hub do blackzw! Divirta-se! 🎮"
})

-- Janela do Hub
local WindowSize = UDim2.fromOffset(580, 460)
local Window = Fluent:CreateWindow({
    Title = "blackzw's Hub Free Version " .. Fluent.Version,
    TabWidth = 160,
    Size = WindowSize,
    Theme = "Dark"
})

-- TABS
local Tabs = {
    Inicio = Window:AddTab({ Title = "Início 🏠" }),
    Scripts = Window:AddTab({ Title = "Scripts 🎮" }),
    Exclusivos = Window:AddTab({ Title = "Exclusivos 🌟" }),
    Config = Window:AddTab({ Title = "Configurações ⚙️" })
}

-- INÍCIO
Tabs.Inicio:AddParagraph({
    Title = "Bem-vindo ao blackzw's Hub! 🎉",
    Content = "Aqui tem scripts insanos, memes e mais! Prepare-se! 💣"
})
Tabs.Inicio:AddParagraph({
    Title = "blackzw no Insta 📸",
    Content = "Siga: @blackzw.mp3"
})

-- SCRIPTS
Tabs.Scripts:AddParagraph({
    Title = "Scripts para Dead Rails 🔥",
    Content = "Bonds, farms e caos total! ⚡"
})

local scripts = {
    { Title = "AUTO BOND FARM ⚡️", Url = "https://raw.githubusercontent.com/thiennrb7/Script/refs/heads/main/autobond" },
    { Title = "Dead Rails HUB 1 💣", Url = "https://raw.githubusercontent.com/ScriptBeLike/Tera-DeadRails/refs/heads/main/Meteor%20V1" },
    { Title = "Dead Rails HUB 2 💥", Url = "https://lunor.dev/loader" },
    { Title = "Dead Rails HUB 3 💯", Url = "https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Loader" },
    { Title = "AUTO BOND FARM 🐢", Url = "https://lunor.dev/loader" },
    { Title = "AUTO FARM (Lento) 🐌", Url = "https://raw.githubusercontent.com/Iyreeee/Dead-Rails/refs/heads/main/main.lua" },
    { Title = "Matar Inimigos 💀", Url = "https://raw.githubusercontent.com/Iyreeee/Dead-Rails/refs/heads/main/main.lua" },
    { Title = "Brookhaven Bugado 💥", Url = "https://raw.githubusercontent.com/kigredns/SanderXV4.2.2/refs/heads/main/New.lua" }
}

for _, v in pairs(scripts) do
    Tabs.Scripts:AddButton({
        Title = v.Title,
        Callback = function()
            loadstring(game:HttpGet(v.Url))()
        end
    })
end

-- EXCLUSIVOS
Tabs.Exclusivos:AddButton({
    Title = "Script Fly 🔥",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end
})
Tabs.Exclusivos:AddButton({
    Title = "Script Noclip 🌀",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/g0th1qz2"))()
    end
})
Tabs.Exclusivos:AddButton({
    Title = "Infinity Yield 👑",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})
Tabs.Exclusivos:AddButton({
    Title = "Classe Cavalo PERM 🐴",
    Callback = function()
        local args = { [1] = "Horse" }
        local RS = game:GetService("ReplicatedStorage").Shared.RemotePromise.Remotes
        RS.C_BuyClass:FireServer(unpack(args))
        task.wait(0.5)
        RS.C_EquipClass:FireServer(unpack(args))
    end
})

-- CONFIGURAÇÕES
Tabs.Config:AddColorPicker("CorTema", {
    Title = "Cor do Tema 🎨",
    Default = Color3.fromRGB(50, 50, 50),
    Callback = function(color)
        Window:SetTheme({
            Background = color
        })
    end
})

Tabs.Config:AddDropdown("TamanhoTela", {
    Title = "Tamanho da Janela 🖥️",
    Values = { "Pequeno", "Médio", "Grande" },
    Default = "Médio",
    Callback = function(option)
        local sizeMap = {
            Pequeno = UDim2.fromOffset(400, 300),
            Médio = UDim2.fromOffset(580, 460),
            Grande = UDim2.fromOffset(720, 540)
        }
        Window:SetSize(sizeMap[option])
    end
})

Tabs.Config:AddButton({
    Title = "Modo Pro Gamer 🎮",
    Callback = function()
        -- Remover cabelo
        local char = game.Players.LocalPlayer.Character
        if char then
            for _, v in pairs(char:GetChildren()) do
                if v:IsA("Accessory") or v:IsA("Hat") then
                    v:Destroy()
                end
            end
        end

        -- Gráficos estilo Minecraft
        local lighting = game:GetService("Lighting")
        lighting.Ambient = Color3.fromRGB(128, 128, 128)
        lighting.Brightness = 1
        lighting.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
        lighting.ColorShift_Top = Color3.fromRGB(0, 255, 0)
        lighting.EnvironmentDiffuseScale = 0
        lighting.EnvironmentSpecularScale = 0
        lighting.OutdoorAmbient = Color3.fromRGB(127, 255, 127)
        lighting.GlobalShadows = false
    end
})

Tabs.Config:AddParagraph({
    Title = "Dica 💡",
    Content = "Sempre use 'Modo Pro Gamer' para mais FPS e estilo Minecraft! 🧱"
})
