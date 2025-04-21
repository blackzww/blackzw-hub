-- Carregar a biblioteca Fluent
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- Verificação para garantir que a biblioteca foi carregada corretamente
if not Fluent then
    warn("Erro ao carregar o Fluent! Hub não pode ser iniciado.")
    return
end

-- Notificação de execução
Fluent:Notify({
    Title = "Executado 🚀", 
    Content = "Esse scripthub foi executado. Boa sorte! 💻"
})

-- Criar a janela do hub
local Window = Fluent:CreateWindow({
    Title = "blackzw's Hub Free Version " .. Fluent.Version,
    TabWidth = 160, 
    Size = UDim2.fromOffset(580, 460), 
    Theme = "Dark"
})

-- Definir abas
local Tabs = {
    Inicio = Window:AddTab({ Title = "Início 🏠" }),
    Main = Window:AddTab({ Title = "Scripts 🎮" }),
    Exclusividades = Window:AddTab({ Title = "Exclusividades 🌟" }),
    Settings = Window:AddTab({ Title = "Configurações ⚙️", Icon = "settings" })
}

-- Aba Início
Tabs.Inicio:AddParagraph({
    Title = "Bem-vindo ao blackzw's Hub! 🎉",
    Content = "Aqui você encontrará vários scripts horríveis para jogos horríveis no Roblox. Não aproveite esse lixo! 🚀"
})
Tabs.Inicio:AddParagraph({
    Title = "Só uma coisa eduardopikagran",
    Content = "Nunca compre scripts, odeio quem faz script pago."
})
Tabs.Inicio:AddParagraph({
    Title = "Instagram",
    Content = "@blackzw.mp3"
})

-- Aba Main
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
    Title = "Dead Rails HUB 3 (MUITOOOO BOMM) 💯", 
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Loader"))() 
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

-- Aba Exclusividades
Tabs.Exclusividades:AddParagraph({
    Title = "Scripts Exclusivos 🎉",
    Content = "Aqui estão alguns scripts exclusivos e especiais. 🌟"
})

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
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source', true))() 
    end
})

Tabs.Exclusividades:AddButton({
    Title = "PEGAR CLASSE CAVALO(PERM) 🐴",
    Callback = function()
        local args = { [1] = "Horse" }
        game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("RemotePromise"):WaitForChild("Remotes"):WaitForChild("C_BuyClass"):FireServer(unpack(args))
        task.wait(0.5)
        game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("RemotePromise"):WaitForChild("Remotes"):WaitForChild("C_EquipClass"):FireServer(unpack(args))
    end
})

-- Aba Configurações
Tabs.Settings:AddToggle("MyToggle", {
    Title = "Ativar Função", 
    Description = "Ative ou desative a função.", 
    Default = false, 
    Callback = function(state)
        if state then
            -- ativado
        else
            -- desativado
        end
    end
})
