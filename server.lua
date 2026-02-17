local blockedPeds = {}

for _, modelName in ipairs(Config.BlockedPeds) do
    blockedPeds[GetHashKey(modelName)] = true
end

AddEventHandler("entityCreating", function(entity)
    if not DoesEntityExist(entity) then return end
    if GetEntityType(entity) ~= 1 then return end -- 1 = Ped

    local model = GetEntityModel(entity)

    if blockedPeds[model] then
        if Config.Debug then
            print(("Blocked ped! Entity: %s | Model Hash: %s"):format(entity, model))
        end
        CancelEvent()
    end
end)
