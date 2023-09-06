if Config.ESX11 == true then
    ESX = nil
TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
print("^3[Info]^0 This script is set to esx 1.1 ")

end)
else
    ESX = exports["es_extended"]:getSharedObject()
    print("^3[Info]^0 This script is set to esx 1.1 or higher")
end




ESX.RegisterUsableItem('policeclothing', function(source)
local item = 'policeclothing'
print(item)
TriggerClientEvent('ian-clotheschange:changeclothes', source, item)
   

end)



-- Copy and paste this when you want to add another Item for clothes
-- Make sure to read the Readme.md for further instruction


-- ESX.RegisterUsableItem('itemname', function(source)
--     local item = 'itemname'
--     print(item)
--     TriggerClientEvent('ian-clotheschange:changeclothes', source, item)
       
    
--     end)

