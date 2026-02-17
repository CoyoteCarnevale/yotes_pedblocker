local blockedModels = {
    [`a_m_y_sdstreetkids_slums_02`] = true,
    [`cs_sd_streetkid_01`] = true,
    [`cs_sd_streetkid_01a`] = true,
    [`cs_sd_streetkid_01b`] = true,
    [`cs_sd_streetkid_02`] = true,
    [`cs_sdstreetkidthief`] = true,
    [`a_m_y_nbxstreetkids_01`] = true,
    [`a_m_y_nbxstreetkids_slums_01`] = true
}


--  localise global function less expensive
local SetScenario = SetScenarioPedDensityMultiplierThisFrame
CreateThread(function()

   -- wait for player to pass character selection 
    repeat Wait(5000) until LocalPlayer.state.IsInSession

   -- event after player has selected a character
   AddEventHandler("populationPedCreating", function(model)
        if blockedModels[model] then
            CancelEvent()
        end
   end)

    while true do
        Wait(0)
        SetScenario(0.0, 0.0)
    end
end)
