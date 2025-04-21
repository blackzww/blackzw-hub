-- Carregar biblioteca Fluent
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
	Content = "blackzw.mp3"
})

-- Lista de scripts com título e URL
local scriptList = {
	{Title = "AUTO BOND FARM (RAPIDÃO) ⚡️", URL = "https://raw.githubusercontent.com/thiennrb7/Script/refs/heads/main/autobond"},
	{Title = "Dead Rails HUB 1 💣", URL = "https://raw.githubusercontent.com/ScriptBeLike/Tera-DeadRails/refs/heads/main/Meteor%20V1"},
	{Title = "Dead Rails HUB 2 💥", URL = "https://lunor.dev/loader"},
	{Title = "Dead Rails HUB 3 (MUITOOOO BOMM) 💯", URL = "https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Loader"},
	{Title = "AUTO BOND FARM (LENTO) 🐢", URL = "https://lunor.dev/loader"},
	{Title = "AUTO FARM BOND (SUPER LENTO) 🐌", URL = "https://raw.githubusercontent.com/Iyreeee/Dead-Rails/refs/heads/main/main.lua"},
	{Title = "Dead Rails (Matar os bixo) 💀", URL = "https://raw.githubusercontent.com/Iyreeee/Dead-Rails/refs/heads/main/main.lua"},
	{Title = "Brookhaven Script (99% Bugado) 💥", URL = "https://raw.githubusercontent.com/kigredns/SanderXV4.2.2/refs/heads/main/New.lua"}
}

Tabs.Main:AddParagraph({Title = "Feito pelo blackzw 💡", Content = "Esses scripts são bem bons! Aproveite! 🚀"})

-- Área onde os botões serão inseridos dinamicamente
local scriptSection = Tabs.Main:AddSection("scripts")

local function renderButtons(filter)
	scriptSection:Clear() -- Limpa os botões anteriores
	for _, item in ipairs(scriptList) do
		if not filter or string.find(item.Title:lower(), filter:lower()) then
			scriptSection:AddButton({
				Title = item.Title,
				Callback = function()
					loadstring(game:HttpGet(item.URL))()
				end
			})
		end
	end
end

-- Campo de pesquisa
Tabs.Main:AddInput("SearchScripts", {
	Title = "Pesquisar Script",
	Placeholder = "Digite para filtrar...",
	Default = "",
	Callback = function(text)
		renderButtons(text)
	end
})

-- Renderizar todos os botões inicialmente
renderButtons()

-- Exclusividades
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

-- Configurações
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
