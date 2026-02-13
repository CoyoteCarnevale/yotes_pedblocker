local blockedModels = {
    `a_m_y_sdstreetkids_slums_02`,
    `cs_sd_streetkid_01`,
    `cs_sd_streetkid_01a`,
    `cs_sd_streetkid_01b`,
    `cs_sd_streetkid_02`,
    `cs_sdstreetkidthief`,
    `a_m_y_nbxstreetkids_01`,
    `a_m_y_nbxstreetkids_slums_01`
}

local blockedLookup = {}
for _, model in ipairs(blockedModels) do
    blockedLookup[model] = true
end

AddEventHandler("populationPedCreating", function(model)
    if blockedLookup[model] then
        CancelEvent()
    end
end)

CreateThread(function()
    while true do
        Wait(0)

        SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)

    end
end)
