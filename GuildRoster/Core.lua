-- Initial Variable Declarations (non-Frame specific)
local guildMembers = {}
local rosterMode = 1 -- 1 for Standard, 2 for Notes/Alternative
local activeMainView = "Roster" -- Possible values: "Roster", "GuildControl", "GuildInfo", "AddMember", "MOTD"

local columnsMode1 = {
    { name = "Level", width = 50, dataIndex = "level", textAlign = "CENTER" },
    { name = "Name", width = 150, dataIndex = "name", textAlign = "LEFT" },
    { name = "Class", width = 100, dataIndex = "class", textAlign = "LEFT" },
    { name = "Zone", width = 150, dataIndex = "zone", textAlign = "LEFT" },
    { name = "Online", width = 60, dataIndex = "online", textAlign = "CENTER" }
}
local columnsMode2 = {
    { name = "Name", width = 150, dataIndex = "name", textAlign = "LEFT" },
    { name = "Rank", width = 120, dataIndex = "rank", textAlign = "LEFT" },
    { name = "Note", width = 200, dataIndex = "note", textAlign = "LEFT" },
    { name = "Officer Note", width = 200, dataIndex = "officenote", textAlign = "LEFT"},
    { name = "Last Online", width = 100, dataIndex = "lastOnlineF", textAlign = "LEFT" }
}
local function getCurrentColumns()
    if rosterMode == 1 then
        return columnsMode1
    else
        return columnsMode2
    end
end

local lineHeight = 20
local columnSpacing = 5
local showOfflineMembers = true -- Default to showing offline members
local currentSortColumnIndex = 2 -- Default sort by Name (index in 'columns' table for mode1)
local sortAscending = true

-- Main Frame and Core UI Structure Creation
local GR_Frame = CreateFrame("Frame", "GuildRosterFrame", UIParent)
GR_Frame:SetSize(800, 600)
GR_Frame:SetPoint("CENTER", UIParent, "CENTER")
GR_Frame:SetMovable(true) -- Will be controlled by GR_Frame:SetScript for OnMouseDown/Up
GR_Frame:EnableMouse(true) -- For OnMouseDown/Up

GR_Frame:SetBackdrop({
    bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
    tile = true, tileSize = 32, edgeSize = 32,
    insets = { left = 11, right = 12, top = 12, bottom = 11 }
})
GR_Frame:SetBackdropColor(0, 0, 0, 0.8)

local title = GR_Frame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
title:SetPoint("TOP", GR_Frame, "TOP", 0, -14)
title:SetText("Guild Roster")

local closeButton = CreateFrame("Button", "GuildRosterCloseButton", GR_Frame, "UIPanelCloseButton")
closeButton:SetPoint("TOPRIGHT", GR_Frame, "TOPRIGHT", -6, -8)

-- Tab Definitions (used for creating tab buttons later)
local tabDefinitions = {
    { name = "Roster", viewName = "Roster" },
    { name = "Guild Control", viewName = "GuildControl" },
    { name = "Guild Info", viewName = "GuildInfo" },
}
local tabStartY = -50
local tabHeight = 22
local tabWidth = 100
local tabSpacing = 5

-- View Containers
local rosterViewContainer = CreateFrame("Frame", "GRRosterViewContainer", GR_Frame)
rosterViewContainer:SetPoint("TOPLEFT", GR_Frame, "TOPLEFT", 0, tabStartY - tabHeight - 5)
rosterViewContainer:SetPoint("BOTTOMRIGHT", GR_Frame, "BOTTOMRIGHT", 0, 0)
rosterViewContainer:Hide()

local guildControlPanel = CreateFrame("Frame", "GRGuildControlPanel", GR_Frame)
guildControlPanel:SetAllPoints(rosterViewContainer)
guildControlPanel:Hide()
local gcTitle = guildControlPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
gcTitle:SetPoint("CENTER")
gcTitle:SetText("Guild Control Features - Coming Soon!")

local guildInfoPanel = CreateFrame("Frame", "GRGuildInfoPanel", GR_Frame)
guildInfoPanel:SetAllPoints(rosterViewContainer)
guildInfoPanel:Hide()
local giTitle = guildInfoPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
giTitle:SetPoint("CENTER")
giTitle:SetText("Guild Information - Coming Soon!")

-- ScrollFrame and ScrollChild (part of rosterViewContainer)
local scrollFrame = CreateFrame("ScrollFrame", "GRScrollFrame", rosterViewContainer, "UIPanelScrollFrameTemplate")
scrollFrame:SetPoint("TOPLEFT", rosterViewContainer, "TOPLEFT", 10, -55)
scrollFrame:SetPoint("BOTTOMRIGHT", rosterViewContainer, "BOTTOMRIGHT", -30, 10)
local scrollChild = CreateFrame("Frame", "GRScrollChild", scrollFrame)
scrollChild:SetSize(scrollFrame:GetWidth(), 1)
scrollFrame:SetScrollChild(scrollChild)


-- ALL GR_Frame Method Definitions
function GR_Frame:UpdateGuildRoster()
    wipe(guildMembers)
    local numTotalMembers, numOnlineMembers = GetNumGuildMembers()
    print(string.format("Total Guild Members: %d, Online: %d", numTotalMembers, numOnlineMembers))

    for i = 1, numTotalMembers do
        local name, rank, rankIndex, level, class, zone, note, officenote, online, status, classFileName, achievementPoints, achievementRank, isMobile, lastOnlineDays = GetGuildRosterInfo(i)
        if name then
            local lastOnlineFormatted = "Online"
            if not online then
                if lastOnlineDays == 0 then
                    lastOnlineFormatted = "Unknown"
                elseif lastOnlineDays then
                    lastOnlineFormatted = string.format("%d day(s)", lastOnlineDays)
                else
                    lastOnlineFormatted = "Offline"
                end
            end
            table.insert(guildMembers, {
                name = name, rank = rank, rankIndex = rankIndex, level = level, class = class, zone = zone,
                note = note or "", officenote = officenote or "", online = online, status = status,
                classFileName = classFileName, achievementPoints = achievementPoints, achievementRank = achievementRank,
                isMobile = isMobile, lastOnline = lastOnlineDays, lastOnlineF = lastOnlineFormatted
            })
        else
            print("Warning: GetGuildRosterInfo returned no name for index " .. i)
            break
        end
    end
    self:SortGuildRoster(currentSortColumnIndex)
    -- Placeholder print
    print("First 5 Guild Members (or fewer):")
    for i = 1, math.min(5, #guildMembers) do
        local member = guildMembers[i]
        print(string.format("  %s - Lvl %d %s in %s (%s)", member.name, member.level, member.class, member.zone, member.online and "Online" or "Offline"))
    end
end

function GR_Frame:DisplayRoster()
    if not scrollChild then return end
    local activeCols = getCurrentColumns()
    scrollChild:SetHeight(1)

    local displayIndex = 0
    local totalContentHeight = 0

    for i, memberData in ipairs(guildMembers) do
        if not showOfflineMembers and not memberData.online then
            -- Skip offline members if toggled off
        else
            displayIndex = displayIndex + 1
            totalContentHeight = displayIndex * lineHeight

            local currentX = 0
            for colIdx, colInfo in ipairs(activeCols) do
                local textWidget = scrollChild.textWidgets and scrollChild.textWidgets[displayIndex] and scrollChild.textWidgets[displayIndex][colIdx]
                if not textWidget then
                    textWidget = scrollChild:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
                    if not scrollChild.textWidgets then scrollChild.textWidgets = {} end
                    if not scrollChild.textWidgets[displayIndex] then scrollChild.textWidgets[displayIndex] = {} end
                    scrollChild.textWidgets[displayIndex][colIdx] = textWidget
                end

                textWidget:ClearAllPoints()
                textWidget:SetPoint("TOPLEFT", scrollChild, "TOPLEFT", currentX, - (displayIndex-1) * lineHeight - 2)
                textWidget:SetSize(colInfo.width, lineHeight)
                textWidget:SetText(memberData[colInfo.dataIndex] or "")
                textWidget:SetJustifyH(colInfo.textAlign)
                textWidget:Show()

                if colInfo.dataIndex == "class" then
                    local classColor = RAID_CLASS_COLORS[memberData.classFileName]
                    if classColor then
                        textWidget:SetTextColor(classColor.r, classColor.g, classColor.b)
                    else
                        textWidget:SetTextColor(1,1,1)
                    end
                else
                    textWidget:SetTextColor(1,1,1)
                end
                currentX = currentX + colInfo.width + columnSpacing
            end
        end
    end

    if scrollChild.textWidgets then
        local numCurrentCols = #activeCols
        for rIdx = displayIndex + 1, #scrollChild.textWidgets do
            if scrollChild.textWidgets[rIdx] then
                local colsToHide = #scrollChild.textWidgets[rIdx] -- Hide all existing widgets in this unused row
                for cIdx = 1, colsToHide do
                    if scrollChild.textWidgets[rIdx][cIdx] then
                        scrollChild.textWidgets[rIdx][cIdx]:Hide()
                    end
                end
            end
        end
    end
    scrollChild:SetHeight(math.max(totalContentHeight, scrollFrame:GetHeight()))
end

function GR_Frame:UpdateHeaderVisuals()
    local activeCols = getCurrentColumns()
    for i, colInfo in ipairs(activeCols) do
        if colInfo.headerWidget then
            local headerText = colInfo.name
            if i == currentSortColumnIndex then
                headerText = headerText .. (sortAscending and " |TInterface\\Buttons\\UI-SortArrow-Up:0|t" or " |TInterface\\Buttons\\UI-SortArrow-Down:0|t")
            end
            colInfo.headerWidget:SetText(headerText)
        end
    end
end

function GR_Frame:SortGuildRoster(columnIndex)
    local activeCols = getCurrentColumns()
    local columnToSortBy = activeCols[columnIndex]
    if not columnToSortBy then
        columnIndex = 1
        columnToSortBy = activeCols[columnIndex]
        if not columnToSortBy then return end
    end

    if currentSortColumnIndex == columnIndex then
        sortAscending = not sortAscending
    else
        currentSortColumnIndex = columnIndex
        sortAscending = true
    end

    table.sort(guildMembers, function(a, b)
        local valA = a[columnToSortBy.dataIndex]
        local valB = b[columnToSortBy.dataIndex]
        if type(valA) == "number" and type(valB) == "number" then
            return sortAscending and (valA < valB) or (valA > valB)
        elseif type(valA) == "string" and type(valB) == "string" then
            return sortAscending and (string.lower(valA) < string.lower(valB)) or (string.lower(valA) > string.lower(valB))
        elseif type(valA) == "boolean" and type(valB) == "boolean" then
             if valA == valB then return false end
             return sortAscending and valA or not valB
        else
            local strA = tostring(valA or "")
            local strB = tostring(valB or "")
            return sortAscending and (strA < strB) or (strA > strB)
        end
    end)
    self:UpdateHeaderVisuals()
    self:DisplayRoster()
end

function GR_Frame:RecreateHeaders()
    for _, headerButton in ipairs(GR_Frame.headers or {}) do
        headerButton:Hide()
        headerButton:SetParent(nil)
    end
    GR_Frame.headers = {}
    local currentX = 0
    local activeColumns = getCurrentColumns()
    for i, colInfo in ipairs(activeColumns) do
        local headerButton = CreateFrame("Button", "GRHeaderButton"..i, rosterViewContainer)
        headerButton:SetPoint("TOPLEFT", rosterViewContainer, "TOPLEFT", currentX + 10, -30)
        headerButton:SetSize(colInfo.width, lineHeight)
        headerButton:SetText(colInfo.name)
        headerButton:SetNormalFontObject("GameFontNormalSmall")
        headerButton:SetHighlightFontObject("GameFontHighlightSmall")
        headerButton.columnIndex = i
        headerButton:SetScript("OnClick", function(self_button)
            PlaySound("UIMenuButtonCheckBoxOn")
            GR_Frame:SortGuildRoster(self_button.columnIndex)
        end)
        table.insert(GR_Frame.headers, headerButton)
        colInfo.headerWidget = headerButton
        currentX = currentX + colInfo.width + columnSpacing
    end
    self:UpdateHeaderVisuals()
end

function GR_Frame:SetActiveView(viewName)
    activeMainView = viewName
    rosterViewContainer:Hide()
    guildControlPanel:Hide()
    guildInfoPanel:Hide()

    for _, tab in ipairs(GR_Frame.tabs) do
        if tab.viewName == viewName then
            tab:LockHighlight()
            PanelTemplates_SelectTab(tab)
        else
            tab:UnlockHighlight()
            PanelTemplates_DeselectTab(tab)
        end
    end

    if viewName == "Roster" then
        rosterViewContainer:Show()
        self:RecreateHeaders()
        self:SortGuildRoster(currentSortColumnIndex)
    elseif viewName == "GuildControl" then
        guildControlPanel:Show()
    elseif viewName == "GuildInfo" then
        guildInfoPanel:Show()
    end
end
-- End of GR_Frame Method Definitions


-- UI Element Creation & Configuration (that use GR_Frame methods in their scripts)
local offlineToggleCheckbox = CreateFrame("CheckButton", "GROfflineToggleCheckbox", rosterViewContainer, "UICheckButtonTemplate")
offlineToggleCheckbox:SetSize(20, 20)
offlineToggleCheckbox:SetPoint("TOPLEFT", rosterViewContainer, "TOPLEFT", 10, -5)
offlineToggleCheckbox.text = offlineToggleCheckbox:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
offlineToggleCheckbox.text:SetPoint("LEFT", offlineToggleCheckbox, "RIGHT", 5, 0)
offlineToggleCheckbox.text:SetText("Show Offline Members")
offlineToggleCheckbox:SetChecked(showOfflineMembers)
offlineToggleCheckbox:SetScript("OnClick", function(self_button)
    showOfflineMembers = self_button:GetChecked()
    PlaySound("igMainMenuOptionCheckBoxOn")
    GR_Frame:DisplayRoster()
end)

local modeToggleButton = CreateFrame("Button", "GRModeToggleButton", rosterViewContainer, "UIPanelButtonTemplate")
modeToggleButton:SetSize(120, 22)
modeToggleButton:SetPoint("LEFT", offlineToggleCheckbox.text, "RIGHT", 20, 0)
modeToggleButton:SetText("View Notes")
modeToggleButton:SetScript("OnClick", function(self_button)
    PlaySound("igMainMenuOption")
    if rosterMode == 1 then
        rosterMode = 2
        self_button:SetText("View Standard")
    else
        rosterMode = 1
        self_button:SetText("View Notes")
    end
    if scrollChild.textWidgets then
        for _, rowWidgets in ipairs(scrollChild.textWidgets) do
            for _, widget in ipairs(rowWidgets) do
                widget:SetParent(nil)
            end
        end
        wipe(scrollChild.textWidgets)
    end
    currentSortColumnIndex = 1
    sortAscending = true
    GR_Frame:RecreateHeaders()
    GR_Frame:SortGuildRoster(currentSortColumnIndex)
end)

-- Tab Button creation loop
GR_Frame.tabs = {}
for i, tabInfo in ipairs(tabDefinitions) do
    local tabButton = CreateFrame("Button", "GRTabButton"..i, GR_Frame, "CharacterFrameTabButtonTemplate")
    tabButton:SetSize(tabWidth, tabHeight)
    tabButton:SetPoint("TOPLEFT", GR_Frame, "TOPLEFT", 10 + (i-1)*(tabWidth + tabSpacing), tabStartY)
    tabButton:SetText(tabInfo.name)
    tabButton.viewName = tabInfo.viewName
    tabButton:SetScript("OnClick", function(self_tab)
        PlaySound("UChatScrollButton")
        GR_Frame:SetActiveView(self_tab.viewName)
    end)
    table.insert(GR_Frame.tabs, tabButton)
end

-- Initial Header Creation (done within SetActiveView for the Roster tab, or if Roster is default)
-- GR_Frame:RecreateHeaders() -- This is now called by SetActiveView("Roster",...)

-- Frame Scripts for GR_Frame
GR_Frame:SetScript("OnShow", function(self_frame)
    print("GuildRosterFrame OnShow: Updating roster data...")
    -- SetActiveView will be called if the frame is hidden and shown by slash command
    -- If it's the first time showing, SetActiveView at the end of script handles initial population
    -- self_frame:UpdateGuildRoster() -- This is now called by SetActiveView("Roster") if roster is active
    -- If GR_Frame is shown, and no view was active, default to roster.
    -- Or, if a view was active, SetActiveView should handle re-showing it.
    -- The SetActiveView at the end of the script ensures the initial state.
    -- When /gr is used to show, we likely want to refresh current view or default.
    GR_Frame:SetActiveView(activeMainView) -- Refresh current view or set default
end)
GR_Frame:SetScript("OnMouseDown", function(self_frame, button)
    if button == "LeftButton" then self_frame:StartMoving() end
end)
GR_Frame:SetScript("OnMouseUp", function(self_frame, button)
    if button == "LeftButton" then self_frame:StopMovingOrSizing() end
end)

-- Hide the main frame initially (SetActiveView will show the relevant parts)
GR_Frame:Hide() -- This was already done earlier, but ensure its state before SetActiveView

-- Initial Setup Calls
GR_Frame:SetActiveView(activeMainView)

-- Slash Command Registration
SLASH_GUILDROSTER1 = "/gr"
SLASH_GUILDROSTER2 = "/guildroster"
SlashCmdList["GUILDROSTER"] = function(msg)
    if GR_Frame:IsShown() then
        GR_Frame:Hide()
    else
        GR_Frame:Show() -- OnShow script will call SetActiveView
    end
end

print("GuildRoster Addon Loaded. Type /gr or /guildroster to toggle the window.")
