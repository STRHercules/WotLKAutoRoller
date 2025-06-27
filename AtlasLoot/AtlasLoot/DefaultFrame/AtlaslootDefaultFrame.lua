local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
--[[
Functions:
AtlasLoot:OnShow()
AtlasLoot:DewDropClick(tablename, text, tabletype, tabletype2)
AtlasLoot:DewDropSubMenuClick(tablename)
AtlasLoot:DewdropExpansionMenuClick(tablename, text)
AtlasLoot:DewdropExpansionMenuOpen()
AtlasLoot:DewdropSubMenuOpen(loottable)
AtlasLoot:DewdropModuleMenuOpen()
]]

--Called whenever the loot browser is shown and sets up buttons and loot tables
function AtlasLoot:OnShow()
    --Definition of where I want the loot table to be shown
    --Remove the selection of a loot table in Atlas
    self.itemframe.activeBoss = nil
    --Set the item table to the loot table
    --Show the last displayed loot table
    local lastboss = self.db.profile.LastBoss[self.Expac]
    if self.selectedProfile.AutoCurrentInstance and self:ShowInstance() then
        return
    elseif lastboss and lastboss[4] then
        self.currentTable = lastboss[5]
        self.lastModule = lastboss[4]
        self.moduleName = lastboss[6]
        self:IsLootTableAvailable(lastboss[4])
        self.mainUI.moduelMenuButton:SetText(self.moduleName)
        self:ShowItemsFrame(lastboss[1], "AtlasLoot_Data", lastboss[3])
    else
        self:ShowItemsFrame("EmptyTable", "AtlasLoot_Data", 1)
    end
end

-- Show the Instance you are in
function AtlasLoot:ShowInstance()
    for _, v in pairs(AtlasLoot_SubMenus) do
        for _, t in ipairs(v) do
            if t[4] == BabbleZone[GetRealZoneText()] or (t[5] and t[5] == BabbleZone[GetRealZoneText()]) then
                self.currentTable = v.SubMenu
                self.lastModule = v.Module
                self:IsLootTableAvailable(self.lastModule)
                self:ShowItemsFrame(t[2], "AtlasLoot_Data", 1)
                return true
            end
        end
    end
end

-- Used to strip the expansion out of the dataID
function AtlasLoot:CleandataID(newID, listnum)
	local cleanlist = {	[1] = {"CLASSIC", "TBC", "WRATH"} }
	for i = 1, #cleanlist[listnum] do
		newID = gsub(newID, cleanlist[listnum][i], "")
	end
	return newID
end

--[[
AtlasLoot:DewDropClick(tablename, text, tabletype):
tablename - Name of the loot table in the database
text - Heading for the loot table
Called when a button in AtlasLoot.Dewdrop is clicked
]]
function AtlasLoot:DewDropClick(tablename, text, tablenum)
    self.filterEnable = false
    self.backEnabled = false
    self.moduleName = text
    self.mainUI.filterButton:SetChecked(false)
    tablename = tablename .. self.Expac
    self.currentTable = tablename
    tablenum = tablenum or 1
    self.lastModule = AtlasLoot_SubMenus[tablename].Module
    self.mainUI.moduelMenuButton:SetText(text)
    self:IsLootTableAvailable(AtlasLoot_SubMenus[tablename].Module)
        local lasttable = self.db.profile.savedState[self.currentTable]
        if lasttable then
            self:ShowItemsFrame(lasttable[1], lasttable[2], lasttable[3])
        else
            self:ShowItemsFrame(AtlasLoot_SubMenus[tablename][tablenum][2], "AtlasLoot_Data", tablenum)
        end
end

--[[
AtlasLoot:DewDropSubMenuClick(tablename):
tablename - Name of the loot table in the database
Called when a button in AtlasLoot.DewdropSubMenu is clicked
]]
function AtlasLoot:DewDropSubMenuClick(tablename, onDamand)
    local dataSource = "AtlasLoot_Data"
    self.backEnabled = false
    if  onDamand then
		dataSource = "AtlasLoot_OnDemand"
		self:CreateOnDemandLootTable(onDamand)
	else
        --Show the select loot table
        local tablenum = _G[dataSource][tablename].Loadfirst or 1
        --Show the table that has been selected
        self:ShowItemsFrame(tablename, dataSource, tablenum)
    end
end

--[[
AtlasLoot:DewdropExpansionMenuClick(expansion, name):
expansion - expansion to load
name - label for the expansion
Called when a button in DewdropExpansionMenuClick is clicked
]]
function AtlasLoot:DewdropExpansionMenuClick(expansion, name)
    self.backEnabled = false
    AtlasLootDefaultFrame_ExpansionMenu:SetText(name)
    self.Expac = expansion
    if self.currentTable then
        self.currentTable = self:CleandataID(self.currentTable, 1) .. self.Expac
        self:IsLootTableAvailable(AtlasLoot_SubMenus[self.currentTable].Module)
        local tablename = AtlasLoot_SubMenus[self.currentTable][1][2]
        local lasttable = self.db.profile.savedState[self.currentTable]
        if lasttable then
            self:ShowItemsFrame(lasttable[1], lasttable[2], lasttable[3])
        else
            local tablenum = AtlasLoot_Data[tablename].Loadfirst or 1
            self:ShowItemsFrame(tablename, "AtlasLoot_Data", tablenum)
        end
    end
end

--[[
AtlasLoot:DewdropExpansionMenuOpen():
Adds expansion menu from expansion table in mainmenus.lua
]]
local expansionMenuLoaded
function AtlasLoot:DewdropExpansionMenuOpen(btn)
    local menuList = { [1] = {} }
    if not expansionMenuLoaded then
        if AtlasLoot_ExpansionMenu then
            for i,v in ipairs(AtlasLoot_ExpansionMenu) do
                if type(v) == "table" then
                    tinsert(menuList[1], {text = v[1], func = function() self:DewdropExpansionMenuClick(v[2], v[1]) end, notCheckable = true, closeWhenClicked = true, textHeight = 12, textWidth = 12})
                end
            end
            tinsert(menuList[1], {close = true, divider = 35})
        end
    end
    expansionMenuLoaded = self:OpenDewdropMenu(btn, menuList, expansionMenuLoaded)
end
--[[
AtlasLoot:DewdropSubMenuOpen(loottable):
loottable - Table defining the sub menu
Generates the sub menu needed by passing a table of loot tables and titles
]]
function AtlasLoot:DewdropSubMenuOpen(loottable)
    local frame = AtlasLootDefaultFrame_SubMenu
    if self.Dewdrop:IsOpen(frame) then self.Dewdrop:Close() return end
    self.Dewdrop:Register(frame,
        'point', function(parent)
            return "TOP", "BOTTOM"
        end,
        'children', function(level, value)
            if level == 1 then
                for k, v in pairs(loottable) do
                    if type(v) == "table" then
                            if type(v[3]) == "table" then
                                self.Dewdrop:AddLine(
                                    "text", v[1],
                                    "value", v[3],
                                    "hasArrow", true,
                                    'textHeight', self.selectedProfile.txtSize,
                                    'textWidth', self.selectedProfile.txtSize,
                                    "notCheckable", true
                                )
                            elseif v[3] == "Header" then
                                if k ~= 1 then self:AddDividerLine(40) end
                                self.Dewdrop:AddLine(
                                    'text', v[1],
                                    'textR', 0.2,
                                    'textG', 0.82,
                                    'textB', 0.5,
                                    'textHeight', 13,
                                    'textWidth', 13,
                                    'func', function() self:DewDropSubMenuClick(v[2]) end,
                                    'notCheckable', true
                                )
                            else
                                self.Dewdrop:AddLine(
                                    'text', AtlasLoot_Data[v[2]] and AtlasLoot_Data[v[2]].Name or v[1],
                                    'func', function() self:DewDropSubMenuClick(v[2], v.OnDamand) end,
                                    'textHeight', self.selectedProfile.txtSize,
                                    'textWidth', self.selectedProfile.txtSize,
                                    'closeWhenClicked', true,
                                    'notCheckable', true
                                )
                            end

                    end

                end
            elseif level == 2 then
                if value then
                    for k,v in pairs(value) do
                        if v[3] == "Header" then
                            if k ~= 1 then self:AddDividerLine(40) end
                            self.Dewdrop:AddLine(
                                'text', v[1],
                                'textR', 0.2,
                                'textG', 0.82,
                                'textB', 0.5,
                                'textHeight', 13,
                                'textWidth', 13,
                                'func', function() self:DewDropSubMenuClick(v[2], v.OnDamand) end,
                                'notCheckable', true
                            )
                        elseif type(v) == "table" then
                            self.Dewdrop:AddLine(
                                "text", AtlasLoot_Data[v[2]] and AtlasLoot_Data[v[2]].Name or v[1],
                                "func", function() self:DewDropSubMenuClick(v[2], v.OnDamand) end,
                                'textHeight', self.selectedProfile.txtSize,
                                'textWidth', self.selectedProfile.txtSize,
                                'closeWhenClicked', true,
                                "notCheckable", true
                            )
                        end
                    end
                end
            end
            --Close button
            self:CloseDewDrop(true,40)
        end,
        'dontHook', true
    )
    self.Dewdrop:Open(frame)
end

--[[
AtlasLoot:DewdropModuleMenuOpen:
Constructs the main category menu from a tiered table
]]
local moduleMenuLoaded
function AtlasLoot:DewdropModuleMenuOpen()
    local frame = self.mainUI.moduelMenuButton
    if self.Dewdrop:IsOpen(frame) then self.Dewdrop:Close() return end
    if not moduleMenuLoaded then
        self.Dewdrop:Register(frame,
            'point', function(parent)
                return "TOP", "BOTTOM"
            end,
            'children', function(level, value)
                if AtlasLoot_Modules then
                    for k, v in ipairs(AtlasLoot_Modules) do
                        --If a link to show a submenu
                        self.Dewdrop:AddLine(
                            'text', v[1],
                            'textR', 1,
                            'textG', 0.82,
                            'textB', 0,
                            'func', function() self:DewDropClick(v[2], v[1], v[3]) end,
                            'textHeight', self.selectedProfile.txtSize,
                            'textWidth', self.selectedProfile.txtSize,
                            'closeWhenClicked', true,
                            'notCheckable', true
                        )
                    end
                end
                --Close button
                self:CloseDewDrop(true,35)
            end,
            'dontHook', true
        )
        moduleMenuLoaded = true
    end
    self.Dewdrop:Open(frame)
end

function AtlasLoot:UpdateLootBrowserScale()
	self.mainUI:SetScale(self.selectedProfile.LootBrowserScale)
end