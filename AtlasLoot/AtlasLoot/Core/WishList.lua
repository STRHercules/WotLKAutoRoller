local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

local ALModule = AtlasLoot:NewModule("WishList", "AceSerializer-3.0", "AceComm-3.0")

local playerName = UnitName("player")
local xtyp, xarg2
local OptionsLoadet
local curaddicon, curaddname = "",""
local curtable = {"","",""}
local editName

AtlasLootWishList = {}

function AtlasLoot:ShowWishList(listType,arg2,arg3)
	AtlasLoot_CurrentWishList = {Show = {ListType = listType, ListNum = arg2 ,Name = "WishLists", Icon = AtlasLootWishList[listType][arg2].Icon}}
	local numPages = math.ceil(#AtlasLootWishList[listType][arg2]/30)
	for n = 1 ,numPages, 1 do
		table.insert(AtlasLoot_CurrentWishList.Show, {Name = "Page "..n})
	end
		for _,v in ipairs(AtlasLootWishList[listType][arg2]) do
			local itemNum
			if (v[1]-(math.floor(v[1]/30)*30)) == 0 then
				itemNum = 30
			else
				itemNum = v[1]-(math.floor(v[1]/30)*30)
			end
			AtlasLoot_CurrentWishList.Show[math.ceil(v[1]/30)][itemNum] = v
		end
	AtlasLoot:ShowItemsFrame("Show", "AtlasLoot_CurrentWishList", arg3 or 1)
end

local function wishListNumberCheck(list)
	local count = 1
	for _, v in ipairs(list) do
		if v[1] and v[1] > count then
			count = v[1]
		end
	end
	return count + 1
end

--[[
AtlasLoot:WishListAddDropClick(typ, arg2, arg3, arg4)
Add a item too the wishlist or show the selected wishlist
]]
function AtlasLoot:WishListAddDropClick(typ, tableNum, data, show)
	local itemName = data.name
	local itemID = data.itemID
	if show then
		AtlasLoot:ShowWishList(typ, tableNum)
	else
		xtyp = typ
		xarg2 = tableNum
		if typ == "Own" then
			if AtlasLoot:WishListCheck(itemID) and not AtlasLootWishList.Options[playerName].AllowDuplicates then
				DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE..AL["AtlasLoot"]..": "..AtlasLoot:FixText(itemName)..self.Colors.RED..AL[" already in the WishList!"]..self.Colors.WHITE.." ("..AtlasLootWishList.Own[tableNum].Name..")")
				return
			end
			local tableCopy = AtlasLoot:CloneTable(data.item)
			table.insert(AtlasLootWishList.Own[tableNum], tableCopy)
			local tNum = #AtlasLootWishList.Own[tableNum]
			AtlasLootWishList.Own[tableNum][tNum].lootTable = {{data.dataID, data.dataSource, data.tablenum}, "Source"}
			AtlasLootWishList.Own[tableNum][tNum].desc = _G[data.dataSource][data.dataID].Name..": ".._G[data.dataSource][data.dataID][data.tablenum].Name
			AtlasLootWishList.Own[tableNum][tNum][1] = wishListNumberCheck(AtlasLootWishList.Own[tableNum])
			if AtlasLootWishList.Options[playerName].AutoSortWishlist then
				AtlasLoot:SortWishList(nil,"Own", tableNum)
			end
			DEFAULT_CHAT_FRAME:AddMessage(self.Colors.RED..AL["AtlasLoot"]..": "..AtlasLoot:FixText(itemName)..self.Colors.GREY..AL[" added to the WishList."]..self.Colors.WHITE.." ("..AtlasLootWishList.Own[tableNum].Name..")")
		elseif typ == "Shared" then
			if AtlasLoot:WishListCheck(itemID) and not AtlasLootWishList.Options[playerName].AllowDuplicates then
				DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE..AL["AtlasLoot"]..": "..AtlasLoot:FixText(itemName)..self.Colors.RED..AL[" already in the WishList!"]..self.Colors.WHITE.." ("..AtlasLootWishList.Shared[tableNum].Name)
				return
			end
			local tableCopy = AtlasLoot:CloneTable(data.item)
			table.insert(AtlasLootWishList.Shared[tableNum], tableCopy)
			local tNum = #AtlasLootWishList.Shared[tableNum]
			AtlasLootWishList.Shared[tableNum][tNum].lootTable = {{data.dataID, data.dataSource, data.tablenum}, "Source"}
			AtlasLootWishList.Shared[tableNum][tNum].desc = _G[data.dataSource][data.dataID].Name..": ".._G[data.dataSource][data.dataID][data.tablenum].Name
			AtlasLootWishList.Shared[tableNum][tNum][1] = wishListNumberCheck(AtlasLootWishList.Shared[tableNum])
			if AtlasLootWishList.Options[playerName].AutoSortWishlist then
				AtlasLoot:SortWishList(nil,"Shared", tableNum)
			end
			DEFAULT_CHAT_FRAME:AddMessage(self.Colors.RED..AL["AtlasLoot"]..": "..AtlasLoot:FixText(itemName)..self.Colors.GREY..AL[" added to the WishList."]..self.Colors.WHITE.." ("..AtlasLootWishList.Shared[tableNum].Name..")")
		end
	end
end

-- Add CustomHeader 
function AtlasLoot:AddItemCustomHeader(num,text)
	for _,v in ipairs(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum]) do
		if num <= v[1] then
			v[1] = v[1] + 1
		end
	end
	if text == "" or text == nil then
		table.insert(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum],{num, icon = "Blank", name = self.Colors.WHITE..text, ""})
	else
		table.insert(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum],{num, icon = "INV_Box_01", name =  self.Colors.WHITE..text, ""})
	end
	AtlasLoot:ShowWishList(AtlasLoot_CurrentWishList.Show.ListType, AtlasLoot_CurrentWishList.Show.ListNum,self.itemframe.refresh[3])
end

-- Opens edit wishlist name/icon window
function AtlasLoot:EditWishList()
	self:CreateWishlistOptions()
	AtlasLootWishList_AddFrame:Show()
    AtlasLottAddEditWishList:SetText(AL["Edit Wishlist"])
    AtlasLootWishListNewName:SetText(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum].Name)
    curaddicon = AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum].Icon
    editName = true
end

-- Moves wishlist item
function AtlasLoot:MoveWishlistItem(pos,itemNum,replaceNum,replaceNum2)
	itemNum = itemNum + ((self.itemframe.refresh[3]-1)*30)
	if pos == "Up" then replaceNum = itemNum - 1 replaceNum2 = 1 elseif pos == "Down" then replaceNum = itemNum + 1 replaceNum2 = -1 end
	if replaceNum ~= 0 then
		for i,v in ipairs(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum]) do
			if itemNum == v[1] then
				v[1] = replaceNum
			elseif v[1] == replaceNum then
				v[1] = v[1] + replaceNum2
			end
		end
		AtlasLoot:ShowWishList(AtlasLoot_CurrentWishList.Show.ListType, AtlasLoot_CurrentWishList.Show.ListNum,self.itemframe.refresh[3])
	end
end

--Sort wishlist
function AtlasLoot:SortWishList(refresh,type,tNumb)
	local sorted = {}
	local name = AtlasLootWishList[type][tNumb].Name
	local icon = AtlasLootWishList[type][tNumb].Icon
		for _,v in ipairs(AtlasLootWishList[type][tNumb]) do
			local function tableCheck()
				for _,t in ipairs(sorted) do
					if t[2][5] == v[5] then
						return t
					end
				end
			end
				if v[2] ~= 0 and tableCheck() then
					table.insert(tableCheck(),v)
				elseif v[2] ~= 0 then
					table.insert(sorted,{{0, 0, "INV_Box_01", self.Colors.WHITE..v[5], ""},v})
				end
		end
		AtlasLootWishList[type][tNumb] = {}
		local num = 1
		for _,v in ipairs(sorted) do
			for _,t in ipairs(v) do
				if num ~= 1 and t[3] == "INV_Box_01" then
					table.insert(AtlasLootWishList[type][tNumb],{num, 0, "Blank", self.Colors.WHITE.." ", ""})
					num = num + 1
				end
					table.insert(AtlasLootWishList[type][tNumb],{num,t[2],t[3],t[4],t[5],t[6],t[7],t[8]})
					num = num + 1
			end
		end
		AtlasLootWishList[type][tNumb].Name = name
		AtlasLootWishList[type][tNumb].Icon = icon
		if refresh then
		AtlasLoot:ShowWishList(type, tNumb)
		end
end

-- Opens add wishlist name/icon window
function AtlasLoot:AddWishList()
	self:CreateWishlistOptions()
	AtlasLootWishList_AddFrame:Show()
    AtlasLottAddEditWishList:SetText(AL["Add Wishlist"])
end

-- Clones a shared wishlist to personal table
function AtlasLoot:CloneSharedWishList()
	table.insert(AtlasLootWishList.Own,AtlasLootWishList[self.itemframe.refresh[1]][self.itemframe.refresh[3]])
end

-- Clones a shared wishlist to personal table
function AtlasLoot:SetDefaultWishList()
	if AtlasLoot_CurrentWishList.Show.ListType == "Own" then
		AtlasLootWishList.Options[playerName].DefaultWishList = {AtlasLoot_CurrentWishList.Show.ListType, "AtlasLootWishList", AtlasLoot_CurrentWishList.Show.ListNum}
	end
end

-- Deletes current wishlist
function AtlasLoot:DeleteWishList()
	if self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" then
		StaticPopup_Show("ATLASLOOT_DELETE_WISHLIST")
	end
end

-- Share current wishlist
function AtlasLoot:ShareWishList()
	StaticPopup_Show ("ATLASLOOT_SEND_WISHLIST",AtlasLootWishList.Own[AtlasLoot_CurrentWishList.Show.ListNum].Name)
end

--[[ 
AtlasLoot:WishListSwapButton
Main panel wishlistswap button
 ]]
 function AtlasLoot:WishListSwapButton(show)
	if AtlasLoot_CurrentWishList.Show.ListType == "Own" then
		if AtlasLootWishList.Shared[1] then
			AtlasLoot:WishListAddDropClick("Shared", 1, "", show)
			AtlasLootItemsFrame_Wishlist_Swap:SetText("Own")
		end
	elseif AtlasLoot_CurrentWishList.Show.ListType == "Shared" then
		AtlasLoot:WishListAddDropClick("Own", AtlasLootWishList.Options[playerName].DefaultWishList[3] or 1, "", show)
		AtlasLootItemsFrame_Wishlist_Swap:SetText("Shared")
	end
end

--[[ 
AtlasLoot:WishListButton
Main panel wishlist button
 ]]
function AtlasLoot:WishListButton(btn, show, buttonclick)
	if buttonclick == "RightButton" then
		AtlasLoot:ShowWishListDropDown(btn, show, "Enable")
	elseif buttonclick == "LeftButton" then
		if AtlasLootWishList.Own[1] then
			local listNum = AtlasLootWishList.Options[playerName].DefaultWishList
			if not AtlasLootWishList[listNum[1]][listNum[3]] then listNum[3] = 1 end
			AtlasLoot:WishListAddDropClick("Own", listNum[3], "", show)
		else
			DEFAULT_CHAT_FRAME:AddMessage(self.Colors.RED..AL["AtlasLoot"]..": "..AL["Please Create a Wishlist First."])
		end
	end
end

--[[
AtlasLoot:ShowWishListDropDown(xitemID, xitemTexture, xitemName, xlootPage, xsourcePage, button, show)
Show the dropdownlist with the wishlists
]]
function AtlasLoot:ShowWishListDropDown(btn, show, panelButton)
	if AtlasLootWishList.Options[playerName].UseDefaultWishlist == true and panelButton ~= "Enable" then
		AtlasLoot:WishListAddDropClick("Own", AtlasLootWishList.Options[playerName].DefaultWishList[3])
		return
	else
		if self.Dewdrop:IsOpen(btn) then
			self.Dewdrop:Close(1)
		else
			local setOptions = function(level, value)
				if level == 1 then
					self.Dewdrop:AddLine(
						"text", AL["Own Wishlists"],
						"tooltipTitle", AL["Own Wishlists"],
						"value", "OwnWishlists",
						"arg1", "1",
						"hasArrow", true,
						'textHeight', self.selectedProfile.txtSize,
						'textWidth', self.selectedProfile.txtSize,
						"notCheckable", true
					)
					self.Dewdrop:AddLine(
						"text", AL["Shared Wishlists"],
						"tooltipTitle", AL["Shared Wishlists"],
						"value", "SharedWishlists",
						"arg1", "1",
						"hasArrow", true,
						'textHeight', self.selectedProfile.txtSize,
						'textWidth', self.selectedProfile.txtSize,
						"notCheckable", true
					)
					self.Dewdrop:AddLine(
						"text", AL["Add Wishlist"],
						"func", function() AtlasLoot:AddWishList() end,
						'closeWhenClicked', true,
						'textHeight', self.selectedProfile.txtSize,
						'textWidth', self.selectedProfile.txtSize,
						"notCheckable", true
					)
				elseif level == 2 then
					if value == "OwnWishlists" then
						for k,v in pairs(AtlasLootWishList.Own) do
							if type(v) == "table" then
								self.Dewdrop:AddLine(
									"text", v.Name,
									"tooltipTitle", v.Name,
									"func", function() AtlasLoot:WishListAddDropClick("Own", k, "", show) end,
									'textHeight', self.selectedProfile.txtSize,
									'textWidth', self.selectedProfile.txtSize,
									'closeWhenClicked', true,
									"notCheckable", true
								)
							end
						end
					elseif value == "SharedWishlists" then
						for k,v in pairs(AtlasLootWishList.Shared) do
							if type(v) == "table" then
								self.Dewdrop:AddLine(
									"text", v.Name,
									"tooltipTitle", v.Name,
									"func", function() AtlasLoot:WishListAddDropClick("Own", k, "", show) end,
									'textHeight', self.selectedProfile.txtSize,
									'textWidth', self.selectedProfile.txtSize,
									'closeWhenClicked', true,
									"notCheckable", true
								)
							end
						end
					end
				end
				self.Dewdrop:AddLine(
                'text', AL["Close Menu"],
                'textR', 0,
                'textG', 1,
                'textB', 1,
                'textHeight', self.selectedProfile.txtSize,
                'textWidth', self.selectedProfile.txtSize,
                'closeWhenClicked', true,
                'notCheckable', true
            )
			end
			self.Dewdrop:Open(btn,
				"point", function(parent)
					return "TOP", "BOTTOM"
				end,
				"children", setOptions
			)
		end

	--	DEFAULT_CHAT_FRAME:AddMessage(self.Colors.RED..AL["AtlasLoot"]..": "..AL["Please set a default Wishlist."])
	end
end

--[[
AtlasLoot:DeleteFromWishList(btnNumber)
Deletes the specified items from the wishlist
]]
function AtlasLoot:DeleteFromWishList(btnNumber)
	btnNumber  = btnNumber + ((self.itemframe.refresh[3] - 1) * 30)
	if self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" then
	   for i, v in ipairs(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum]) do
			if v[1] == btnNumber then
				local numPos = v[1]
				local name
				if v.name then
					name = v.name
				elseif v.itemID then
					name = GetItemInfo(v.itemID)
				else
					name = GetSpellInfo(v.spellID)
				end
				DEFAULT_CHAT_FRAME:AddMessage(self.Colors.RED..AL["AtlasLoot"]..": "..self:FixText(name)..self.Colors.GREY..AL[" deleted from the WishList."]..self.Colors.WHITE.." ("..AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum].Name..")")
				table.remove(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum], i)
				--Sort wishlist after deleting an item
				for n,table in ipairs(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum]) do
					if numPos <= table[1] then
						table[1] = table[1] - 1
					end
				end
				break
			end
	   end
	end
	self.itemframe:Hide()
	self:ShowWishList(AtlasLoot_CurrentWishList.Show.ListType, AtlasLoot_CurrentWishList.Show.ListNum,self.itemframe.refresh[3])
 end

--[[
AtlasLoot:WishListCheck(itemID, all):
Returns true if an item is already in the wishlist
]]
function AtlasLoot:WishListCheck(itemID, all)
	if not itemID then return false end
	if all == true then
		local rettex = ""
		if not AtlasLootWishList.Options[playerName].markInTable then AtlasLootWishList.Options[playerName].markInTable = "own" end
		if AtlasLootWishList.Options[playerName].markInTable == "own" then
			for k,v in ipairs(AtlasLootWishList.Own) do
				if type(v) == "table" then
					for i,j in ipairs(AtlasLootWishList.Own[k]) do
						if AtlasLootWishList.Own[k][i].itemID == itemID then
							if AtlasLootWishList.Own[k].Icon ~= "" then
								rettex = rettex.."|T"..AtlasLootWishList.Own[k].Icon..":0|t"
							else
								rettex = rettex.."|TInterface\\Icons\\INV_Misc_QuestionMark:0|t"
							end
							break
						end
					end
				end
			end
		elseif AtlasLootWishList.Options[playerName].markInTable == "all" then
			for k,v in ipairs(AtlasLootWishList.Own) do
				for i,j in ipairs(AtlasLootWishList.Own[k]) do
					for b,c in ipairs(AtlasLootWishList.Own[k][i]) do
						if AtlasLootWishList.Own[k][i][b].itemID == itemID then
							if AtlasLootWishList.Own[k][i].Icon ~= "" then
								rettex = rettex.."|T"..AtlasLootWishList.Own[k][i].Icon..":0|t"
							else
								rettex = rettex.."|TInterface\\Icons\\INV_Misc_QuestionMark:0|t"
							end
							break
						end
					end
				end
			end
            for k,v in pairs(AtlasLootWishList.Shared) do
				for i,j in pairs(AtlasLootWishList.Shared[k]) do
					for b,c in pairs(AtlasLootWishList.Shared[k][i]) do
						if AtlasLootWishList.Shared[k][i][b].itemID == itemID then
							if AtlasLootWishList.Shared[k][i].Icon ~= "" then
								rettex = rettex.."|T"..AtlasLootWishList.Shared[k][i].Icon..":0|t"
							else
								rettex = rettex.."|TInterface\\Icons\\INV_Misc_QuestionMark:0|t"
							end
							break
						end
					end
				end
			end
		end
		if rettex == "" then 
			return false
		else
			return true, rettex
		end
	else
		if xtyp == "Own" then
			for _, v in ipairs(AtlasLootWishList.Own[xarg2]) do
				if v.itemID == itemID then
					return true
				end
			end
		elseif xtyp == "Shared" then
			for _, v in ipairs(AtlasLootWishList.Shared[xarg2]) do
				if v.itemID == itemID then
					return true
				end
			end
		end
		return false
	end
end

--[[
AtlasLoot:WishListOptionsOpen:
Constructs the wishlist options category menu.
]]
function AtlasLoot:WishListOptionsOpen()
	local frame = self.mainUI.wishlistOptionsButton
	if self.Dewdrop:IsOpen(frame) then self.Dewdrop:Close() return end
	self.Dewdrop:Register(frame,
		'point', function(parent)
			return "TOP", "BOTTOM"
		end,
		'children', function(level, value)
			if level == 1 then
				self.Dewdrop:AddLine(
					"text", AL["Add Wishlist"],
					"func", function() self:AddWishList() end,
					'textHeight', self.selectedProfile.txtSize,
					'textWidth', self.selectedProfile.txtSize,
					'closeWhenClicked', true,
					"notCheckable", true
				)
				self.Dewdrop:AddLine(
					"text", AL["Edit Wishlist"],
					"func", function() self:EditWishList() end,
					'textHeight', self.selectedProfile.txtSize,
					'textWidth', self.selectedProfile.txtSize,
					'closeWhenClicked', true,
					"notCheckable", true
				)
				self.Dewdrop:AddLine(
					"text", AL["Sort Wishlist"],
					'textHeight', self.selectedProfile.txtSize,
					'textWidth', self.selectedProfile.txtSize,
					'closeWhenClicked', true,
					"func", function() self:SortWishList(true,AtlasLoot_CurrentWishList.Show.ListType,AtlasLoot_CurrentWishList.Show.ListNum) end,
					"notCheckable", true
				)
				if  self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" and AtlasLoot_CurrentWishList.Show.ListType == "Shared" then
					self.Dewdrop:AddLine(
						"text", AL["Copy Wishlist To Own"],
						'textHeight', self.selectedProfile.txtSize,
						'textWidth', self.selectedProfile.txtSize,
						'closeWhenClicked', true,
						"func", function() self:CloneSharedWishList() end,
						"notCheckable", true
					)
				end
				if self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" and AtlasLoot_CurrentWishList.Show.ListType == "Own" then
					self.Dewdrop:AddLine(
						"text", AL["Make Wishlist Default"],
						'textHeight', self.selectedProfile.txtSize,
						'textWidth', self.selectedProfile.txtSize,
						'closeWhenClicked', true,
						"func", function() self:SetDefaultWishList() end,
						"notCheckable", true
					)
				end
				self.Dewdrop:AddLine(
					"text", AL["Delete Wishlist"],
					'textHeight', self.selectedProfile.txtSize,
					'textWidth', self.selectedProfile.txtSize,
					'closeWhenClicked', true,
					"func", function() self:DeleteWishList() end,
					"notCheckable", true
				)
				self.Dewdrop:AddLine(
					"text", AL["Settings"],
					'textHeight', self.selectedProfile.txtSize,
					'textWidth', self.selectedProfile.txtSize,
					'value', "Settings",
					'hasArrow', true,
					"notCheckable", true
				)
				self:CloseDewDrop(true, 35)
			elseif level == 2 then
				if value == "Settings" then
					self.Dewdrop:AddLine('textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize,'isRadio', true,
						'text', AL["Mark items in loot tables"],
						'checked', AtlasLootWishList.Options[playerName].Mark,
						'func', function()
							if AtlasLootWishList.Options[playerName].Mark then
								AtlasLootWishList.Options[playerName].Mark = false
							else
								AtlasLootWishList.Options[playerName].Mark = true
							end
						end
					)
					self.Dewdrop:AddLine('textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize,'isRadio', true,
					'text', AL["Mark items from own Wishlist"],
					'checked', AtlasLootWishList.Options[playerName].markInTable == "own" and true or false,
					'func', function() 
							if AtlasLootWishList.Options[playerName].markInTable == "own" then
								AtlasLootWishList.Options[playerName].markInTable = "all"
							else
								AtlasLootWishList.Options[playerName].markInTable = "own"
							end
					 	end
					)
					self.Dewdrop:AddLine('textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize,'isRadio', true,
					'text', AL["Mark items from all Wishlists"],
					'checked', AtlasLootWishList.Options[playerName].markInTable == "all" and true or false,
					'func', function()
							if AtlasLootWishList.Options[playerName].markInTable == "own" then
								AtlasLootWishList.Options[playerName].markInTable = "all"
							else
								AtlasLootWishList.Options[playerName].markInTable = "own"
							end
					 	end
					)
					self.Dewdrop:AddLine('textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize,'isRadio', true,
					'text', AL["Enable Wishlist Sharing"],
					'checked', AtlasLootWishList.Options[playerName]["AllowShareWishlist"],
					'func', function() AtlasLootWishList.Options[playerName]["AllowShareWishlist"] = not AtlasLootWishList.Options[playerName]["AllowShareWishlist"] end
					)
					self.Dewdrop:AddLine('textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize,'isRadio', true,
					'text', AL["Auto reject in combat"],
					'checked', AtlasLootWishList.Options[playerName]["AllowShareWishlist"],
					'func', function() AtlasLootWishList.Options[playerName].AllowShareWishlistInCombat = not AtlasLootWishList.Options[playerName]["AllowShareWishlistInCombat"] end
					)
					self.Dewdrop:AddLine('textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize,'isRadio', true,
					'text', AL["Auto Sort WishLists"],
					'checked', AtlasLootWishList.Options[playerName].AutoSortWishlist,
					'func', function() AtlasLootWishList.Options[playerName].AutoSortWishlist = not AtlasLootWishList.Options[playerName].AutoSortWishlist end
					)
					self.Dewdrop:AddLine('textHeight', self.selectedProfile.txtSize,'textWidth', self.selectedProfile.txtSize,'isRadio', true,
					'text', AL["Allow Duplicates"],
					'checked', AtlasLootWishList.Options[playerName].AllowDuplicates,
					'func', function() AtlasLootWishList.Options[playerName].AllowDuplicates = not AtlasLootWishList.Options[playerName].AllowDuplicates end
					)
				end
			end
		end,
		'dontHook', true
		)
		self.Dewdrop:Open(frame)
end

-- **********************************************************************
-- Options:
--	<local> ClearLines()
--	<local> AddWishListOptions(parrent,name,icon,xxx,tabname,tab2)
--	<local> AddTexture(par, num)
-- 	<local> GenerateTabNum(strg,sender)
--	AtlasLoot_RefreshWishlists()

-- **********************************************************************
local AddWishlist = "new"

local firstload = true

local xpos = 0
local ypos = 0

--[[
StaticPopupDialogs["ATLASLOOT_DELETE_WISHLIST"]
This is shown, if you want too delete a wishlist
]]
StaticPopupDialogs["ATLASLOOT_DELETE_WISHLIST"] = {
	text = AL["Delete Wishlist"],
	button1 = AL["Delete"],
	button2 = AL["Cancel"],
	OnShow = function()
		this:SetFrameStrata("TOOLTIP")
	end,
	OnAccept = function()
		table.remove(AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType], AtlasLoot_CurrentWishList.Show.ListNum)
		AtlasLootWishList.Options[playerName].DefaultWishList[3] = 1
		if AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][1] == nil then
			AtlasLoot:ShowItemsFrame("EmptyTable", "AtlasLoot_Data", 1)
		else
			AtlasLoot:ShowWishList(AtlasLoot_CurrentWishList.Show.ListType, 1)
		end
		AtlasLoot.Dewdrop:Close(1)
	end,
	OnCancel = function ()
		AtlasLoot.Dewdrop:Close(1)
	end,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
}

--[[
StaticPopupDialogs["ATLASLOOT_GET_WISHLIST"]
This is shown, if someone send you a wishlist
]]
StaticPopupDialogs["ATLASLOOT_GET_WISHLIST"] = {
	text = AL["%s sends you a Wishlist. Accept?"],
	button1 = ACCEPT,
	button2 = CANCEL,
	OnShow = function()
		this:SetFrameStrata("TOOLTIP")
	end,
	OnAccept = function(self,data)
		ALModule:SendCommMessage("AtlasLootWishlist", "AcceptWishlist", "WHISPER", data)
	end,
	OnCancel = function (self,data)
		ALModule:SendCommMessage("AtlasLootWishlist", "CancelWishlist", "WHISPER", data)
	end,
	timeout = 15,
	whileDead = 1,
	hideOnEscape = 1
}

--[[
<local> AddTexture(par, num)
Add a Icon too the AddFrame. 
]]
local function AddTexture(par, num)
	local numIcons = GetNumMacroIcons()
	local iconTexture = GetMacroIconInfo(num)

	local Button = CreateFrame("BUTTON", nil, par, "UIPanelButtonTemplate")
		Button:SetHeight(20)
		Button:SetWidth(20)  
		Button:SetPoint("TOPLEFT", par, "TOPLEFT", xpos, ypos)
		Button:SetText("")
		Button:SetScript("OnClick", function()
			if AddWishlist == "new" then
				AtlasLootPrevTexture:SetTexture(iconTexture)
				curaddicon = iconTexture
			elseif AddWishlist == "edit" then
				AtlasLootPrevTexture:SetTexture(iconTexture)
				curaddicon = iconTexture
			end
		end)

	local Textur = Button:CreateTexture("textur","OVERLAY")
		Textur:SetPoint("TOPLEFT", Button, "TOPLEFT")
		Textur:SetTexture(iconTexture)
		Textur:SetHeight(20)
		Textur:SetWidth(20)

	if xpos == 280 then
		xpos = 0
		ypos = ypos - 20
	else
		xpos = xpos + 20
	end
end

function AtlasLoot:WishlistSetup()
	if not AtlasLootWishList.Own then AtlasLootWishList.Own = {Name = "Wishlists"} end
	if not AtlasLootWishList.Shared then AtlasLootWishList.Shared = {Name = "Shared Wishlists"} end
	if not AtlasLootWishList.Options then AtlasLootWishList.Options = {} end
	if not AtlasLootWishList.Options[playerName] then AtlasLootWishList.Options[playerName] = {} end
	if AtlasLootWishList.Options[playerName].Mark ~= true and AtlasLootWishList.Options[playerName].Mark ~= false then AtlasLootWishList.Options[playerName].Mark = true end
	if not AtlasLootWishList.Options[playerName].markInTable then AtlasLootWishList.Options[playerName].markInTable = "own" end
	if AtlasLootWishList.Options[playerName].AllowShareWishlist ~= true and AtlasLootWishList.Options[playerName].AllowShareWishlist ~= false then AtlasLootWishList.Options[playerName].AllowShareWishlist = true end
	if AtlasLootWishList.Options[playerName].AllowShareWishlistInCombat ~= true and AtlasLootWishList.Options[playerName].AllowShareWishlistInCombat ~= false then AtlasLootWishList.Options[playerName].AllowShareWishlistInCombat = true end
	if AtlasLootWishList.Options[playerName].UseDefaultWishlist ~= true and AtlasLootWishList.Options[playerName].UseDefaultWishlist ~= false then AtlasLootWishList.Options[playerName].UseDefaultWishlist = false end
	if not AtlasLootWishList.Options[playerName].DefaultWishList then AtlasLootWishList.Options[playerName].DefaultWishList = {"Own", "AtlasLootWishList", 1} end
end
--[[
AtlasLoot:CreateWishlistOptions()
Create the Options for the Wishlists(called on variables loadet)
]]
function AtlasLoot:CreateWishlistOptions()
	if OptionsLoadet then return end
	-- Add wishlistframe --
	local WishListAddFrame = CreateFrame("FRAME","AtlasLootWishList_AddFrame",UIParent)
		WishListAddFrame:Hide()
		WishListAddFrame:SetFrameStrata("TOOLTIP")
		WishListAddFrame:SetWidth(350)
		WishListAddFrame:SetHeight(250)
		WishListAddFrame:SetPoint("CENTER",UIParent)
		WishListAddFrame:SetBackdrop({
			bgFile = "Interface/Tooltips/UI-Tooltip-Background", 
			edgeFile = "Interface/Tooltips/UI-Tooltip-Border", 
			tile = true, tileSize = 16, edgeSize = 16, 
			insets = { left = 4, right = 4, top = 4, bottom = 4 }})
		WishListAddFrame:SetMovable(true)
		WishListAddFrame:EnableMouse(true)
		WishListAddFrame:RegisterForDrag("LeftButton")
		WishListAddFrame:RegisterForDrag("LeftButton", "RightButton")
		WishListAddFrame:SetScript("OnMouseDown", function(button)
			button:StartMoving()
		end)
		WishListAddFrame:SetScript("OnMouseUp", WishListAddFrame.StopMovingOrSizing)

	local Textur = WishListAddFrame:CreateTexture("AtlasLootPrevTexture","OVERLAY")
		Textur:SetPoint("TOPRIGHT", WishListAddFrame, "TOPRIGHT", -40, -10)
		Textur:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
		Textur:SetHeight(40)
		Textur:SetWidth(40)

	local Text = WishListAddFrame:CreateFontString("AtlasLootAddWishListName","OVERLAY","GameFontNormal")
		Text:SetPoint("TOPLEFT", WishListAddFrame, "TOPLEFT", 10, -5)
		Text:SetText(AL["Wishlist name:"])
		Text:SetHeight(20)

	local Edit1 = CreateFrame("EditBox", "AtlasLootWishListNewName", WishListAddFrame, "InputBoxTemplate")
		Edit1:SetPoint("LEFT", WishListAddFrame, "TOPLEFT", 15, -37)
		Edit1:SetWidth(250)
		Edit1:SetHeight(32)
		Edit1:SetAutoFocus(false)
		Edit1:SetTextInsets(0, 8, 0, 0)
		Edit1:SetScript("OnEnterPressed", function(frame)
			frame:ClearFocus()
			local text = frame:GetText()
			curaddname = text
		end)
		Edit1:SetScript("OnShow", function(frame)
			frame:SetText(curaddname)
		end)

	local CloseButton = CreateFrame("BUTTON",nil, WishListAddFrame, "UIPanelCloseButton")
		CloseButton:SetPoint("TOPRIGHT", WishListAddFrame, "TOPRIGHT", -5, -5)	

	local WishListIconListSc = CreateFrame("ScrollFrame", "AtlasLootWishlistAddFrameIconList", WishListAddFrame, "UIPanelScrollFrameTemplate")
	local WishlistIconListIn = CreateFrame("Frame", "AtlasLootWishlistAddFrameIconListInhalt", WishListIconListSc)
		WishListIconListSc:SetScrollChild(WishlistIconListIn)
		WishListIconListSc:SetPoint("TOPLEFT", WishListAddFrame, "TOPLEFT", 10, -60)
		WishlistIconListIn:SetPoint("TOPLEFT", WishListIconListSc, "TOPLEFT", 0, 0)
		WishListIconListSc:SetWidth(310)  
		WishListIconListSc:SetHeight(150) 
		WishlistIconListIn:SetWidth(310)  
		WishlistIconListIn:SetHeight(150)  
		WishListIconListSc:SetHorizontalScroll(-50)
		WishListIconListSc:SetVerticalScroll(50)
		WishListIconListSc:SetBackdrop({bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", edgeFile="", tile = false, tileSize = 0, edgeSize = 0, insets = { left = 0, right = 0, top = 0, bottom = 0 }})
		WishListIconListSc:SetScript("OnVerticalScroll", function()  end)
		WishListIconListSc:EnableMouse(true)
		WishListIconListSc:SetVerticalScroll(0)
		WishListIconListSc:SetHorizontalScroll(0)

	local AddWishlistFr = CreateFrame("BUTTON", "AtlasLottAddEditWishList", WishListIconListSc, "UIPanelButtonTemplate")
		AddWishlistFr:SetHeight(20)
		AddWishlistFr:SetWidth(150)  
		AddWishlistFr:SetPoint("TOPLEFT", WishListIconListSc, "TOPLEFT",0,-1*(AtlasLootWishlistAddFrameIconList:GetHeight() + 5))
		AddWishlistFr:SetText(AL["Add Wishlist"])
		AddWishlistFr:SetScript("OnClick", function()
			curaddname = AtlasLootWishListNewName:GetText()
			if editName then
				if curaddicon == "" then
					curaddicon = "Interface\\Icons\\INV_Misc_QuestionMark"
				elseif curaddicon ~= "" then
					AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum].Name = curaddname
					AtlasLootWishList[AtlasLoot_CurrentWishList.Show.ListType][AtlasLoot_CurrentWishList.Show.ListNum].Icon = curaddicon
					WishListAddFrame:Hide()
					self:ShowWishList(AtlasLoot_CurrentWishList.Show.ListType, AtlasLoot_CurrentWishList.Show.ListNum)
				end
			else
				if curaddicon == "" then
					curaddicon = "Interface\\Icons\\INV_Misc_QuestionMark"
				elseif curaddicon ~= "" then
					table.insert( AtlasLootWishList.Own,{Name = curaddname, Icon = curaddicon})
					WishListAddFrame:Hide()
					if self.itemframe.refresh[2] == "AtlasLoot_CurrentWishList" then
						self:ShowWishList(AtlasLoot_CurrentWishList.Show.ListType, AtlasLoot_CurrentWishList.Show.ListNum)
					end
				end
			end
			editName = false
			curaddicon = ""
			curaddname = ""
		end)

	local AddWishlistIcons = CreateFrame("BUTTON", nil, WishListIconListSc, "UIPanelButtonTemplate")
		AddWishlistIcons:SetHeight(20)
		AddWishlistIcons:SetWidth(150)  
		AddWishlistIcons:SetPoint("TOPLEFT", WishListIconListSc, "TOPLEFT",160,-1*(AtlasLootWishlistAddFrameIconList:GetHeight() + 5))
		AddWishlistIcons:SetText(AL["Show More Icons"])
		AddWishlistIcons:SetScript("OnClick", function()
			for i=211,GetNumMacroIcons() do
				AddTexture(WishlistIconListIn, i)
			end
		end)

		WishListAddFrame:SetScript("OnShow", function()
			if firstload then
				for i=1,210 do
					AddTexture(WishlistIconListIn, i)
				end
				firstload = false
			end
			if curaddicon == "" then
				AtlasLootPrevTexture:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
			else
				AtlasLootPrevTexture:SetTexture(curaddicon)
			end
		end)
	OptionsLoadet = true
end

-- **********************************************************************
-- WishListShare:
--	<local>SpamProtect(name)
-- 	ALModule:OnEnable()
--	AtlasLoot_GetWishList(wlstrg,sendername)
--	ALModule:OnCommReceived(prefix, message, distribution, sender)
-- **********************************************************************

local SpamFilter = {}
local SpamFilterTime = 10


--[[
<local> SpamProtect(name)
Check Spamfilter table
]]
local function SpamProtect(name)
	if not name then return true end
	if SpamFilter[string.lower(name)] then
		if GetTime() - SpamFilter[string.lower(name)] > SpamFilterTime then
			SpamFilter[string.lower(name)] = nil
			return true
		else
			return false
		end
	else
		return true
	end
end

--[[
ALModule:OnEnable()
Register the AceComm channel
]]
function ALModule:OnEnable()
    self:RegisterComm("AtlasLootWishlist")
end

--[[
AtlasLoot:GetWishList(wlstrg,sendername)
Get the Wishlist, Deserialize it and save it in the savedvariables table
]]
function AtlasLoot:GetWishList(wlstrg,sendername)
	if AtlasLootWishList.Shared.Name == nil then
		AtlasLootWishList.Shared.Name = "Shared Wish Lists"
	end
	local success, wltab = ALModule:Deserialize(wlstrg)
	if success then
		for i,v in ipairs(wltab) do
			if v[8] then
				v[8] = v[8].."|"..v[9].."|"..v[10]
				table.remove(v,9)
				table.remove(v,10)
			end
		end
		table.insert(AtlasLootWishList.Shared,wltab)
	end
end

local EscapePatterns={
    "|[cC]%x%x%x%x%x%x",
    "|T[^|]+|t",
    "|H[^|]+|h%[(.-)%]|h",
}
 
local function StripEscapes(str)
    for _,pattern in ipairs(EscapePatterns) do
        str=str:gsub(pattern,pattern:find("%(.-[^%%]%)") and "%1" or "")
    end
    return str:gsub("^%s*(.-)%s*$","%1"):gsub("%s+"," ")-- Strip extra spaces
end

--[[
ALModule:OnCommReceived(prefix, message, distribution, sender)
Incomming messages from AceComm
]]
function ALModule:OnCommReceived(prefix, message, distribution, sender)
	if prefix ~= "AtlasLootWishlist" then return end
	if message == "SpamProtect" then
		--local _,_,timeleft = string.find( 10-(GetTime() - SpamFilter[string.lower(sender)]), "(%d+)%.")
		--DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE..AL["AtlasLoot"]..": "..self.Colors.RED..AL["You must wait "]..self.Colors.WHITE..timeleft..self.Colors.RED..AL[" seconds before you can send a new Wishlist too "]..self.Colors.WHITE..sender..self.Colors.RED..".")
	elseif message == "FinishSend" then
		SpamFilter[string.lower(sender)] = GetTime()
	elseif message == "AcceptWishlist" then
		local wsltable = AtlasLoot:CloneTable(_G[curtable[2]][curtable[1]][curtable[3]])
			for i,v in ipairs(wsltable) do
				v[4] = gsub(StripEscapes(v[4]),"FF","")
				if v[8] then
					local dataID, dataSource, dataPage = strsplit("|", v[8])
					v[8] = dataID
					v[9] = dataSource
					v[10] = dataPage
				end
			end
		local sendData = ALModule:Serialize(wsltable)
		ALModule:SendCommMessage("AtlasLootWishlist", sendData, "WHISPER", sender)
	elseif message == "WishlistRequest" then

		if AtlasLootWishList.Options[playerName]["AllowShareWishlist"] == true then
			if AtlasLootWishList.Options[playerName]["AllowShareWishlistInCombat"] == true then
				if UnitAffectingCombat("player") then
					ALModule:SendCommMessage("AtlasLootWishlist", "CancelWishlist", "WHISPER", sender)
					DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE..AL["AtlasLoot"]..": "..self.Colors.WHITE..sender..self.Colors.RED..AL[" tried to send you a Wishlist. Rejected because you are in combat."])
				else
					local dialog = StaticPopup_Show("ATLASLOOT_GET_WISHLIST", sender)
					if ( dialog ) then
						dialog.data = sender
					end
				end
			else
				local dialog = StaticPopup_Show("ATLASLOOT_GET_WISHLIST", sender)
				if ( dialog ) then
					dialog.data = sender
				end
			end
		else
			ALModule:SendCommMessage("AtlasLootWishlist", "CancelWishlist", "WHISPER", sender)
		end

	elseif message == "CancelWishlist" then
		DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE..AL["AtlasLoot"]..": "..self.Colors.WHITE..sender..self.Colors.RED..AL[" rejects your Wishlist."])
	else
		SpamFilter[string.lower(sender)] = GetTime()
		AtlasLoot:GetWishList(message,sender)
		ALModule:SendCommMessage("AtlasLootWishlist", "FinishSend", "WHISPER", sender)
	end
end

--[[
StaticPopupDialogs["ATLASLOOT_SEND_WISHLIST"]
This is shown, if you want too share a wishlist
]]
StaticPopupDialogs["ATLASLOOT_SEND_WISHLIST"] = {
	text = AL["Send Wishlist (%s) to"],
	button1 = AL["Send"],
	button2 = AL["Cancel"],
	OnShow = function(self)
		self:SetFrameStrata("TOOLTIP")
	end,
	OnAccept = function()
		local name = _G[this:GetParent():GetName().."EditBox"]:GetText()
		if string.lower(name) == string.lower(playerName) then
			DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE..AL["AtlasLoot"]..": "..self.Colors.RED..AL["You can't send Wishlists to yourself."])
		elseif name == "" then

		else
			if SpamProtect(string.lower(name)) then
				curtable = {AtlasLoot_CurrentWishList.Show.ListType, "AtlasLootWishList", AtlasLoot_CurrentWishList.Show.ListNum}
				ALModule:SendCommMessage("AtlasLootWishlist", "WishlistRequest", "WHISPER", name)
			else
				local _,_,timeleft = string.find( 10-(GetTime() - SpamFilter[string.lower(name)]), "(%d+)%.")
				DEFAULT_CHAT_FRAME:AddMessage(self.Colors.BLUE..AL["AtlasLoot"]..": "..self.Colors.RED..AL["You must wait "]..self.Colors.WHITE..timeleft..self.Colors.RED..AL[" seconds before you can send a new Wishlist to "]..self.Colors.WHITE..name..self.Colors.RED..".")
			end
		end
	end,
	hasEditBox = 1,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
}

--[[
StaticPopupDialogs["ATLASLOOT_ADD_CUSTOMHEADER"]
This is shown, if you want too add a CustomHeader to a wishlist
]]
StaticPopupDialogs["ATLASLOOT_ADD_CUSTOMHEADER"] = {
	text = "Add text for a Custom Header or leave blank for a blank",
	button1 = "Set Text",
	button2 = AL["Cancel"],
	OnShow = function(self)
		self:SetFrameStrata("TOOLTIP")
	end,
	OnAccept = function()
		local text = _G[this:GetParent():GetName().."EditBox"]:GetText()
		AtlasLoot:AddItemCustomHeader(StaticPopupDialogs.ATLASLOOT_ADD_CUSTOMHEADER.num,text)
	end,
	hasEditBox = 1,
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
}