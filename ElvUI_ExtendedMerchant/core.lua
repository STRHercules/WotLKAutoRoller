local E = unpack(ElvUI)
local EM = E:NewModule('ExtendedMerchant', 'AceEvent-3.0')

function EM:CreateAdditionalItems()
    for i = 11, 25 do
        if not _G['MerchantItem'..i] then
            CreateFrame('Button', 'MerchantItem'..i, MerchantFrame, 'MerchantItemTemplate')
        end
    end
end

function EM:LayoutItems()
    MerchantFrame:SetWidth(680)
    for i = 1, 25 do
        local button = _G['MerchantItem'..i]
        button:ClearAllPoints()
        if i == 1 then
            button:SetPoint('TOPLEFT', MerchantFrame, 'TOPLEFT', 24, -64)
        elseif (i-1) % 5 == 0 then
            button:SetPoint('TOPLEFT', _G['MerchantItem'..(i-5)], 'BOTTOMLEFT', 0, -16)
        else
            button:SetPoint('TOPLEFT', _G['MerchantItem'..(i-1)], 'TOPRIGHT', 12, 0)
        end
    end
    MerchantBuyBackItem:ClearAllPoints()
    MerchantBuyBackItem:SetPoint('TOPLEFT', _G['MerchantItem21'], 'BOTTOMLEFT', 0, -30)
end

function EM:PLAYER_LOGIN()
    MERCHANT_ITEMS_PER_PAGE = 25
    BUYBACK_ITEMS_PER_PAGE = 25
    self:CreateAdditionalItems()
    self:LayoutItems()
end

EM:RegisterEvent('PLAYER_LOGIN')
