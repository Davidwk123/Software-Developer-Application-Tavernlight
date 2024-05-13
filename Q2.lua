-- Q2 - Fix or improve the implementation of the below method

-- This method is supposed to print names of all guilds that have less than memberCount max members
function printSmallGuildNames(memberCount)
    local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"
    -- Changed resultId to result, stores the queried result
    local result = db.storeQuery(string.format(selectGuildQuery, memberCount))
    -- Iterate through the result table and print the guild names
    for row in result:rows() do
        print(row.name)
    end
end
