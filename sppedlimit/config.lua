-- config.lua
Config = {}

-- Fahrzeugklassen und deren Geschwindigkeitsbegrenzungen in mph
Config.VehicleSpeedLimits = {
    ["compacts"] = 80,  -- z.B. Kompakte
    ["sedans"] = 75,    -- z.B. Limousinen
    ["SUVs"] = 80,      -- z.B. SUVs
    ["coupes"] = 95,    -- z.B. Coupés
    ["muscle_car"] = 110,  -- z.B. Muscle-Cars
    ["sports_classic"] = 125,  -- z.B. Sports-Classics
    ["sports_car"] = 135,  -- z.B. Sportwagen
    ["super"] = 155,     -- z.B. Supersportwagen
    ["motorcycles"] = 100,  -- z.B. Motorräder
    ["offroad"] = 80,    -- z.B. Offroad
    ["industrial"] = 62, -- z.B. Nutzfahrzeuge
    ["utility"] = 68,    -- z.B. Nutzfahrzeuge
    ["vans"] = 75,       -- z.B. Vans
    ["cycles"] = 18,     -- z.B. Fahrräder
    ["boats"] = 62,      -- z.B. Boote
    ["helicopters"] = 93,  -- z.B. Hubschrauber
    ["planes"] = 186,    -- z.B. Flugzeuge
    ["service"] = 62,    -- z.B. Servicefahrzeuge
    ["emergency"] = 110, -- z.B. Einsatzfahrzeuge
    ["military"] = 110,  -- z.B. Militärfahrzeuge
    ["commercial"] = 62, -- z.B. Gewerbliche Fahrzeuge
}
