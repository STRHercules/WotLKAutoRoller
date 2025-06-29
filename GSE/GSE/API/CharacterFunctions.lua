local GSE = GSE
local L = GSE.L

local Statics = GSE.Static
local GetSpecialization=GetSpecialization or GSE.GetCurrentSpecID
if not GetSpecialization then
	GetSpecialization=GSE.GetCurrentSpecID
end
--- Return the characters current spec id
function GSE.GetSpecialization()
return GSE.GetCurrentSpecID()
end
function GSE.GetCurrentSpecID()
--local  name, iconTexture, pointsSpent, background, previewPointsSpent = GetTalentTabInfo(tabIndex[, inspect[, isPet]][, talentGroup])
-- if event == "INSPECT_READY" then
  -- local spec = ""
  -- _, name = GetTalentTabInfo(GetPrimaryTalentTree(GetActiveTalentGroup()))
  -- spec = name
  -- return spec
-- else
  -- NotifyInspect(unit)
-- end
 -- local currentSpec = GetSpecialization() --local index = GetActiveTalentGroup(isInspect, isPet);
  --return currentSpec and select(1, GetSpecializationInfo(currentSpec)) or 0 ---specid Statics.wotlkSpecIDList 

--local name, icon, pointsSpent, background, previewPointsSpent = GetTalentTabInfo(tab,isInspect,isPet,activeSpec);


  local activeSpec = GetActiveTalentGroup()
local maxpointspents=0
local  primarytree=0
----print(GetTalentTabInfo(activeTalentGroup))
for tab = 1, GetNumTalentTabs() do
   local tabname, tabicon, nopointsSpent, tabbackground, tabpreviewPointsSpent = GetTalentTabInfo(tab,false,false,activeSpec)
   if (nopointsSpent>maxpointspents) then
      maxpointspents=nopointsSpent
      primarytree=tab
   end
   
end

        local name1,icon=GetTalentTabInfo(primarytree,false,false,activeSpec)
        if name1 then
            name1=string.upper(name1)
        else
            name1=""
        end
  local specid

          for k,v in pairs(Statics.wotlkSpecIDList) do

		local searchStr=string.upper(v)
		local st,ed=string.find(searchStr,name1)
		local isClass,isClass1=UnitClass("player")
		isClass=string.upper(isClass)
		isClass1=string.upper(isClass1)
		local st1,ed1=string.find(searchStr,isClass)
		local st2,ed2=string.find(searchStr,isClass1)
			if(st~=nil) then 
				if(st1~=nil or st2~=nil) then 
					specid=k 
				end	
                        end
          end
  if not specid then
    specid = 0
  end
  return specid,name1,icon
end

--- Return the characters class id
function GSE.GetCurrentClassID()
  --local _, _, currentclassId = UnitClass("player")--classDisplayName, class, classID = UnitClass("unit");
  local class1, class = UnitClass("player")
  local currentclassId1
  for k,v in pairs(Statics.wotlkClassIDList) do
        if (string.upper(v)==string.upper(class) or string.upper(v)==string.upper(class1)) then
                currentclassId1=k
        end
  end
  if not currentclassId1 then
    currentclassId1 = 0
  end
  return currentclassId1
end

--- Return the characters class id
function GSE.GetCurrentClassNormalisedName()
  --local _, classnormalisedname, _ = UnitClass("player")--classDisplayName, class, classID = UnitClass("unit");
  local _, classnormalisedname = UnitClass("player")--classDisplayName, class, classID = UnitClass("unit");
  return string.upper(classnormalisedname)
end

function GSE.GetClassIDforSpec(specid)
  --local id, name, description, icon, role, class = GetSpecializationInfoByID(specid)
--classid
	local value,classid,class;
        for k,v in pairs(Statics.wotlkClassIDList) do
                if (k==specid) then
                        classid=k
                end
        end
  
  for k,v in pairs(Statics.wotlkSpecIDList) do
	if (k==specid) then 
		--value=Statics.wotlkSpecIDList[specID]
		local idx=string.find(v," - ")
		if(idx~=nil) then
			class=string.sub(v,idx+3)
		end
		--print(v,last,last[#last])
	    --local class=string.upper(last[#last])
                for k1,v1 in pairs(Statics.wotlkClassIDList) do
                        if (string.upper(v1)==string.upper(class)) then
                        classid=k1
                        end
                end
        end
  end
	--local last = string.split( value, "% " )
	--local class=string.upper(last[#last])

  
  -- local classid = 0
  -- if specid <= 12 then
    -- classid = specid
  -- else
    -- for i=1, 12, 1 do
    -- local cdn, st, cid = GetClassInfo(i)--classDisplayName, classTag, classID = GetClassInfo(index)

	 -- st=string.upper(st)
      -- if class == st then
        -- classid = i
      -- end
   -- end
  -- end
  if not classid then
    classid = 0
  end
  return classid
end

function GSE.GetClassIcon(classid)
  -- All players are the Hero class so return a generic icon
  return "Interface\\Icons\\INV_Misc_QuestionMark"
end

--- Check if the specID provided matches the plauers current class.
function GSE.isSpecIDForCurrentClass(specID)
  for k,v in pairs(Statics.wotlkSpecIDList) do
        if (k==specID) then
                local value=Statics.wotlkSpecIDList[specID]
                local last = string.split( value, "% " )
            local class=string.upper(last[#last])
                local currentenglishclass, currentclassDisplayName = UnitClass("player")

                currentenglishclass=string.upper(currentenglishclass)
                currentclassId=string.upper(currentclassDisplayName)

                for k1,v1 in pairs(Statics.wotlkClassIDList) do
                        if (string.upper(v1)==string.upper(class)) then currentclassId=k1 end
                end

                return (class==currentenglishclass or specID==currentclassId)

        end
  end
  return false
end

  -- local _, specname, specdescription, specicon, _, specrole, specclass = GetSpecializationInfoByID(specID)
  -- local currentclassDisplayName, currentenglishclass, currentclassId = UnitClass("player")
  -- if specID > 15 then
    -- GSE.PrintDebugMessage("Checking if specID " .. specID .. " " .. specclass .. " equals " .. currentenglishclass)
  -- else
    -- GSE.PrintDebugMessage("Checking if specID " .. specID .. " equals currentclassid " .. currentclassId)
  -- end
  -- return (specclass==currentenglishclass or specID==currentclassId)


function GSE.GetSpecNames()
  local keyset={}
  for k,v in pairs(Statics.wotlkSpecIDList) do
    keyset[v] = v
  end
  return keyset
end

--- Returns the Character Name in the form Player@server
function GSE.GetCharacterName()
  return  GetUnitName("player", true) .. '@' .. GetRealmName()
end

--- Returns the current Talent Selections as a string
function GSE.GetCurrentTalents()
  local talents = ""
    for talentTier = 1, 7 do
  --for talentTier = 1, MAX_TALENT_TIERS do
    --local available, selected = GetTalentTierInfo(talentTier, 1)
   -- talents = talents .. (available and selected or "?" .. ",")
   talents = talents .. ("?" .. ",")
  end
  return talents
end


--- Experimental attempt to load a WeakAuras string.
function GSE.LoadWeakauras(str)
  local WeakAuras = WeakAuras

  if WeakAuras then
    WeakAuras.ImportString(str)
  end
end
