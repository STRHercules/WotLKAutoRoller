local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

local FilterTable = {
	{
		Name = AL["Primary Stats"],
		Type = "PrimaryStat",
		{"Strength", "ITEM_MOD_STRENGTH_SHORT"},
		{"Agility", "ITEM_MOD_AGILITY_SHORT"},
		{"Intellect", "ITEM_MOD_INTELLECT_SHORT"},
		{"Spirit", "ITEM_MOD_SPIRIT_SHORT"},
	},
	{
		Name = AL["Secondary Stats"],
		Type = "Stat",
		{"Attack Power", "ITEM_MOD_ATTACK_POWER_SHORT"},
		{"Spell Power", "ITEM_MOD_SPELL_POWER_SHORT"},
		{"Crit", "ITEM_MOD_CRIT_RATING_SHORT"},
		{"Hit", "ITEM_MOD_HIT_RATING_SHORT"},
		{"Haste", "ITEM_MOD_HASTE_RATING_SHORT"},
		{"Armor Pen", "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT"},
		{"Spell Pen", "ITEM_MOD_SPELL_PENETRATION_SHORT"}
	},
	{
		Name = AL["Defensive Stats"],
		Type = "Stat",
		{"Defense", "ITEM_MOD_DEFENSE_SKILL_RATING_SHORT"},
		{"Dodge", "ITEM_MOD_DODGE_RATING_SHORT"},
		{"Parry", "ITEM_MOD_PARRY_RATING_SHORT"},
		{"Block", "ITEM_MOD_BLOCK_RATING_SHORT"},
		{"Block Value", "ITEM_MOD_BLOCK_VALUE_SHORT"},
		{"Resilience", "ITEM_MOD_RESILIENCE_RATING"}
	},
}

local VanityFilterTable = {
	{"Owned", "Owned"},
	{"OwnedUnknown", "Owned Unknown"},
	{"OwnedExcludeKnown", "Owned Exclude Known"}
}

local CraftingFilterTable = {
	{"Known", "Known"},
	{"Unknown", "Unknown"},
}

-- **********************************************************************
-- ItemFilter:
--	AtlasLoot:HideFilteredItems()
--	AtlasLoot:FilterEnableButton()
-- **********************************************************************
AtlasLootFilter = { FilterList = {} }

function AtlasLoot:HideFilteredItems()
	local dataID, dataSource, tablenum = self.itemframe.refreshFilter[1], _G[self.itemframe.refreshFilter[2]], self.itemframe.refreshFilter[3]
 	local tablebase = dataSource[dataID][tablenum]
	if not tablebase or dataID == "WishList" then return end
	local source = dataSource[dataID]
	AtlasLootFilter["FilterList"] = {
		Type = source.Type,
		Name = source.Name,
		Back = source.Back,
		Map = source.Map,
		vanity = source.vanity,
		[1] = {Name = source[tablenum].Name}
	}

	-- returns true if item has the desired stats
	local function checkStats(itemStats, sCheck)
		for pStat, sStat in pairs(AtlasLootFilterDB) do
			if sStat[1] and sStat[2] == sCheck and itemStats[pStat] then
				return true
			end
		end
		return false
	end

	-- checks filters for the right conditions
	local function checkfilters(itemStats, sCheck)
		if checkStats(itemStats, sCheck) then return true end
		for _, fTable in ipairs(FilterTable) do
			for _, stat in ipairs(fTable) do
				if fTable.Type == sCheck and AtlasLootFilterDB[stat[2]][1] then
					return false
				end
			end
		end
		return true
	end

	-- checks filters and whether the id is armor or a weapon
	local function getFilterType(itemID)
		if not itemID then return end
		local itemLink, _, _, _, armorCheck = select(2,GetItemInfo(itemID))
		local itemStats = GetItemStats(itemLink)

		if (armorCheck == "Armor" or armorCheck == "Weapon") and checkfilters(itemStats, "PrimaryStat") and checkfilters(itemStats, "Stat") then
			return true
		elseif armorCheck ~= "Armor" and armorCheck ~= "Weapon" then
			return true
		end
	end

	local function getVanityFilters(itemID, learnedSpellID)
		local db = AtlasLootFilterDB.VanityFilters
		if VANITY_ITEMS[itemID] and VANITY_ITEMS[itemID].learnedSpell and VANITY_ITEMS[itemID].learnedSpell ~= 0 then
			learnedSpellID = VANITY_ITEMS[itemID].learnedSpell
		end

		if C_VanityCollection.IsCollectionItemOwned(itemID) then
			if learnedSpellID and not CA_IsSpellKnown(learnedSpellID) and db["OwnedUnknown"]  then
				return true
			elseif not learnedSpellID and db["OwnedExcludeKnown"] then
				return true
			elseif db["Owned"] then
				return true
			end
		end
	end

	local function getCraftingFilters(spellID)
		local db = AtlasLootFilterDB.CraftingFilters
		if not db["Unknown"] and not db["Known"] then return true end
		if (not CA_IsSpellKnown(spellID) and db["Unknown"]) or (CA_IsSpellKnown(spellID) and db["Known"]) then
			return true
		end
	end

	-- build filtered list removing any blank spaces that are not meant to be there
	local count = 0
	for i = 1, 30 do
		if tablebase[i] then
			if source.vanity then
				if getVanityFilters(tablebase[i].itemID, tablebase[i].learnedSpellID) then
					if i == 16 then
						count = 0
					end
					AtlasLootFilter.FilterList[1][i-count] = tablebase[i]
				elseif i == 16 then
					count = 1
				else
					count = count + 1
				end
			elseif source.Type == "Crafting" then
				if getCraftingFilters(tablebase[i].spellID) then
					if i == 16 then
						count = 0
					end
					AtlasLootFilter.FilterList[1][i-count] = tablebase[i]
				elseif i == 16 then
					count = 1
				else
					count = count + 1
				end
			else
				if getFilterType(tablebase[i].itemID) or tablebase[i].icon then
					if i == 16 then
						count = 0
					end
					AtlasLootFilter.FilterList[1][i-count] = tablebase[i]
				elseif i == 16 then
					count = 1
				else
					count = count + 1
				end
			end
		end
	end
	-- show filtered table
	self:ShowItemsFrame("FilterList", "AtlasLootFilter", 1)
end

function AtlasLoot:FilterEnableButton(frame, btnclick)
	if btnclick == "RightButton" then
		if self.Dewdrop:IsOpen() then
			self.Dewdrop:Close()
		else
			self.Dewdrop:Unregister(self.mainUI.filterButton)
			self:FilterMenuRegister()
			self.Dewdrop:Open(frame)
		end
		self.mainUI.filterButton:SetChecked(not self.mainUI.filterButton:GetChecked())
	else
		if self.filterEnable then
			self.filterEnable = false
			self:ShowItemsFrame(self.itemframe.refreshFilter[1], self.itemframe.refreshFilter[2], self.itemframe.refreshFilter[3])
		else
			self.filterEnable = true
			self:HideFilteredItems()
		end
	end
end

local function disableFilters(current)
	local db = AtlasLootFilterDB.VanityFilters
	for filter, stat in pairs(db) do
	   if stat and current ~= filter then
		  db[filter] = false
	   end
	end
end

--[[
AtlasLoot:FilterMenuRegister:
Constructs the Filter menu.
]]
function AtlasLoot:FilterMenuRegister()

	local db = AtlasLootFilterDB
	self.Dewdrop:Register(self.mainUI.filterButton,
		'point', function(parent)
			return "TOPLEFT", "BOTTOM"
		end,
		'children', function(level, value)
			if _G[self.itemframe.refreshFilter[2]][self.itemframe.refreshFilter[1]].vanity then
				for _, filter in ipairs(VanityFilterTable) do
					local fDB = db.VanityFilters
					if not fDB[filter[1]] then fDB[filter[1]] = false end
					self.Dewdrop:AddLine(
						"text", filter[2],
						"func", function()
							fDB[filter[1]] = not fDB[filter[1]]
							disableFilters(filter[1])
							if self.filterEnable then
								self:HideFilteredItems()
							end
						end,
						"checked", fDB[filter[1]],
						"isRadio", true,
						"closeWhenClicked", true
					)
				end
			elseif _G[self.itemframe.refreshFilter[2]][self.itemframe.refreshFilter[1]].Type == "Crafting" then
				for _, filter in ipairs(CraftingFilterTable) do
					local fDB = db.CraftingFilters
					if not fDB[filter[1]] then fDB[filter[1]] = false end
					self.Dewdrop:AddLine(
						"text", filter[2],
						"func", function()
							fDB[filter[1]] = not fDB[filter[1]]
							disableFilters(filter[1])
							if self.filterEnable then
								self:HideFilteredItems()
							end
						end,
						"checked", fDB[filter[1]],
						"isRadio", true,
						"closeWhenClicked", true
					)
				end
			else
				for _, group in ipairs(FilterTable) do
					self.Dewdrop:AddLine('text' , group.Name, 'textHeight', self.selectedProfile.txtSize, 'textWidth', self.selectedProfile.txtSize, 'isTitle', true, "notCheckable", true)
					for _, filters in ipairs(group) do
						if not db[filters[2]] then db[filters[2]] = {false, group.Type} end
						self.Dewdrop:AddLine(
							"text", filters[1],
							"func", function()
								db[filters[2]][1] = not db[filters[2]][1]
								if self.filterEnable then
									self:HideFilteredItems()
								end
							end,
							"checked", db[filters[2]][1],
							"isRadio", true
						)
					end
				end
			end
				--Close button
				self.Dewdrop:AddLine('text', AL["Close Menu"], 'textR', 0, 'textG', 1, 'textB', 1, "closeWhenClicked", true, 'notCheckable', true)
			end,
			'dontHook', true
		)
end