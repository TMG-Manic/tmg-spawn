local TMGCore = exports['tmg-core']:GetCoreObject()

TMGCore.Functions.CreateCallback('tmg-spawn:server:getOwnedHouses', function(source, cb, cid)
    if not cid or cid == "" then 
        cb({}) 
        return 
    end

    local houses = exports['tmgnosql']:FetchAll('player_houses', { ["citizenid"] = cid })
    
    if houses and #houses > 0 then
        local formattedHouses = {}
        for i = 1, #houses do
            local h = houses[i]
            formattedHouses[#formattedHouses + 1] = {
                ["house"] = h.house,
                ["label"] = h.label or h.house,
                ["coords"] = h.coords 
            }
        end

        cb(formattedHouses)
        
        print(string.format("^5[TMG]^7 Spawn: Resolved %d properties for CID [%s]", #houses, cid))
    else
        cb({})
    end
end)
