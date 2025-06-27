local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local itemHighlightBlue = "Interface\\AddOns\\AtlasLoot\\Images\\knownBlue"
local itemHighlightGreen = "Interface\\AddOns\\AtlasLoot\\Images\\knownGreen"
--[[
AtlasLoot:ShowItemsFrame(dataID, dataSource, tablenum):
dataID - Name of the loot table
dataSource - Table in the database where the loot table is stored
tablenum - Number of the table with the loot in it
It is the workhorse of the mod and allows the loot tables to be displayed any way anywhere in any mod.
]]
function AtlasLoot:ShowItemsFrame(dataID, dataSource_backup, tablenum)

	local isValid, toShow, itemID, recipeID
	self.vanityItems = {}

    --If the loot table name has not been passed, throw up a debugging statement
	if dataID == nil then
		DEFAULT_CHAT_FRAME:AddMessage("No dataID!")
        return
	end

	--Hide Advanced search if it is up and reshow Querybutton
	self.searchPanel:Hide()

	--Hide Map and reshow lootbackground
	self.mainUI.mapFrame:Hide()
    self.mainUI.lootBackground:Show()
	self.itemframe:Show()

	-- Hide the Filter Check-Box
	self.mainUI.filterButton:Hide()

	-- Hide the map header lable
	Atlasloot_HeaderLabel:Hide()
	local dataSource = _G[dataSource_backup] or AtlasLoot_Data
	if not dataSource[dataID] then return end
	-- Enable map button if there is a map for this table.
	if dataSource_backup ~= "AtlasLoot_OnDemand" and dataSource_backup ~= "AtlasLoot_TokenData" and dataSource[dataID] and dataSource[dataID].Map then
		self.mainUI.mapButton:Enable()
		-- Stops map reseting to default while still in the same raid/instance table
		if self.itemframe.refresh == nil or dataID ~= self.itemframe.refresh[1] then
			self.MapNum = 1
			self.CurrentMap = dataSource[dataID].Map
			self:SetMapButtonText(self.CurrentMap)
		end
	else
		self.mainUI.mapButton:Disable()
		self.mainUI.mapButton:SetText("No Map")
	end

	if dataSource_backup ~= "AtlasLoot_CurrentWishList" then
		self.itemUnlock = false
	end

	local difType = false
	-- Checks to see if type is the same
	if self.CurrentType and dataSource[dataID].Type and self.CurrentType ~= dataSource[dataID].Type then
		self.ItemindexID = self.type[dataSource[dataID].Type] or dataSource[dataID].Index or 3
		difType = true
	end

	-- Saves current types self.ItemindexID
	if dataSource[dataID].Type then
		self.type[dataSource[dataID].Type] = self.ItemindexID
	end
	-- Set current type
	self.CurrentType = dataSource[dataID].Type or "Default"

	-- Loads the Difficulties into the scrollFrame
	if dataSource[dataID].ListType then
		self:ScrollFrameUpdate(nil,dataSource[dataID].ListType)
	else
		self:ScrollFrameUpdate()
	end

	-- Finds the tablenumber to set where the difficulty slider should be.
	local typeNumber = 1
	local function findTypeNumber()
		for i,v in ipairs(self.Difficulties[dataSource[dataID].Type]) do
			if v[2] == self.ItemindexID then
				typeNumber = i
				return i
			end
		end
	end

	if dataSource_backup ~= "AtlasLootFilter" then
		self.dataSourceBackup = dataSource_backup
	end

	-- Moves the difficulty scrollslider if the difficulty has changed
	if dataSource[dataID].Type and difType and #self.Difficulties[dataSource[dataID].Type] > 5 and findTypeNumber() > 5 then
		local min, max = AtlasLootDefaultFrameScrollScrollBar:GetMinMaxValues()
		AtlasLootDefaultFrameScrollScrollBar:SetValue(typeNumber * (max / #self.Difficulties[dataSource[dataID].Type]))
	end

	-- Moves the difficulty scrollslider if wishlist
	if dataSource_backup == "AtlasLoot_CurrentWishList" and dataSource[dataID].ListNum > 5 then
		local min, max = AtlasLootDefaultFrameScrollScrollBar:GetMinMaxValues()
		AtlasLootDefaultFrameScrollScrollBar:SetValue(dataSource[dataID].ListNum * (max / #AtlasLootWishList[dataSource[dataID].ListType][dataSource[dataID].ListNum]))
	end

	--For stopping the subtable from changing if its a token table
	if dataSource[dataID].NoSubt == nil and dataID ~= "FilterList" then
		if dataSource[dataID].DisplayName then
			AtlasLootDefaultFrame_SubMenu:SetText(dataSource[dataID].DisplayName)
		else
			AtlasLootDefaultFrame_SubMenu:SetText(dataSource[dataID].Name)
		end
		self:SubTableScrollFrameUpdate(dataID, dataSource_backup, tablenum)
	end

	for i = 1, 30, 1 do
		--Use shortcuts for easier reference to parts of the item button
		local itemButton = self.itemframe.buttons[i]
			itemButton:Hide()
			itemButton.itemID = nil
			itemButton.spellID = nil
			itemButton.Highlight:Hide()
			itemButton.hasTrade = false
	end

	-- Sets the main page lable
	if dataSource[dataID][tablenum] and dataSource[dataID][tablenum].Name then
		self.itemframe.Label:SetText(dataSource[dataID][tablenum].Name)
	else
		self.itemframe.Label:SetText("This Is Empty")
		return
	end

	-- find the right itemID for the difficulty selected
	local function getProperItemConditionals(item)
		isValid = false
		toShow = true
		local itemDif = self.ItemindexID or self.Difficulties.Normal
		local itemID = item and item.itemID
		if item and item.itemID then
			itemID = item.itemID
			isValid = true
			local itemType = item.Type or dataSource[dataID].Type
			local maxDif = self:GetMaxDifficulty(itemType)
			--stops items from showing that are taged for coa
			if (item.Server and item.Server ~= self.serverType) then
				toShow = false
			elseif item[self.Difficulties.MIN_DIF] then
				if item[self.Difficulties.MIN_DIF] > itemDif then
					toShow = false
				end
				itemID = self:GetItemDifficultyID(item.itemID, min(maxDif, itemDif))
			end
			if toShow then
				if maxDif < itemDif then itemDif = maxDif end 
				--If something was found in itemID database show that if not show default table item
				itemID = self:GetItemDifficultyID(item.itemID, itemDif)
			end
		elseif item and (item.spellID or item.icon) or item and itemID then
			toShow = true
			if(item[self.Difficulties.MIN_DIF]) then
				if item[self.Difficulties.MIN_DIF] > itemDif then
					toShow = false
				end
			end
			isValid = true
		end
		local recipeID
		if item and item.spellID then
			recipeID = self:GetRecipeID(item.spellID)
		end
		return isValid, toShow, itemID, recipeID
	end

	-- Setup the button for the to be displayed item/spell
	local function setupButton(itemID, i, newPosition, dataSource, dataID, tablenum, dataSource_backup)
		local text, extra
		local itemName, itemQuality, itemSubType, itemEquipLoc, itemIcon
		if itemID then
			itemName, _, itemQuality, _, _, _, itemSubType, _, itemEquipLoc, itemIcon = AtlasLoot:GetItemInfo(itemID)
		end

		local spellName, spellIcon
		--Use shortcuts for easier reference to parts of the item button
		local itemButton = self.itemframe.buttons[newPosition]
		local iconFrame  = itemButton.Icon
		local nameFrame  = itemButton.Name
		local extraFrame = itemButton.ExtraText
		local hightlightFrame = itemButton.Highlight
		local itemNumber = dataSource[dataID][tablenum][i]
		local spellID = itemNumber.spellID

		if spellID then
			spellName, _, spellIcon, _, _, _, _, _, _ = GetSpellInfo(spellID)
			if spellName then
				text = spellName
			elseif itemNumber.name then
				text = itemNumber.name
				text = self:FixText(text)
			end
			if itemID then
				text = select(4,GetItemQualityColor(itemQuality))..text
			end
			--Adds button highlights if you know a recipe or have a char that knows one
			if CA_IsSpellKnown(spellID) then
				itemButton.hasTrade = true
				hightlightFrame:SetTexture(itemHighlightGreen)
				hightlightFrame:Show()
			else
				itemButton.hasTrade = false
				hightlightFrame:Hide()
				if self:GetKnownRecipes(spellID) then
					hightlightFrame:SetTexture(itemHighlightBlue)
					hightlightFrame:Show()
				end

			end
		elseif itemID then
			--If the client has the name of the item in cache, use that instead.					
			if itemNumber.name then
				--If it has a manuel entry use that
				text = itemNumber.name
				text = self:FixText(text)
			elseif itemName then
				text = select(4,GetItemQualityColor(itemQuality))..itemName
			else
				text = ""
			end
			if C_VanityCollection.IsCollectionItemOwned(itemID) and VANITY_ITEMS[itemID] and CA_IsSpellKnown(VANITY_ITEMS[itemID].learnedSpell) and VANITY_ITEMS[itemID].learnedSpell ~= 0 then
				hightlightFrame:SetTexture(itemHighlightGreen)
				hightlightFrame:Show()
			elseif C_VanityCollection.IsCollectionItemOwned(itemID) then
				hightlightFrame:SetTexture(itemHighlightBlue)
				hightlightFrame:Show()
				if dataSource_backup == "AtlasLoot_CurrentWishList" or (VANITY_ITEMS[itemID] and VANITY_ITEMS[itemID].learnedSpell ~= 0 and not CA_IsSpellKnown(VANITY_ITEMS[itemID].learnedSpell)) then
					tinsert(self.vanityItems, itemID)
				end
			end
			local recipeData = self:GetRecipeData(itemID, "item")
			if recipeData then
				if CA_IsSpellKnown(recipeData.spellID) then
					--Adds button highlights if you know a recipe or have a char that knows one
					itemButton.hasTrade = true
					hightlightFrame:SetTexture(itemHighlightGreen)
					hightlightFrame:Show()
				else
					itemButton.hasTrade = false
					hightlightFrame:Hide()
					if self:GetKnownRecipes(recipeData.spellID) then
						hightlightFrame:SetTexture(itemHighlightBlue)
						hightlightFrame:Show()
					end
				end
			end
		else
			if itemNumber.name then
				--If it has a manuel entry use that
				text = itemNumber.name
				text = self:FixText(text)
			else
				text = ""
			end
		end

		itemButton.name = text
		--Insert the item description
		if self.FixedItemText[itemNumber.itemID] then
			extra = self.FixedItemText[itemNumber.itemID]
		elseif itemNumber.desc then
			if type(itemNumber.desc) == "table" then
				local location, boss = itemNumber.desc[1], itemNumber.desc[2]
				extra = self.Colors.YELLOW..location..self.Colors.WHITE.." - "..boss	
			else
				extra = itemNumber.desc
			end
		elseif itemNumber.dropLoc and (self.dataSourceBackup == "AtlasLoot_OnDemand" or (self.selectedProfile.showdropLocationOnSearch and dataID == "SearchResult")) then
			local location, boss = itemNumber.dropLoc[1], itemNumber.dropLoc[2]
			extra = self.Colors.YELLOW..location..self.Colors.WHITE.." - "..boss
		elseif AtlasLoot_CraftingData["CraftingLevels"] and spellID and AtlasLoot_CraftingData["CraftingLevels"][spellID] and dataID ~= "SearchResult" then
			local lvls = AtlasLoot_CraftingData["CraftingLevels"][spellID]
			extra = self.Colors.LIMEGREEN .. "L-Click:|r "..self.Colors.WHITE..dataSource[dataID].Name.." ( "..self.Colors.ORANGE..lvls[1].."|r "..self.Colors.YELLOW..lvls[2].."|r "..self.Colors.GREEN..lvls[3].."|r "..self.Colors.GREY..lvls[4]..self.Colors.WHITE.." )"
		elseif itemNumber.lootTable and itemNumber.lootTable[2] == "Token" then
			extra = AL["Set Token (Click)"]
		elseif itemEquipLoc and itemEquipLoc ~= "" and itemSubType then
			extra = "=ds="..itemEquipLoc..", "..itemSubType
		elseif itemSubType then
			extra = "=ds="..itemSubType
		else
			extra = ""
		end

		if AtlasLoot_ExtraData[itemNumber.itemID]and dataID ~= "SearchResult" then
			extra = self.Colors.LIMEGREEN .. "L-Click:|r " .. extra
		end
		if itemNumber.contentsPreview and dataID ~= "SearchResult" then
			extra = self.Colors.LIMEGREEN .. "L-Click:|r " .. extra
		end

		if itemNumber.rep then
			extra = extra ..self.Colors.WHITE.." ("..itemNumber.rep..")"
		end

		local price = itemNumber.price
		if price then
			price = self:ArenaCost(price, itemEquipLoc, itemQuality)
			extra = extra ..self.Colors.WHITE.." ("..price..")"
		end

		local recipe = self:GetRecipeData(itemID, "item")
		if recipe and AtlasLoot_CraftingData["CraftingLevels"] and AtlasLoot_CraftingData["CraftingLevels"][recipe.spellID] then
			local lvls = AtlasLoot_CraftingData["CraftingLevels"][recipe.spellID]
			extra = extra ..self.Colors.WHITE.." ( "..lvls[1].." )"
		end

		extra = self:FixText(extra)

		--If there is no data on the texture an item should have, show a big self.Colors.RED question mark
		if itemNumber.icon == "Blank" then
			iconFrame:SetTexture(nil)
		elseif itemNumber.icon == "?" then
			iconFrame:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
		elseif itemNumber.icon then
			iconFrame:SetTexture("Interface\\Icons\\"..itemNumber.icon)
		elseif itemNumber.itemID then
			iconFrame:SetTexture(itemIcon)
		elseif spellIcon then
			iconFrame:SetTexture(spellIcon)
		end

		if iconFrame:GetTexture() == nil and itemNumber.icon ~= "Blank" then
			iconFrame:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
		end

		itemButton.itemTexture = iconFrame:GetTexture()

		--Highlight items in the wishlist
		if itemID and dataSource_backup ~= "AtlasLoot_CurrentWishList" and (AtlasLootWishList.Options[UnitName("player")] and AtlasLootWishList.Options[UnitName("player")]["Mark"]) then
			local xitemexistwish, itemwishicons = self:WishListCheck(itemID, true)
			if xitemexistwish then
				text = itemwishicons.." "..text
			end
		end
		--Set the name and description of the item
		nameFrame:SetText(text)
		extraFrame:SetText(extra)
		extraFrame:Show()
		--For convenience, we store information about the objects in the objects so that it can be easily accessed later
		itemButton.itemID = itemID
		itemButton.spellID = spellID

		--learned spell id is used for items that are part of the ascension vanity collection
		itemButton.learnedSpellID = nil
		if VANITY_ITEMS[itemID] and VANITY_ITEMS[itemID].learnedSpell and VANITY_ITEMS[itemID].learnedSpell ~= 0 then
			itemButton.learnedSpellID = VANITY_ITEMS[itemID].learnedSpell
		end

		itemButton.craftingData = self:GetRecipeSource(spellID)
		itemButton.tablenum = tablenum
		itemButton.dataID = dataID
		itemButton.dataSource = dataSource_backup
		itemButton.contentsPreview = itemNumber.contentsPreview
		itemButton.price = itemNumber.price or nil
		itemButton.droprate = itemNumber.droprate or self:GetDropRate(dataSource[dataID][tablenum], itemNumber.lootGroup)
		itemButton.extraInfo = itemNumber.extraInfo or nil
		itemButton.quest = itemNumber.quest or nil
		itemButton.item = itemNumber

		if itemNumber.lootTable then
			itemButton.sourcePage = itemNumber.lootTable
		else
			itemButton.sourcePage = nil
		end

		if itemNumber[self.Difficulties.DIF_SEARCH] then
			itemButton.difficulty = itemNumber[self.Difficulties.DIF_SEARCH]
		else
			itemButton.difficulty = self.ItemindexID
		end

		itemButton:Show()
	end

	-- Create the loottable
	if (dataID == "SearchResult") or (dataSource_backup == "AtlasLoot_CurrentWishList") or dataSource[dataID][tablenum] then
	local displayNumber = 0
		--Iterate through each item object and set its properties
		for i = 1, 30, 1 do
			--Set new button number if a item has been hidden
			local newPosition = i - displayNumber
			if i == 16 then
				displayNumber = 0
				newPosition = i
			end
			--Check for a valid object (that it exists, and that it has a name
			isValid, toShow, itemID, recipeID = getProperItemConditionals(dataSource[dataID][tablenum][i])
			if isValid and toShow then
				setupButton(itemID or recipeID, i, newPosition, dataSource, dataID, tablenum, dataSource_backup)
			elseif isValid then
				displayNumber = displayNumber + 1
			end
		end

-----------------------------------------------------------------------------------------------------------------------------

		--Store data about the state of the items frame to allow minor tweaks or a recall of the current loot page
		self.itemframe.refresh = {dataID, dataSource_backup, tablenum}

		if dataID ~= "FilterList" then
			self.itemframe.refreshFilter = {dataID, dataSource_backup, tablenum}
		end

		if dataID ~= "FilterList"  and dataSource[dataID].Back ~= true then
			self.itemframe.refreshOri = {dataID, dataSource_backup, tablenum}
		end

		if dataID == "SearchResult" then
			self.itemframe.refreshSearch = {dataID, dataSource_backup, tablenum}
		elseif not self.mainUI.backbutton:IsVisible() then
			self.itemframe.refreshSearch = nil
		end

		if dataSource_backup ~= "AtlasLoot_OnDemand" and dataID ~= "SearchResult" and dataSource_backup ~= "AtlasLoot_CurrentWishList" and dataID ~= "FilterList"  and
		dataSource[dataID].Back ~= true and dataID ~= "EmptyTable" and not dataSource[dataID].vanity then
			self.db.profile.LastBoss[self.Expac] = {dataID, dataSource_backup, tablenum, self.lastModule, self.currentTable, self.moduleName}
			self.db.profile.savedState[self.currentTable] = {dataID, dataSource_backup, tablenum, self.lastModule, self.currentTable, self.moduleName}
		end

		-- Checks dataID with submenus to stop filter button loading on certain tables
		local function filterCheck(find)
			local mtype = { "Reputations", "WorldEvents", "PVP", "Collections", "Vanity"}
			for _, t in pairs (mtype) do
				if AtlasLoot_SubMenus[t..self.Expac] then
					for _, v in ipairs (AtlasLoot_SubMenus[t..self.Expac]) do
						if v[3] and type(v[3]) == "table" then
							for _, sub in ipairs(v[3]) do
								if find == sub[2] then
									return true
								end
							end
						elseif find == v[2] then
							return true
						end	
					end
				end
			end
		end

		-- Show the Filter Check-Box
		if filterCheck(dataID) ~= true or dataSource[dataID].vanity or dataSource[dataID].filter then
			self.mainUI.filterButton:Show()
		end

		--Hide navigation buttons by default, only show what we need
		self:ToggleNavigationButtonsVisibility()
		self.mainUI.nextbutton:SetParent(self.itemframe)
		self.mainUI.prevbutton:SetParent(self.itemframe)
		self.mainUI.nextbutton:ClearAllPoints()
		self.mainUI.nextbutton:SetPoint("BOTTOMRIGHT", self.itemframe, "BOTTOMRIGHT",-5,5)
		self.mainUI.prevbutton:ClearAllPoints()
		self.mainUI.prevbutton:SetPoint("BOTTOMLEFT", self.itemframe, "BOTTOMLEFT",5,5)
		self:ToogleWishListButtons()
		self.mainUI.learnSpellbtn:Hide()

		-- Show Wishlist buttons when a wishlist in showing
		if dataSource_backup == "AtlasLoot_CurrentWishList" then
			self:ToogleWishListButtons(true)
			if dataSource[dataID].ListType == "Shared" then
				AtlasLootItemsFrame_Wishlist_Swap:SetText("Own")
			elseif dataSource[dataID].ListType == "Own" then
				AtlasLootItemsFrame_Wishlist_Swap:SetText("Shared")
			end
		end

		if dataSource[dataID].vanity then
			self.mainUI.learnSpellbtn:Show()
		end

		local tablebase = {dataID, dataSource_backup}
		if dataID == "FilterList" then
			tablebase = {self.itemframe.refreshOri[1],self.itemframe.refreshOri[2]}
			tablenum = self.itemframe.refreshOri[3]
		end

		if self.itemframe.refresh and self.itemframe.refreshOri and tablenum ~= #_G[self.itemframe.refreshOri[2]][self.itemframe.refreshOri[1]] and dataSource_backup ~= "AtlasLoot_TokenData" and dataID ~= "SearchResult" or tablenum ~= #_G[self.itemframe.refresh[2]][self.itemframe.refresh[1]] and dataID == "SearchResult" then
			self.mainUI.nextbutton:Show()
			self.mainUI.nextbutton.tablenum = tablenum + 1
			self.mainUI.nextbutton.tablebase = tablebase
		end

		if tablenum ~= 1 and dataSource_backup ~= "AtlasLoot_TokenData" then
			self.mainUI.prevbutton:Show()
			self.mainUI.prevbutton.tablenum = tablenum - 1
			self.mainUI.prevbutton.tablebase = tablebase
		end

		if dataSource[dataID].Back or self.backEnabled then
			self.mainUI.backbutton:Show()
		elseif dataID ~= "FilterList" then
			self.itemframe.refreshBack = {dataID, dataSource_backup, tablenum}
		end
	end

	--Anchor the item frame where it is supposed to be
	if self.filterEnable and dataID ~= "FilterList" then
		self:HideFilteredItems()
	end
end

--[[
AtlasLoot:SetFavorites(number)
sets the favorite when alt right clicked
]]
function AtlasLoot:SetFavorites(num)
    if self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" then
        AtlasLootCharDB.QuickLooks[num]={AtlasLoot_CurrentWishList.Show.ListType, "AtlasLootWishList", AtlasLoot_CurrentWishList.Show.ListNum, self.lastModule, self.currentTable, _G["AtlasLootWishList"][AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum].Name}
    else
        AtlasLootCharDB.QuickLooks[num]={self.itemframe.refreshOri[1], self.itemframe.refreshOri[2], self.itemframe.refreshOri[3], self.lastModule, self.currentTable, _G[self.itemframe.refreshOri[2]][self.itemframe.refreshOri[1]][self.itemframe.refreshOri[3]].Name}
    end
end

--Called when 'Back'Button is pressed and calls up the appropriate loot page
function AtlasLoot:BackButton_OnClick()
	self.backEnabled = false
	if self.itemframe.refreshSearch then
		self:ShowItemsFrame(self.itemframe.refreshSearch[1], self.itemframe.refreshSearch[2], self.itemframe.refreshSearch[3])
	else
		self:ShowItemsFrame(self.itemframe.refreshBack[1], self.itemframe.refreshBack[2], self.itemframe.refreshBack[3])
	end
end

--[[
AtlasLoot:NavButton_OnClick:
Called when <-, -> are pressed and calls up the appropriate loot page
]]
function AtlasLoot:NavButton_OnClick(btn)
	if self.mainUI.mapFrame:IsVisible() then
		self:MapSelect(btn.mapID, btn.mapNum)
	else
		local tablenum, dataID, dataSource = btn.tablenum, btn.tablebase[1], btn.tablebase[2]
		if #_G[dataSource][dataID] > 26 then
			local min, max = AtlasLootDefaultFrameSubTableScrollScrollBar:GetMinMaxValues()
			AtlasLootDefaultFrameSubTableScrollScrollBar:SetValue(tablenum * (max / #_G[dataSource][dataID]))
		end
		self:ShowItemsFrame(dataID, dataSource, tablenum)
	end
end