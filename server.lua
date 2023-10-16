local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("clothing_bag", function(source, item)
    local src = source
    TriggerClientEvent("sp-clothingbag:client:outfitbag", src)
end)

RegisterNetEvent('sp-clothingbag:server:removeBag', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    Player.Functions.RemoveItem('clothing_bag', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['clothing_bag'], "remove")
end)