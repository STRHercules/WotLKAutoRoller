local addonName, addon = ...

local GuildRosterUI = CreateFrame("Frame", "GuildRosterUIFrame", UIParent, "BasicFrameTemplateWithInset")
GuildRosterUI:SetSize(600, 400)
GuildRosterUI:SetPoint("CENTER")
GuildRosterUI:Hide()

GuildRosterUI.title = GuildRosterUI:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
GuildRosterUI.title:SetPoint("CENTER", GuildRosterUI.TitleBg, "CENTER")
GuildRosterUI.title:SetText("Guild Roster")

-- Toggle command
SLASH_GUILDROSTER1 = "/guildroster"
SLASH_GUILDROSTER2 = "/gr"
SlashCmdList["GUILDROSTER"] = function()
    GuildRosterUI:SetShown(not GuildRosterUI:IsShown())
    if GuildRosterUI:IsShown() then RequestGuildRoster() end
end

-- Show Offline checkbox
local showOffline = true
local offlineCheck = CreateFrame("CheckButton", nil, GuildRosterUI, "UICheckButtonTemplate")
offlineCheck:SetPoint("TOPLEFT", GuildRosterUI, "TOPLEFT", 10, -30)
offlineCheck.text:SetText("Show Offline")
offlineCheck:SetChecked(true)
offlineCheck:SetScript("OnClick", function(self)
    showOffline = self:GetChecked()
    GuildRosterUI:Update()
end)

-- Dropdown to switch modes
local modes = {
    { text = "Level/Name/Zone", value = "basic" },
    { text = "Name/Rank/Note/Last Online", value = "detail" }
}
local currentMode = "basic"
local modeDropdown = CreateFrame("Frame", "GRModeDropdown", GuildRosterUI, "UIDropDownMenuTemplate")
modeDropdown:SetPoint("TOPLEFT", offlineCheck, "BOTTOMLEFT", -15, -10)

UIDropDownMenu_SetWidth(modeDropdown, 180)
UIDropDownMenu_Initialize(modeDropdown, function(self, level)
    for _, info in ipairs(modes) do
        local opt = UIDropDownMenu_CreateInfo()
        opt.text = info.text
        opt.value = info.value
        opt.checked = (currentMode == info.value)
        opt.func = function()
            currentMode = info.value
            UIDropDownMenu_SetSelectedValue(modeDropdown, info.value)
            GuildRosterUI:Update()
        end
        UIDropDownMenu_AddButton(opt)
    end
end)
UIDropDownMenu_SetSelectedValue(modeDropdown, currentMode)

-- Sorting helpers
local sortColumn = "level"
local sortAsc = false
local function SortRoster(a, b)
    local key = sortColumn
    local va = a[key]
    local vb = b[key]
    if va == vb then return a.name < b.name end
    if sortAsc then return va < vb else return va > vb end
end

-- Roster data
local roster = {}

function GuildRosterUI:UpdateRoster()
    wipe(roster)
    for i = 1, GetNumGuildMembers() do
        local name, rank, rankIndex, level, classDisplayName, zone, note, officerNote, online = GetGuildRosterInfo(i)
        if online or showOffline then
            local days, hours, minutes = GetGuildRosterLastOnline(i)
            local lastOnline = days*1440 + hours*60 + minutes
            table.insert(roster, {
                name = name,
                rank = rank,
                rankIndex = rankIndex,
                level = level,
                zone = zone,
                note = note,
                online = online,
                lastOnline = lastOnline
            })
        end
    end
    table.sort(roster, SortRoster)
end

-- UI list
local scrollFrame = CreateFrame("ScrollFrame", nil, GuildRosterUI, "UIPanelScrollFrameTemplate")
scrollFrame:SetPoint("TOPLEFT", GuildRosterUI, "TOPLEFT", 10, -80)
scrollFrame:SetPoint("BOTTOMRIGHT", GuildRosterUI, "BOTTOMRIGHT", -30, 10)

local content = CreateFrame("Frame", nil, scrollFrame)
content:SetSize(1,1)
scrollFrame:SetScrollChild(content)

local rows = {}
local NUM_ROWS = 17
for i=1, NUM_ROWS do
    local row = CreateFrame("Button", nil, content)
    row:SetSize(530, 20)
    if i==1 then
        row:SetPoint("TOPLEFT")
    else
        row:SetPoint("TOPLEFT", rows[i-1], "BOTTOMLEFT")
    end
    row.level = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    row.level:SetWidth(30)
    row.level:SetPoint("LEFT")

    row.name = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    row.name:SetWidth(150)
    row.name:SetPoint("LEFT", row.level, "RIGHT", 5, 0)

    row.extra = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    row.extra:SetPoint("LEFT", row.name, "RIGHT", 5, 0)
    row.extra:SetWidth(200)
    rows[i] = row
end

function GuildRosterUI:Refresh()
    self:UpdateRoster()
    for i,row in ipairs(rows) do
        local data = roster[i]
        if data then
            row.level:SetText(currentMode == "basic" and data.level or "")
            row.name:SetText(data.name)
            if currentMode == "basic" then
                row.extra:SetText(data.zone)
            else
                row.extra:SetText(data.rank .. " | " .. (data.note or "") .. (data.online and "" or " | " .. data.lastOnline .. "m"))
            end
            row:Show()
        else
            row:Hide()
        end
    end
end

GuildRosterUI.Update = GuildRosterUI.Refresh

GuildRosterUI:SetScript("OnShow", function()
    GuildRosterUI:Refresh()
end)

GuildRosterUI:SetScript("OnEvent", function(self, event)
    if event == "GUILD_ROSTER_UPDATE" and self:IsShown() then
        self:Refresh()
    end
end)
GuildRosterUI:RegisterEvent("GUILD_ROSTER_UPDATE")

-- Apply ElvUI skin if available
if IsAddOnLoaded("ElvUI") then
    local E = unpack(ElvUI)
    if E and E.GetModule then
        local S = E:GetModule("Skins")
        if S and S.HandleFrame then
            S:HandleFrame(GuildRosterUI)
            S:HandleCheckBox(offlineCheck)
            S:HandleDropDownBox(modeDropdown)
        end
    end
end
