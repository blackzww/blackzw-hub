local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

if not Fluent then
    warn("Erro ao carregar o Fluent! Hub não pode ser iniciado.")
    return
end

Fluent:Notify({
    Title = "Executado 🚀",
    Content = "Esse scripthub foi executado com sucesso! 🛠️ Boa sorte!"
})

-- Tamanho padrão (médio)
local windowSize = UDim2.fromOffset(580, 460)

local Window = Fluent:CreateWindow({
    Title = "blackzw's Hub Free Version " .. Fluent.Version,
    TabWidth = 160,
    Size = windowSize,
    Theme = "Dark"
})

local Tabs = {
    Inicio = Window:AddTab({ Title = "Início 🏠" }),
    Main = Window:AddTab({ Title = "Scripts 🎮" }),
    Exclusividades = Window:AddTab({ Title = "Exclusivos 🌟" }),
    Settings = Window:AddTab({ Title = "Configurações ⚙️" })
}

-- Início
Tabs.Inicio:AddParagraph({
    Title = "Bem-vindo! 🎉",
    Content = "Explore scripts insanos para jogos ainda piores no Roblox! 🚀"
})

Tabs.Inicio:AddParagraph({
    Title = "Recado do blackzw 📢",
    Content = "Nunca compre scripts. Odeio quem faz script pago. ⚠️"
})

Tabs.Inicio:AddParagraph({
    Title = "Me siga! 📱",
    Content = "Instagram: blackzw.mp3"
})

-- Scripts
Tabs.Main:AddParagraph({
    Title = "Scripts Disponíveis 💻",
    Content = "Escolha seu script favorito e divirta-se! 🎮"
})

Tabs.Main:AddButton({
    Title = "AUTO BOND FARM ⚡",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/thiennrb7/Script/refs/heads/main/autobond"))()
    end
})

Tabs.Main:AddButton({
    Title = "Dead Rails HUB 1 💣",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptBeLike/Tera-DeadRails/refs/heads/main/Meteor%20V1"))()
    end
})

Tabs.Main:AddButton({
    Title = "Dead Rails HUB 2 💥",
    Callback = function()
        loadstring(game:HttpGet('https://lunor.dev/loader'))()
    end
})

Tabs.Main:AddButton({
    Title = "Dead Rails HUB 3 💯",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Loader"))()
    end
})

Tabs.Main:AddButton({
    Title = "Brookhaven Script 🏠",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/kigredns/SanderXV4.2.2/refs/heads/main/New.lua'))()
    end
})

-- Exclusivos
Tabs.Exclusividades:AddParagraph({
    Title = "Exclusividades do Hub 🔒",
    Content = "Só aqui você encontra esses! 🌈"
})

Tabs.Exclusividades:AddButton({
    Title = "Script Fly ✈️",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end
})

Tabs.Exclusividades:AddButton({
    Title = "Noclip 🌀",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/g0th1qz2"))()
    end
})

Tabs.Exclusividades:AddButton({
    Title = "Infinity Yield 👑",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source', true))()
    end
})

Tabs.Exclusividades:AddButton({
    Title = "Classe Cavalo 🐴",
    Callback = function()
        local args = { [1] = "Horse" }
        game:GetService("ReplicatedStorage").Shared.RemotePromise.Remotes.C_BuyClass:FireServer(unpack(args))
        task.wait(0.5)
        game:GetService("ReplicatedStorage").Shared.RemotePromise.Remotes.C_EquipClass:FireServer(unpack(args))
    end
})

-- Configurações
Tabs.Settings:AddParagraph({
    Title = "Personalize seu Hub ⚙️",
    Content = "Ajuste o visual e tamanho do hub como quiser!"
})

-- Tamanho do Hub
Tabs.Settings:AddDropdown("HubSize", {
    Title = "Tamanho da Janela 📐",
    Values = { "Pequeno", "Médio", "Grande" },
    Default = "Médio",
    Callback = function(size)
        local sizes = {
            Pequeno = UDim2.fromOffset(400, 320),
            Médio = UDim2.fromOffset(580, 460),
            Grande = UDim2.fromOffset(720, 540)
        }
        Window:SetSize(sizes[size])
    end
})

-- Tema com cor personalizada
Tabs.Settings:AddColorPicker("ThemeColorPicker", {
    Title = "Cor do Tema 🎨",
    Default = Color3.fromRGB(255, 0, 127),
    Callback = function(color)
        Window:SetBackgroundColor(color)
    end
})

-- Modo Pro Gamer
Tabs.Settings:AddToggle("ProGamerMode", {
    Title = "Modo Pro Gamer 💻",
    Description = "Ative para melhorar o desempenho.",
    Default = false,
    Callback = function(state)
        if state then
            -- Remover cabelo
            local character = game.Players.LocalPlayer.Character
            if character then
                for _, accessory in ipairs(character:GetDescendants()) do
                    if accessory:IsA("Accessory") and accessory:FindFirstChild("Handle") and accessory.Handle:FindFirstChild("HairAttachment") then
                        accessory:Destroy()
                    end
                end
            end

            -- Aplicar configurações gráficas
            local lighting = game:GetService("Lighting")
            lighting.GlobalShadows = false
            lighting.FogEnd = 100000
            lighting.Brightness = 1
            lighting.OutdoorAmbient = Color3.new(0.5, 0.5, 0.5)

            for _, obj in ipairs(workspace:GetDescendants()) do
                if obj:IsA("BasePart") then
                    obj.Material = Enum.Material.Plastic
                    obj.Reflectance = 0
                elseif obj:IsA("Decal") or obj:IsA("Texture") then
                    obj.Trans
::contentReference[oaicite:0]{index=0}
 
