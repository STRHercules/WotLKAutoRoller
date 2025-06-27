local function CheckIfEmptyTable(table)
	if next(table) then
		return false
	else
		return true
	end
end

local databaseUpdated
--Updates the ItemIDsDatabase with any missing or incorrect items
function LoadItemIDsDatabase()
	AtlasLootItemCache = AtlasLootItemCache or {}
    if databaseUpdated then return end
	--loads any items in the saved varriables cache
    if AtlasLootItemCache and not CheckIfEmptyTable(AtlasLootItemCache) then
		for normalID, item in pairs(AtlasLootItemCache) do
			for itemDif, itemID in pairs(item) do
				ItemIDsDatabase[normalID] = ItemIDsDatabase[normalID] or {}
				ItemIDsDatabase[normalID][itemDif] = itemID
			end
		end
	end
	-- loads ids that have been manuely corrected
	if ItemIDManuelCorrections then
		for normalID, item in pairs(ItemIDManuelCorrections) do
			for itemDif, itemID in pairs(item) do
				ItemIDsDatabase[normalID] = ItemIDsDatabase[normalID] or {}
				ItemIDsDatabase[normalID][itemDif] = itemID
			end
		end
	end
	ItemIDManuelCorrections = nil
    collectgarbage("collect")
    databaseUpdated = true
end