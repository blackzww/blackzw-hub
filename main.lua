-- Carregar a biblioteca com tratamento de erro
local success, FluentLib = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/main/main.lua"))()
end)

if not success then
    warn("Falha ao carregar o Fluent! Verifique a conexão ou o link.")
    return
end

local Fluent = FluentLib

-- Notificação de execução
Fluent:Notify({
    Title = "Executado 🚀", 
    Content = "Esse scripthub foi executado. Boa sorte! 💻"
})

-- Criar a janela do hub com o nome atualizado
local Window = Fluent:CreateWindow({
    Title = "blackzw's Ultimate Hub " .. Fluent.Version,  -- Nome atualizado
    TabWidth = 160, 
    Size = UDim2.fromOffset(580, 460), 
    Theme = "Dark"
})

-- Definir as abas
local Tabs = {
    Inicio = Window:AddTab({ Title = "Início 🏠" }),  -- Nova aba de "Início"
    Main = Window:AddTab({ Title = "Scripts 🎮" }),  -- Aba principal com scripts
    Exclusividades = Window:AddTab({ Title = "Exclusividades 🌟" }),  -- Aba de scripts exclusivos
    Settings = Window:AddTab({ Title = "Configurações ⚙️", Icon = "settings" })  -- Aba de configurações (colocada por último)
}

-- Adicionar parágrafos na aba "Início"
Tabs.Inicio:AddParagraph({
    Title = "Bem-vindo ao blackzw's Hub! 🎉",
    Content = "Aqui você encontrará vários scripts horríveis para jogos horríveis no Roblox. Não aproveite esse lixo! 🚀"
})

Tabs.Inicio:AddParagraph({
    Title = "So uma coisa eduardopikagran ",
    Content = "nunca compre scripts, odeio quem faz script pago."
})

Tabs.Inicio:AddParagraph({
    Title = "Instagram",
    Content = "@blackzw.mp3"
})

-- Adicionar parágrafos na aba "Main"
Tabs.Main:AddParagraph({
    Title = "Feito pelo blackzw 💡",
    Content = "Esses scripts são bem bons! Aproveite! 🚀"
})

-- Adicionar botões para os scripts na aba "Main"
Tabs.Main:AddButton({
    Title = "AUTO BOND FARM (RAPIDÃO) ⚡️", 
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
    Title = "AUTO BOND FARM (LENTO) 🐢", 
    Callback = function() 
        loadstring(game:HttpGet('https://lunor.dev/loader'))() 
    end
})

Tabs.Main:AddButton({
    Title = "AUTO FARM BOND (SUPER LENTO) 🐌", 
    Callback = function() 
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Iyreeee/Dead-Rails/refs/heads/main/main.lua'))() 
    end
})

Tabs.Main:AddButton({
    Title = "Dead Rails (Matar os bixo) 💀", 
    Callback = function() 
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Iyreeee/Dead-Rails/refs/heads/main/main.lua'))() 
    end
})

Tabs.Main:AddParagraph({
    Title = "Brookhaven Scripts 🏠",
    Content = "Scripts para Brookhaven, aproveite! 🎮"
})

Tabs.Main:AddButton({
    Title = "Brookhaven Script (99% Bugado) 💥", 
    Callback = function() 
        loadstring(game:HttpGet('https://raw.githubusercontent.com/kigredns/SanderXV4.2.2/refs/heads/main/New.lua'))() 
    end
})

-- Adicionar parágrafos na aba "Exclusividades"
Tabs.Exclusividades:AddParagraph({
    Title = "Scripts Exclusivos 🎉",
    Content = "Aqui estão alguns scripts exclusivos e especiais. 🌟"
})

-- Adicionar botões para os scripts exclusivos
Tabs.Exclusividades:AddButton({
    Title = "Script Fly 🔥", 
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()  
    end
})

Tabs.Exclusividades:AddButton({
    Title = "Script Noclip ruim 🌀", 
    Callback = function() 
        loadstring(game:HttpGet("https://pastebin.com/raw/g0th1qz2"))()  
    end
})

Tabs.Exclusividades:AddButton({
    Title = "Infinity Yield 👑", 
    Callback = function() 
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()  
    end
})

Tabs.Exclusividades:AddButton({
    Title = "PEGAR CLASSE CAVALO(PERM) 🐴", 
    Callback = function()
        local args = {
            [1] = "Horse"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("RemotePromise"):WaitForChild("Remotes"):WaitForChild("C_BuyClass"):FireServer(unpack(args))
        task.wait(0.5)
        local args = {
            [1] = "Horse"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("RemotePromise"):WaitForChild("Remotes"):WaitForChild("C_EquipClass"):FireServer(unpack(args))
    end
})

-- Configurações (alterador)
local Toggle = Tabs.Settings:AddToggle("MyToggle", {
    Title = "Ativar Função", 
    Description = "Ative ou desative a função.", 
    Default = false, 
    Callback = function(state)
        if state then
            -- Função ativada
        else
            -- Função desativada
        end
    end
})
