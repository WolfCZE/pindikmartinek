-- Leaked By: Leaking Hub | J. Snow | leakinghub.com
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem(Config.Useitem, function(source)
	local _source = source
	local identifier = ESX.GetPlayerFromId(_source).identifier
	local image = Config.SteamIdentifiers[identifier]
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.job.name == 'police' then
		TriggerClientEvent('icemallow-badge:badgeanim', _source)
		TriggerClientEvent('icemallow-badge:open', -1, _source, image)
	else
		TriggerClientEvent('notification', _source, "This is not yours :)")
	end
end)