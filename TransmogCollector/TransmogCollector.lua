local vanityEnabled = false
local epicEnabled = false
local boeEnabled = false
local disableInInstances = true

-- Create minimap button
local button = CreateFrame("Button", "TransmogCollectorMiniMapButton", Minimap)
button:SetSize(32, 32)
button:SetPoint("TOPLEFT", Minimap, "BOTTOMLEFT", 0, 0)
button:SetNormalTexture("Interface\\Icons\\INV_Chest_Cloth_17")
button:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square")
button:RegisterForClicks("LeftButtonUp")

-- Tooltip
button:SetScript("OnEnter", function(self)
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    GameTooltip:SetText("TransmogCollector", 1, 1, 1)
    GameTooltip:AddLine("Click to scan bags and collect appearances", nil, nil, nil, true)
    GameTooltip:AddLine("Ctrl+Click to open settings", 0.5, 0.5, 0.5)
    GameTooltip:AddLine("Shift+Drag to move", 0.5, 0.5, 0.5)
    GameTooltip:Show()
end)

button:SetScript("OnLeave", function()
    GameTooltip:Hide()
end)

-- Create settings window
local FilterFrame = CreateFrame("Frame", "FilterFrame", UIParent, "BackdropTemplate")
FilterFrame:SetSize(240, 210)
FilterFrame:SetPoint("CENTER")
FilterFrame:SetBackdrop({
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
    tile = true, tileSize = 32, edgeSize = 32,
    insets = { left = 11, right = 12, top = 12, bottom = 11 }
})
FilterFrame:SetBackdropColor(0, 0, 0, 0.8)
FilterFrame:Hide()

local title = FilterFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
title:SetPoint("TOP", 0, -15)
title:SetText("TransmogCollector Settings")

FilterFrame:SetMovable(true)
FilterFrame:EnableMouse(true)
FilterFrame:RegisterForDrag("LeftButton")
FilterFrame:SetScript("OnDragStart", FilterFrame.StartMoving)
FilterFrame:SetScript("OnDragStop", FilterFrame.StopMovingOrSizing)

-- Checkboxes
local vanityCheckbox = CreateFrame("CheckButton", nil, FilterFrame, "ChatConfigCheckButtonTemplate")
vanityCheckbox:SetPoint("TOPLEFT", 20, -50)
vanityCheckbox:SetChecked(vanityEnabled)
local vanityText = FilterFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
vanityText:SetPoint("LEFT", vanityCheckbox, "RIGHT", 5, 0)
vanityText:SetText("Collect Vanity Items")
vanityCheckbox:SetScript("OnClick", function(self)
    vanityEnabled = self:GetChecked()
end)

local epicCheckbox = CreateFrame("CheckButton", nil, FilterFrame, "ChatConfigCheckButtonTemplate")
epicCheckbox:SetPoint("TOPLEFT", 20, -80)
epicCheckbox:SetChecked(epicEnabled)
local epicText = FilterFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
epicText:SetPoint("LEFT", epicCheckbox, "RIGHT", 5, 0)
epicText:SetText("Collect Epic Items")
epicCheckbox:SetScript("OnClick", function(self)
    epicEnabled = self:GetChecked()
end)

local boeCheckbox = CreateFrame("CheckButton", nil, FilterFrame, "ChatConfigCheckButtonTemplate")
boeCheckbox:SetPoint("TOPLEFT", 20, -110)
boeCheckbox:SetChecked(boeEnabled)
local boeText = FilterFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
boeText:SetPoint("LEFT", boeCheckbox, "RIGHT", 5, 0)
boeText:SetText("Collect BoE Items")
boeCheckbox:SetScript("OnClick", function(self)
    boeEnabled = self:GetChecked()
end)

local instanceCheckbox = CreateFrame("CheckButton", nil, FilterFrame, "ChatConfigCheckButtonTemplate")
instanceCheckbox:SetPoint("TOPLEFT", 20, -140)
instanceCheckbox:SetChecked(disableInInstances)
local instanceText = FilterFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
instanceText:SetPoint("LEFT", instanceCheckbox, "RIGHT", 5, 0)
instanceText:SetText("Disable in Instances/party")
instanceCheckbox:SetScript("OnClick", function(self)
    disableInInstances = self:GetChecked()
end)

-- Main collection function
local function CollectAppearances()
    if disableInInstances and (IsInInstance() or IsInGroup() or IsInRaid()) then 
        print("|cffff0000[TransmogCollector]|r Skipping scan (you're in an instance or group).")
        return 
    end

    print("|cff00ff00[TransmogCollector]|r Scanning your bags for appearances...")

    local learnedList = {}

    for bag = 0, 4 do
        for slot = 1, GetContainerNumSlots(bag) do
            local itemID = GetContainerItemID(bag, slot)
            if itemID then
                local name, link, quality, _, _, itemType, itemSubType, _, _, _, _, _, _, bindType = GetItemInfo(itemID)
                if quality then
                    local isBoE = bindType == 2
                    local isVanity = (quality == 6)
                    local isEpic = (quality == 4)

                    if isBoE and not boeEnabled then
                        -- Skip
                    elseif (isVanity and not vanityEnabled) or (isEpic and not epicEnabled) then
                        -- Skip
                    else
                        local appearanceID = C_Appearance.GetItemAppearanceID(itemID)
                        if appearanceID and not C_AppearanceCollection.IsAppearanceCollected(appearanceID) then
                            C_AppearanceCollection.CollectItemAppearance(itemID)
                            table.insert(learnedList, link or name or ("Item ID: "..itemID))
                        end
                    end
                end
            end
        end
    end

    for _, learnedItem in ipairs(learnedList) do
        print("|cff00ff00[TransmogCollector]|r Learned " .. learnedItem)
    end

    print("|cff00ff00[TransmogCollector]|r Scan complete.")
end



-- Minimap button click behavior
button:SetScript("OnClick", function()
    if IsShiftKeyDown() then
        button:StartMoving()
        return
    end

    if IsControlKeyDown() then
        if FilterFrame:IsShown() then
            FilterFrame:Hide()
        else
            FilterFrame:Show()
            vanityCheckbox:SetChecked(vanityEnabled)
            epicCheckbox:SetChecked(epicEnabled)
            boeCheckbox:SetChecked(boeEnabled)
            instanceCheckbox:SetChecked(disableInInstances)
        end
    else
        CollectAppearances()
    end
end)

-- Drag handling
button:SetMovable(true)
button:EnableMouse(true)
button:RegisterForDrag("LeftButton")
button:SetScript("OnDragStart", function(self)
    if IsShiftKeyDown() then
        self:StartMoving()
    end
end)
button:SetScript("OnDragStop", function(self)
    self:StopMovingOrSizing()
end)
