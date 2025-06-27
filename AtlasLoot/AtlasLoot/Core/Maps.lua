local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local DefaultPin = "questlog-questtypeicon-daily"
-- Map Functions
local playerFaction = UnitFactionGroup("player")
local lastMap
local totalPins = 0

-- Creates the map pins 
function AtlasLoot:CreateMapPins(list)
    _G["AtlasLoot_PlayerMapPin"]:Hide()
    -- Hide all pins before reshowing so any extras arnt showing
    if totalPins then
        for i = 1, totalPins do
            _G["AtlasLoot_MapPin"..i]:Hide()
        end
    end
    -- Creates buttons on the map for pins if a button dosnt already exist
    -- If a button exists reuse it
    for i,map in ipairs(list) do
        --create pin buttons
        if not _G["AtlasLoot_MapPin"..i] then
            -- Map Pins
            local mapPin = CreateFrame("Button","AtlasLoot_MapPin"..i, self.mainUI.mapFrame)
            mapPin:SetSize(25,25)
            mapPin:SetFrameStrata("HIGH")
            mapPin.text = mapPin:CreateFontString(nil, "OVERLAY","GameFontNormal")
            mapPin.text:SetPoint("LEFT",mapPin, 30, 0)
            mapPin.text:SetJustifyH("LEFT")
            mapPin.text:SetFont("GameFontNormal", 28)
            mapPin.text:SetSize(150,12)
            mapPin.tex = mapPin:CreateTexture(nil, "ARTWORK")
            mapPin.tex:SetPoint("CENTER")
            totalPins = totalPins + 1
        end
        -- converts a standard coordinate x,y to stardard anchor points
        local x = ((self.mainUI.mapFrame:GetWidth()/100) * map[2][1]) - (_G["AtlasLoot_MapPin"..i]:GetWidth()/2)
        local y = (-(self.mainUI.mapFrame:GetHeight()/100) * map[2][2]) + (_G["AtlasLoot_MapPin"..i]:GetHeight()/2)
        _G["AtlasLoot_MapPin"..i]:SetScript("OnEnter", function(btn)
            self.showCords = true
            GameTooltip:SetOwner(btn, "ANCHOR_TOPLEFT")
            GameTooltip:AddLine(self.Colors.WHITE..map[1])
            if map[4] and list.groups[map[4]] then
                for _,v in ipairs(list.groups[map[4]]) do
                    if v ~= map[1] then
                        GameTooltip:AddLine(self.Colors.WHITE..v)
                    end
                end
            end
            GameTooltip:AddLine("("..map[2][1]..", "..map[2][2]..")")
            GameTooltip:Show()
        end)
        _G["AtlasLoot_MapPin"..i]:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
        if map[3] then
            local tex = AtlasUtil:GetAtlasInfo(map[3])
            _G["AtlasLoot_MapPin"..i].tex:SetTexture(tex.filename)
            _G["AtlasLoot_MapPin"..i].tex:SetTexCoord(tex.leftTexCoord, tex.rightTexCoord, tex.topTexCoord, tex.bottomTexCoord)
            _G["AtlasLoot_MapPin"..i].tex:SetSize(25,25)
        else
            local tex = AtlasUtil:GetAtlasInfo(DefaultPin)
            _G["AtlasLoot_MapPin"..i].tex:SetTexture(tex.filename)
            _G["AtlasLoot_MapPin"..i].tex:SetTexCoord(tex.leftTexCoord, tex.rightTexCoord, tex.topTexCoord, tex.bottomTexCoord)
            _G["AtlasLoot_MapPin"..i].tex:SetSize(25,25)
        end
        _G["AtlasLoot_MapPin"..i].text:SetText(self.Colors.CYAN..map[1])
        _G["AtlasLoot_MapPin"..i]:ClearAllPoints()
        _G["AtlasLoot_MapPin"..i]:SetPoint("TOPLEFT",self.mainUI.mapFrame,x ,y)
        _G["AtlasLoot_MapPin"..i]:Show()
    end
end

function AtlasLoot:MapOnEnter()
    local x, y = self:GetCursorCords()
    if self.showCords then
        self.mainUI.mapFrame.cursorCords:SetText(self.Colors.WHITE.."Cursor: "..x.." , "..y)
    end
end

-- Track the coordinates off the mouse while it is on the map frame
function AtlasLoot:GetCursorCords()
    local scale,x, y = self.mainUI.mapFrame:GetEffectiveScale(), GetCursorPosition()
    local width, height = self.mainUI.mapFrame:GetWidth()/100, self.mainUI.mapFrame:GetHeight()/100
    x, y = math.ceil(((x/scale) - self.mainUI.mapFrame:GetLeft())/width), math.ceil((((y/scale) - self.mainUI.mapFrame:GetTop())/height) * -1)
    return x, y
end

function AtlasLoot:PlayerPin(firstSet)
    if self.mainUI.mapFrame:IsVisible() and AtlasLoot_MapData[self.CurrentMap].ZoneName[1] == GetRealZoneText() and self.MapNum == GetCurrentMapDungeonLevel() then
        _G["AtlasLoot_PlayerMapPin"]:Show()
    else
        return
    end
    if GetUnitSpeed("player") > 0 or firstSet then
        local x, y = GetPlayerMapPosition("player")
        x = ((self.mainUI.mapFrame:GetWidth()/100) * (x * 100)) - (_G["AtlasLoot_PlayerMapPin"]:GetWidth()/2)
        y = (-(self.mainUI.mapFrame:GetHeight()/100) * (y * 100)) + (_G["AtlasLoot_PlayerMapPin"]:GetHeight()/2)
        _G["AtlasLoot_PlayerMapPin"]:ClearAllPoints()
        _G["AtlasLoot_PlayerMapPin"]:SetPoint("TOPLEFT",self.mainUI.mapFrame, x, y )
        _G["AtlasLoot_PlayerMapPin"].texture:SetRotation(GetPlayerFacing())
    end
    self.playerPinTimer = self:ScheduleTimer("PlayerPin", .1)
end

function AtlasLoot:SetNavButtons(mapID, mapNum)
    if not self.mainUI.mapFrame:IsVisible() then return end
    --Hide navigation buttons by default, only show what we need
    self:ToggleNavigationButtonsVisibility()

        if mapNum ~= #_G["AtlasLoot_MapData"][mapID] then
            self.mainUI.nextbutton:SetParent(self.mainUI.mapFrame)
            self.mainUI.nextbutton:Show()
            self.mainUI.nextbutton.mapNum = mapNum + 1
            self.mainUI.nextbutton.mapID = mapID
            self.mainUI.nextbutton:ClearAllPoints()
            self.mainUI.nextbutton:SetPoint("BOTTOMRIGHT", self.mainUI.mapFrame, "BOTTOMRIGHT",-5,5)
        end
        if mapNum ~= 1 then
            self.mainUI.prevbutton:SetParent(self.mainUI.mapFrame)
            self.mainUI.prevbutton:Show()
            self.mainUI.prevbutton.mapNum = mapNum - 1
            self.mainUI.prevbutton.mapID = mapID
            self.mainUI.prevbutton:ClearAllPoints()
            self.mainUI.prevbutton:SetPoint("BOTTOMLEFT", self.mainUI.mapFrame, "BOTTOMLEFT",5,5)
        end
end

--called everytime you open a map hiding the loot item buttons 
function AtlasLoot:MapOnShow(mapID, mapNum, refresh)
    if not refresh and self.mainUI.mapFrame:IsVisible() then
        self.mainUI.mapFrame:Hide()
        self.mainUI.lootBackground:Show()
        self:BackButton_OnClick()
        self.itemframe.Label:Show()
        Atlasloot_HeaderLabel:Hide()
        self:ScrollFrameUpdate()
    else
        if self.CurrentMap then
            self.itemframe.Label:Hide()
            -- Hide the Filter Check-Box
	        self.mainUI.filterButton:Hide()
            self.mainUI.lootBackground:Hide()
            --Hide UI objects so that only needed ones are shown
            for i = 1, 30, 1 do
                _G["AtlasLootItem_"..i]:Hide()
                _G["AtlasLootItem_"..i].itemID = 0
            end
                self.mainUI.mapFrame:Show()
                Atlasloot_HeaderLabel:Show()
                self:ScrollFrameUpdate(true)
                AtlasLootDefaultFrameScroll:Hide()
                
                SetMapToCurrentZone()
                if mapNum and mapID then
                    self.CurrentMap = mapID
                elseif AtlasLoot_MapData[self.CurrentMap].ZoneName[1] == GetRealZoneText() then
                    if GetCurrentMapDungeonLevel() == 0 then
                        mapNum = 1
                    else
                        mapNum = GetCurrentMapDungeonLevel()
                    end
                elseif lastMap == self.CurrentMap then
                    mapNum = self.MapNum
                end
                lastMap = self.CurrentMap
                self:MapSelect(self.CurrentMap, mapNum)
        end
    end
end

--called to change the current displayed map
function AtlasLoot:MapSelect(mapID, mapNum)
    local map = AtlasLoot_MapData[mapID]
    if map.MapName then
        for i = 1, 12 do
            local texture = _G["AtlasLoot_MapDetailTile"..i]:SetTexture("Interface\\Worldmap\\"..map.MapName.."\\"..map.MapName..mapNum.."_"..i)
            if not texture then
                _G["AtlasLoot_MapDetailTile"..i]:SetTexture("Interface\\Worldmap\\"..map.MapName.."\\"..map.MapName..i)
            end
        end
    end
    local pinsList = {groups = {}}
    local group = 0
    for _, v in ipairs (map[mapNum]) do
        if v.cords then
            group = group + 1
            tinsert(pinsList,{v[1],v.cords,v.pinType, group})
        end
        if group ~= 0 then
            if not pinsList.groups[group] then pinsList.groups[group] = {} end
            tinsert(pinsList.groups[group], v[1])
        end
    end
    self.MapNum = mapNum
    self.CurrentMap = mapID
    self:SubTableScrollFrameUpdate(mapID, "AtlasLoot_MapData", mapNum)
    self:SetNavButtons(mapID, mapNum)
    self:CreateMapPins(pinsList)
    self:CancelTimer(self.playerPinTimer)
    self:PlayerPin(true)

    local text = map.ZoneName[1]..self.Colors.WHITE.." ["..map.Acronym.."]\n"..
    self.Colors.GOLD .. "Location: ".. self.Colors.WHITE..map.Location[1].."\n"..
    self.Colors.GOLD .. "Level Range: ".. self.Colors.WHITE..map.LevelRange.."\n"..
    self.Colors.GOLD .. "Minimum Level: ".. self.Colors.WHITE..map.MinLevel.."\n"..
    self.Colors.GOLD .. "Player Limit: ".. self.Colors.WHITE..map.PlayerLimit

    if map.Reputation and type(map.Reputation) == "table" then
        text = text .. "\n" .. self.Colors.GOLD .. AL["Reputation"] .. ": ".. self.Colors.WHITE .. map.Reputation[playerFaction]
    elseif map.Reputation then
        text = text .. "\n" .. self.Colors.GOLD .. AL["Reputation"] .. ": ".. self.Colors.WHITE .. map.Reputation
    end
    Atlasloot_HeaderLabel:SetText(text)
    self:SetMapButtonText(mapID, mapNum)
end

function AtlasLoot:SetMapButtonText(mapID, mapNum)
    local map = AtlasLoot_MapData[mapID]
    mapNum = mapNum or 1
    local text
    if map[mapNum][1].Zone then
        text = map[mapNum][2][1]
    else
        text = map[mapNum][1][1]
    end
    self.mainUI.mapButton:SetText(text)
end

--drop down map menu
function AtlasLoot:MapMenuOpen(frame)
    local mapID = self.CurrentMap
    local map = AtlasLoot_MapData[mapID]

    local menuList = { [1] = {} }
        for i,v in ipairs(map) do
            local text
            if v[1].Zone then
                text = map[i][2][1]
            else
                text = v[1][1] or ""
            end
            tinsert(menuList[1], {text = self.Colors.WHITE..text, func = function() self:MapOnShow(mapID, i, true) end, notCheckable = true, closeWhenClicked = true, textHeight = 12, textWidth = 12})
        end

        tinsert(menuList[1], {divider = 35})
        tinsert(menuList[1], {text = self.Colors.ORANGE..AL["Open AscensionDB To Zone Map"], func = function() self:OpenDBURL(AtlasLoot_MapData[self.CurrentMap].ZoneName[2] , "zone") end, notCheckable = true, closeWhenClicked = true, textHeight = 12, textWidth = 12})
		tinsert(menuList[1], {close = true, divider = 35})

    self:OpenDewdropMenu(frame, menuList)
end