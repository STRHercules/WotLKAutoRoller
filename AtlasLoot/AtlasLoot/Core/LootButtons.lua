local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

local playerName = UnitName("player")
local playerFaction = UnitFactionGroup("player")

--Set Tooltip for extra crafting data
function AtlasLoot:SetCraftingTooltip(data)
    local craftingData = data.craftingData
    if not craftingData then return end
    --extra information on where to find the recipe
    if (self.selectedProfile.recipeExtraInfoSwitch and IsControlKeyDown()) or (not self.selectedProfile.recipeExtraInfoSwitch) then
        GameTooltip:AddLine(" ")
        for _,v in pairs(craftingData) do
            local line1 = v[1]
            local line2 = v[2]
            if v.fac  then line1 = v.fac[1]..line1 end
            if v.cords and v.cords[1] ~= 0 and v.cords[2] ~= 0 then
                if line2 then
                    line2 = self.Colors.WHITE..line2..self.Colors.WHITE.." ("..self.Colors.GOLD..v.cords[1]..self.Colors.WHITE..", "..self.Colors.GOLD..v.cords[2]..self.Colors.WHITE..")"
                else
                    line2 = self.Colors.WHITE.." ("..self.Colors.GOLD..v.cords[1]..self.Colors.WHITE..", "..self.Colors.GOLD..v.cords[2]..self.Colors.WHITE..")"
                end
            end
            GameTooltip:AddDoubleLine(line1, line2)
        end
    else
        GameTooltip:AddLine(" ")
        GameTooltip:AddLine(self.Colors.WHITE..AL["Hold CTRL for source"])
    end
end

--Set quest tooltip info
function AtlasLoot:SetQuestTooltip(data)
    if not data.quest then return end
    for _,v in ipairs(data.quest) do
        local quest = AtlasLoot_CraftingData["QuestList"][v]
        local text = data.quest.text or ""
        GameTooltip:AddDoubleLine(quest[1], self.Colors.WHITE..text)
        GameTooltip:AddDoubleLine(quest[5][1]..quest[2], self.Colors.WHITE.." ("..self.Colors.GOLD..quest[3]..self.Colors.WHITE..", "..self.Colors.GOLD..quest[4]..self.Colors.WHITE..")")
    end
end

--Set droprate tooltip
function AtlasLoot:SetDroprateTooltip(data)
    if not data.droprate then return end
    if type(data.droprate) == "table" then
        if not data.droprate[self.ItemindexID] then return end
        local dropIndex = self.ItemindexID
        if self.ItemindexID == 6 then
            dropIndex = 4
        elseif self.ItemindexID == 5 then
            dropIndex = 5
        end
        if data.droprate[dropIndex] then
            GameTooltip:AddLine(AL["Drop Rate: "]..data.droprate[dropIndex], 1, 1, 0)
        end
    else
        GameTooltip:AddLine(AL["Drop Rate: "]..data.droprate, 1, 1, 0)
    end
end

--Set extra info tooltip
function AtlasLoot:SetExtraTooltip(data)
    if not data.extraInfo then return end
    GameTooltip:AddLine(AL["Extra Info: "]..data.extraInfo, 1, 1, 0)
end
--------------------------------------------------------------------------------
-- Item OnEnter
-- Called when a loot item is moused over
--------------------------------------------------------------------------------
function AtlasLoot:ItemOnEnter(data)
    GameTooltip:ClearLines()
    local spellID = data.spellID
    local itemID = data.itemID
    if itemID or spellID then
        if not spellID then
            --Default game tooltips
            if itemID then
                if GetItemInfo(itemID) then
                    GameTooltip:SetOwner(data, "ANCHOR_RIGHT", -(data:GetWidth() / 2), 24)
                    GameTooltip:SetHyperlink("item:"..itemID..":0:0:0")
                    self:SetQuestTooltip(data)
                    self:SetExtraTooltip(data)
                    self:SetDroprateTooltip(data)
                    self:SetCraftingTooltip(data)
                    GameTooltip:Show()
                    if self.selectedProfile.EquipCompare or IsShiftKeyDown() then
                        self:ShowCompareItem(data) --- CALL MISSING METHOD TO SHOW 2 TOOLTIPS (Item Compare)
                    end
                end
            end
        else
            GameTooltip:SetOwner(data, "ANCHOR_RIGHT", -(data:GetWidth() / 2), 24)
            GameTooltip:ClearLines()
            GameTooltip:SetHyperlink(self:GetEnchantLink(spellID))

            self:SetCraftingTooltip(data)

            local showOwn
            --adds tooltip showing if you know a recipe and it is one of your chars trade skills
            if data.hasTrade then
                if CA_IsSpellKnown(spellID) then
                    showOwn = "|cff1EFF00You know this Recipe"
                else
                    showOwn = " |cffFF3F40You don't know this Recipe"
                end
            end
            --gets a list of characters with this recipe known
            local text = self:GetKnownRecipes(spellID)
            local hasSpace
            if (text or showOwn) and not hasSpace then
                GameTooltip:AddLine(" ")
                hasSpace = true
            end
            if showOwn then GameTooltip:AddLine(showOwn) end
            if text then
                text = self.Colors.BLUE.."Recipe known by: "..self.Colors.WHITE..text
                GameTooltip:AddLine(text)
            end
            GameTooltip:Show()
            if self.selectedProfile.EquipCompare or IsShiftKeyDown() then
                self:ShowCompareItem(data) --- CALL MISSING METHOD TO SHOW 2 TOOLTIPS (Item Compare)
            end
        end
    end
end

--------------------------------------------------------------------------------
-- Item OnLeave
-- Called when the mouse cursor leaves a loot item
--------------------------------------------------------------------------------
function AtlasLoot:ItemOnLeave(frame)
    --Hide the necessary tooltips
    if( self.selectedProfile.LootlinkTT ) then
        GameTooltip:Hide()
    elseif( self.selectedProfile.ItemSyncTT ) then
        if(GameTooltip:IsVisible()) then
            GameTooltip:Hide()
        end
    else
		GameTooltip:Hide()
    end
    if ( ShoppingTooltip2:IsVisible() or ShoppingTooltip1.IsVisible) then
       ShoppingTooltip2:Hide()
       ShoppingTooltip1:Hide()
    end
    if self.mainUI.itemPopupframe and self.mainUI.itemPopupframe:IsVisible() then self.mainUI.itemPopupframe:Hide() end
end

--------------------------------------------------------------------------------
-- Item OnClick
-- Called when a loot item is clicked on
--------------------------------------------------------------------------------
function AtlasLoot:ItemOnClick(item, button)
    self.Dewdrop:Close()
    local spellID = item.spellID
    local itemID = item.itemID
    local dataID, dataSource, dataPage

    if not spellID and itemID then
        local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemCount, itemEquipLoc, itemTexture = self:GetItemInfo(itemID)
        --If shift-clicked, link in the chat window
        if button == "RightButton" and self.itemUnlock then
            --move wishlist item down
            self:MoveWishlistItem("Down",item.number)
        elseif IsAltKeyDown() and button == "LeftButton" and self.itemUnlock then
            --add custom wishlist header
            StaticPopup_Show("ATLASLOOT_ADD_CUSTOMHEADER")
            StaticPopupDialogs.ATLASLOOT_ADD_CUSTOMHEADER.num = item.number
        elseif button == "LeftButton" and self.itemUnlock then
            --move wishlist item up
            self:MoveWishlistItem("Up",item.number)
        elseif button == "RightButton" and itemID and IsAltKeyDown() and self.itemframe.refresh[2] ~= "AtlasLoot_CurrentWishList" then
            local wList = AtlasLootWishList.Options[playerName].DefaultWishList
            --add to defauly wishlist
            self:WishListAddDropClick(wList[1], wList[3], item)
        elseif button == "RightButton" and itemID then
            --item context menu
            if self.mainUI.itemPopupframe and self.mainUI.itemPopupframe:IsVisible() then
                self:ItemContextMenu(item, "item")

            else
                self:ItemContextMenu(item, "item")
            end
        elseif IsShiftKeyDown() and itemName then
            --insert to chat link
            ChatEdit_InsertLink(itemLink)
        elseif ChatFrame1EditBox and ChatFrame1EditBox:IsVisible() and IsShiftKeyDown() then
            ChatFrame1EditBox:Insert(itemName)  -- <-- this line just inserts plain text, does not need any adjustment
            --If control-clicked, use the dressing room
        elseif IsControlKeyDown() and itemName then
            --view item in dressing room
            DressUpItemLink(itemLink)
        elseif IsAltKeyDown() then
            if self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" then
                self:DeleteFromWishList(item.number)
            end
        elseif item.sourcePage and item.sourcePage[2] == "Source" then
            dataID, dataSource, dataPage = unpack(item.sourcePage[1])
            if dataID and dataID ~= "" and dataSource then
                self.backEnabled = true
                self:ShowItemsFrame(dataID, dataSource, dataPage or 1)
            end
        elseif item.sourcePage and item.sourcePage[2] == "Token" then
            --Create token table if there isnt one
            if AtlasLoot_TokenData[item.sourcePage[1]] == nil then
                self:CreateToken(item.sourcePage[1])
            end
            dataID, dataSource, dataPage = item.sourcePage[1], "AtlasLoot_TokenData", 1
            --Show token table
            self:ShowItemsFrame(dataID, dataSource, dataPage or 1)
        elseif button == "LeftButton" and itemID and AtlasLoot_ExtraData[itemID] then
            self:PopoupItemFrame(item, _G["AtlasLoot_ExtraData"][itemID] )
            self.mainUI.itemPopupframe:Show()
        elseif button == "LeftButton" and item.contentsPreview then
            self:PopoupItemFrame(item, item.contentsPreview )
            self.mainUI.itemPopupframe:Show()
        end
    else
        local recipeData = self:GetRecipeData(spellID, "spell")
        if IsShiftKeyDown() then
            ChatEdit_InsertLink(self:GetEnchantLink(spellID))
        elseif button == "RightButton" then
            self:ItemContextMenu(item, "spell", recipeData)
        elseif IsAltKeyDown() then
            if self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" then
                self:DeleteFromWishList(item.number)
            end
        elseif(IsControlKeyDown()) then
            DressUpItemLink("item:"..item.itemID..":0:0:0:0:0:0:0")
        elseif item.sourcePage and item.sourcePage[2] == "Source" then
            dataID, dataSource, dataPage = unpack(item.sourcePage[1])
            if dataID and dataID ~= "" and dataSource then
                self.backEnabled = true
                self:ShowItemsFrame(dataID, dataSource, dataPage or 1)
            end       
        elseif item.sourcePage and item.sourcePage[2] == "Token" then
            --Create token table if there isnt one
            if AtlasLoot_TokenData[item.sourcePage[1]] == nil then
                self:CreateToken(item.sourcePage[1])
            end
            dataID, dataSource, dataPage = item.sourcePage[1], "AtlasLoot_TokenData", 1
            --Show token table
            self:ShowItemsFrame(dataID, dataSource, dataPage or 1)
        elseif button == "LeftButton" and recipeData then
            self:PopoupItemFrame(item, recipeData)
            self.mainUI.itemPopupframe:Show()
        end
    end
end

-------
-- Missing GameToolTip method
-- Enables item comparing. I've ripped self method directly from GameTooltip.lua and modified to work with GameTooltip /siena
-------
function AtlasLoot:ShowCompareItem(data)
   local link
   if data.spellID then
      link = Item:CreateFromID(data.itemID):GetLink()
   else
      _,link = GameTooltip:GetItem()
   end

   if ( not link ) then
      return
   end

   ShoppingTooltip1:SetOwner(GameTooltip, "ANCHOR_NONE")
   ShoppingTooltip2:SetOwner(GameTooltip, "ANCHOR_NONE")
   ShoppingTooltip3:SetOwner(GameTooltip, "ANCHOR_NONE")

   local item1 = nil
   local item2 = nil
   local item3 = nil
   if ( ShoppingTooltip1:SetHyperlinkCompareItem(link, 1, 1, GameTooltip) ) then
      item1 = true
   end
   if ( ShoppingTooltip2:SetHyperlinkCompareItem(link, 2, 1, GameTooltip) ) then
      item2 = true
   end
   if ( ShoppingTooltip3:SetHyperlinkCompareItem(link, 3, 1, GameTooltip) ) then
      item3 = true
   end
   if not item1 and not item2 and not item3 then 
        return 
    end

   if item3 then
        if not item1 then
            item1, item3 = true, nil
            ShoppingTooltip1:SetHyperlinkCompareItem(link, 3, 1, GameTooltip)
        elseif not item2 then
            item2, item3 = true, nil
            ShoppingTooltip2:SetHyperlinkCompareItem(link, 3, 1, GameTooltip)
        end
    end
    if item2 and not item1 then
        item1, item2 = true, nil
        ShoppingTooltip1:SetHyperlinkCompareItem(link, 2, 1, GameTooltip)
    end

   local left, right, anchor1, anchor2 = GameTooltip:GetLeft(), GameTooltip:GetRight(), "TOPLEFT", "TOPRIGHT"
   if not left or not right then return end
	if (GetScreenWidth() - right) < left then anchor1, anchor2 = anchor2, anchor1 end

    if item1 then
		ShoppingTooltip1:ClearAllPoints()
		ShoppingTooltip1:SetPoint(anchor1, GameTooltip, anchor2, 0, -10)
		ShoppingTooltip1:Show()

		if item2 then
			ShoppingTooltip2:ClearAllPoints()
			ShoppingTooltip2:SetPoint(anchor1, ShoppingTooltip1, anchor2)
			ShoppingTooltip2:Show()
		end

        if item3 then
			ShoppingTooltip3:ClearAllPoints()
			ShoppingTooltip3:SetPoint(anchor1, ShoppingTooltip2, anchor2)
			ShoppingTooltip3:Show()
		end
	end

end



local zoneList
--Creates a zone list for use in adding vendor and mob drop waypoints to tomtom
function AtlasLoot:AddWayPoint(waypoint)
    if not zoneList then
    zoneList = {}
        for continentN , _ in ipairs{GetMapContinents()} do
            for zoneNum, zoneName in ipairs{GetMapZones(continentN)} do
                zoneList[zoneName:lower()] = {continentN, zoneNum, zoneName:lower()}
            end
        end
    end
    local zoneName = waypoint[1]:lower()
    --Adds a waypoint to tomtom
    if zoneList[zoneName] then
        TomTom:AddZWaypoint(zoneList[zoneName][1], zoneList[zoneName][2], tonumber(waypoint[2]), tonumber(waypoint[3]), waypoint[4])
    end
end

function AtlasLoot:ItemContextMenu(data, Type, recipeData)
    local craftingData = data.craftingData
    local itemID = data.itemID
    local linkID = itemID
    if Type == "spell" then
        linkID = data.spellID
    end
    if self.Dewdrop:IsOpen(data) then self.Dewdrop:Close() return end
    self.Dewdrop:Register(data,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
        'children', function(level, value)
            if level == 1 then
                self.Dewdrop:AddLine(
                    'text', AL["Links"],
                    'notCheckable', true,
                    'isTitle', true,
                    'textHeight', 13,
                    'textWidth', 13
                )
                self.Dewdrop:AddLine(
                    'text', self.Colors.ORANGE..AL["Open AscensionDB To Entry"],
                    'func', function() self:OpenDBURL(linkID,Type) end,
                    'textHeight', self.selectedProfile.txtSize,
                    'textWidth', self.selectedProfile.txtSize,
                    'notCheckable', true,
                    'closeWhenClicked', true
                )
                self.Dewdrop:AddLine(
                        "text", self.Colors.GREEN..AL["Guild"],
                        "func", function() self:Chatlink(linkID,"GUILD",Type) end,
                        'closeWhenClicked', true,
                        'textHeight', self.selectedProfile.txtSize,
                        'textWidth', self.selectedProfile.txtSize,
                        "notCheckable", true
                    )
                    self.Dewdrop:AddLine(
                        "text", self.Colors.LIGHTBLUE..AL["Party"],
                        "func", function() self:Chatlink(linkID,"PARTY",Type) end,
                        'closeWhenClicked', true,
                        'textHeight', self.selectedProfile.txtSize,
                        'textWidth', self.selectedProfile.txtSize,
                        "notCheckable", true
                    )
                    self.Dewdrop:AddLine(
                        "text", self.Colors.ORANGE2..AL["Raid"],
                        "func", function() self:Chatlink(linkID,"RAID",Type) end,
                        'closeWhenClicked', true,
                        'textHeight', self.selectedProfile.txtSize,
                        'textWidth', self.selectedProfile.txtSize,
                        "notCheckable", true
                    )
                    if AuctionFrame and AuctionFrame:IsVisible() then
                        self:AddDividerLine(35)
                        self.Dewdrop:AddLine(
                        'text', AL["Auction House Search"],
                        'notCheckable', true,
                        'isTitle', true,
                        'textHeight', 13,
                        'textWidth', 13
                        )
                        if recipeData then
                            self.Dewdrop:AddLine(
                                "text", AL["Created Item"],
                                "func", function() self:SearchAuctionHouse(self:GetItemInfo(recipeData[1][1])) end,
                                'closeWhenClicked', true,
                                'textHeight', self.selectedProfile.txtSize,
                                'textWidth', self.selectedProfile.txtSize,
                                "notCheckable", true
                            )
                            if recipeData.Recipe then
                                self.Dewdrop:AddLine(
                                    "text", AL["Recipe"],
                                    "func", function() self:SearchAuctionHouse(self:GetItemInfo(recipeData.Recipe)) end,
                                    'closeWhenClicked', true,
                                    'textHeight', self.selectedProfile.txtSize,
                                    'textWidth', self.selectedProfile.txtSize,
                                    "notCheckable", true
                                )
                            end
                        else
                            self.Dewdrop:AddLine(
                                "text", AL["Item"],
                                "func", function() self:SearchAuctionHouse(self:GetItemInfo(itemID)) end,
                                'closeWhenClicked', true,
                                'textHeight', self.selectedProfile.txtSize,
                                'textWidth', self.selectedProfile.txtSize,
                                "notCheckable", true
                            ) 
                        end
                    end
                    if not self.mainUI.itemPopupframe or self.mainUI.itemPopupframe and not self.mainUI.itemPopupframe:IsVisible()  then
                        self:AddDividerLine(35)
                        self.Dewdrop:AddLine(
                        'text', AL["Wishlists"],
                        'notCheckable', true,
                        'isTitle', true,
                        'textHeight', 13,
                        'textWidth', 13
                        )
                        if self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" then
                            self.Dewdrop:AddLine(
                                "text", AL["Delete"],
                                "func", function() self:DeleteFromWishList(data.number) end,
                                'closeWhenClicked', true,
                                'textHeight', self.selectedProfile.txtSize,
                                'textWidth', self.selectedProfile.txtSize,
                                "notCheckable", true
                            )
                        else
                            local wList = AtlasLootWishList.Options[playerName].DefaultWishList
                            self.Dewdrop:AddLine(
                                "text", AL["Add To Default"],
                                "func", function() self:WishListAddDropClick(wList[1], wList[3], data) end,
                                'closeWhenClicked', true,
                                'textHeight', self.selectedProfile.txtSize,
                                'textWidth', self.selectedProfile.txtSize,
                                "notCheckable", true
                            )
                            self.Dewdrop:AddLine(
                                "text", AL["Own Wishlists"],
                                "tooltipTitle", AL["Own Wishlists"],
                                "value", "OwnWishlists",
                                "hasArrow", true,
                                'textHeight', self.selectedProfile.txtSize,
                                'textWidth', self.selectedProfile.txtSize,
                                "notCheckable", true
                            )
                            self.Dewdrop:AddLine(
                                "text", AL["Shared Wishlists"],
                                "tooltipTitle", AL["Shared Wishlists"],
                                "value", "SharedWishlists",
                                "hasArrow", true,
                                'textHeight', self.selectedProfile.txtSize,
                                'textWidth', self.selectedProfile.txtSize,
                                "notCheckable", true
                            )
                            self.Dewdrop:AddLine(
                                "text", AL["Add Wishlist"],
                                "func", function() self:AddWishList() end,
                                'closeWhenClicked', true,
                                'textHeight', self.selectedProfile.txtSize,
                                'textWidth', self.selectedProfile.txtSize,
                                "notCheckable", true
                            )
                        end
                        if C_VanityCollection.IsCollectionItemOwned(itemID) then
                            self:AddDividerLine(35)
                            self.Dewdrop:AddLine(
                            'text', AL["Vanity Collection"],
                            'notCheckable', true,
                            'isTitle', true,
                            'textHeight', 13,
                            'textWidth', 13
                            )
                            self.Dewdrop:AddLine(
                                "text", AL["Learn/Recive Vanity Item"],
                                "func", function() RequestDeliverVanityCollectionItem(itemID) end,
                                'closeWhenClicked', true,
                                'textHeight', self.selectedProfile.txtSize,
                                'textWidth', self.selectedProfile.txtSize,
                                "notCheckable", true
                            )
                        end
                        if self.TomTomLoaded and data.spellID then
                            if not self.db.profile.waypointList then self.db.profile.waypointList = {} end
                            local wayPoint
                            if (craftingData and self.selectedProfile.recipeExtraInfoSwitch and IsControlKeyDown()) or (craftingData and not self.selectedProfile.recipeExtraInfoSwitch) then
                                GameTooltip:AddLine(" ")
                                for _,v in pairs(craftingData) do
                                    if v.cords and tonumber(v.cords[1]) ~= 0 and tonumber(v.cords[2]) ~= 0 then
                                        local line1 = v[1]
                                        local line2 = v[2]
                                        if v.fac and (v.fac[2] == playerFaction or v.fac[2] == "Netural") then line1 = v.fac[1]..line1 end
                                        if not wayPoint then wayPoint = {} end
                                        tinsert(wayPoint, { line2, tonumber(v.cords[1]), tonumber(v.cords[2]), line1})
                                    end
                                end
                            end
                            self:AddDividerLine(35)
                            self.Dewdrop:AddLine(
                            'text', AL["Recipe Waypoints"],
                            'notCheckable', true,
                            'isTitle', true,
                            'textHeight', 13,
                            'textWidth', 13
                            )
                            if craftingData and wayPoint then
                                self.Dewdrop:AddLine(
                                "text", "Add pin to map",
                                "func", function()
                                    for _,v in pairs(wayPoint) do
                                        self:AddWayPoint(v)
                                    end
                                end,
                                'closeWhenClicked', true,
                                'textHeight', self.selectedProfile.txtSize,
                                'textWidth', self.selectedProfile.txtSize,
                                "notCheckable", true
                                )

                            end
                            self.Dewdrop:AddLine(
                                "text", "Add pin to map for every missing recipe",
                                "func", function()
                                    self:SetRecipeMapPins()
                                end,
                                'closeWhenClicked', true,
                                'textHeight', self.selectedProfile.txtSize,
                                'textWidth', self.selectedProfile.txtSize,
                                "notCheckable", true
                            )
                        end
                    end
            elseif level == 2 then
                if value == "OwnWishlists" then
                    for i,v in pairs(AtlasLootWishList["Own"]) do
                        if type(v) == "table" then
                            self.Dewdrop:AddLine(
                                "text", v.Name,
                                "tooltipTitle", v.Name,
                                'closeWhenClicked', true,
                                'textHeight', self.selectedProfile.txtSize,
                                'textWidth', self.selectedProfile.txtSize,
                                "func", function() self:WishListAddDropClick("Own", i, data) end,
                                "notCheckable", true
                            )
                        end
                    end
                elseif value == "SharedWishlists" then
                    for i,v in pairs(AtlasLootWishList["Shared"]) do
                        if type(v) == "table" then
                            self.Dewdrop:AddLine(
                                "text", v.Name,
                                "tooltipTitle", v.Name,
                                'closeWhenClicked', true,
                                'textHeight', self.selectedProfile.txtSize,
                                'textWidth', self.selectedProfile.txtSize,
                                "func", function() self:WishListAddDropClick("Shared", i, data) end,
                                "notCheckable", true
                            )
                        end
                    end
                end
            end
            --Close button
            self:CloseDewDrop(true,35)
        end,
        'dontHook', true
    )
    self.Dewdrop:Open(data)
end

