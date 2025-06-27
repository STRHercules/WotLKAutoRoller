local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local difficultyList = {
	["Bloodforged"] = 1,
	["Heroic Bloodforged"] = 2,
	["Heroic"] = 4,
	["Mythic"] = 5,
	["Heroic Raid"] = 4,
	["Mythic Raid"] = 5,
	["Ascended Raid"] = 6,
	["Mythic 1"] = 6,  ["Mythic 2"] = 7,  ["Mythic 3"] = 8,  ["Mythic 4"] = 9,  ["Mythic 5"] = 10,
	["Mythic 6"] = 11, ["Mythic 7"] = 12, ["Mythic 8"] = 13, ["Mythic 9"] = 14, ["Mythic 10"] = 15,
	["Mythic 11"] = 16, ["Mythic 12"] = 17, ["Mythic 13"] = 18, ["Mythic 14"] = 19, ["Mythic 15"] = 20,
	["Mythic 16"] = 21, ["Mythic 17"] = 22, ["Mythic 18"] = 23, ["Mythic 19"] = 24, ["Mythic 20"] = 25,
	["Mythic 21"] = 26, ["Mythic 22"] = 27, ["Mythic 23"] = 28, ["Mythic 24"] = 29, ["Mythic 25"] = 30,
	["Mythic 26"] = 31, ["Mythic 27"] = 32, ["Mythic 28"] = 33, ["Mythic 29"] = 34, ["Mythic 30"] = 35,
	["Mythic 31"] = 36, ["Mythic 32"] = 37, ["Mythic 33"] = 38, ["Mythic 34"] = 39, ["Mythic 35"] = 40,
	["Mythic 36"] = 41, ["Mythic 37"] = 42, ["Mythic 38"] = 43, ["Mythic 39"] = 44, ["Mythic 40"] = 45,
};

local itemLevels = {
	{1, 101}, -- Vanilla / Classic
	{101, 178}, -- TBC
	{167, 290}, -- WoTLK
}

function AtlasLoot:MatchItemLevelBracket(ogILevel, newILevel)
	for _, bracket in pairs(itemLevels) do
		if ogILevel > bracket[1] and ogILevel < bracket[2] and newILevel > ogILevel and newILevel < bracket[2] then return true end
	end
end

function AtlasLoot:GetDifficultyFromDescription(item, ID)
	if not item then return end
	local _, description, _ = string.split("@", item.description, 3)
	if description then
		description = self:StripTextColor(description)
		description = description:gsub("Karazhan Crypts Mythic", "Mythic")
		description = description:gsub("Karazhan Crypts %- Mythic", "Mythic 30")
		description = description:gsub(" Frozen Reach", "")
		return description
	end
end

local updateFrameCreated
function AtlasLoot:CreateUpdateText()
    if updateFrameCreated then return end
    local updateCounterFrame = CreateFrame("Frame", "AtlasLootDbUpdate", UIParrnt, nil)
	updateCounterFrame:SetPoint("CENTER",0,200)
	updateCounterFrame:SetSize(400,50)
	updateCounterFrame:Hide()
	updateCounterFrame.cText = updateCounterFrame:CreateFontString("AtlasLootDbUpdateText","OVERLAY","GameFontNormal")
	updateCounterFrame.cText:Show()
	updateCounterFrame.cText:SetPoint("CENTER",0,0)
	updateCounterFrame.lastIDText = updateCounterFrame:CreateFontString("AtlasLootIDUpdateText","OVERLAY","GameFontNormal")
	updateCounterFrame.lastIDText:Show()
	updateCounterFrame.lastIDText:SetPoint("TOP", updateCounterFrame.cText, "BOTTOM" ,10,0)
    updateFrameCreated = true
end

local function removeExtraText(text)
	text = text:gsub( "Bloodforged", "" )
	text = text:gsub( "%W", "" )
	return text
end


function AtlasLoot:GetSourceList()
	local itemSource = {}
	self:IsLootTableAvailable("AtlasLootOriginalWoW")
	self:IsLootTableAvailable("AtlasLootBurningCrusade")
	self:IsLootTableAvailable("AtlasLootWotLK")
    for _, data in pairs(AtlasLoot_Data) do
		if data.Type then
			for _, t in ipairs(data) do
				for _, itemData in pairs(t) do
					if type(itemData) == "table" then
						if itemData.itemID then
							for _, dif in ipairs(self.Difficulties[data.Type]) do
								local itemType = GetItemInfoInstant(itemData.itemID) or nil
								if dif[2] ~= 3 and itemType then
									itemSource[dif[1]] = itemSource[dif[1]] or {}
									local name = itemType.name:gsub( "%W", "" )..itemType.inventoryType
									itemSource[dif[1]][name] = itemSource[dif[1]][name] or {}
									local itemTable = itemSource[dif[1]][name]
										local function checkForDuplicate(itemID)
											for _ , item in pairs(itemTable) do
												if item[1] == itemID then return true end
											end
										end
									if not checkForDuplicate(itemData.itemID) then
										tinsert(itemTable, {itemData.itemID, itemType.itemLevel})
									end
								end
							end
						end
					end
				end
			end
		end
    end
	if self:CheckIfEmptyTable(itemSource) then return end
	return itemSource
end

function AtlasLoot:UpdateItemIDsDatabase(firstID, lastID)
	wipe(AtlasLootItemCache)
	local itemSource = self:GetSourceList()
	if not itemSource then return end
    self:CreateUpdateText()
    AtlasLootDbUpdate:Show()

	local maxDuration = 4000/GetFramerate()
    local startTime = debugprofilestop()
	firstID = firstID or 1
	lastID = lastID or 10000000
	AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\n"..firstID.." / ".. lastID)

		local function checkID(item, difficulty)
			if difficulty and item and item.name then
				local foundName = removeExtraText(item.name)..item.inventoryType
				if foundName then
					local itemData = itemSource[difficulty] and itemSource[difficulty][foundName]
					if itemData then
						for _ , storedItem in pairs(itemData) do
							local orignalID = storedItem[1]
							AtlasLootItemCache[orignalID] = AtlasLootItemCache[orignalID] or {}
							if not AtlasLootItemCache[orignalID][difficultyList[difficulty]] or self:MatchItemLevelBracket(storedItem[2], item.itemLevel) then
								AtlasLootItemCache[orignalID][difficultyList[difficulty]] = item.itemID
								AtlasLootIDUpdateText:SetText("Last ItemID Added: "..firstID)
							end
						end
					end
				end
			end
			AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\n"..firstID.." / ".. lastID)
		end

    local function continue()
		if self:CheckIfEmptyTable(itemSource) then
			return
		end
        startTime = debugprofilestop()
        while (firstID ~= lastID) do
			local item = GetItemInfoInstant(firstID)
			local difficulty = self:GetDifficultyFromDescription(item, firstID)
			if item and difficulty then
				checkID(item, difficulty)
			end
			firstID = firstID + 1
            AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\n"..firstID.." / ".. lastID)
            if (debugprofilestop() - startTime > maxDuration) then
				collectgarbage("collect")
                Timer.After(0, continue)
                return
            end
        end
		AtlasLootDbUpdateText:SetText("Updating AtlasLoot Item Cache\nUpdate Complete Reloadui To Save")
    end

    return continue()
end

--[[
AtlasLoot:GetItemDifficultyID(id, difficulty)
Finds the Ids of other difficulties based on the normal id of the item and the difficulty parameter given.
On the form of {ID, {bloodforged, heroic bloodforged, normal, heroic, mythic, mythic1/ascended, mythic2, ... ,mythicN}}
]]
function AtlasLoot:GetItemDifficultyID(id, difficulty)
	if not difficulty or difficulty == 3 then return id end
	if ItemIDsDatabase[id] and ItemIDsDatabase[id][difficulty] and self:GetItemInfo(ItemIDsDatabase[id][difficulty]) then
		return ItemIDsDatabase[id][difficulty]
	end
	return id
end

local runOnce
function AtlasLoot:GetMerchantItems(missingOnly)
	AtlasLootOtherIds = AtlasLootOtherIds or {}
	tinsert(AtlasLootOtherIds, {})
	local numItems = GetMerchantNumItems()
	if numItems then
		for index = 1, numItems do
			local link = GetMerchantItemLink(index)
			local itemID = GetItemInfoFromHyperlink(link)
			local itemName = self:GetItemInfo(itemID)
			local _, itemCost, currency = GetMerchantItemCostItem (index, 1)
			local currencyID = currency and GetItemInfoFromHyperlink(currency)

			if missingOnly then
				if not runOnce then
					self:CreateItemSourceList(true)
					runOnce = true
				end

				if not self.ItemSourceList[itemID] then
					tinsert(AtlasLootOtherIds[#AtlasLootOtherIds], { itemID, itemName })
				end
			elseif not missingOnly then
				if itemCost then
					tinsert(AtlasLootOtherIds[#AtlasLootOtherIds], { itemID, itemCost, currencyID, itemName})
				else
					tinsert(AtlasLootOtherIds[#AtlasLootOtherIds], { itemID, itemName })
				end
			end
		end
	end
end
--[[ Regex used on the merchant data to put it in a better formate for atlasloot
search with this
\{(.*)
(.+?),(.*)
(.+?)"(.+?)"(.*)
(.*)

replace with this
[1] = { itemID = $2 }; --$5

]]