ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent("Kamkus:Magazynier")
AddEventHandler("Kamkus:Magazynier", function()
	local src = source
	local amount = math.random(300, 550)

	local xPlayer = ESX.GetPlayerFromId(src)

	xPlayer.addMoney(amount)

	TriggerClientEvent("esx:showNotification", src, "Za tą paczkę otrzymałeś: ~g~" .. amount .. "$")
end)