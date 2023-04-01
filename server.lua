RegisterNetEvent(
    "esx:playerLoaded",
    function(player, xPlayer, isNew)
        if (isNew) then
            Wait(0)
            xPlayer.addMoney(Config.cash)
            for i, item in ipairs(Config.items) do
                xPlayer.addInventoryItem(item.name, item.count)
            end
        end
    end
)