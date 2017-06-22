--all work by braukStauter

RegisterNetEvent("nopB")
AddEventHandler("nopB", function()
    local playerPed = GetPlayerPed(-1)
    if DoesEntityExist(playerPed) then
        Citizen.CreateThread(function()
            TriggerEvent('chatMessage', 'ERROR', { 0, 0, 0 }, "Cannot clear panic. Your panic button has not been activated!")
        end)
    end
   
end)

--all work by braukStauter
--clientPanic
--PANICv0.0.1 id 810293