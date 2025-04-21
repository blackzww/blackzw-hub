-- Carregar a biblioteca Fluent
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

if not Fluent then
	warn("Erro ao carregar o Fluent! Hub não pode ser iniciado.")
	return
end

Fluent:Notify({
	Title = "Executado 🚀",
	Content = "Esse scripthub foi executado. Boa sorte! 💻"
})

local Window = Fluent:CreateWindow({
	Title = "blackzw's Hub Free Version " .. Fluent.Version,
	TabWidth = 160,
	Size = UDim2.fromOffset(580, 460),
	Theme = "Dark"
})

local Tabs = {
	Inicio = Window:AddTab({ Title = "Início 🏠" }),
	Main = Window:AddTab({ Title = "Scripts 🎮" }),
	Exclusividades = Window:AddTab({ Title = "Exclusividades 🌟" }),
	Settings = Window:AddTab({ Title = "Configurações ⚙️" })
}

-- INÍCIO
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
	Content = "blackzw.mp3"
})

-- SCRIPTS (com barra de pesquisa)
local scriptButtons = {}

local searchBox = Tabs.Main:AddInput("SearchBox", {
	Title = "Pesquisar Script",
	Placeholder = "Digite o nome...",
	Default = "",
	Callback = function(text)
		for _, data in pairs(scriptButtons) do
			if string.find(string.lower(data.title), string.lower(text)) then
				data.button:Show()
			else
				data.button:Hide()
			end
		end
	end
})

local function addScriptButton(tab, title, url)
	local btn = tab:AddButton({
		Title = title,
		Callback = function()
			loadstring(game:HttpGet(url))()
		end
	})
	table.insert(scriptButtons, { title = title, button = btn })
end

Tabs.Main:AddParagraph({ Title = "Feito pelo blackzw 💡", Content = "Esses scripts são bem bons! Aproveite! 🚀" })

addScriptButton(Tabs.Main, "AUTO BOND FARM (RAPIDÃO) ⚡️", "https://raw.githubusercontent.com/thiennrb7/Script/refs/heads/main/autobond")
addScriptButton(Tabs.Main, "Dead Rails HUB 1 💣", "https://raw.githubusercontent.com/ScriptBeLike/Tera-DeadRails/refs/heads/main/Meteor%20V1")
addScriptButton(Tabs.Main, "Dead Rails HUB 2 💥", "https://lunor.dev/loader")
addScriptButton(Tabs.Main, "Dead Rails HUB 3 (MUITOOOO BOMM) 💯", "https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Loader")
addScriptButton(Tabs.Main, "AUTO BOND FARM (LENTO) 🐢", "https://lunor.dev/loader")
addScriptButton(Tabs.Main, "AUTO FARM BOND (SUPER LENTO) 🐌", "https://raw.githubusercontent.com/Iyreeee/Dead-Rails/refs/heads/main/main.lua")
addScriptButton(Tabs.Main, "Dead Rails (Matar os bixo) 💀", "https://raw.githubusercontent.com/Iyreeee/Dead-Rails/refs/heads/main/main.lua")
addScriptButton(Tabs.Main, "Brookhaven Script (99% Bugado) 💥", "https://raw.githubusercontent.com/kigredns/SanderXV4.2.2/refs/heads/main/New.lua")

-- EXCLUSIVIDADES
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
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
	end
})

Tabs.Exclusividades:AddButton({
	Title = "PEGAR CLASSE CAVALO(PERM) 🐴",
	Callback = function()
		local args = { [1] = "Horse" }
		local rs = game:GetService("ReplicatedStorage")
		rs.Shared.RemotePromise.Remotes.C_BuyClass:FireServer(unpack(args))
		task.wait(0.5)
		rs.Shared.RemotePromise.Remotes.C_EquipClass:FireServer(unpack(args))
	end
})

-- CONFIGURAÇÕES
Tabs.Settings:AddToggle("MyToggle", {
	Title = "Ativar Função",
	Description = "Ative ou desative a função.",
	Default = false,
	Callback = function(state)
		if state then
			print("Função ativada")
		else
			print("Função desativada")
		end
	end
})
