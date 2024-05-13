-- Q1 - Fix or improve the implementation of the below methods

local function releaseStorage(player)
    -- Was not sure what the '1000' was used for without player class context, so deleted it
    player:setStorageValue(-1)
end

function onLogout(player)
    -- Got rid of the '1000' again because getter function should not need a parameter
    --  to reutrn a value. Also switched check to "~= -1" so that releaseStorage function
    --  will set player storage to -1 when called.
    if player:getStorageValue() ~= -1 then
        -- Deleted '1000' inside addEvent because releaseStorage function does not have integer parameter
        addEvent(releaseStorage, player)
        -- Moved true statment inside if check to show that a player successfully logged out
        return true
    end
    -- False statment addded to check if player already logged out
    return false
end
