[ENABLE]
auto = 1

[MAIN]
-- Create a table to store the addresses and values of the mods
mods = {}

-- Function to add a mod to the table
function addMod(address, value)
    mods[#mods+1] = {address=address, value=value}
end

-- Function to modify the values of all the mods
function modifyMods()
    for i,mod in ipairs(mods) do
        memory.writeword(mod.address, mod.value)
    end
end

-- Add mods to the table
addMod(0x12345678, 100) -- Change character speed
addMod(0x87654321, 999) -- Unlimited ammo

-- Modify the values of the mods when the script is activated
activateMods = modifyMods

[INFO]
name=Yahaha Mod Menu
author=GameGuardian User
version=1.0
description=A mod menu for the game Yahaha using Game Guardian.