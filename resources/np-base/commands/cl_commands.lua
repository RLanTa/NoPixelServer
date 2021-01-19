NPX.Commands = NPX.Commands or {}

RegisterNetEvent("np-commands:meCommand")
AddEventHandler("np-commands:meCommand",
    function(user, msg)
        local monid = PlayerId()
        local sonid = GetPlayerFromServerId(user)
        if
            #(GetEntityCoords(GetPlayerPed(monid)) - GetEntityCoords(GetPlayerPed(sonid))) < 8.0 and
                HasEntityClearLosToEntity(GetPlayerPed(monid), GetPlayerPed(sonid), 17)
         then
            TriggerEvent("DoHudTextCoords", msg, GetPlayerPed(sonid))
        end
    end)

 AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    TriggerServerEvent("np-commands:buildCommands","")
  end)