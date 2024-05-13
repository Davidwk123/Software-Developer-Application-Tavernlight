-- Q3 - Fix or improve the name and the implementation of the below method

-- Fixed function name style and wording, also fixed paremter style 
function removeMemberFromParty(playerId, memberName)
    player = Player(playerId)
    -- Make new variable for party member to reuse later
    partyMember = Player(memberName)
    local party = player:getParty()
    
    -- Added null check
    if party ~= nil then
        -- Renamed variables in loop to improve readability 
        for _, member in pairs(party:getMembers()) do
            if member == partyMember then
                party:removeMember(partyMember)
            end
        end
    end
end
