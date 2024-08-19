function speedText(content)
    SetTextFont(0)
    SetTextProportional(false)
    SetTextScale(1.0, 1.0)
    SetTextEnty('STRING')
    AddTextComponentString(content..' Км/ч')
    DrawText(0.17, 0.97)
end

CreateThread(function ()
    while true do
        Wait(2)
        local playerPed = GetPlayerPed(PlayerId())
        local playerVehicle = GetVehiclePedIsIn(playerPed, false)
        local seatPed = GetPedInVehicleSeat(playerVehicle, -1)
        
        if seatPed == playerPed then
            local speed = GetEntitySpeed(playerVehicle) * 3.6
            speedText(math.ceil(speed))
        end
    end
end)