local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local INDENT = "    "

function AtlasLoot:InitializeUI()
    --Main AtlasLoot Frame
    self.mainUI = CreateFrame("FRAME", "AtlasLootDefaultFrame", UIParent, "PortraitFrameTemplate")
    self.mainUI:SetPoint("CENTER",0,0)
    self.mainUI:SetSize(1105,640)
    self.mainUI:EnableMouse(true)
    self.mainUI:SetMovable(true)
    self.mainUI.portrait:SetPortraitTexture("Interface\\Icons\\INV_Box_01")
    self.mainUI:SetFrameStrata("HIGH")
    self.mainUI.TitleText:SetText(GetAddOnMetadata("AtlasLoot", "Title"))
    self.mainUI:RegisterForDrag("LeftButton")
    self.mainUI:EnableKeyboard(true)
    self.mainUI:SetToplevel(true)
    self.mainUI:Hide()
    self.mainUI:SetScript("OnShow", function()
        self:OnShow()
    end)
    self.mainUI:SetScript("OnMouseDown", function()
        self.Dewdrop:Close()
        self.mainUI.searchbox:ClearFocus()
    end)
    self.mainUI:SetScript("OnHide", function()
        self.Dewdrop:Close()
        self:ItemsLoading("reset")
    end)
    self.mainUI:SetScript("OnDragStart", function(frame) frame:StartMoving() end)
    self.mainUI:SetScript("OnDragStop", function(frame) frame:StopMovingOrSizing()end)
    self:UpdateLootBrowserScale()

    --Add the loot browser to the special frames tables to enable closing wih the ESC key
	tinsert(UISpecialFrames, "AtlasLootDefaultFrame")

    --Loot Background
    self.mainUI.lootBackground = CreateFrame("Frame", "AtlasLoot_LootBackground", self.mainUI, "AtlasLootFrameTemplate")
    self.mainUI.lootBackground:SetSize(770,515)
    self.mainUI.lootBackground:SetPoint("TOPLEFT", self.mainUI, "TOPLEFT",30,-86)
    self.mainUI.lootBackground:EnableMouse()
    self.mainUI.lootBackground:EnableMouseWheel()
    self.mainUI.lootBackground:SetScript("OnMouseDown",function(button, buttonClick)
        if self.mainUI.backbutton:IsVisible() and buttonClick == "RightButton" then
            self:BackButton_OnClick()
        elseif self.searchPanel:IsVisible() and buttonClick == "RightButton" then
            self:AdvancedSearchClose()
        end
        self.Dewdrop:Close()
        self.mainUI.searchbox:ClearFocus()
    end)
    self.mainUI.lootBackground:SetScript("OnMouseWheel", function(frame,delta)
            if self.mainUI.nextbutton:IsVisible() and delta == -1 then
                self.mainUI.nextbutton:Click()
            end
            if self.mainUI.prevbutton:IsVisible() and delta == 1 then
                self.mainUI.prevbutton:Click()
            end
    end)
    self.mainUI.lootBackground:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    self.mainUI.lootBackground.Back = self.mainUI.lootBackground:CreateTexture("AtlasLootItemsFrame_LootBack", "BACKGROUND")
    self.mainUI.lootBackground.Back:SetAllPoints()
    self.mainUI.lootBackground.Back:SetSize(730,475)
    self.mainUI.lootBackground.Back:SetPoint("CENTER",self.mainUI.lootBackground)

----------------------------------- Item Loot Panel -------------------------------------------
    self.itemframe = CreateFrame("Frame", nil, self.mainUI.lootBackground)
    self.itemframe:SetSize(765,510)
    self.itemframe:SetPoint("TOPLEFT", self.mainUI.lootBackground, "TOPLEFT", 2, -2)
    self.itemframe.Label = self.itemframe:CreateFontString(nil,"OVERLAY","GameFontHighlightLarge")
    self.itemframe.Label:SetPoint("TOP", self.itemframe, "TOP")
    self.itemframe.Label:SetSize(512,30)
    self.itemframe.Label:SetJustifyH("CENTER")

    self.itemframe.buttons = {}
    for num = 1, 30 do
            self.itemframe.buttons[num] = CreateFrame("Button", "AtlasLootItem_"..num, self.itemframe, "AtlasLootItemTemplate")
            local button = self.itemframe.buttons[num]
            button:SetID(num)
            button.number = num
            button:ClearAllPoints()
            if num == 1 then
                button:SetPoint("TOP", self.itemframe, "TOP",-210,-35)
            elseif num == 16 then
                button:SetPoint("TOP", self.itemframe, "TOP",150,-35)
            else
                button:SetPoint("TOPLEFT", self.itemframe.buttons[num - 1], "BOTTOMLEFT")
            end
    end

    --------------------------------------- Navagation buttons ---------------------------------------
    self.mainUI.nextbutton = CreateFrame("Button", "nil", self.itemframe)
    self.mainUI.nextbutton:SetPoint("BOTTOMRIGHT", self.itemframe, -5, 5)
    self.mainUI.nextbutton:SetSize(32,32)
    self.mainUI.nextbutton.texture = self.mainUI.nextbutton:CreateTexture(nil, "BACKGROUND")
    self.mainUI.nextbutton.texture:SetTexture("Interface\\Buttons\\UI-PageButton-Background")
    self.mainUI.nextbutton.texture:SetSize(32,32)
    self.mainUI.nextbutton.texture:SetPoint("CENTER",0,0)
    self.mainUI.nextbutton:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up")
    self.mainUI.nextbutton:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Down")
    self.mainUI.nextbutton:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Disabled")
    self.mainUI.nextbutton:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
    self.mainUI.nextbutton:SetScript("OnClick", function(button) self:NavButton_OnClick(button) end)

    -- Previous button
    self.mainUI.prevbutton = CreateFrame("Button", nil, self.itemframe)
    self.mainUI.prevbutton:SetPoint("BOTTOMLEFT", self.itemframe, 5, 5)
    self.mainUI.prevbutton:SetSize(32,32)
    self.mainUI.prevbutton.texture = self.mainUI.prevbutton:CreateTexture(nil, "BACKGROUND")
    self.mainUI.prevbutton.texture:SetTexture("Interface\\Buttons\\UI-PageButton-Background")
    self.mainUI.prevbutton.texture:SetSize(32,32)
    self.mainUI.prevbutton.texture:SetPoint("CENTER",0,0)
    self.mainUI.prevbutton:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up")
    self.mainUI.prevbutton:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Down")
    self.mainUI.prevbutton:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Disabled")
    self.mainUI.prevbutton:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight", "ADD")
    self.mainUI.prevbutton:SetScript("OnClick", function(button) self:NavButton_OnClick(button) end)

    -- Back button
    self.mainUI.backbutton = CreateFrame("Button", nil, self.itemframe, "UIPanelButtonTemplate")
    self.mainUI.backbutton:SetPoint("BOTTOM", self.itemframe, "BOTTOM",0,5)
    self.mainUI.backbutton:SetText(AL["Back"])
    self.mainUI.backbutton:SetScript("OnClick", function(button) self:BackButton_OnClick() end)

    -- Toggle the visibility of the next/prev and back buttons true to show
    function self:ToggleNavigationButtonsVisibility(show)
        if show then
            self.mainUI.nextbutton:Show()
            self.mainUI.prevbutton:Show()
            self.mainUI.backbutton:Show()
        else
            self.mainUI.nextbutton:Hide()
            self.mainUI.prevbutton:Hide()
            self.mainUI.backbutton:Hide()
        end
    end
    self:ToggleNavigationButtonsVisibility()

    --------------------------------------- Wish list buttons ---------------------------------------
    -- Learn Unknown vanity spells button
    self.mainUI.learnSpellbtn = CreateFrame("Button", "AtlasLoot_LearnUnknownSpells", self.itemframe, "OptionsButtonTemplate")
    self.mainUI.learnSpellbtn:SetPoint("BOTTOM", self.itemframe, "BOTTOM",0,5)
    self.mainUI.learnSpellbtn:SetText(AL["Learn All Unknown"])
    self.mainUI.learnSpellbtn:SetWidth(150)
    self.mainUI.learnSpellbtn:SetScript("OnClick", function() self:LearnAllUnknownVanitySpells() end)
    self.mainUI.learnSpellbtn:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,AL["Learn all the vanity items and spells that you currently don't know on this character"])
    end)
    self.mainUI.learnSpellbtn:SetScript("OnLeave", function() GameTooltip:Hide() end)

    -- Wishlist Own/Swap button
    self.mainUI.wishlistSwapButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Swap", self.itemframe, "OptionsButtonTemplate")
    self.mainUI.wishlistSwapButton:SetPoint("BOTTOM", self.itemframe, "BOTTOM",0,5)
    self.mainUI.wishlistSwapButton:SetScript("OnClick", function(button) self:WishListSwapButton(true) end)

    -- Wishlist Options button
    self.mainUI.wishlistOptionsButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Options", self.itemframe, "OptionsButtonTemplate")
    self.mainUI.wishlistOptionsButton:SetPoint("BOTTOM", self.mainUI.wishlistSwapButton, "BOTTOM",-100,0)
    self.mainUI.wishlistOptionsButton:SetText(AL["Options"])
    self.mainUI.wishlistOptionsButton:SetScript("OnClick", function(button) self:WishListOptionsOpen() end)

        -- Wishlist Item Lock button
    self.mainUI.wishlistLockButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_UnLock", self.itemframe, "OptionsButtonTemplate")
    self.mainUI.wishlistLockButton:SetPoint("BOTTOM", self.mainUI.wishlistOptionsButton, "BOTTOM",-100,0)
    self.mainUI.wishlistLockButton:SetScript("OnClick", function(button)
        if self.itemUnlock then
            self.itemUnlock = false
            self.mainUI.wishlistLockButton:SetText("Locked")
        else
            self.itemUnlock = true
            self.mainUI.wishlistLockButton:SetText("UnLocked")
        end
    end)
    self.mainUI.wishlistLockButton:SetScript("OnEnter", function(button)
        local text = {
            "Toggle Item Moving",
            "Left Click to move item up",
            "Right Click to move item down",
            "Alt + Left Click to add a Custom Header"
        }
        self:SetGameTooltip(button, text)
    end)
    self.mainUI.wishlistLockButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
    self.mainUI.wishlistLockButton:SetText("Locked")
    -- Is wishlist item disabled on load or not
	if AtlasLootWishList.Options[UnitName("player")].AutoSortWishlist then
		self.mainUI.wishlistLockButton:Disable()
	else
		self.mainUI.wishlistLockButton:Enable()
	end

    -- Wishlist Share button
    self.mainUI.wishlistShareButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Share", self.itemframe, "OptionsButtonTemplate")
    self.mainUI.wishlistShareButton:SetPoint("BOTTOM", self.mainUI.wishlistSwapButton, "BOTTOM",100,0)
    self.mainUI.wishlistShareButton:SetText(AL["Share"])
    self.mainUI.wishlistShareButton:SetScript("OnClick", function() self:ShareWishList() end)

    -- Wishlist Share button
    self.mainUI.wishlistLearnVanityButton = CreateFrame("Button", "AtlasLootItemsFrame_Wishlist_Vanity_Learn", self.itemframe, "OptionsButtonTemplate")
    self.mainUI.wishlistLearnVanityButton:SetPoint("BOTTOM", self.mainUI.wishlistShareButton, "BOTTOM",100,0)
    self.mainUI.wishlistLearnVanityButton:SetText("Get Items")
    self.mainUI.wishlistLearnVanityButton:SetScript("OnClick", function() self:BatchRequestVanity(self.vanityItems, true) end)
    self.mainUI.wishlistLearnVanityButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,AL["Learn/Recive all the vanity items on this page"])
    end)
    self.mainUI.wishlistLearnVanityButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

    -- Filter Button
    self.mainUI.filterButton = CreateFrame("CheckButton","AtlasLootFilterCheck",self.itemframe,"OptionsCheckButtonTemplate")
    self.mainUI.filterButton:SetPoint("TOPLEFT", self.itemframe,5 ,-5)
    self.mainUI.filterButton.Label = self.mainUI.filterButton:CreateFontString(nil,"OVERLAY","GameFontNormal")
    self.mainUI.filterButton.Label:SetText(AL["Filter"])
    self.mainUI.filterButton.Label:SetPoint("RIGHT", self.mainUI.filterButton, 30, 2)
    self.mainUI.filterButton:RegisterForClicks("LeftButtonDown","RightButtonDown")
    self.mainUI.filterButton:SetScript("OnClick", function(button, btnclick) self:FilterEnableButton(button, btnclick) end)

    function self:ToogleWishListButtons(show)
        if show then
            self.mainUI.wishlistOptionsButton:Show()
            self.mainUI.wishlistLearnVanityButton:Show()
            self.mainUI.wishlistShareButton:Show()
            self.mainUI.wishlistLockButton:Show()
            self.mainUI.wishlistSwapButton:Show()
        else
            self.mainUI.wishlistOptionsButton:Hide()
            self.mainUI.wishlistLearnVanityButton:Hide()
            self.mainUI.wishlistShareButton:Hide()
            self.mainUI.wishlistLockButton:Hide()
            self.mainUI.wishlistSwapButton:Hide()
        end
    end
    self:ToogleWishListButtons()

------------------------------------ Main menu buttons ---------------------------------------
    --SubMenu Button
    self.mainUI.submenuButton = CreateFrame("Button", "AtlasLootDefaultFrame_SubMenu", self.mainUI, "AtlasLootDropMenuTemplate")
    self.mainUI.submenuButton:SetSize(275,25)
    self.mainUI.submenuButton:SetPoint("TOP", self.mainUI.lootBackground,"TOP",56,30)
    self.mainUI.submenuButton.Lable = self.mainUI.submenuButton:CreateFontString(nil, "OVERLAY","GameFontNormal")
    self.mainUI.submenuButton.Lable:SetPoint("TOP",self.mainUI.submenuButton,"BOTTOM",0,42)
    self.mainUI.submenuButton.Lable:SetText("Select Subcategory")
    self.mainUI.submenuButton.Lable:Show()
    self.mainUI.submenuButton:SetScript("OnClick", function() self:DewdropSubMenuOpen(AtlasLoot_SubMenus[self.currentTable]) end)

    --Moduel Menu Button
    self.mainUI.moduelMenuButton = CreateFrame("Button", nil, self.mainUI, "AtlasLootDropMenuTemplate")
    self.mainUI.moduelMenuButton:SetSize(275,25)
    self.mainUI.moduelMenuButton:SetPoint("RIGHT", self.mainUI.submenuButton, "LEFT",-5,0)
    self.mainUI.moduelMenuButton.Lable:SetText("Select Module")
    self.mainUI.moduelMenuButton.Lable:Show()
    self.mainUI.moduelMenuButton:SetText(AL["Select Loot Table"])
    self.mainUI.moduelMenuButton:SetScript("OnClick", function() self:DewdropModuleMenuOpen() end)

    --Options Button
    self.mainUI.optionsCogButton = CreateFrame("Button", "AtlasLootSettingsCog", self.mainUI, "SettingsGearButtonTemplate")
    self.mainUI.optionsCogButton:SetPoint("LEFT", self.mainUI.moduelMenuButton,-27,0)
    self.mainUI.optionsCogButton:RegisterForClicks("AnyDown")
    self.mainUI.optionsCogButton:SetScript("OnClick", function(button,buttonClick)
        if buttonClick == "LeftButton" then
            self:OptionsToggle()
        else
            self:OpenSettingQuickMenu(button)
        end
    end)
    self.mainUI.optionsCogButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Options")
    end)
    self.mainUI.optionsCogButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

    --Expansion Menu Button
    self.mainUI.expansionMenuButton = CreateFrame("Button", "AtlasLootDefaultFrame_ExpansionMenu", self.mainUI, "AtlasLootDropMenuTemplate");
    self.mainUI.expansionMenuButton:SetSize(185,25);
    self.mainUI.expansionMenuButton:SetPoint("LEFT", "AtlasLootDefaultFrame_SubMenu", "RIGHT",5,0);
    self.mainUI.expansionMenuButton:SetText(AtlasLoot_ExpansionMenu[GetAccountExpansionLevel()+1][1]);
    self.mainUI.expansionMenuButton.Lable:SetText("Select Expansion")
    self.mainUI.expansionMenuButton.Lable:Show()
    self.mainUI.expansionMenuButton:SetScript("OnClick", function(button) self:DewdropExpansionMenuOpen(button) end)

---------------------------------------- Buttons Under the loot and subtable frames -------------------------------------------
    --Search Edit Box
    self.mainUI.searchbox = CreateFrame("EditBox", "AtlasLootDefaultFrameSearchBox", self.mainUI, "SearchBoxTemplate")
    self.mainUI.searchbox:SetSize(190,25)
    self.mainUI.searchbox:SetPoint("BOTTOMLEFT", self.mainUI, "BOTTOMLEFT", 35, 10.5)
    self.mainUI.searchbox:SetScript("OnEnterPressed", function(frame)
        self:Search(frame:GetText())
        frame:ClearFocus()
    end)
    self.mainUI.searchbox:SetScript("OnTextChanged", function(frame)
		if frame:HasFocus() then
			SearchBoxTemplate_OnTextChanged(frame)
		end
    end)

   --Search Button
    self.mainUI.searchButton = CreateFrame("Button","AtlasLootDefaultFrameSearchButton",self.mainUI,"AtlasLootDropMenuTemplate")
    self.mainUI.searchButton:SetSize(69,25)
    self.mainUI.searchButton:SetPoint("LEFT",self.mainUI.searchbox,"RIGHT",2,-1)
    self.mainUI.searchButton:SetText(AL["Search"])
    self.mainUI.searchButton:RegisterForClicks("AnyDown")
    self.mainUI.searchButton:SetScript("OnClick", function(button, buttonClick)
        if buttonClick == "LeftButton" then
           self:Search(self.mainUI.searchbox:GetText())
           self.mainUI.searchbox:ClearFocus()
        else
           self:ShowSearchOptions(button)
        end
    end)
    self.mainUI.searchButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Left click to search\nRight click to select what modules to search in")
    end)
    self.mainUI.searchButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

   --Last Result Button
    self.mainUI.lastResultButton = CreateFrame("Button","AtlasLootDefaultFrameLastResultButton",self.mainUI.searchbox,"AtlasLootDropMenuTemplate")
    self.mainUI.lastResultButton:SetSize(80,25)
    self.mainUI.lastResultButton.Icon:Hide()
    self.mainUI.lastResultButton.Text:SetJustifyH("CENTER")
    self.mainUI.lastResultButton.Text:ClearAllPoints()
    self.mainUI.lastResultButton.Text:SetPoint("CENTER")
    self.mainUI.lastResultButton:SetPoint("LEFT", self.mainUI.searchButton, "RIGHT", 2, 0)
    self.mainUI.lastResultButton:SetText(AL["Last Result"])
    self.mainUI.lastResultButton:SetScript("OnClick", function() self:ShowSearchResult() end)
    self.mainUI.lastResultButton:SetScript("OnEnter", function(button) self:SetGameTooltip(button, "Open Last Search Result") end)
    self.mainUI.lastResultButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

    -- Advanced Search Button
    self.mainUI.advancedSearchButton = CreateFrame("Button","AtlasLootDefaultFrameAdvancedSearchButton", self.mainUI,"AtlasLootDropMenuTemplate")
    self.mainUI.advancedSearchButton:SetSize(80,25)
    self.mainUI.advancedSearchButton.Icon:Hide()
    self.mainUI.advancedSearchButton.Text:SetJustifyH("CENTER")
    self.mainUI.advancedSearchButton.Text:ClearAllPoints()
    self.mainUI.advancedSearchButton.Text:SetPoint("CENTER")
    self.mainUI.advancedSearchButton:SetPoint("LEFT",self.mainUI.lastResultButton,"RIGHT",2)
    self.mainUI.advancedSearchButton:SetText("Advanced")
    self.mainUI.advancedSearchButton:SetScript("OnClick", function()
        self:AdvancedSearchShow()
        self.mainUI.searchbox:ClearFocus()
    end)
    self.mainUI.advancedSearchButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Advanced Search")
    end)
    self.mainUI.advancedSearchButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

    --Wish List Button
    self.mainUI.wishlistButton = CreateFrame("Button", "AtlasLootDefaultFrameWishListButton", self.mainUI, "AtlasLootDropMenuTemplate")
    self.mainUI.wishlistButton:SetPoint("LEFT", "AtlasLootDefaultFrameAdvancedSearchButton", "RIGHT", 2, 0)
    self.mainUI.wishlistButton:SetSize(80,25)
    self.mainUI.wishlistButton:RegisterForClicks("LeftButtonDown","RightButtonDown")
    self.mainUI.wishlistButton:SetScript("OnClick", function(button, btnclick)self:WishListButton(button,true,btnclick) end)
    self.mainUI.wishlistButton:SetText(AL["Wishlist"])
    self.mainUI.wishlistButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Right Click For Menu")
    end)
    self.mainUI.wishlistButton:SetScript("OnLeave", function() GameTooltip:Hide() end)

    self.mainUI.favoritesButton = CreateFrame("Button", "AtlasLoot_Favorites", self.mainUI, "AtlasLootDropMenuTemplate")
    self.mainUI.favoritesButton:SetPoint("LEFT", "AtlasLootDefaultFrameWishListButton", "RIGHT", 2, 0)
    self.mainUI.favoritesButton:SetText("Favorites")
    self.mainUI.favoritesButton:SetSize(150,25)
    self.mainUI.favoritesButton:SetScript("OnEnter", function(button)     
        self:SetGameTooltip(button,"Left click open a favorite\nAlt + Right click to set favorite")
        self.mainUI.favoritesPopupFrame:Show()
    end)
    self.mainUI.favoritesButton:SetScript("OnLeave", function()
        GameTooltip:Hide()
        if GetMouseFocus():GetName() ~= "AtlasLoot_FavoritesPopupFrame" then
            self.mainUI.favoritesPopupFrame:Hide()
        end
    end)

    -- Load Current Instance Button
    self.mainUI.currentInstanceButton = CreateFrame("Button","AtlasLootDefaultFrame_LoadInstanceButton", self.mainUI,"AtlasLootDropMenuTemplate")
    self.mainUI.currentInstanceButton:SetSize(107,25)
    self.mainUI.currentInstanceButton.Icon:Hide()
    self.mainUI.currentInstanceButton.Text:SetJustifyH("CENTER")
    self.mainUI.currentInstanceButton.Text:ClearAllPoints()
    self.mainUI.currentInstanceButton.Text:SetPoint("CENTER")
    self.mainUI.currentInstanceButton:SetPoint("LEFT", self.mainUI.favoritesButton, "RIGHT", 2, 0)
    self.mainUI.currentInstanceButton:SetScript("OnClick", function() self:ShowInstance() end)
    self.mainUI.currentInstanceButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
    self.mainUI.currentInstanceButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Goto current instances lootpage")
    end)
    self.mainUI.currentInstanceButton:SetText("Current Instance")

    self.mainUI.favoritesPopupFrame = CreateFrame("Frame", "AtlasLoot_FavoritesPopupFrame", self.mainUI.favoritesButton, "AtlasLootFrameTemplate")
    self.mainUI.favoritesPopupFrame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    self.mainUI.favoritesPopupFrame:EnableMouse()
    self.mainUI.favoritesPopupFrame:SetScript("OnLeave", function()
        local focus = GetMouseFocus():GetName()
        if focus ~= "AtlasLootDefaultFrame_Preset1" and focus ~= "AtlasLootDefaultFrame_Preset2" and focus ~= "AtlasLootDefaultFrame_Preset3" and focus ~= "AtlasLootDefaultFrame_Preset4" then
            self.mainUI.favoritesPopupFrame:Hide()
        end
    end)
    self.mainUI.favoritesPopupFrame:SetPoint("BOTTOMLEFT",0,-37)
    self.mainUI.favoritesPopupFrame:SetSize(150, 40)
    self.mainUI.favoritesPopupFrame:Hide()

    --Favorites Buttons
    local function presetcreate(preset,num)
        preset:SetSize(30,30)
        preset.tex = preset:CreateTexture(nil, "ARTWORK")
        preset.tex:SetPoint("CENTER")
        preset.Icon:Hide()
        preset.Text:Hide()
        local tex = AtlasUtil:GetAtlasInfo("services-number-"..num)
        preset.tex:SetTexture(tex.filename)
        preset.tex:SetTexCoord(tex.leftTexCoord, tex.rightTexCoord, tex.topTexCoord, tex.bottomTexCoord)
        preset.tex:SetSize(25,25)
        preset:SetScript("OnEnter", function(button)
            if AtlasLootCharDB.QuickLooks[num] then
                self:SetGameTooltip(button,AtlasLootCharDB.QuickLooks[num][6])
            end
        end)
        preset:RegisterForClicks("LeftButtonDown","RightButtonDown")
        preset:SetScript("OnLeave", function()
            GameTooltip:Hide()
            if not GetMouseFocus() then return end
            local focus = GetMouseFocus():GetName()
            if focus ~= "AtlasLoot_FavoritesPopupFrame" and focus ~= self.mainUI.favoritesButton and focus ~= "AtlasLootDefaultFrame_Preset1" and focus ~= "AtlasLootDefaultFrame_Preset2" and focus ~= "AtlasLootDefaultFrame_Preset3" and focus ~= "AtlasLootDefaultFrame_Preset4"  then
                self.mainUI.favoritesPopupFrame:Hide()
            end
        end)
        preset:SetScript("OnClick", function(button, buttonClick)
            if buttonClick == "RightButton" and IsAltKeyDown() then
                self:SetFavorites(num)
            else
                if AtlasLootCharDB.QuickLooks[num] and self:IsLootTableAvailable(AtlasLootCharDB.QuickLooks[num][4]) then
                    button.lastModule = AtlasLootCharDB.QuickLooks[num][4]
                    button.currentTable = AtlasLootCharDB.QuickLooks[num][5]
                    if AtlasLootCharDB.QuickLooks[num][2] == "AtlasLootWishList" then
                        self:ShowWishList(AtlasLootCharDB.QuickLooks[num][1], AtlasLootCharDB.QuickLooks[num][3])
                    else
                        self:ShowItemsFrame(AtlasLootCharDB.QuickLooks[num][1], AtlasLootCharDB.QuickLooks[num][2], AtlasLootCharDB.QuickLooks[num][3])
                    end
                end
            end
        end)
    end
    --QuickLook Button 1
    local presetsize = 3
    self.mainUI.favoritesPopupFrame.preset1 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset1", self.mainUI.favoritesPopupFrame, "AtlasLootDropMenuTemplate")
    self.mainUI.favoritesPopupFrame.preset1:SetPoint("LEFT", self.mainUI.favoritesPopupFrame, 8, 0)
    presetcreate(self.mainUI.favoritesPopupFrame.preset1,1)
    --QuickLook Button 2
    self.mainUI.favoritesPopupFrame.preset2 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset2", self.mainUI.favoritesPopupFrame, "AtlasLootDropMenuTemplate")
    self.mainUI.favoritesPopupFrame.preset2:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset1", "RIGHT", presetsize, 0)
    presetcreate(self.mainUI.favoritesPopupFrame.preset2,2)
    --QuickLook Button 3
    self.mainUI.favoritesPopupFrame.preset3 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset3", self.mainUI.favoritesPopupFrame, "AtlasLootDropMenuTemplate")
    self.mainUI.favoritesPopupFrame.preset3:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset2", "RIGHT", presetsize, 0)
    presetcreate(self.mainUI.favoritesPopupFrame.preset3,3)
    --QuickLook Button 4
    self.mainUI.favoritesPopupFrame.preset4 = CreateFrame("Button", "AtlasLootDefaultFrame_Preset4", self.mainUI.favoritesPopupFrame, "AtlasLootDropMenuTemplate")
    self.mainUI.favoritesPopupFrame.preset4:SetPoint("LEFT", "AtlasLootDefaultFrame_Preset3", "RIGHT", presetsize, 0)
    presetcreate(self.mainUI.favoritesPopupFrame.preset4,4)

---------------------  Diffcuility ScrollFrame ----------------------------------
    local ROW_HEIGHT = 16   -- How tall is each row?
    local MAX_ROWS = 5      -- How many rows can be shown at once?

    self.mainUI.difficultyScrollFrame = CreateFrame("Frame", "Atlasloot_Difficulty_ScrollFrame", self.mainUI, "AtlasLootFrameTemplate")
    self.mainUI.difficultyScrollFrame:EnableMouse(true)
    self.mainUI.difficultyScrollFrame:SetSize(265, ROW_HEIGHT * MAX_ROWS + 16)
    self.mainUI.difficultyScrollFrame:SetPoint("TOPRIGHT",self.mainUI,-30,-55.5)
    self.mainUI.difficultyScrollFrame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    self.mainUI.difficultyScrollFrame.Lable = self.mainUI.difficultyScrollFrame:CreateFontString("Atlasloot_HeaderLabel", "OVERLAY","GameFontNormal")
    self.mainUI.difficultyScrollFrame.Lable:SetPoint("TOPLEFT",self.mainUI.difficultyScrollFrame,10,-10)
    self.mainUI.difficultyScrollFrame.Lable:SetJustifyH("LEFT")
    self.mainUI.difficultyScrollFrame.Lable:SetFont("GameFontNormal", 24)
    self.mainUI.difficultyScrollFrame.Back = self.mainUI.difficultyScrollFrame:CreateTexture("Atlasloot_Difficulty_ScrollFrame_Back", "BACKGROUND")
    self.mainUI.difficultyScrollFrame.Back:SetAllPoints()
    self.mainUI.difficultyScrollFrame.Back:SetSize(255, ROW_HEIGHT * MAX_ROWS + 6)
    self.mainUI.difficultyScrollFrame.Back:SetPoint("CENTER",self.mainUI.difficultyScrollFrame)

function self:ScrollFrameUpdate(hide,wishlist)
    local maxValue,offset,row,value
    self.mainUI.difficultyScrollFrame.wishList = nil
    if wishlist then
        self.mainUI.difficultyScrollFrame.wishList = wishlist
        maxValue = #AtlasLootWishList[wishlist]
        FauxScrollFrame_Update(self.mainUI.difficultyScrollFrame.scrollSlider, maxValue, MAX_ROWS, ROW_HEIGHT)
        offset = FauxScrollFrame_GetOffset(self.mainUI.difficultyScrollFrame.scrollSlider)
        for i = 1, MAX_ROWS do
            value = i + offset
            self.mainUI.difficultyScrollFrame.rows[i]:SetChecked(false)
            self.mainUI.difficultyScrollFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
            if value <= maxValue and AtlasLootWishList[wishlist][value] then
                row = self.mainUI.difficultyScrollFrame.rows[i]
                row:SetText("|cffFFd200"..AtlasLootWishList[wishlist][value].Name)
                row.itemIndex = value
                if row.itemIndex == AtlasLoot_CurrentWishList.Show.ListNum then
                    row:SetChecked(true)
                end
                row:Show()
            else
                self.mainUI.difficultyScrollFrame.rows[i]:Hide()
            end
        end
    elseif self.Difficulties then
        maxValue = #self.Difficulties[self.CurrentType]
        FauxScrollFrame_Update(self.mainUI.difficultyScrollFrame.scrollSlider, maxValue, MAX_ROWS, ROW_HEIGHT)
        offset = FauxScrollFrame_GetOffset(self.mainUI.difficultyScrollFrame.scrollSlider)
        for i = 1, MAX_ROWS do
            value = i + offset
            self.mainUI.difficultyScrollFrame.rows[i]:SetChecked(false)
            self.mainUI.difficultyScrollFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
            if value <= maxValue and self.Difficulties[self.CurrentType][value] and hide == nil then
                row = self.mainUI.difficultyScrollFrame.rows[i]
                row:SetText("|cffFFd200"..self.Difficulties[self.CurrentType][value][1])
                row.itemIndex = self.Difficulties[self.CurrentType][value][2]
                if row.itemIndex == self.ItemindexID then
                    row:SetChecked(true)
                end
                row:Show()
            else
                self.mainUI.difficultyScrollFrame.rows[i]:Hide()
            end
        end
    end
end

    self.mainUI.difficultyScrollFrame.scrollSlider = CreateFrame("ScrollFrame","AtlasLootDefaultFrameScroll", self.mainUI.difficultyScrollFrame, "FauxScrollFrameTemplate")
    self.mainUI.difficultyScrollFrame.scrollSlider:SetPoint("TOPLEFT", 0, -8)
    self.mainUI.difficultyScrollFrame.scrollSlider:SetPoint("BOTTOMRIGHT", -30, 8)
    self.mainUI.difficultyScrollFrame.scrollSlider:SetScript("OnVerticalScroll", function(scroll, offset)
        scroll.offset = math.floor(offset / ROW_HEIGHT + 0.5)
    if self.mainUI.difficultyScrollFrame.wishList then
        self:ScrollFrameUpdate(nil,self.mainUI.difficultyScrollFrame.wishList)
    else
        self:ScrollFrameUpdate()
    end
end)

self.mainUI.difficultyScrollFrame.scrollSlider:SetScript("OnShow", function()
    if self.mainUI.difficultyScrollFrame.wishList then
        self:ScrollFrameUpdate(nil,self.mainUI.difficultyScrollFrame.wishList)
    else
        self:ScrollFrameUpdate()
    end
end)

local rows = setmetatable({}, { __index = function(t, i)
	local row = CreateFrame("CheckButton", "$parentRow"..i, self.mainUI.difficultyScrollFrame)
	row:SetSize(230, ROW_HEIGHT)
    row:SetFrameStrata("HIGH")
	row:SetNormalFontObject(GameFontHighlightLeft)
    row:SetCheckedTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
    row:SetScript("OnClick", function()
        if self.mainUI.difficultyScrollFrame.wishList then
            self:ShowWishList(self.mainUI.difficultyScrollFrame.wishList,row.itemIndex)
            AtlasLoot_CurrentWishList.Show.ListNum = row.itemIndex
            self:ScrollFrameUpdate(nil,self.mainUI.difficultyScrollFrame.wishList)
        else
            self.ItemindexID = row.itemIndex
            if not self.searchPanel:IsVisible() then
            self:ShowItemsFrame(self.itemframe.refresh[1], self.itemframe.refresh[2], self.itemframe.refresh[3])
            end
            self:ScrollFrameUpdate()
        end

    end)
	if i == 1 then
		row:SetPoint("TOPLEFT", self.mainUI.difficultyScrollFrame, 8, -8)
	else
		row:SetPoint("TOPLEFT", self.mainUI.difficultyScrollFrame.rows[i-1], "BOTTOMLEFT")
	end

	rawset(t, i, row)
	return row
end })

self.mainUI.difficultyScrollFrame.rows = rows
local MAX_ROWS2 = 26      -- How many rows can be shown at once?

--------------------Subtable Frame--------------------
    self.mainUI.lootTableScrollFrame = CreateFrame("Frame", "Atlasloot_SubTableFrame", self.mainUI, "AtlasLootFrameTemplate")
    self.mainUI.lootTableScrollFrame:EnableMouse(true)
    self.mainUI.lootTableScrollFrame:SetSize(265, ROW_HEIGHT * MAX_ROWS2 + 23)
    self.mainUI.lootTableScrollFrame:SetPoint("BOTTOMLEFT","Atlasloot_Difficulty_ScrollFrame",0,-449.5)
    self.mainUI.lootTableScrollFrame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", tile = true, tileSize = 16,
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    self.mainUI.lootTableScrollFrame.Back = self.mainUI.lootTableScrollFrame:CreateTexture("Atlasloot_SubTableFrame_Back", "BACKGROUND")
    self.mainUI.lootTableScrollFrame.Back:SetAllPoints()
    self.mainUI.lootTableScrollFrame.Back:SetSize(255, ROW_HEIGHT * MAX_ROWS2 + 13)
    self.mainUI.lootTableScrollFrame.Back:SetPoint("CENTER",self.mainUI.lootTableScrollFrame)

    function self:SubTableScrollFrameUpdate(tablename, dataSource, tablenum)
        if tablename == "FilterList" then return end
        local maxValue = #_G[dataSource][tablename]
        if dataSource == "AtlasLoot_MapData" then maxValue = #_G[dataSource][tablename][tablenum] end
        self.mainUI.lootTableScrollFrame.tablename = tablename
        self.mainUI.lootTableScrollFrame.dataSource = dataSource
        self.mainUI.lootTableScrollFrame.tablenum = tablenum
        FauxScrollFrame_Update(self.mainUI.lootTableScrollFrame.scrollSlider, maxValue, MAX_ROWS2, ROW_HEIGHT)
        local offset = FauxScrollFrame_GetOffset(self.mainUI.lootTableScrollFrame.scrollSlider)
        for i = 1, MAX_ROWS2 do
            local value = i + offset
            self.mainUI.lootTableScrollFrame.rows[i]:SetChecked(false)
            self.mainUI.lootTableScrollFrame.rows[i]:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
            if value <= maxValue and (_G[dataSource][tablename][value] or _G[dataSource][tablename][tablenum][value]) and tablename ~= "SearchMENU" then
                local row = self.mainUI.lootTableScrollFrame.rows[i]
                    row.dataSource = dataSource
                    row.tablename = tablename
                    row.tablenum = value
                if dataSource == "AtlasLoot_MapData" then
                    local text = _G[dataSource][tablename][tablenum][value][1]
                    if _G[dataSource][tablename][tablenum][value][2] then text = text.._G[dataSource][tablename][tablenum][value][2] end
                    if _G[dataSource][tablename][tablenum][value].SubZone then
                        text = self.Colors.BLUE..text
                    elseif not _G[dataSource][tablename][tablenum][value].Zone then
                        text = self.Colors.WHITE..text
                    end
                    if not _G[dataSource][tablename][tablenum][value].cords and not _G[dataSource][tablename][tablenum][value].Zone and not _G[dataSource][tablename][tablenum][value].SubZone then text = INDENT..text end
                    row.Text:SetText(text)
                    row:SetScript("OnEnter", function(button)
                        GameTooltip:SetOwner(button, "ANCHOR_TOP")
                        GameTooltip:SetText(_G[dataSource][tablename][tablenum][value][1])
                        GameTooltip:Show()
                    end)
                    row:SetScript("OnLeave", function() GameTooltip:Hide() end)
                else
                    row.Text:SetText("|cffFFd200"..(_G[dataSource][tablename][value].Name or ""))
                    row:SetScript("OnEnter", function(button)
                        GameTooltip:Hide()
                    end)
                    if tablenum == value and dataSource ~= "AtlasLoot_MapData" then
                        row:SetChecked(true)
                    end
                end
                row:Show()
            else
                self.mainUI.lootTableScrollFrame.rows[i]:Hide()
            end
        end
    end

    self.mainUI.lootTableScrollFrame.scrollSlider = CreateFrame("ScrollFrame","AtlasLootDefaultFrameSubTableScroll",Atlasloot_SubTableFrame,"FauxScrollFrameTemplate")
    self.mainUI.lootTableScrollFrame.scrollSlider:SetPoint("TOPLEFT", 0, -8)
    self.mainUI.lootTableScrollFrame.scrollSlider:SetPoint("BOTTOMRIGHT", -30, 8)
    self.mainUI.lootTableScrollFrame.scrollSlider:SetScript("OnVerticalScroll", function(slider, offset)
        slider.offset = math.floor(offset / ROW_HEIGHT + 0.5)
            self:SubTableScrollFrameUpdate(self.mainUI.lootTableScrollFrame.tablename, self.mainUI.lootTableScrollFrame.dataSource, self.mainUI.lootTableScrollFrame.tablenum)
    end)

local rows2 = setmetatable({}, { __index = function(t, i)
    local row = CreateFrame("CheckButton", "$parentRow"..i, Atlasloot_SubTableFrame)
    row:SetSize(230, ROW_HEIGHT)
    row:SetFrameStrata("HIGH")
    row:SetNormalFontObject(GameFontHighlightLeft)
    row:SetCheckedTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
    row:RegisterForClicks("AnyDown")
    row.Text = row:CreateFontString("$parentRow"..i.."Text","OVERLAY","GameFontNormal")
    row.Text:SetSize(230, ROW_HEIGHT)
    row.Text:SetPoint("LEFT",row)
    row.Text:SetJustifyH("LEFT")
    row:SetScript("OnClick", function(button, buttonClick)
        local webID = _G[row.dataSource][row.tablename][row.tablenum] and _G[row.dataSource][row.tablename][row.tablenum].WebID
        if buttonClick == "RightButton" and webID then
            row:SetChecked(not row:GetChecked())
            self:OpenDB(button, webID[2], webID[1])
        elseif row.dataSource ~= "AtlasLoot_MapData" then
            self:ShowItemsFrame(row.tablename, row.dataSource, row.tablenum)
        else
            row:SetChecked(false)
        end
    end)
    if i == 1 then
        row:SetPoint("TOPLEFT", self.mainUI.lootTableScrollFrame, 8, -8)
    else
        row:SetPoint("TOPLEFT", self.mainUI.lootTableScrollFrame.rows[i-1], "BOTTOMLEFT")
    end

    rawset(t, i, row)
    return row
end })

self.mainUI.lootTableScrollFrame.rows = rows2

--------------------------------- Map Frame and buttons -----------------------------------------------

    --AtlasLoot Maps
    self.mainUI.mapFrame = CreateFrame("Frame", "AtlasLootDefaultFrame_Map", self.mainUI)
    self.mainUI.mapFrame:SetSize(770,513)
    self.mainUI.mapFrame:SetPoint("TOPLEFT", self.mainUI, "TOPLEFT",30,-86)
    self.mainUI.mapFrame:SetFrameStrata("HIGH")
    self.mainUI.mapFrame:Hide()
    self.mainUI.mapFrame:EnableMouse()
    self.mainUI.mapFrame:SetScript("OnMouseDown", function(button, buttonClick)
        if buttonClick == "RightButton" then
            self:MapOnShow()
        elseif buttonClick == "LeftButton" then
            --print(self:GetCursorCords())
        end
    end)

    self.mainUI.mapFrame:EnableMouseWheel(true)
    self.mainUI.mapFrame.cursorCords = self.mainUI.mapFrame:CreateFontString(nil,"ARTWORK","GameFontNormal")
    self.mainUI.mapFrame.cursorCords:SetPoint("TOPRIGHT", self.mainUI.mapFrame, -10, 0)
    self.mainUI.mapFrame.cursorCords:Show()
    self.mainUI.mapFrame.cursorCords:SetSize(150, 25)
    self.mainUI.mapFrame.cursorCords:SetJustifyH("RIGHT")
    self.mainUI.mapFrame:SetScript("OnMouseWheel", function(button,delta)
        if self.mainUI.nextbutton:IsVisible() and delta == -1 then
            self.mainUI.nextbutton:Click()
        end
        if self.mainUI.prevbutton:IsVisible() and delta == 1 then
            self.mainUI.prevbutton:Click()
        end
    end)

    self.mainUI.mapFrame:SetScript("OnShow", function() self.mainUI.mapFrame.cursorCords:SetText(self.Colors.WHITE.."Cursor: ---") end)
    self.mainUI.mapFrame:SetScript("OnEnter", function() self.showCords = true self:MapOnEnter() end)
    self.mainUI.mapFrame:SetScript("OnUpdate", function() self:MapOnEnter() end)
    self.mainUI.mapFrame:SetScript("OnLeave", function()
        self.showCords = false
        self.mainUI.mapFrame.cursorCords:SetText(self.Colors.WHITE.."Cursor: ---")
    end)

    for i=1, 12 do
        self.mainUI.mapFrame["tile"..i] = self.mainUI.mapFrame:CreateTexture("AtlasLoot_MapDetailTile"..i, "BACKGROUND")
        self.mainUI.mapFrame["tile"..i]:SetSize(196,196)
        self.mainUI.mapFrame["tile"..i]:Show()
    end

    self.mainUI.mapFrame.tile1:SetPoint("TOPLEFT", self.mainUI.mapFrame)
    self.mainUI.mapFrame.tile2:SetPoint("TOPLEFT", self.mainUI.mapFrame.tile1,"TOPRIGHT")
    self.mainUI.mapFrame.tile3:SetPoint("TOPLEFT", self.mainUI.mapFrame.tile2,"TOPRIGHT")
    self.mainUI.mapFrame.tile4:SetPoint("TOPLEFT", self.mainUI.mapFrame.tile3,"TOPRIGHT")
    self.mainUI.mapFrame.tile5:SetPoint("TOPLEFT", self.mainUI.mapFrame.tile1,"BOTTOMLEFT")
    self.mainUI.mapFrame.tile6:SetPoint("TOPLEFT", self.mainUI.mapFrame.tile5,"TOPRIGHT")
    self.mainUI.mapFrame.tile7:SetPoint("TOPLEFT", self.mainUI.mapFrame.tile6,"TOPRIGHT")
    self.mainUI.mapFrame.tile8:SetPoint("TOPLEFT", self.mainUI.mapFrame.tile7,"TOPRIGHT")
    self.mainUI.mapFrame.tile9:SetPoint("TOPLEFT", self.mainUI.mapFrame.tile5,"BOTTOMLEFT")
    self.mainUI.mapFrame.tile10:SetPoint("TOPLEFT", self.mainUI.mapFrame.tile9,"TOPRIGHT")
    self.mainUI.mapFrame.tile11:SetPoint("TOPLEFT", self.mainUI.mapFrame.tile10,"TOPRIGHT")
    self.mainUI.mapFrame.tile12:SetPoint("TOPLEFT", self.mainUI.mapFrame.tile11,"TOPRIGHT")

    self.mainUI.mapFrame.playerPin = CreateFrame("Button", "AtlasLoot_PlayerMapPin", self.mainUI.mapFrame)
    self.mainUI.mapFrame.playerPin:SetSize(35,35)
    self.mainUI.mapFrame.playerPin:SetFrameStrata("HIGH")
    self.mainUI.mapFrame.playerPin.texture = self.mainUI.mapFrame.playerPin:CreateTexture(nil, "ARTWORK")
    self.mainUI.mapFrame.playerPin.texture:SetTexture("Interface\\Minimap\\MinimapArrow")
    self.mainUI.mapFrame.playerPin.texture:SetSize(35,35)
    self.mainUI.mapFrame.playerPin.texture:SetPoint("CENTER",0,0)
    self.mainUI.mapFrame.playerPin:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"You are here")
    end)
    self.mainUI.mapFrame.playerPin:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    self.mainUI.mapFrame.playerPin:Hide()

    -- Map Button
    self.mainUI.mapButton = CreateFrame("Button","AtlasLootDefaultFrame_MapButton", self.mainUI, "AtlasLootDropMenuTemplate")
    self.mainUI.mapButton:SetSize(265,25)
    self.mainUI.mapButton:SetPoint("LEFT",AtlasLootDefaultFrame_LoadInstanceButton,"RIGHT",10.5,0)
    self.mainUI.mapButton:SetText("No Map")
    self.mainUI.mapButton:RegisterForClicks("AnyDown")
    self.mainUI.mapButton:SetScript("OnClick", function(button, buttonClick)
        if buttonClick == "LeftButton" then
            self:MapOnShow(button.CurrentMap, button.MapNum or 1)
        else
            self:MapMenuOpen(button)
        end
    end)
    self.mainUI.mapButton:SetScript("OnEnter", function(button)
        self:SetGameTooltip(button,"Open Map")
    end)
    self.mainUI.mapButton:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    self.mainUI.mapButton.mapButtonIcon = self.mainUI.mapButton:CreateTexture("ARTWORK")
    self.mainUI.mapButton.mapButtonIcon:SetSize(19,19)
    self.mainUI.mapButton.mapButtonIcon:SetAtlas("poi-islands-table")
    self.mainUI.mapButton.mapButtonIcon:SetPoint("RIGHT",self.mainUI.mapButton, -20, -1)

    -- item data loading icon animation
    self.mainUI.streamIcon = CreateFrame("Frame", "AtlasLoot_ItemsLoading", self.mainUI.lootBackground)
    self.mainUI.streamIcon:SetPoint("TOPRIGHT", self.mainUI.lootBackground, "TOPRIGHT")
    self.mainUI.streamIcon:SetSize(48, 48)
    self.mainUI.streamIcon.tooltip = "Searching..."
    self.mainUI.streamIcon:EnableMouse(true)

    self.mainUI.streamIcon.icon = self.mainUI.streamIcon:CreateTexture("$parentSpinner", "BACKGROUND")
    self.mainUI.streamIcon.icon:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamcircle")
    self.mainUI.streamIcon.icon:SetVertexColor(0,1,0)
    self.mainUI.streamIcon.icon:SetAllPoints()
    self.mainUI.streamIcon.spark = self.mainUI.streamIcon:CreateTexture("OVERLAY")
    self.mainUI.streamIcon.spark:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamspark")
    self.mainUI.streamIcon.spark:SetAllPoints()

    self.mainUI.streamIcon.frame = CreateFrame("Frame", "$parentFrame", self.mainUI.streamIcon)
    self.mainUI.streamIcon.frame:SetAllPoints()
    self.mainUI.streamIcon.frame.bg = self.mainUI.streamIcon.frame:CreateTexture("$parentBackground", "BACKGROUND")
    self.mainUI.streamIcon.frame.bg:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streambackground")
    self.mainUI.streamIcon.frame.bg:SetVertexColor(0,1,0)
    self.mainUI.streamIcon.frame.bg:SetAllPoints()
    self.mainUI.streamIcon.frame.alpha = self.mainUI.streamIcon.frame:CreateTexture("$parentAlpha", "ARTWORK")
    self.mainUI.streamIcon.frame.alpha:SetTexture("Interface\\Addons\\AtlasLoot\\Images\\streamframe")
    self.mainUI.streamIcon.frame.alpha:SetAllPoints()

    self.mainUI.streamIcon.Loop = self.mainUI.streamIcon:CreateAnimationGroup("$parentLoopAnim")
    self.mainUI.streamIcon.Loop:SetLooping("REPEAT")

    self.mainUI.streamIcon.rotAnim = self.mainUI.streamIcon.Loop:CreateAnimation("ROTATION")
    self.mainUI.streamIcon.rotAnim:SetOrder(1)
    self.mainUI.streamIcon.rotAnim:SetDuration(8)
    self.mainUI.streamIcon.rotAnim:SetDegrees(-360)

    self.mainUI.streamIcon:SetScript("OnEnter",
        function(button) 
            if(button.tooltip ~= nil) then
                GameTooltip:SetOwner(button, "ANCHOR_LEFT")
                GameTooltip:SetText(button.tooltip, nil, nil, nil, nil, true)
            end
        end)
    self.mainUI.streamIcon:SetScript("OnLeave", GameTooltip_Hide)
    self.mainUI.streamIcon:SetScript("OnShow", function(button) button:SetFrameLevel( (button:GetParent()):GetFrameLevel() + 1 ) end)

    self.mainUI.streamIcon:SetPoint("TOPRIGHT", self.mainUI.lootBackground, "TOPRIGHT")
    self.mainUI.streamIcon:Hide()

    self.mainUI.itemPopupframe = CreateFrame("Frame", "AtlasLoot_PopupFrame", nil, "AtlasLootFrameTemplate")
    self.mainUI.itemPopupframe:EnableMouse()
    self.mainUI.itemPopupframe:SetScript("OnLeave", function(frame)
        self:ItemOnLeave(frame)
    end)
    self.mainUI.itemPopupframe:SetScript("OnEnter", function()
        self.mainUI.itemPopupframe:Show()
    end)
    self.mainUI.itemPopupframe:SetWidth(211)
    self.mainUI.itemPopupframe:Hide()

    self:FrameOpaqueToogle()
end

function AtlasLoot:FrameOpaqueToogle()
    local texture = self.selectedProfile.Opaque and 1 or 0.05
    self.mainUI.lootTableScrollFrame.Back:SetTexture(0, 0, 0, texture)
    self.mainUI.difficultyScrollFrame.Back:SetTexture(0, 0, 0, texture)
    self.mainUI.lootBackground.Back:SetTexture(0, 0, 0, texture)
end