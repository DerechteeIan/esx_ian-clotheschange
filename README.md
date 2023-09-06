ESX-Version

Config.ESX11 = true

If you're ESX-Version ist 1.2 or higher you have to change it to false. Otherwise leave it.


ADD ANOTHER ITEM  

To add another item paste this into the server.lua

-- ESX.RegisterUsableItem('itemname', function(source)
--     local item = 'itemname'
--     print(item)
--     TriggerClientEvent('ian-clotheschange:changeclothes', source, item)
       
    
--     end)


Dont forget to change both itemname to whatever you wanna call the item.
In the config.lua you can change the clothing that is going to change when you use the item.




  
