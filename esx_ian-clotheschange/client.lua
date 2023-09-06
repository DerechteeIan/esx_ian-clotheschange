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
    if clotheson == false then
        TriggerEvent('skinchanger:getSkin', function(skin)
        clotheson = true
    if skin.sex == 0 then
            TriggerEvent('skinchanger:loadClothes', skin, Config.Clothes[item].male)
    else
        TriggerEvent('skinchanger:loadClothes', skin, Config.Clothes[item].female)
    end
end)
    else
        clotheson = false
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
        TriggerEvent('skinchanger:loadSkin', skin)
    end)
end
end)


