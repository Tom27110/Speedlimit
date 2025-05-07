-- client.lua

local speedLimit = 0

-- Lade die Config
local Config = require "config"

-- Funktion, um die Fahrzeugklasse zu ermitteln
function GetVehicleClassName(vehicle)
    local class = GetVehicleClass(vehicle)
    local className = "unknown"

    if class == 0 then className = "compacts" end
    if class == 1 then className = "sedans" end
    if class == 2 then className = "SUVs" end
    if class == 3 then className = "coupes" end
    if class == 4 then className = "muscle_car" end
    if class == 5 then className = "sports_classic" end
    if class == 6 then className = "sports_car" end
    if class == 7 then className = "super" end
    if class == 8 then className = "motorcycles" end
    if class == 9 then className = "offroad" end
    if class == 10 then className = "industrial" end
    if class == 11 then className = "utility" end
    if class == 12 then className = "vans" end
    if class == 13 then className = "cycles" end
    if class == 14 then className = "boats" end
    if class == 15 then className = "helicopters" end
    if class == 16 then className = "planes" end
    if class == 17 then className = "service" end
    if class == 18 then className = "emergency" end
    if class == 19 then className = "military" end
    if class == 20 then className = "commercial" end

    return className
end

-- Überprüfe die Geschwindigkeit und wende den Speedlimiter an
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)  -- Alle 100ms überprüfen

        local playerPed = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        if vehicle ~= 0 then
            local vehicleClassName = GetVehicleClassName(vehicle)

            -- Finde das passende Speedlimit aus der Config (in mph)
            local speedLimit = Config.VehicleSpeedLimits[vehicleClassName]

            -- Wenn ein Speedlimit für diese Klasse existiert, setze es
            if speedLimit then
                local currentSpeedKmH = GetEntitySpeed(vehicle) * 3.6 -- Geschwindigkeit in km/h
                local currentSpeedMph = currentSpeedKmH * 0.621371 -- Umrechnung von km/h in mph

                if currentSpeedMph > speedLimit then
                    -- Wenn die aktuelle Geschwindigkeit das Limit überschreitet, setze die Geschwindigkeit zurück
                    SetEntitySpeed(vehicle, speedLimit / 2.23694) -- Umrechnung von mph in m/s (SetEntitySpeed benötigt m/s)
                end
            end
        end
    end
end)
