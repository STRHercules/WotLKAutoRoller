-- AutoRoller Addon for WoW 3.3.5 - Full Version with Standalone GUI Config
-- Automatically chooses loot roll options based on player level, rarity, and Enchanting skill
-- Includes slash commands, decision memory, per-character settings, and a draggable GUI config panel
-- SavedVariables setup in the TOC:
-- ## SavedVariablesPerCharacter: AutoRollerDB
local addonName = "AutoRoller"
local AutoRoller = CreateFrame("Frame")
local defaults = {
    autoRollEnabled = true,
    rollRules = {
        [2] = "greed", -- Uncommon
        [3] = "greed", -- Rare
        [4] = "pass", -- Epic
        [5] = "pass" -- Legendary
    },
    itemMemory = {}
}

local db

local function deepcopy(tbl)
    local copy = {}
    for k, v in pairs(tbl) do
        if type(v) == "table" then
            copy[k] = deepcopy(v)
        else
            copy[k] = v
        end
    end
    return copy
end

local function InitDB()
    if type(AutoRollerDB) ~= "table" then AutoRollerDB = {} end
    db = AutoRollerDB

    if type(db.rollRules) ~= "table" then
        db.rollRules = deepcopy(defaults.rollRules)
    end
    if type(db.itemMemory) ~= "table" then db.itemMemory = {} end
    if type(db.autoRollEnabled) ~= "boolean" then db.autoRollEnabled = true end
end

local function GetDecision(itemLink, rarity)
    local playerLevel = UnitLevel("player")
    local itemID = tonumber(itemLink:match("item:(%d+):"))

    if db.itemMemory[itemID] then return db.itemMemory[itemID] end

    -- Respect disabled setting
    if db.rollRules[rarity] == "disable" then return nil end

    if playerLevel < 70 then return "greed" end
    if rarity == 4 or rarity == 5 then return db.rollRules[rarity] or "pass" end
    return db.rollRules[rarity] or "greed"
end

local function Roll(rollID, decision)
    local rollMap = {need = 1, greed = 2, disenchant = 3, pass = 0}
    if rollMap[decision] then RollOnLoot(rollID, rollMap[decision]) end
end

local function HideLootRollFrame(rollID)
    for i = 1, NUM_GROUP_LOOT_FRAMES or 4 do
        local frame = _G["GroupLootFrame" .. i]
        if frame and frame.rollID == rollID then
            frame.rollID = 0
            frame:Hide()
            break
        end
    end
    if StaticPopup_Hide then
        StaticPopup_Hide("CONFIRM_LOOT_ROLL", rollID)
        StaticPopup_Hide("CONFIRM_DISENCHANT_ROLL", rollID)
    end
end

local function OnStartLootRoll(rollID, rollTime)
    if not db or not db.autoRollEnabled then return end
    local _, _, _, quality = GetLootRollItemInfo(rollID)
    local itemLink = GetLootRollItemLink(rollID)
    if not itemLink then return end

    local decision = GetDecision(itemLink, quality)
    if not decision then return end
    Roll(rollID, decision)
    HideLootRollFrame(rollID)
    print("AutoRoller: " .. decision .. " on " .. itemLink)
end

AutoRoller:RegisterEvent("ADDON_LOADED")
AutoRoller:RegisterEvent("START_LOOT_ROLL")
AutoRoller:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == addonName then
        InitDB()
        CreateAutoRollerConfigFrame()
        CreateMemoryViewerFrame()
        AutoRoller:UnregisterEvent("ADDON_LOADED")
    elseif event == "START_LOOT_ROLL" then
        OnStartLootRoll(arg1)
    end
end)

-- Slash Commands
SLASH_AUTOROLLER1 = "/ar"
SlashCmdList["AUTOROLLER"] = function(msg)
    if not db then
        print("AutoRoller: Settings not loaded yet.")
        return
    end
    local cmd = msg:lower()
    if cmd == "toggle" then
        db.autoRollEnabled = not db.autoRollEnabled
        print("AutoRoller: Auto-roll is now " .. (db.autoRollEnabled and "enabled" or "disabled"))
    elseif cmd == "reset" then
        db.itemMemory = {}
        print("AutoRoller: Item memory reset.")
    elseif cmd == "config" then
        if AutoRollerConfigFrame then
            AutoRollerConfigFrame:SetShown(not AutoRollerConfigFrame:IsShown())
        end
    else
        print("AutoRoller commands:")
        print("/ar toggle - Toggle auto-roll")
        print("/ar reset - Reset item memory")
        print("/ar config - Toggle config UI")
        print("/armem - Toggle memory viewer")
    end
end

function CreateAutoRollerConfigFrame()
    if AutoRollerConfigFrame then return end

    local frame = CreateFrame("Frame", "AutoRollerConfigFrame", UIParent, "BasicFrameTemplate")
    frame:SetSize(400, 260)
    frame:SetPoint("CENTER")
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
    frame:Hide()

    frame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile = true, tileSize = 32, edgeSize = 32,
        insets = { left = 11, right = 12, top = 12, bottom = 11 },
    })
    frame:SetBackdropColor(0, 0, 0, 1)

    frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    frame.title:SetPoint("CENTER", frame.TitleBg or frame, "TOP", 0, -10)
    frame.title:SetText("AutoRoller Settings")

    local enableCheckbox = CreateFrame("CheckButton", "AutoRollerEnableCheck", frame, "UICheckButtonTemplate")
    enableCheckbox:SetPoint("TOPLEFT", 20, -40)
    enableCheckbox:SetScript("OnClick", function(self)
        db.autoRollEnabled = self:GetChecked()
        print("AutoRoller: Auto-roll is now " .. (db.autoRollEnabled and "enabled" or "disabled"))
    end)
    _G[enableCheckbox:GetName() .. "Text"]:SetText("Enable Auto-Rolling")

    local memoryButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
    memoryButton:SetPoint("LEFT", enableCheckbox, "RIGHT", 10, 0)
    memoryButton:SetText("Memory")
    memoryButton:SetWidth(70)
    memoryButton:SetScript("OnClick", function()
        if AutoRollerMemoryFrame then
            AutoRollerMemoryFrame:SetShown(not AutoRollerMemoryFrame:IsShown())
        end
    end)
    

    local rollOptions = {"disable", "need", "greed", "disenchant", "pass"}
    local rarityLabels = {
        [2] = { text = "Uncommon", color = {0.12, 1.00, 0.00} },
        [3] = { text = "Rare", color = {0.00, 0.44, 0.87} },
        [4] = { text = "Epic", color = {0.64, 0.21, 0.93} },
        [5] = { text = "Legendary", color = {1.00, 0.50, 0.00} },
        [6] = { text = "Artifact", color = {0.90, 0.80, 0.50} },
    }
    local dropdowns = {}

    local function CreateDropdown(rarity, yOffset)
        local label = frame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        label:SetPoint("TOPLEFT", enableCheckbox, "BOTTOMLEFT", 0, yOffset)
        label:SetText(rarityLabels[rarity].text .. " Items:")
        label:SetTextColor(unpack(rarityLabels[rarity].color))

        local dropdown = CreateFrame("Frame", "AutoRollerDropdown" .. rarity, frame, "UIDropDownMenuTemplate")
        dropdown:SetPoint("LEFT", label, "RIGHT", 10, 0)
        UIDropDownMenu_SetWidth(dropdown, 120)

        UIDropDownMenu_Initialize(dropdown, function(self, level)
            for _, opt in ipairs(rollOptions) do
                local info = UIDropDownMenu_CreateInfo()
                info.text = opt
                info.value = opt
                info.checked = (db.rollRules[rarity] == opt)
                info.func = function()
                    db.rollRules[rarity] = opt
                    UIDropDownMenu_SetSelectedValue(dropdown, opt)
                end
                info.tooltipTitle = opt
                info.tooltipText = "Roll " .. opt .. " on " .. rarityLabels[rarity].text .. " items."
                UIDropDownMenu_AddButton(info)
            end
        end)

        UIDropDownMenu_SetSelectedValue(dropdown, db.rollRules[rarity])
        dropdowns[rarity] = dropdown
    end

    CreateDropdown(2, -40)
    CreateDropdown(3, -80)
    CreateDropdown(4, -120)
    CreateDropdown(5, -160)
    CreateDropdown(6, -200)

    frame:SetScript("OnShow", function()
        enableCheckbox:SetChecked(db.autoRollEnabled)
        for rarity, dropdown in pairs(dropdowns) do
            UIDropDownMenu_SetSelectedValue(dropdown, db.rollRules[rarity])
        end
    end)

    SLASH_AUTOROLLERCONFIG1 = "/arconfig"
    SlashCmdList["AUTOROLLERCONFIG"] = function()
        if not db then
            print("AutoRoller: Settings not loaded yet.")
            return
        end
        AutoRollerConfigFrame:SetShown(not AutoRollerConfigFrame:IsShown())
    end

    SLASH_AUTOROLLERMEMORY1 = "/armem"
    SlashCmdList["AUTOROLLERMEMORY"] = function()
        if not db then
            print("AutoRoller: Settings not loaded yet.")
            return
        end
        if AutoRollerMemoryFrame then
            AutoRollerMemoryFrame:SetShown(not AutoRollerMemoryFrame:IsShown())
        end
    end
end

function CreateMemoryViewerFrame()
    if AutoRollerMemoryFrame then return end

    local frame = CreateFrame("Frame", "AutoRollerMemoryFrame", UIParent, "BasicFrameTemplate")
    frame:SetSize(300, 250)
    frame:SetPoint("CENTER")
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
    frame:Hide()

    frame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile = true, tileSize = 32, edgeSize = 32,
        insets = { left = 11, right = 12, top = 12, bottom = 11 },
    })
    frame:SetBackdropColor(0, 0, 0, 1)

    frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    frame.title:SetPoint("CENTER", frame.TitleBg or frame, "TOP", 0, -10)
    frame.title:SetText("AutoRoller Memory")

    local scrollFrame = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate")
    scrollFrame:SetSize(250, 180)
    scrollFrame:SetPoint("TOPLEFT", 15, -40)

    local content = CreateFrame("Frame", nil, scrollFrame)
    content:SetSize(280, 200)
    scrollFrame:SetScrollChild(content)

    local memoryText = content:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    memoryText:SetPoint("TOPLEFT")
    memoryText:SetWidth(280)
    memoryText:SetJustifyH("LEFT")

    frame.memoryText = memoryText

    frame:SetScript("OnShow", function()
        local lines = {}
        for itemID, decision in pairs(db.itemMemory) do
            local itemLink = "|cff0070dd|Hitem:" .. itemID .. "::::::::80:::::::::|h[item]" .. itemID .. "|h|r"
            table.insert(lines, itemLink .. " - " .. decision)
        end
        memoryText:SetText(table.concat(lines, "\n"))
    end)
end
