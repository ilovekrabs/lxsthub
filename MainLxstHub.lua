local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()

local games = {
    ["ClickingSimulator"] = 7560156054,
    ["DaHood"] = 2788229376,
    ["TappingSimulator"] = 9498006165
}

for k,v in next, games do 
    if game.PlaceId == v then
    	print(k)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ilovekrabs/lxsthub/main/" .. k))();
	local notif = Notification.new("success", "Lxst Hub Loaded.", "Lxst Hub Has Loaded | "..k)
    end
end

pcall(function()
local http = game:GetService('HttpService') 
if toClipboard then
	toClipboard('https://discord.gg/5gvmpSnh6D')
else
end
local req = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request
if req then
	req({
		Url = 'http://127.0.0.1:6463/rpc?v=1',
		Method = 'POST',
		Headers = {
			['Content-Type'] = 'application/json',
			Origin = 'https://discord.com'
		},
		Body = http:JSONEncode({
			cmd = 'INVITE_BROWSER',
			nonce = http:GenerateGUID(false),
			args = {code = '5gvmpSnh6D'}
		})
	})
end
end)

OrionLib:Init()
