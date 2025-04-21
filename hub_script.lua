-- Carregar a biblioteca Fluent
local status, Fluent = pcall(function()
    return loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
end)

if not status then
    warn("Erro ao carregar Fluent! Hub não pode ser iniciado.")
    return
end

-- Notificação de execução
Fluent:Notify({
    Title = "Executado 🚀", 
    Content = "Esse scripthub foi executado. Boa sorte! 💻"
})

-- Criar a janela do hub
local Window = Fluent:CreateWindow({
    Title = "blackzw's Hub (Free Version) " .. Fluent.Version, 
    TabWidth = 160, 
    Size = UDim2.fromOffset(580, 460), 
    Theme = "Dark"
})

-- Definir as abas
local Tabs = {
    Inicio = Window:AddTab({ Title = "Início 🏠" }), 
    Main = Window:AddTab({ Title = "Scripts 🎮" }), 
    Exclusividades = Window:AddTab({ Title = "Exclusividades 🌟" }), 
    Settings = Window:AddTab({ Title = "Configurações ⚙️", Icon = "settings" }) 
}

-- Adicionar parágrafos e botões na aba "Início"
Tabs.Inicio:AddParagraph({
    Title = "Bem-vindo ao blackzw's Hub! 🎉",
    Content = "Aqui você encontrará vários scripts horríveis para jogos no Roblox. Não aproveite esse lixo! 🚀"
})
Tabs.Inicio:AddParagraph({
    Title = "Instagram",
    Content = "@blackzw.mp3"
})

-- Adicionar parágrafos e botões na aba "Main"
Tabs.Main:AddParagraph({
    Title = "Feito pelo blackzw 💡",
    Content = "Esses scripts são bem bons! Aproveite! 🚀"
})

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
    Title = "Dead Rails (Matar os bixo) 💀", 
    Callback = function() 
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Iyreeee/Dead-Rails/refs/heads/main/main.lua'))() 
    end
})

-- Adicionar botões na aba "Exclusividades"
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

-- Configurações (alterador)
local Toggle = Tabs.Settings:AddToggle("MyToggle", {
    Title = "Ativar Função", 
    Description = "Ative ou desative a função.", 
    Default = false, 
    Callback = function(state)
        if state then
            -- A função está ativada
        else
            -- A função está desativada
        end
    end
})
