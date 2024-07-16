CreateThread(function()
	while true do
		local ped = PlayerPedId()
		if IsPedInAnyVehicle(ped, false) then
			local vehicle = GetVehiclePedIsIn(ped, false)
			local speed = GetEntitySpeed(vehicle)
			local kmh = speed * 3.6

			if kmh == 0.0 then
				local model = GetEntityModel(vehicle)
				local name = GetDisplayNameFromVehicleModel(model)

				while IsPedInVehicle(ped, vehicle, true) and GetEntitySpeed(vehicle) == 0.0 do
					if IsControlJustPressed(0, 311) then  -- touche K
						TriggerServerEvent('ams:removeveh', name)
						DeleteVehicle(vehicle)
					end
					Wait(0)
				end
			end
		end
		
		Wait(1000)
	end
end)


RegisterNetEvent('ams:spawnVehicle')
AddEventHandler('ams:spawnVehicle', function(vehicle)
	local model = (type(vehicle) == 'number' and vehicle or GetHashKey(vehicle))

	if IsModelInCdimage(model) then
		local playerPed = PlayerPedId()
		local coords    = GetEntityCoords(playerPed)

		ESX.Game.SpawnVehicle(model, coords, 90.0, function(vehicle)
			TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
		end)
	else
		TriggerEvent('chat:addMessage', { args = { '^1SYSTEM', 'Invalid vehicle model.' } })
	end
end)
