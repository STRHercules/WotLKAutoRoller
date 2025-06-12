-- Create the main frame
local GR_Frame = CreateFrame("Frame", "GuildRosterFrame", UIParent)
GR_Frame:SetSize(800, 600)
GR_Frame:SetPoint("CENTER", UIParent, "CENTER")
GR_Frame:SetMovable(true)
GR_Frame:EnableMouse(true)
GR_Frame:SetScript("OnMouseDown", function(self, button)
    if button == "LeftButton" then
        self:StartMoving()
    end
end)
GR_Frame:SetScript("OnMouseUp", function(self, button)
    if button == "LeftButton" then
        self:StopMovingOrSizing()
    end
end)

-- Add a backdrop
GR_Frame:SetBackdrop({
    bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
    tile = true,
    tileSize = 32,
    edgeSize = 32,
    insets = { left = 11, right = 12, top = 12, bottom = 11 }
})
GR_Frame:SetBackdropColor(0, 0, 0, 0.8) -- Black with some transparency

-- Title Text
local title = GR_Frame:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
title:SetPoint("TOP", GR_Frame, "TOP", 0, -14)
title:SetText("Guild Roster")

-- Close Button
local closeButton = CreateFrame("Button", "GuildRosterCloseButton", GR_Frame, "UIPanelCloseButton")
closeButton:SetPoint("TOPRIGHT", GR_Frame, "TOPRIGHT", -6, -8)

-- Checkbox for toggling offline members
local offlineToggleCheckbox = CreateFrame("CheckButton", "GROfflineToggleCheckbox", GR_Frame, "UICheckButtonTemplate")
offlineToggleCheckbox:SetSize(20, 20)
offlineToggleCheckbox:SetPoint("TOPRIGHT", title, "BOTTOMRIGHT", -50, -5) -- Position relative to title or another anchor

offlineToggleCheckbox.text = offlineToggleCheckbox:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
offlineToggleCheckbox.text:SetPoint("LEFT", offlineToggleCheckbox, "RIGHT", 5, 0)
offlineToggleCheckbox.text:SetText("Show Offline Members")

offlineToggleCheckbox:SetChecked(showOfflineMembers) -- Set initial state

offlineToggleCheckbox:SetScript("OnClick", function(self)
    showOfflineMembers = self:GetChecked()
    PlaySound("igMainMenuOptionCheckBoxOn") -- Optional: sound feedback
    GR_Frame:DisplayRoster() -- Refresh the roster display
end)

-- Roster Mode Toggle Button
local modeToggleButton = CreateFrame("Button", "GRModeToggleButton", GR_Frame, "UIPanelButtonTemplate")
modeToggleButton:SetSize(120, 22)
modeToggleButton:SetPoint("LEFT", offlineToggleCheckbox.text, "RIGHT", 20, 0)
modeToggleButton:SetText("View Notes") -- Initial text for mode 1

modeToggleButton:SetScript("OnClick", function(self_button) -- Renamed self to self_button
    PlaySound("igMainMenuOption")
    if rosterMode == 1 then
        rosterMode = 2
        self_button:SetText("View Standard")
    else
        rosterMode = 1
        self_button:SetText("View Notes")
    end

    -- Clear text widgets from scrollChild as column structure changes
    if scrollChild.textWidgets then
        for _, rowWidgets in ipairs(scrollChild.textWidgets) do
            for _, widget in ipairs(rowWidgets) do
                widget:SetParent(nil) -- Full removal of old widgets
            end
        end
        wipe(scrollChild.textWidgets)
    end

    currentSortColumnIndex = 1 -- Default to first column of new mode
    sortAscending = true

    GR_Frame:RecreateHeaders()
    GR_Frame:SortGuildRoster(currentSortColumnIndex) -- This will also call DisplayRoster
end)

GR_Frame.tabs = {}
local tabDefinitions = {
    { name = "Roster", viewName = "Roster" },
    { name = "Guild Control", viewName = "GuildControl" },
    { name = "Guild Info", viewName = "GuildInfo" },
    -- Add more tabs here as other stubs are created
}
local tabStartY = -50 -- Adjust as needed, below title/options
local tabHeight = 22
local tabWidth = 100
local tabSpacing = 5

for i, tabInfo in ipairs(tabDefinitions) do
    local tabButton = CreateFrame("Button", "GRTabButton"..i, GR_Frame, "CharacterFrameTabButtonTemplate") -- Reusing a Blizzard template
    tabButton:SetSize(tabWidth, tabHeight)
    tabButton:SetPoint("TOPLEFT", GR_Frame, "TOPLEFT", 10 + (i-1)*(tabWidth + tabSpacing), tabStartY)
    tabButton:SetText(tabInfo.name)
    tabButton.viewName = tabInfo.viewName

    tabButton:SetScript("OnClick", function(self)
        PlaySound("UChatScrollButton") -- Sound for tab click
        GR_Frame:SetActiveView(self.viewName)
    end)
    table.insert(GR_Frame.tabs, tabButton)
end

-- Create a container for the roster view elements
local rosterViewContainer = CreateFrame("Frame", "GRRosterViewContainer", GR_Frame)
rosterViewContainer:SetPoint("TOPLEFT", GR_Frame, "TOPLEFT", 0, tabStartY - tabHeight - 5) -- Position below tabs
rosterViewContainer:SetPoint("BOTTOMRIGHT", GR_Frame, "BOTTOMRIGHT", 0, 0)
rosterViewContainer:Hide() -- Hide by default

-- Guild Control Placeholder Panel
local guildControlPanel = CreateFrame("Frame", "GRGuildControlPanel", GR_Frame)
guildControlPanel:SetAllPoints(rosterViewContainer) -- Use same space as roster container
guildControlPanel:Hide()

local gcTitle = guildControlPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
gcTitle:SetPoint("CENTER")
gcTitle:SetText("Guild Control Features - Coming Soon!")

-- Guild Information Placeholder Panel
local guildInfoPanel = CreateFrame("Frame", "GRGuildInfoPanel", GR_Frame)
guildInfoPanel:SetAllPoints(rosterViewContainer) -- Use same space
guildInfoPanel:Hide()

local giTitle = guildInfoPanel:CreateFontString(nil, "ARTWORK", "GameFontNormalLarge")
giTitle:SetPoint("CENTER")
giTitle:SetText("Guild Information - Coming Soon!")

-- Now, define scrollFrame AND reparent existing roster-specific elements to rosterViewContainer:
local scrollFrame = CreateFrame("ScrollFrame", "GRScrollFrame", rosterViewContainer, "UIPanelScrollFrameTemplate")
scrollFrame:SetPoint("TOPLEFT", rosterViewContainer, "TOPLEFT", 10, -55) -- Corrected Y: below offline/mode toggles AND headers
scrollFrame:SetPoint("BOTTOMRIGHT", rosterViewContainer, "BOTTOMRIGHT", -30, 10)

offlineToggleCheckbox:SetParent(rosterViewContainer)
offlineToggleCheckbox:ClearAllPoints()
offlineToggleCheckbox:SetPoint("TOPLEFT", rosterViewContainer, "TOPLEFT", 10, -5)

modeToggleButton:SetParent(rosterViewContainer)
modeToggleButton:ClearAllPoints()
modeToggleButton:SetPoint("LEFT", offlineToggleCheckbox.text, "RIGHT", 20, 0)

-- Scroll Child (content frame) - Parent to the new scrollFrame instance
local scrollChild = CreateFrame("Frame", "GRScrollChild", scrollFrame)
scrollChild:SetSize(scrollFrame:GetWidth(), 1)
scrollFrame:SetScrollChild(scrollChild)

-- Initial Header Creation - Headers will be parented to rosterViewContainer by RecreateHeaders
GR_Frame:RecreateHeaders()

-- Hide the main frame initially (as SetActiveView will show the relevant parts)
GR_Frame:Hide()

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
-- Replace the old 'columns' variable with a function or dynamic assignment
local function getCurrentColumns()
    if rosterMode == 1 then
        return columnsMode1
    else
        return columnsMode2
    end
end

-- local columns = { -- This is now replaced by getCurrentColumns()
--     { name = "Level", width = 50, dataIndex = "level", textAlign = "CENTER" },
--     { name = "Name", width = 150, dataIndex = "name", textAlign = "LEFT" },
--     { name = "Class", width = 100, dataIndex = "class", textAlign = "LEFT" }, -- Added Class as it's generally useful
--     { name = "Zone", width = 150, dataIndex = "zone", textAlign = "LEFT" },
-- }
local lineHeight = 20
local columnSpacing = 5
local showOfflineMembers = true -- Default to showing offline members
local currentSortColumnIndex = 2 -- Default sort by Name (index in 'columns' table for mode1)
local sortAscending = true

function GR_Frame:RecreateHeaders()
    -- Clear existing headers
    for _, headerButton in ipairs(GR_Frame.headers or {}) do
        headerButton:Hide()
        headerButton:SetParent(nil) -- Full removal
    end
    GR_Frame.headers = {}

    local currentX = 0
    local activeColumns = getCurrentColumns()
    for i, colInfo in ipairs(activeColumns) do
        local headerButton = CreateFrame("Button", "GRHeaderButton"..i, rosterViewContainer) -- NEW PARENT
        -- Position headers below offline/mode toggles
        headerButton:SetPoint("TOPLEFT", rosterViewContainer, "TOPLEFT", currentX + 10, -30) -- Corrected Y
        headerButton:SetSize(colInfo.width, lineHeight)

        headerButton:SetText(colInfo.name)
        headerButton:SetNormalFontObject("GameFontNormalSmall")
        headerButton:SetHighlightFontObject("GameFontHighlightSmall")

        headerButton.columnIndex = i

        headerButton:SetScript("OnClick", function(self_button) -- Renamed self to self_button
            PlaySound("UIMenuButtonCheckBoxOn")
            GR_Frame:SortGuildRoster(self_button.columnIndex)
        end)

        table.insert(GR_Frame.headers, headerButton)
        colInfo.headerWidget = headerButton -- Assign the button to colInfo
        currentX = currentX + colInfo.width + columnSpacing -- Use global columnSpacing
    end
    self:UpdateHeaderVisuals() -- Update for new headers
end

function GR_Frame:SetActiveView(viewName)
    activeMainView = viewName

    -- Hide all main panels first
    rosterViewContainer:Hide()
    guildControlPanel:Hide()
    guildInfoPanel:Hide()
    -- Hide other panels when added (AddMember, MOTD)

    -- Update tab appearance
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
    -- Add elseif for other views here
    end
end

function GR_Frame:UpdateHeaderVisuals()
    local activeCols = getCurrentColumns()
    for i, colInfo in ipairs(activeCols) do
        if colInfo.headerWidget then -- Check if headerWidget exists
            local headerText = colInfo.name
            if i == currentSortColumnIndex then
                headerText = headerText .. (sortAscending and " |TInterface\\Buttons\\UI-SortArrow-Up:0|t" or " |TInterface\\Buttons\\UI-SortArrow-Down:0|t")
            end
            colInfo.headerWidget:SetText(headerText)
        end
    end
end

function GR_Frame:UpdateGuildRoster()
    wipe(guildMembers) -- Clear previous data

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
                name = name,
                rank = rank,
                rankIndex = rankIndex,
                level = level,
                class = class,
                zone = zone,
                note = note or "",
                officenote = officenote or "",
                online = online,
                status = status,
                classFileName = classFileName,
                achievementPoints = achievementPoints,
                achievementRank = achievementRank, -- Storing this as well
                isMobile = isMobile,
                lastOnline = lastOnlineDays, -- Store raw days
                lastOnlineF = lastOnlineFormatted -- Formatted string for display
            })
        else
            -- If GetGuildRosterInfo returns nil for name, it might mean we've iterated past actual members
            -- or there's an issue. For safety, break.
            print("Warning: GetGuildRosterInfo returned no name for index " .. i)
            break
        end
    end

    -- self:DisplayRoster() -- Call to update the UI -- This is now handled by SortGuildRoster
    self:SortGuildRoster(currentSortColumnIndex) -- Sorts and then calls DisplayRoster

    -- Placeholder: Print first few members to chat for verification
    print("First 5 Guild Members (or fewer):")
    for i = 1, math.min(5, #guildMembers) do
        local member = guildMembers[i]
        print(string.format("  %s - Lvl %d %s in %s (%s)", member.name, member.level, member.class, member.zone, member.online and "Online" or "Offline"))
    end

    -- TODO: Trigger a refresh of the display elements here
end

function GR_Frame:DisplayRoster()
    if not scrollChild then return end
    local activeCols = getCurrentColumns()

    scrollChild:SetHeight(1)
    -- Children management for pooling is complex when columns change.
    -- For now, the mode toggle will wipe scrollChild.textWidgets.

    local displayIndex = 0
    local totalContentHeight = 0

    for i, memberData in ipairs(guildMembers) do
        if not showOfflineMembers and not memberData.online and rosterMode == 1 and memberData.dataIndex == "online" then -- Specific check for 'online' column in mode 1
             -- This condition is tricky; online status is a top-level filter.
             -- The original filter was: if not showOfflineMembers and not memberData.online then
             -- Let's stick to that general filter first.
        end

        if not showOfflineMembers and not memberData.online then
            -- Skip this member if we're hiding offline and they are offline
            -- This filter applies regardless of current view mode.
        else
            displayIndex = displayIndex + 1
            local currentY = displayIndex * lineHeight
            totalContentHeight = currentY

            local currentX = 0
            for colIdx, colInfo in ipairs(activeCols) do
                local textWidget = scrollChild.textWidgets and scrollChild.textWidgets[displayIndex] and scrollChild.textWidgets[displayIndex][colIdx]
                if not textWidget then
                    textWidget = scrollChild:CreateFontString(nil, "ARTWORK", "GameFontNormalSmall")
                    if not scrollChild.textWidgets then scrollChild.textWidgets = {} end
                    if not scrollChild.textWidgets[displayIndex] then scrollChild.textWidgets[displayIndex] = {} end
                    scrollChild.textWidgets[displayIndex][colIdx] = textWidget
                end

                textWidget:ClearAllPoints() -- Important for reuse
                textWidget:SetPoint("TOPLEFT", scrollChild, "TOPLEFT", currentX, - (displayIndex-1) * lineHeight - 2)
                textWidget:SetSize(colInfo.width, lineHeight)
                textWidget:SetText(memberData[colInfo.dataIndex] or "")
                textWidget:SetJustifyH(colInfo.textAlign)
                textWidget:Show() -- Ensure it's visible

                if colInfo.dataIndex == "class" then
                    local classColor = RAID_CLASS_COLORS[memberData.classFileName]
                    if classColor then
                        textWidget:SetTextColor(classColor.r, classColor.g, classColor.b)
                    else
                        textWidget:SetTextColor(1,1,1) -- Default to white if no class color
                    end
                else
                    textWidget:SetTextColor(1,1,1) -- Default other columns to white
                end
                currentX = currentX + colInfo.width + columnSpacing
            end
        end
    end

    -- Hide any remaining unused widgets from previous renders
    if scrollChild.textWidgets then
        local numPrevWidgetsInRow = #scrollChild.textWidgets[1] or 0 -- Get count from a potentially existing row
        local numCurrentCols = #activeCols
        for rIdx = displayIndex + 1, #scrollChild.textWidgets do
            if scrollChild.textWidgets[rIdx] then
                -- Hide widgets based on the number of columns in the *previous* render for this row if it exists
                -- or current if creating fresh. Max of previous and current to be safe if structure is mixed.
                local colsToHide = math.max(numPrevWidgetsInRow, numCurrentCols)
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

function GR_Frame:SortGuildRoster(columnIndex)
    local activeCols = getCurrentColumns()
    local columnToSortBy = activeCols[columnIndex]
    if not columnToSortBy then
        -- If column index is out of bounds for current mode, default to first column
        columnIndex = 1
        columnToSortBy = activeCols[columnIndex]
        if not columnToSortBy then return end -- Should not happen if modes have columns
    end

    if currentSortColumnIndex == columnIndex then
        sortAscending = not sortAscending
    else
        currentSortColumnIndex = columnIndex
        sortAscending = true -- Default to ascending when changing column
    end

    table.sort(guildMembers, function(a, b)
        local valA = a[columnToSortBy.dataIndex]
        local valB = b[columnToSortBy.dataIndex]

        -- Handle nil or different types if necessary, though data should be consistent
        if type(valA) == "number" and type(valB) == "number" then
            return sortAscending and (valA < valB) or (valA > valB)
        elseif type(valA) == "string" and type(valB) == "string" then
            return sortAscending and (string.lower(valA) < string.lower(valB)) or (string.lower(valA) > string.lower(valB))
        elseif type(valA) == "boolean" and type(valB) == "boolean" then
             if valA == valB then return false end -- Keep original order if equal
             return sortAscending and valA or not valB -- True comes before false if ascending
        else
            -- Fallback for mixed types or other types: treat as string or maintain order
            local strA = tostring(valA or "")
            local strB = tostring(valB or "")
            return sortAscending and (strA < strB) or (strA > strB)
        end
    end)

    self:UpdateHeaderVisuals()
    self:DisplayRoster()
end

-- Hook into the OnShow script to update data when the frame is shown
GR_Frame:SetScript("OnShow", function(self)
    print("GuildRosterFrame OnShow: Updating roster data...")
    self:UpdateGuildRoster()
    -- TODO: Populate the display elements
end)

-- Keep the existing OnMouseDown and OnMouseUp scripts
GR_Frame:SetScript("OnMouseDown", GR_Frame:GetScript("OnMouseDown"))
GR_Frame:SetScript("OnMouseUp", GR_Frame:GetScript("OnMouseUp"))

-- Slash command to toggle the frame
SLASH_GUILDROSTER1 = "/gr"
SLASH_GUILDROSTER2 = "/guildroster"
SlashCmdList["GUILDROSTER"] = function(msg)
    if GR_Frame:IsShown() then
        GR_Frame:Hide()
    else
        GR_Frame:Show()
    end
end

GR_Frame:SetActiveView(activeMainView)

print("GuildRoster Addon Loaded. Type /gr or /guildroster to toggle the window.")
