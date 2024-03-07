-- Cheat Menu for Yahaha

-- Health Cheat
function healthCheat()
    -- Find the health value
    local healthValue = findValue(0x00000000, 0xFFFFFFFF, 100)

    -- Check if the health value was found
    if healthValue then
        -- Modify the health value
        modifyValue(healthValue, 999)

        -- Show a message
        showMessage("Health Cheat Enabled")
    else
        -- Show an error message
        showMessage("Health Cheat Error")
    end
end

-- Money Cheat
function moneyCheat()
    -- Find the money value
    local moneyValue = findValue(0x00000000, 0xFFFFFFFF, 100000)

    -- Check if the money value was found
    if moneyValue then
        -- Modify the money value
        modifyValue(moneyValue, 999999999)

        -- Show a message
        showMessage("Money Cheat Enabled")
    else
        -- Show an error message
        showMessage("Money Cheat Error")
    end
end

-- Add the cheats to the menu
addMenuItem("Health Cheat", healthCheat)
addMenuItem("Money Cheat", moneyCheat)