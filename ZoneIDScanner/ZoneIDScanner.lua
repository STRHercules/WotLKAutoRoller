local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")

f:SetScript("OnEvent", function()
  ZoneIDScannerData = {}
  local zonesScanned = 0

  -- Loop through continents and zones
  for continent = 1, GetNumMapContinents() do
    for zone = 1, GetNumMapZones(continent) do
      SetMapZoom(continent, zone)
      local zoneName = GetMapInfo()
      local zoneID = GetCurrentMapAreaID()

      if zoneName and zoneID then
        ZoneIDScannerData[zoneID] = zoneName
        print(string.format("Zone ID: %d | Name: %s", zoneID, zoneName))
        zonesScanned = zonesScanned + 1
      end
    end
  end

  print("Scan complete! Zones found: " .. zonesScanned)
end)
