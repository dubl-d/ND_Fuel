ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("ND_Fuel:pay", function(price)
		local xPlayer = ESX.GetPlayerFromId(source)
		local amount = ESX.Math.Round(price)    
		if price > 0 then
			xPlayer.removeMoney(amount)
		end
	
	TriggerClientEvent("chat:addMessage", player, {
        color = {0, 255, 0},
        args = {"Success", "Paid: $" .. string.format("%.2f", amount) .. " for gas."}
    })
end)

RegisterServerEvent("ND_Fuel:jerryCan", function(price)
		local xPlayer = ESX.GetPlayerFromId(source)
		local amount = ESX.Math.Round(price)    
		if price > 0 then
			xPlayer.removeMoney(amount)
		end
    TriggerClientEvent("chat:addMessage", player, {
        color = {0, 255, 0},
        args = {"Success", "Paid: $" .. amount .. " for gas."}
    })
end)