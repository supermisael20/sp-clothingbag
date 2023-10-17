QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("sp-clothingbag:client:outfitbag")
AddEventHandler("sp-clothingbag:client:outfitbag", function(itemName)
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 1.0)

    local model = `prop_big_bag_01`
    RequestModel(model)
    while (not HasModelLoaded(model)) do
        Wait(1)
    end
    local obj = CreateObject(model, x, y, z, true, false, true)
    PlaceObjectOnGroundProperly(obj)
    SetEntityAsMissionEntity(obj)


    action = true
    QBCore.Functions.Progressbar("Taking clothes out of the bag", "Taking clothes out of the bag", 3000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
        anim = "machinic_loop_mechandplayer",
        flags = 16,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        TriggerEvent('qb-clothing:client:openOutfitMenu')
        TriggerEvent('sp-clothingbag:client:despawnBag', obj)
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
        QBCore.Functions.Notify("Canceled..", "error")
	end)

end)

RegisterNetEvent('sp-clothingbag:client:despawnBag', function(obj)
    DeleteObject(obj)
    TriggerServerEvent('sp-clothingbag:server:removeBag')
end)
