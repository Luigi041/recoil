CreateThread(function()
    while true do
        Wait(update)
        local ped = PlayerPedId()
        local shot = IsPedShooting(ped)
        local vehicle = GetVehiclePedIsIn(PlayerPedId())
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            update = 10
            if shot == 1 and IsPedInAnyVehicle(ped) then
                local speed = GetEntitySpeed(vehicle)*3.6
                if speed >= 30 then
                    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.001*speed)
                else
                    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.05)
                end
            end
        else
            update = 3000
        end
    end
end)