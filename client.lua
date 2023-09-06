if Config.ESX11 == true then
    ESX          = nil
    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(0)
        end
    end)
else
    ESX = exports["es_extended"]:getSharedObject()
end


local clotheson = false
RegisterNetEvent('ian-clotheschange:changeclothes')
AddEventHandler('ian-clotheschange:changeclothes', function (item)
    local playerPed = PlayerPedId()
    if clotheson == false then
        if Config.EnableArmor == true then
            SetPedArmour(playerPed, 100)
        end
        TriggerEvent('skinchanger:getSkin', function(skin)
        clotheson = true
    if skin.sex == 0 then
            TriggerEvent('skinchanger:loadClothes', skin, Config.Clothes[item].male)
    else
        TriggerEvent('skinchanger:loadClothes', skin, Config.Clothes[item].female)
    end
end)
    else
        if Config.EnableArmor == true then
            SetPedArmour(playerPed, 0)
        end
        clotheson = false
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
        TriggerEvent('skinchanger:loadSkin', skin)
    end)
end
end)


