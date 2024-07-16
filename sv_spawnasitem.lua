-- Duplicate this and change name of item/vehicle
ESX.RegisterUsableItem('bmx', function(source) -- 1° change bmx to whatever you need. It's item name to add in Db or ox_inventory/data/items.lua
	local xPlayer = ESX.GetPlayerFromId(source)
	local name = GetHashKey("bmx") -- 2° Vehicle to spawn, change bmx to same name as above

	xPlayer.removeInventoryItem('bmx', 1) -- 3° name must be the same as 1°

	TriggerClientEvent('ams:spawnVehicle', source, name)
	TriggerClientEvent('esx:showNotification', source, 'vous avez sorti 1x bmx') -- Change to your language/item name
end)
--End of duplicating--

---DON'T TOUCH !! --------
RegisterServerEvent('ams:removeveh')
AddEventHandler('ams:removeveh', function(name)
	local xPlayer = ESX.GetPlayerFromId(source)
	local spawn = string.lower(name)

	xPlayer.addInventoryItem(spawn, 1)
end)
