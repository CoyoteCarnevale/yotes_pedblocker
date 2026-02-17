local blockedPeds = Config.BlockedPeds

AddEventHandler("entityCreating", function(entity)

    local model = GetEntityModel(entity)
    if blockedPeds[model] then
        if Config.Debug then
            print(("Blocked ped! Entity: %s | Model Hash: %s"):format(entity, model))
        end

        CancelEvent()
    end
end)
