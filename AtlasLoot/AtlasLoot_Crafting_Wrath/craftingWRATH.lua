local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")

local ALCHEMY = GetSpellInfo(2259);
local BLACKSMITHING = GetSpellInfo(2018);
local ARMORSMITH = GetSpellInfo(9788);
local WEAPONSMITH = GetSpellInfo(9787);
local AXESMITH = GetSpellInfo(17041);
local HAMMERSMITH = GetSpellInfo(17040);
local SWORDSMITH = GetSpellInfo(17039);
local COOKING = GetSpellInfo(2550);
local ENCHANTING = GetSpellInfo(7411);
local ENGINEERING = GetSpellInfo(4036);
local GNOMISH = GetSpellInfo(20220);
local GOBLIN = GetSpellInfo(20221);
local FIRSTAID = GetSpellInfo(3273);
local INSCRIPTION = GetSpellInfo(45357);
local JEWELCRAFTING = GetSpellInfo(25229);
local LEATHERWORKING = GetSpellInfo(2108);
local MINING = GetSpellInfo(2575);
local TAILORING = GetSpellInfo(3908);

-- Index
--- Tradeskill List
---- Alchemy
----- Battle Elixirs
----- Guardian Elixirs
----- Potions
----- Flasks
----- Transmutes
----- Miscellaneous
---- Blacksmithing
----- Armor
----- Weapons
----- Enhancements
----- Miscellaneous
----- Armorsmith
----- Weaponsmith
----- Axesmith
----- Hammersmith
----- Swordsmith
---- Cooking
---- Enchanting
----- Boots
----- Bracers
----- Chest
----- Cloaks
----- Gloves
----- Rings
----- Shields
----- 2 Hand Weapons
----- 1 Hand Weapons
----- Staves
----- Miscellaneous
---- Engineering
---- First Aid
---- Inscription
---- Jewelcrafting
---- Leatherworking
---- Mining
---- Tailoring
--- Profession Sets
---- Blacksmithing Mail Sets
---- Blacksmithing Plate Sets
---- Leatherworking Leather Sets
---- Leatherworking Mail Sets
---- Tailoring Sets
--- Other
---- Crafted Epic Weapons

-----------------------
--- Tradeskill List ---
-----------------------

---------------
--- Alchemy ---
---------------

AtlasLoot_Data["AlchemyWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath";
	Name = ALCHEMY;
	Type = "WrathCrafting";
	{
		Name = AL["Battle Elixirs"];
		[01] = {itemID = 44330, spellID = 60365 }; --Elixir of Armor Piercing
		[02] = {itemID = 44327, spellID = 60355 }; --Elixir of Deadly Strikes
		[03] = {itemID = 44329, spellID = 60357 }; --Elixir of Expertise
		[04] = {itemID = 44331, spellID = 60366 }; --Elixir of Lightning Speed
		[05] = {itemID = 44325, spellID = 60354 }; --Elixir of Accuracy
		[06] = {itemID = 39666, spellID = 53840 }; --Elixir of Mighty Agility
		[07] = {itemID = 40073, spellID = 54218 }; --Elixir of Mighty Strength
		[08] = {itemID = 40076, spellID = 53848 }; --Guru's Elixir
		[09] = {itemID = 40070, spellID = 53842 }; --Spellpower Elixir
		[10] = {itemID = 40068, spellID = 53841 }; --WRATH Elixir
	};
	{
		Name = AL["Guardian Elixirs"];
		[01] = {itemID = 44328, spellID = 60356 }; --Elixir of Mighty Defense
		[02] = {itemID = 40109, spellID = 56519 }; --Elixir of Mighty Mageblood
		[03] = {itemID = 40097, spellID = 54220 }; --Elixir of Protection
		[04] = {itemID = 8827, spellID = 62410 }; --Elixir of Water Walking
		[05] = {itemID = 40078, spellID = 53898 }; --Elixir of Mighty Fortitude
		[06] = {itemID = 44332, spellID = 60367 }; --Elixir of Mighty Thoughts
		[07] = {itemID = 40072, spellID = 53847 }; --Elixir of Spirit
	};
	{
		Name = AL["Potions"];
		[01] = {itemID = 40211, spellID = 54221 }; --Potion of Speed
		[02] = {itemID = 40212, spellID = 54222 }; --Potion of Wild Magic
		[03] = {itemID = 40087, spellID = 53904 }; --Powerful Rejuvenation Potion
		[04] = {itemID = 43570, spellID = 58868 }; --Endless Mana Potion
		[05] = {itemID = 33448, spellID = 53837 }; --Runic Mana Potion
		[06] = {itemID = 43569, spellID = 58871 }; --Endless Healing Potion
		[07] = {itemID = 33447, spellID = 53836 }; --Runic Healing Potion
		[08] = {itemID = 40213, spellID = 53936 }; --Mighty Arcane Protection Potion
		[09] = {itemID = 40214, spellID = 53939 }; --Mighty Fire Protection Potion
		[10] = {itemID = 40215, spellID = 53937 }; --Mighty Frost Protection Potion
		[11] = {itemID = 40216, spellID = 53942 }; --Mighty Nature Protection Potion
		[12] = {itemID = 40217, spellID = 53938 }; --Mighty Shadow Protection Potion
		[13] = {itemID = 40093, spellID = 53905 }; --Indestructible Potion
		[14] = {itemID = 40081, spellID = 53900 }; --Potion of Nightmares
		[15] = {itemID = 40077, spellID = 53895 }; --Crazy Alchemist's Potion
		[16] = {itemID = 40067, spellID = 53839 }; --Icy Mana Potion
		[17] = {itemID = 39671, spellID = 53838 }; --Resurgent Healing Potion
	};
	{
		Name = AL["Flasks"];
		[01] = {itemID = 47499, spellID = 67025 }; --Flask of the North
		[02] = {itemID = 46377, spellID = 53903 }; --Flask of Endless Rage
		[03] = {itemID = 46378, spellID = 54213 }; --Flask of Pure Mojo
		[04] = {itemID = 46379, spellID = 53902 }; --Flask of Stoneblood
		[05] = {itemID = 46376, spellID = 53901 }; --Flask of the Frost Wyrm
		[06] = {itemID = 44939, spellID = 62213 }; --Lesser Flask of Resistance
		[07] = {itemID = 40079, spellID = 53899 }; --Lesser Flask of Toughness
	};
	{
		Name = AL["Transmutes"];
		[01] = {itemID = 35624, spellID = 53777 }; --Transmute: Eternal Air to Earth
		[02] = {itemID = 35622, spellID = 53776 }; --Transmute: Eternal Air to Water
		[03] = {itemID = 35623, spellID = 53781 }; --Transmute: Eternal Earth to Air
		[04] = {itemID = 35627, spellID = 53782 }; --Transmute: Eternal Earth to Shadow
		[05] = {itemID = 35625, spellID = 53775 }; --Transmute: Eternal Fire to Life
		[06] = {itemID = 35622, spellID = 53774 }; --Transmute: Eternal Fire to Water
		[07] = {itemID = 36860, spellID = 53773 }; --Transmute: Eternal Life to Fire
		[08] = {itemID = 35627, spellID = 53771 }; --Transmute: Eternal Life to Shadow
		[09] = {itemID = 35624, spellID = 53779 }; --Transmute: Eternal Shadow to Earth
		[10] = {itemID = 35625, spellID = 53780 }; --Transmute: Eternal Shadow to Life
		[11] = {itemID = 35623, spellID = 53783 }; --Transmute: Eternal Water to Air
		[12] = {itemID = 36860, spellID = 53784 }; --Transmute: Eternal Water to Fire
		[13] = {itemID = 41163, spellID = 60350 }; --Transmute: Titanium
		[16] = {itemID = 36919, spellID = 66659 }; --Transmute: Cardinal Ruby
		[17] = {itemID = 36931, spellID = 66658 }; --Transmute: Ametrine
		[18] = {itemID = 36928, spellID = 66662 }; --Transmute: Dreadstone
		[19] = {itemID = 36934, spellID = 66664 }; --Transmute: Eye of Zul
		[20] = {itemID = 36922, spellID = 66660 }; --Transmute: King's Amber
		[21] = {itemID = 36925, spellID = 66663 }; --Transmute: Majestic Zircon
		[22] = {itemID = 40248, spellID = 54020 }; --Transmute: Eternal Might
		[23] = {itemID = 41334, spellID = 57427 }; --Transmute: Earthsiege Diamond
		[24] = {itemID = 41266, spellID = 57425 }; --Transmute: Skyflare Diamond
	};
	{
		Name = AL["Miscellaneous"];
		[01] = {itemID = 35751, spellID = 47050 }; --Assassin's Alchemist Stone
		[02] = {itemID = 35748, spellID = 47046 }; --Guardian's Alchemist Stone
		[03] = {itemID = 35750, spellID = 47049 }; --Redeemer's Alchemist Stone
		[04] = {itemID = 35749, spellID = 47048 }; --Sorcerer's Alchemist Stone
		[05] = {itemID = 13503, spellID = 17632 }; --Alchemist's Stone
		[06] = {itemID = 44323, spellID = 60403 }; --Indestructible Alchemist Stone
		[07] = {itemID = 44322, spellID = 60396 }; --Mercurial Alchemist Stone
		[08] = {itemID = 44324, spellID = 60405 }; --Mighty Alchemist Stone
		[10] = {itemID = 31080, spellID = 38070 }; --Mercurial Stone
		[11] = {itemID = 44958, spellID = 62409 }; --Ethereal Oil
		[12] = {itemID = 40195, spellID = 53812 }; --Pygmy Oil
	};
};

---------------------
--- Blacksmithing ---
---------------------

AtlasLoot_Data["SmithingWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath";
	Name = BLACKSMITHING;
	Type = "WrathCrafting";
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest";
		[01] = { spellID = 67130, itemID = 47592 };
		[02] = { spellID = 67091, itemID = 47591 };
		[03] = { spellID = 67095, itemID = 47593 };
		[04] = { spellID = 67134, itemID = 47594 };
		[05] = { spellID = 67093, itemID = 47589 };
		[06] = { spellID = 67132, itemID = 47590 };
		[07] = {itemID = 43586, spellID = 61008 }; --Icebane Chestguard
		[08] = {itemID = 42725, spellID = 56555 }; --Ornate Saronite Hauberk
		[09] = {itemID = 41353, spellID = 55311 }; --Savage Saronite Hauberk
		[10] = {itemID = 41129, spellID = 55058 }; --Brilliant Saronite Breastplate
		[11] = {itemID = 40672, spellID = 54553 }; --Tempered Saronite Breastplate
		[12] = {itemID = 40951, spellID = 54944 }; --Spiked Cobalt Chestpiece
		[13] = {itemID = 40959, spellID = 54981 }; --Reinforced Cobalt Chestpiece
		[14] = {itemID = 39085, spellID = 52570 }; --Cobalt Chestpiece
	};
	{ Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Feet";
		[01] = {itemID = 49907, spellID = 70568 }; --Boots of Kingly Upheaval
		[02] = {itemID = 49906, spellID = 70566 }; --Hellfrozen Bonegrinders
		[03] = {itemID = 45559, spellID = 63188 }; --Battlelord's Plate Boots
		[04] = {itemID = 45560, spellID = 63192 }; --Spiked Deathdealers
		[05] = {itemID = 45561, spellID = 63190 }; --Treads of Destiny
		[06] = {itemID = 41394, spellID = 55377 }; --Brilliant Titansteel Treads
		[07] = {itemID = 41391, spellID = 55375 }; --Spiked Titansteel Treads
		[08] = {itemID = 41392, spellID = 55376 }; --Tempered Titansteel Treads
		[09] = {itemID = 43588, spellID = 61010 }; --Icebane Treads
		[10] = {itemID = 42730, spellID = 56552 }; --Ornate Saronite Walkers
		[11] = {itemID = 41348, spellID = 55308 }; --Savage Saronite Walkers
		[12] = {itemID = 41128, spellID = 55057 }; --Brilliant Saronite Boots
		[13] = {itemID = 40671, spellID = 54552 }; --Tempered Saronite Boots
		[14] = {itemID = 40949, spellID = 54918 }; --Spiked Cobalt Boots
		[15] = {itemID = 39088, spellID = 52569 }; --Cobalt Boots
		[16] = {itemID = 49905, spellID = 70563 }; --Protectors of Life
	};
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Hands";
		[01] = {itemID = 41357, spellID = 55301 }; --Daunting Handguards
		[02] = {itemID = 42724, spellID = 56553 }; --Ornate Saronite Gauntlets
		[03] = {itemID = 41356, spellID = 55300 }; --Righteous Gauntlets
		[04] = {itemID = 41349, spellID = 55309 }; --Savage Saronite Gauntlets
		[05] = {itemID = 41114, spellID = 55015 }; --Tempered Saronite Gauntlets
		[06] = {itemID = 41127, spellID = 55056 }; --Brilliant Saronite Gauntlets
		[07] = {itemID = 40952, spellID = 54945 }; --Spiked Cobalt Gauntlets
		[08] = {itemID = 41975, spellID = 55835 }; --Cobalt Gauntlets
	};
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Head";
		[01] = {itemID = 41388, spellID = 55374 }; --Brilliant Titansteel Helm
		[02] = {itemID = 41386, spellID = 55372 }; --Spiked Titansteel Helm
		[03] = {itemID = 41387, spellID = 55373 }; --Tempered Titansteel Helm
		[04] = {itemID = 41344, spellID = 55302 }; --Helm of Command
		[05] = {itemID = 42728, spellID = 56556 }; --Ornate Saronite Skullshield
		[06] = {itemID = 41350, spellID = 55312 }; --Savage Saronite Skullshield
		[07] = {itemID = 43870, spellID = 59441 }; --Brilliant Saronite Helm
		[08] = {itemID = 40673, spellID = 54555 }; --Tempered Saronite Helm
		[09] = {itemID = 40955, spellID = 54949 }; --Horned Cobalt Helm
		[10] = {itemID = 40957, spellID = 54979 }; --Reinforced Cobalt Helm
		[11] = {itemID = 40942, spellID = 54917 }; --Spiked Cobalt Helm
		[12] = {itemID = 39084, spellID = 52571 }; --Cobalt Helm
	};
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Legs";
		[01] = {itemID = 49903, spellID = 70565 }; --Legplates of Painful Death
		[02] = {itemID = 49904, spellID = 70567 }; --Pillars of Might
		[03] = {itemID = 49902, spellID = 70562 }; --Puresteel Legplates
		[04] = {itemID = 41345, spellID = 55303 }; --Daunting Legplates
		[05] = {itemID = 42726, spellID = 56554 }; --Ornate Saronite Legplates
		[06] = {itemID = 41346, spellID = 55304 }; --Righteous Greaves
		[07] = {itemID = 41347, spellID = 55310 }; --Savage Saronite Legplates
		[08] = {itemID = 41190, spellID = 55187 }; --Legplates of Conquest
		[09] = {itemID = 41126, spellID = 55055 }; --Brilliant Saronite Legplates
		[10] = {itemID = 40674, spellID = 54554 }; --Tempered Saronite Legplates
		[11] = {itemID = 40943, spellID = 54947 }; --Spiked Cobalt Legplates
		[12] = {itemID = 40958, spellID = 54980 }; --Reinforced Cobalt Legplates
		[13] = {itemID = 39086, spellID = 52567 }; --Cobalt Legplates
	};
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Shoulder";
		[01] = {itemID = 42727, spellID = 56550 }; --Ornate Saronite Pauldrons
		[02] = {itemID = 41351, spellID = 55306 }; --Savage Saronite Pauldrons
		[03] = {itemID = 43865, spellID = 59440 }; --Brilliant Saronite Pauldrons
		[04] = {itemID = 40675, spellID = 54556 }; --Tempered Saronite Shoulders
		[05] = {itemID = 40950, spellID = 54941 }; --Spiked Cobalt Shoulders
		[06] = {itemID = 40956, spellID = 54978 }; --Reinforced Cobalt Shoulders
		[07] = {itemID = 39083, spellID = 52572 }; --Cobalt Shoulders
	};
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Waist";
		[01] = {itemID = 45550, spellID = 63187 }; --Belt of the Titans
		[02] = {itemID = 45551, spellID = 63191 }; --Indestructible Plate Girdle
		[03] = {itemID = 45552, spellID = 63189 }; --Plate Girdle of Righteousness
		[04] = {itemID = 43587, spellID = 61009 }; --Icebane Girdle
		[05] = {itemID = 42729, spellID = 56551 }; --Ornate Saronite Waistguard
		[06] = {itemID = 41352, spellID = 55307 }; --Savage Saronite Waistguard
		[07] = {itemID = 43860, spellID = 59436 }; --Brilliant Saronite Belt
		[08] = {itemID = 40669, spellID = 54551 }; --Tempered Saronite Belt
		[09] = {itemID = 40953, spellID = 54946 }; --Spiked Cobalt Belt
		[10] = {itemID = 39087, spellID = 52568 }; --Cobalt Belt
	};
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Wrist";
		[01] = {itemID = 47571, spellID = 67131 }; --Saronite Swordbreakers
		[02] = {itemID = 47570, spellID = 67092 }; --Saronite Swordbreakers
		[03] = {itemID = 47574, spellID = 67096 }; --Sunforged Bracers
		[04] = {itemID = 47575, spellID = 67135 }; --Sunforged Bracers
		[05] = {itemID = 47572, spellID = 67094 }; --Titanium Spikeguards
		[06] = {itemID = 47573, spellID = 67133 }; --Titanium Spikeguards
		[07] = {itemID = 42723, spellID = 56549 }; --Ornate Saronite Bracers
		[08] = {itemID = 41354, spellID = 55305 }; --Savage Saronite Bracers
		[09] = {itemID = 41355, spellID = 55298 }; --Vengeance Bindings
		[10] = {itemID = 41116, spellID = 55017 }; --Tempered Saronite Bracers
		[11] = {itemID = 43864, spellID = 59438 }; --Brilliant Saronite Bracers
		[12] = {itemID = 40954, spellID = 54948 }; --Spiked Cobalt Bracers
		[13] = {itemID = 41974, spellID = 55834 }; --Cobalt Bracers
	};
	{
		Name = "Weapon " .. AtlasLoot.Colors.WHITE .." - OneHanded";
		[01] = {itemID = 45085, spellID = 63182 }; --Titansteel Spellblade
		[02] = {itemID = 41383, spellID = 55370 }; --Titansteel Bonecrusher
		[03] = {itemID = 41384, spellID = 55371 }; --Titansteel Guardian
		[04] = {itemID = 42435, spellID = 56234 }; --Titansteel Shanker
		[05] = {itemID = 41186, spellID = 55183 }; --Corroded Saronite Edge
		[06] = {itemID = 41187, spellID = 55184 }; --Corroded Saronite Woundbringer
		[07] = {itemID = 42443, spellID = 56280 }; --Cudgel of Saronite Justice
		[08] = {itemID = 41185, spellID = 55182 }; --Furious Saronite Beatstick
		[09] = {itemID = 43871, spellID = 59442 }; --Saronite Spellblade
		[10] = {itemID = 41184, spellID = 55181 }; --Saronite Shiv
		[11] = {itemID = 41183, spellID = 55179 }; --Saronite Ambusher
		[12] = {itemID = 41182, spellID = 55177 }; --Savage Cobalt Slicer
		[13] = {itemID = 41243, spellID = 55204 }; --Notched Cobalt War Axe
		[14] = {itemID = 41240, spellID = 55201 }; --Cobalt Tenderizer
		[15] = {itemID = 41239, spellID = 55200 }; --Sturdy Cobalt Quickblade

	};
	{
		Name = "Weapon " .. AtlasLoot.Colors.WHITE .." - TwoHanded";
		[01] = {itemID = 41257, spellID = 55369 }; --Titansteel Destroyer
		[02] = {itemID = 41188, spellID = 55185 }; --Saronite Mindcrusher
		[03] = {itemID = 41181, spellID = 55174 }; --Honed Cobalt Cleaver
		[04] = {itemID = 41242, spellID = 55203 }; --Forged Cobalt Claymore
	};
	{
		Name = "Weapon " .. AtlasLoot.Colors.WHITE .." - Thrown";
		[01] = {itemID = 41245, spellID = 55206 }; --Deadly Saronite Dirk
		[02] = {itemID = 41241, spellID = 55202 }; --Sure-fire Shuriken
	};
	{
		Name = "Shield";
		[01] = {itemID = 42508, spellID = 56400 }; --Titansteel Shield Wall
		[02] = {itemID = 41113, spellID = 55014 }; --Saronite Bulwark
		[03] = {itemID = 40670, spellID = 54557 }; --Saronite Defender
		[04] = {itemID = 40668, spellID = 54550 }; --Cobalt Triangle Shield
		[05] = {itemID = 41117, spellID = 55013 }; --Saronite Protector
	};
	{
		Name = AL["Item Enhancements"];
		[01] = { spellID = 55628, icon = "INV_Jewelcrafting_ThoriumSetting" };
		[02] = { spellID = 55641, icon = "INV_GAUNTLETS_61" };
		[03] = {itemID = 41611, spellID = 55656 }; --Eternal Belt Buckle
		[04] = {itemID = 44936, spellID = 62202 }; --Titanium Plating
		[05] = {itemID = 42500, spellID = 56357 }; --Titanium Shield Spike
		[06] = {itemID = 41976, spellID = 55839 }; --Titanium Weapon Chain
	};
	{
		Name = AL["Miscellaneous"];
		[01] = {itemID = 43853, spellID = 59406 }; --Titanium Skeleton Key
		[02] = {itemID = 43854, spellID = 59405 }; --Cobalt Skeleton Key
		[03] = {itemID = 41745, spellID = 55732 }; --Titanium Rod
	};
	{
		Name = ARMORSMITH;
		[01] = {itemID = 41189, spellID = 55186 }; --Chestplate of Conquest
		[02] = {itemID = 41190, spellID = 55187 }; --Legplates of Conquest
		[03] = {itemID = 41189, spellID = 55186 }; --Chestplate of Conquest
		[04] = {itemID = 23564, spellID = 34530 }; --Twisting Nether Chain Shirt
		[05] = {itemID = 28484, spellID = 34534 }; --Bulwark of Kings
		[06] = {itemID = 28485, spellID = 36257 }; --Bulwark of the Ancient Kings
		[07] = {itemID = 23565, spellID = 36256 }; --Embrace of the Twisting Nether
		[08] = {itemID = 30074, spellID = 36129 }; --Heavy Earthforged Breastplate
		[09] = {itemID = 30076, spellID = 36130 }; --Stormforged Hauberk
		[10] = {itemID = 28483, spellID = 34533 }; --Breastplate of Kings
		[11] = {itemID = 23563, spellID = 34529 }; --Nether Chain Shirt
		[12] = {itemID = 30069, spellID = 36122 }; --Earthforged Leggings
		[13] = {itemID = 30070, spellID = 36124 }; --Windforged Leggings

	};
	{
		Name = WEAPONSMITH;
		[01] = {itemID = 30071, spellID = 36125 }; --Light Earthforged Blade
		[02] = {itemID = 30073, spellID = 36128 }; --Light Emberforged Hammer
		[03] = {itemID = 30072, spellID = 36126 }; --Light Skyforged Axe
		[04] = {itemID = 41186, spellID = 55183 }; --Corroded Saronite Edge
		[05] = {itemID = 41187, spellID = 55184 }; --Corroded Saronite Woundbringer
		[06] = {itemID = 41188, spellID = 55185 }; --Saronite Mindcrusher
	};
	{
		Name = AXESMITH;
		[01] = {itemID = 30088, spellID = 36135 }; --Skyforged Great Axe
		[02] = {itemID = 30087, spellID = 36134 }; --Stormforged Axe
		[03] = {itemID = 28434, spellID = 34543 }; --Lunar Crescent
		[04] = {itemID = 28431, spellID = 34541 }; --The Planar Edge
		[05] = {itemID = 28432, spellID = 34542 }; --Black Planar Edge
		[06] = {itemID = 28436, spellID = 36261 }; --Bloodmoon
		[07] = {itemID = 28435, spellID = 34544 }; --Mooncleaver
		[08] = {itemID = 28433, spellID = 36260 }; --Wicked Edge of the Planes
	};
	{
		Name = HAMMERSMITH;
		[01] = {itemID = 30093, spellID = 36137 }; --Great Earthforged Hammer
		[02] = {itemID = 30089, spellID = 36136 }; --Lavaforged Warhammer
		[03] = {itemID = 28437, spellID = 34545 }; --Drakefist Hammer
		[04] = {itemID = 28440, spellID = 34547 }; --Thunder
		[05] = {itemID = 28441, spellID = 34548 }; --Deep Thunder
		[06] = {itemID = 28438, spellID = 34546 }; --Dragonmaw
		[07] = {itemID = 28439, spellID = 36262 }; --Dragonstrike
		[08] = {itemID = 28442, spellID = 36263 }; --Stormherald
	};
	{
		Name = SWORDSMITH;
		[01] = {itemID = 30086, spellID = 36133 }; --Stoneforged Claymore
		[02] = {itemID = 30077, spellID = 36131 }; --Windforged Rapier
		[03] = {itemID = 28425, spellID = 34535 }; --Fireguard
		[04] = {itemID = 28428, spellID = 34538 }; --Lionheart Blade
		[05] = {itemID = 28427, spellID = 36258 }; --Blazefury
		[06] = {itemID = 28426, spellID = 34537 }; --Blazeguard
		[07] = {itemID = 28429, spellID = 34540 }; --Lionheart Champion
		[08] = {itemID = 28430, spellID = 36259 }; --Lionheart Executioner
	};
};

---------------
--- Cooking ---
---------------

AtlasLoot_Data["CookingWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath";
	Name = COOKING;
	Type = "WrathCrafting";
	{
		Name = AL["Page 1"];
		[01] = {itemID = 43015, spellID = 57423 }; --Fish Feast
		[02] = {itemID = 43478, spellID = 58527 }; --Gigantic Feast
		[03] = {itemID = 43480, spellID = 58528 }; --Small Feast
		[04] = {itemID = 42999, spellID = 57441 }; --Blackened Dragonfin
		[05] = {itemID = 42997, spellID = 57438 }; --Blackened Worg Steak
		[06] = {itemID = 45932, spellID = 64358 }; --Black Jelly
		[07] = {itemID = 43004, spellID = 57435 }; --Critter Bites
		[08] = {itemID = 42998, spellID = 57439 }; --Cuttlesteak
		[09] = {itemID = 43000, spellID = 57442 }; --Dragonfin Filet
		[10] = {itemID = 34767, spellID = 45568 }; --Firecracker Salmon
		[11] = {itemID = 42995, spellID = 57436 }; --Hearty Rhino
		[12] = {itemID = 34769, spellID = 45570 }; --Imperial Manta Steak
		[13] = {itemID = 34754, spellID = 45555 }; --Mega Mammoth Meal
		[14] = {itemID = 34758, spellID = 45559 }; --Mighty Rhino Dogs
		[15] = {itemID = 34766, spellID = 45567 }; --Poached Northern Sculpin
		[16] = {itemID = 42994, spellID = 57434 }; --Rhinolicious Wyrmsteak
		[17] = {itemID = 42996, spellID = 57437 }; --Snapper Extreme
		[18] = {itemID = 43005, spellID = 57440 }; --Spiced Mammoth Treats
		[19] = {itemID = 34756, spellID = 45557 }; --Spiced Wyrm Burger
		[20] = {itemID = 34768, spellID = 45571 }; --Spicy AtlasLoot.Colors.BLUE Nettlefish
		[21] = {itemID = 42993, spellID = 57433 }; --Spicy Fried Herring
		[22] = {itemID = 34755, spellID = 45556 }; --Tender Shoveltusk Steak
		[23] = {itemID = 43001, spellID = 57443 }; --Tracker Snacks
		[24] = {itemID = 34757, spellID = 45558 }; --Very Burnt Worg
		[25] = {itemID = 44953, spellID = 62350 }; --Worg Tartare
		[26] = {itemID = 34753, spellID = 45554 }; --Great Feast
		[27] = {itemID = 39520, spellID = 53056 }; --Kungaloosh
		[28] = {itemID = 43491, spellID = 58523 }; --Bad Clams
		[29] = {itemID = 42942, spellID = 45569 }; --Baked Manta Ray
		[30] = {itemID = 43268, spellID = 58065 }; --Dalaran Clam Chowder
	};
	{
		Name = AL["Page 2"];
		[01] = { itemID = 34760, spellID = 45561 }, --Grilled Bonescale
		[02] = { itemID = 34762, spellID = 45563 }, --Grilled Sculpin
		[03] = { itemID = 43492, spellID = 58525 }, --Haunted Herring
		[04] = { itemID = 43488, spellID = 58521 }, --Last Week's Mammoth
		[05] = { itemID = 34748, spellID = 45549 }, --Mammoth Meal
		[06] = { itemID = 34747, spellID = 57421 }, --Northern Stew
		[07] = { itemID = 34765, spellID = 45566 }, --Pickled Fangtooth
		[08] = { itemID = 34764, spellID = 45565 }, --Poached Nettlefish
		[09] = { itemID = 34752, spellID = 45553 }, --Rhino Dogs
		[10] = { itemID = 34751, spellID = 45552 }, --Roasted Worg
		[11] = { itemID = 34761, spellID = 45562 }, --Sauteed Goby
		[12] = { itemID = 34749, spellID = 45550 }, --Shoveltusk Steak
		[13] = { itemID = 34759, spellID = 45560 }, --Smoked Rockfin
		[14] = { itemID = 34763, spellID = 45564 }, --Smoked Salmon
		[15] = { itemID = 43490, spellID = 58512 }, --Tasty Cupcake
		[16] = { itemID = 34750, spellID = 45551 }, --Worm Delight
	}
};

------------------
--- Enchanting ---
------------------

AtlasLoot_Data["EnchantingWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath";
	Name = ENCHANTING;
	Type = "WrathCrafting";
	{
		Name = AL["Enchant Boots"];
		[01] = {spellID = 60763, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Greater Assault
		[02] = {spellID = 47901, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Tuskarr's Vitality
		[03] = {spellID = 44589, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Superior Agility
		[04] = {spellID = 44508, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Greater Spirit
		[05] = {spellID = 44584, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Greater Vitality
		[06] = {spellID = 60606, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Assault
		[07] = {spellID = 44528, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Greater Fortitude
		[08] = {spellID = 60623, icon = "Spell_Holy_GreaterHeal" }; --Enchant Boots - Icewalker
	};
	{
		Name = AL["Enchant Bracer"];
		[01] = {spellID = 62256, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Major Stamina
		[02] = {spellID = 60767, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Superior Spellpower
		[03] = {spellID = 44575, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Greater Assault
		[04] = {spellID = 44593, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Major Spirit
		[05] = {spellID = 44598, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Expertise
		[06] = {spellID = 44616, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Greater Stats
		[07] = {spellID = 44635, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Greater Spellpower
		[08] = {spellID = 44555, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Exceptional Intellect
		[09] = {spellID = 60616, icon = "Spell_Holy_GreaterHeal" }; --Enchant Bracers - Striking
	};
	{
		Name = AL["Enchant Chest"];
		[01] = {spellID = 27958, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Exceptional Mana
		[02] = {spellID = 44588, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Exceptional Resilience
		[03] = {spellID = 60692, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Powerful Stats
		[04] = {spellID = 47900, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Super Health
		[05] = {spellID = 44509, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Greater Mana Restoration
		[06] = {spellID = 47766, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Greater Defense
		[07] = {spellID = 44492, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Mighty Health
		[08] = {spellID = 44623, icon = "Spell_Holy_GreaterHeal" }; --Enchant Chest - Super Stats
	};
	{
		Name = AL["Enchant Cloak"];
		[01] = {spellID = 60609, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Speed
		[02] = {spellID = 44631, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Shadow Armor
		[03] = {spellID = 47899, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Wisdom
		[04] = {spellID = 44591, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Titanweave
		[05] = {spellID = 47898, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Greater Speed
		[06] = {spellID = 47672, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Mighty Armor
		[07] = {spellID = 60663, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Major Agility
		[08] = {spellID = 44596, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Superior Arcane Resistance
		[09] = {spellID = 44556, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Superior Fire Resistance
		[10] = {spellID = 44483, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Superior Frost Resistance
		[11] = {spellID = 44494, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Superior Nature Resistance
		[12] = {spellID = 44590, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Superior Shadow Resistance
		[13] = {spellID = 44500, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Superior Agility
		[14] = {spellID = 44582, icon = "Spell_Holy_GreaterHeal" }; --Enchant Cloak - Spell Piercing
	};
	{
		Name = AL["Enchant Gloves"];
		[01] = {spellID = 71692, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Angler
		[02] = {spellID = 44625, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Armsman
		[03] = {spellID = 60668, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Crusher
		[04] = {spellID = 44529, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Major Agility
		[05] = {spellID = 44488, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Precision
		[06] = {spellID = 44484, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Expertise
		[07] = {spellID = 44513, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Greater Assault
		[08] = {spellID = 44506, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Gatherer
		[09] = {spellID = 44592, icon = "Spell_Holy_GreaterHeal" }; --Enchant Gloves - Exceptional Spellpower
	};
	{
		Name = AL["Enchant Ring"];
		[01] = {spellID = 44645, icon = "Spell_Holy_GreaterHeal" }; --Enchant Ring - Assault
		[02] = {spellID = 44636, icon = "Spell_Holy_GreaterHeal" }; --Enchant Ring - Greater Spellpower
		[03] = {spellID = 59636, icon = "Spell_Holy_GreaterHeal" }; --Enchant Ring - Stamina
	};
	{
		Name = AL["Enchant Shield"];
		[01] = {spellID = 44489, icon = "Spell_Holy_GreaterHeal" }; --Enchant Shield - Defense
		[02] = {spellID = 60653, icon = "Spell_Holy_GreaterHeal" }; --Enchant Shield - Greater Intellect
	};
	{
		Name = AL["Enchant 2H Weapon"];
		[01] = {spellID = 60691, icon = "Spell_Holy_GreaterHeal" }; --Enchant 2H Weapon - Massacre
		[02] = {spellID = 44595, icon = "Spell_Holy_GreaterHeal" }; --Enchant 2H Weapon - Scourgebane
		[03] = {spellID = 44630, icon = "Spell_Holy_GreaterHeal" }; --Enchant 2H Weapon - Greater Savagery
	};
	{
		Name = AL["Enchant Weapon"];
		[01] = {spellID = 64441, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Blade Ward
		[02] = {spellID = 64579, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Blood Draining
		[03] = {spellID = 59619, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Accuracy
		[04] = {spellID = 59621, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Berserking
		[05] = {spellID = 59625, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Black Magic
		[06] = {spellID = 44576, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Lifeward
		[07] = {spellID = 60714, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Mighty Spellpower
		[08] = {spellID = 60707, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Superior Potency
		[09] = {spellID = 44621, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Giant Slayer
		[10] = {spellID = 44524, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Icebreaker
		[11] = {spellID = 44633, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Exceptional Agility
		[12] = {spellID = 44510, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Exceptional Spirit
		[13] = {spellID = 44629, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Exceptional Spellpower
		[14] = {spellID = 60621, icon = "Spell_Holy_GreaterHeal" }; --Enchant Weapon - Greater Potency
	};
	{
		Name = "Enchant Staff";
		[01] = { spellID = 62948, icon = "Spell_Holy_GreaterHeal" }; --Enchant Staff - Greater Spellpower
		[02] = { spellID = 62959, icon = "Spell_Holy_GreaterHeal" }; --Enchant Staff - Spellpower
	};
	{
		Name = AL["Miscellaneous"];
		[01] = {itemID = 22459, spellID = 28028 }; --Void Sphere
		[02] = {itemID = 44452, spellID = 60619 }; --Runed Titanium Rod
	};
};

-------------------
--- Engineering ---
-------------------

AtlasLoot_Data["EngineeringWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath";
	Name = ENGINEERING;
	Type = "WrathCrafting";
	{
		Name = "Ammo";
		[01] = {itemID = 52021, spellID = 72953 }; --Iceblade Arrow
		[02] = {itemID = 52020, spellID = 72952 }; --Shatter Rounds
		[03] = {itemID = 41165, spellID = 56475 }; --Saronite Arrow Maker
		[04] = {itemID = 41164, spellID = 56474 }; --Ultrasafe Bullet Machine
	};
	{
		Name = BabbleInventory["Armor"];
		[01] = {itemID = 42549, spellID = 56480 }; --Armored Titanium Goggles
		[02] = {itemID = 42552, spellID = 56483 }; --Charged Titanium Specs
		[03] = {itemID = 42555, spellID = 56487 }; --Electroflux Sight Enhancers
		[04] = {itemID = 42554, spellID = 56486 }; --Greensight Gogs
		[05] = {itemID = 42551, spellID = 56574 }; --Truesight Ice Blinders
		[06] = {itemID = 42553, spellID = 56484 }; --Visage Liquification Goggles
		[07] = {itemID = 42550, spellID = 56481 }; --Weakness Spectralizers
		[08] = {itemID = 44949, spellID = 62271 }; --Unbreakable Healing Amplifiers
		[09] = {itemID = 41121, spellID = 56469 }; --Gnomish Lightning Generator
		[10] = {itemID = 40895, spellID = 56473 }; --Gnomish X-Ray Specs
		[11] = {itemID = 44742, spellID = 61483 }; --Mechanized Snow Goggles
		[12] = {itemID = 40865, spellID = 56467 }; --Noise Machine
		[13] = {itemID = 40767, spellID = 56466 }; --Sonic Booster
	};
	{
		Name = AL["Explosives"];
		[01] = {itemID = 42641, spellID = 56514 }; --Global Thermal Sapper Charge
		[02] = {itemID = 44951, spellID = 56468 }; --Box of Bombs
		[03] = {itemID = 40536, spellID = 56463 }; --Explosive Decoy
		[04] = {itemID = 40771, spellID = 56460 }; --Cobalt Frag Bomb
		[05] = {itemID = 32413, spellID = 39973 }; --Frost Grenades
	};
	{
		Name = AL["Item Enhancements"];
		[01] = {itemID = 41167, spellID = 56478 }; --Heartseeker Scope
		[02] = {itemID = 41146, spellID = 56470 }; --Sun Scope
		[03] = {itemID = 44739, spellID = 61471 }; --Diamond-cut Refractor Scope
		[16] = {spellID = 55016, icon = "Trade_Engineering" }; --Nitro Boosts
		[17] = {spellID = 54998, icon = "Trade_Engineering" }; --Hand-Mounted Pyro Rocket
		[18] = {spellID = 54999, icon = "Trade_Engineering" }; --Hyperspeed Accelerators
		[19] = {spellID = 63770, icon = "Trade_Engineering" }; --Reticulated Armor Webbing
		[20] = {spellID = 54736, icon = "Trade_Engineering" }; --Personal Electromagnetic Pulse Generator
		[21] = {spellID = 54793, icon = "Trade_Engineering" }; --Belt-Clipped Spynoculars
		[22] = {spellID = 55002, icon = "Trade_Engineering" }; --Flexweave Underlay
		[23] = {spellID = 63765, icon = "Trade_Engineering" }; --Springy Arachnoweave
	};
	{
		Name = BabbleInventory["Weapon"];
		[01] = {itemID = 41168, spellID = 56479 }; --Armor Plated Combat Shotgun
		[02] = {itemID = 44504, spellID = 60874 }; --Nesingwary 4000
		[03] = {itemID = 39688, spellID = 54353 }; --Mark \"S\" Boomstick
	};
	{
		Name = AL["Miscellaneous"];
		[01] = {itemID = 49040, spellID = 68067 }; --Jeeves
		[02] = {itemID = 41508, spellID = 60866 }; --Mechano-hog
		[03] = {itemID = 44413, spellID = 60867 }; --Mekgineer's Chopper
		[04] = {itemID = 40768, spellID = 56472 }; --MOLL-E
		[05] = {itemID = 48933, spellID = 67920 }; --Wormhole Generator: Northrend
		[06] = {itemID = 23775, spellID = 30349 }; --Titanium Toolbox
		[07] = {itemID = 40892, spellID = 56459 }; --Hammer Pick
	};
	{
		Name = AL["Reagents"];
		[01] = {itemID = 39681, spellID = 56349 }; --Handful of Cobalt Bolts" .. "
		[02] = {itemID = 39683, spellID = 56471 }; --Froststeel Tube
		[03] = {itemID = 39682, spellID = 56464 }; --Overcharged Capacitor
		[04] = {itemID = 39690, spellID = 53281 }; --Volatile Blasting Trigger" .. "
	};
	{
		Name = GNOMISH;
		[01] = {itemID = 52021, spellID = 72953 }; --Iceblade Arrow
		[02] = {itemID = 23829, spellID = 30575 }; --Gnomish Battle Goggles
		[03] = {itemID = 23828, spellID = 30574 }; --Gnomish Power Goggles
		[04] = {itemID = 40895, spellID = 56473 }; --Gnomish X-Ray Specs
		[05] = {itemID = 23825, spellID = 30570 }; --Nigh-Invulnerability Belt
		[06] = {itemID = 23835, spellID = 30569 }; --Gnomish Poultryizer
		[07] = {itemID = 30544, spellID = 36955 }; --Ultrasafe Transporter - Toshley's Station
		[08] = {itemID = 18986, spellID = 23489 }; --Ultrasafe Transporter - Gadgetzan
		[09] = {itemID = 18660, spellID = 23129 }; --World Enlarger
		[10] = {itemID = 10726, spellID = 12907 }; --Gnomish Mind Control Cap
		[11] = {itemID = 10724, spellID = 12905 }; --Gnomish Rocket Boots
		[12] = {itemID = 10721, spellID = 12903 }; --Gnomish Harm Prevention Belt
		[13] = {itemID = 10545, spellID = 12897 }; --Gnomish Goggles
		[14] = {itemID = 23841, spellID = 30568 }; --Gnomish Flame Turret
		[15] = {itemID = 18645, spellID = 23096 }; --Alarm-O-Bot
		[16] = {itemID = 10645, spellID = 12759 }; --Gnomish Death Ray
		[17] = {itemID = 10725, spellID = 12906 }; --Gnomish Battle Chicken
		[18] = {itemID = 10720, spellID = 12902 }; --Gnomish Net-o-Matic Projector
		[19] = {itemID = 10716, spellID = 12899 }; --Gnomish Shrink Ray
		[20] = {itemID = 10713, spellID = 12895 }; --Inlaid Mithril Cylinder Plans
	};
	{
		Name = GOBLIN;
		[01] = {itemID = 52020, spellID = 72952 }; --Shatter Rounds
		[02] = {itemID = 23838, spellID = 30565 }; --Foreman's Enchanted Helmet
		[03] = {itemID = 23839, spellID = 30566 }; --Foreman's Reinforced Helmet
		[04] = {itemID = 23836, spellID = 30563 }; --Goblin Rocket Launcher
		[05] = {itemID = 30542, spellID = 36954 }; --Dimensional Ripper - Area 52
		[06] = {itemID = 18984, spellID = 23486 }; --Dimensional Ripper - Everlook
		[07] = {itemID = 10588, spellID = 12758 }; --Goblin Rocket Helmet
		[08] = {itemID = 7189, spellID = 8895 }; --Goblin Rocket Boots
		[09] = {itemID = 10543, spellID = 12718 }; --Goblin Construction Helmet
		[10] = {itemID = 10542, spellID = 12717 }; --Goblin Mining Helmet
		[11] = {itemID = 42641, spellID = 56514 }; --Global Thermal Sapper Charge
		[12] = {itemID = 23827, spellID = 30560 }; --Super Sapper Charge
		[13] = {itemID = 23826, spellID = 30558 }; --The Bigger One
		[14] = {itemID = 18587, spellID = 23078 }; --Goblin Jumper Cables XL
		[15] = {itemID = 10727, spellID = 12908 }; --Goblin Dragon Gun
		[16] = {itemID = 10586, spellID = 12754 }; --The Big One
		[17] = {itemID = 10587, spellID = 12755 }; --Goblin Bomb Dispenser
		[18] = {itemID = 10577, spellID = 12716 }; --Goblin Mortar
		[19] = {itemID = 10644, spellID = 12715 }; --Goblin Rocket Fuel Recipe
		[20] = {itemID = 10646, spellID = 12760 }; --Goblin Sapper Charge
		[21] = {itemID = 10577, spellID = 13240 }; --The Mortar: Reloaded
	};
};

-------------------
--- Inscription ---
-------------------

AtlasLoot_Data["Inscription"] = {
	Module = "AtlasLoot_Crafting_Wrath";
	Name = INSCRIPTION;
	Type = "WrathCrafting";
	{
		Name = AL["Off-Hand Items"];
		[01] = {itemID = 44210, spellID = 59498 }; --Faces of Doom
		[02] = {itemID = 38322, spellID = 59497 }; --Iron-bound Tome
		[03] = {itemID = 45854, spellID = 64051 }; --Rituals of the New Moon
		[04] = {itemID = 45849, spellID = 64053 }; --Twilight Tome
		[05] = {itemID = 43667, spellID = 59496 }; --Book of Clever Tricks
		[06] = {itemID = 43666, spellID = 59495 }; --Hellfire Tome
		[07] = {itemID = 43664, spellID = 59494 }; --Manual of Clouds
		[08] = {itemID = 43663, spellID = 59493 }; --Stormbound Tome
		[09] = {itemID = 43661, spellID = 59490 }; --Book of Stars
		[10] = {itemID = 43660, spellID = 59489 }; --Fire Eater's Guide
		[11] = {itemID = 43657, spellID = 59486 }; --Royal Guide of Escape Routes
		[12] = {itemID = 43656, spellID = 59484 }; --Tome of Kings
		[13] = {itemID = 43655, spellID = 59478 }; --Book of Survival
		[14] = {itemID = 43654, spellID = 59475 }; --Tome of the Dawn
		[15] = {itemID = 43515, spellID = 58565 }; --Mystic Tome
	};
	{
		Name = AL["Reagents"];
		[01] = {itemID = 43127, spellID = 57716 }; --Snowfall Ink
		[02] = {itemID = 43125, spellID = 57714 }; --Darkflame Ink
		[03] = {itemID = 43123, spellID = 57712 }; --Ink of the Sky
		[04] = {itemID = 43121, spellID = 57710 }; --Fiery Ink
		[05] = {itemID = 43119, spellID = 57708 }; --Royal Ink
		[06] = {itemID = 43117, spellID = 57706 }; --Dawnstar Ink
		[07] = {itemID = 43115, spellID = 57703 }; --Hunter's Ink
		[08] = {itemID = 43126, spellID = 57715 }; --Ink of the Sea
		[09] = {itemID = 43124, spellID = 57713 }; --Ethereal Ink
		[10] = {itemID = 43122, spellID = 57711 }; --Shimmering Ink
		[11] = {itemID = 43120, spellID = 57709 }; --Celestial Ink
		[12] = {itemID = 43118, spellID = 57707 }; --Jadefire Ink
		[13] = {itemID = 43116, spellID = 57704 }; --Lion's Ink
		[14] = {itemID = 39774, spellID = 53462 }; --Midnight Ink
		[15] = {itemID = 39469, spellID = 52843 }; --Moonglow Ink
		[16] = {itemID = 37101, spellID = 52738 }; --Ivory Ink
	};
	{
		Name = AL["Scrolls"];
		[01] = {itemID = 49632, spellID = 69385 }; --Runescroll of Fortitude
		[03] = {itemID = 44315, spellID = 60337 }; --Scroll of Recall III
		[04] = {itemID = 44314, spellID = 60336 }; --Scroll of Recall II
		[05] = {itemID = 37118, spellID = 48248 }; --Scroll of Recall
		[06] = {itemID = 3012, spellID = 58483 }; --Scroll of Agility VIII
		[07] = {itemID = 3012, spellID = 58482 }; --Scroll of Agility VII
		[08] = {itemID = 3012, spellID = 58481 }; --Scroll of Agility VI
		[09] = {itemID = 3012, spellID = 58480 }; --Scroll of Agility V
		[10] = {itemID = 3012, spellID = 58478 }; --Scroll of Agility IV
		[11] = {itemID = 3012, spellID = 58476 }; --Scroll of Agility III
		[12] = {itemID = 3012, spellID = 58473 }; --Scroll of Agility II
		[13] = {itemID = 3012, spellID = 58472 }; --Scroll of Agility
		[14] = {itemID = 955, spellID = 50604 }; --Scroll of Intellect VIII
		[15] = {itemID = 955, spellID = 50603 }; --Scroll of Intellect VII
		[16] = {itemID = 955, spellID = 50602 }; --Scroll of Intellect VI
		[17] = {itemID = 955, spellID = 50601 }; --Scroll of Intellect V
		[18] = {itemID = 955, spellID = 50600 }; --Scroll of Intellect IV
		[19] = {itemID = 955, spellID = 50599 }; --Scroll of Intellect III
		[20] = {itemID = 955, spellID = 50598 }; --Scroll of Intellect II
		[21] = {itemID = 955, spellID = 48114 }; --Scroll of Intellect
		[23] = {itemID = 955, spellID = 50611 }; --Scroll of Spirit VIII
		[24] = {itemID = 955, spellID = 50610 }; --Scroll of Spirit VII
		[25] = {itemID = 955, spellID = 50609 }; --Scroll of Spirit VI
		[26] = {itemID = 955, spellID = 50608 }; --Scroll of Spirit V
		[27] = {itemID = 955, spellID = 50607 }; --Scroll of Spirit IV
		[28] = {itemID = 955, spellID = 50606 }; --Scroll of Spirit III
		[29] = {itemID = 955, spellID = 50605 }; --Scroll of Spirit II
		[30] = {itemID = 955, spellID = 48116 }; --Scroll of Spirit
	};
	{
		Name = AL["Scrolls"];
		[01] = {itemID = 1180, spellID = 50620 }; --Scroll of Stamina VIII
		[02] = {itemID = 1180, spellID = 50619 }; --Scroll of Stamina VII
		[03] = {itemID = 1180, spellID = 50618 }; --Scroll of Stamina VI
		[04] = {itemID = 1180, spellID = 50617 }; --Scroll of Stamina V
		[05] = {itemID = 1180, spellID = 50616 }; --Scroll of Stamina IV
		[06] = {itemID = 1180, spellID = 50614 }; --Scroll of Stamina III
		[07] = {itemID = 1180, spellID = 50612 }; --Scroll of Stamina II
		[08] = {itemID = 1180, spellID = 45382 }; --Scroll of Stamina
		[16] = {itemID = 3012, spellID = 58491 }; --Scroll of Strength VIII
		[17] = {itemID = 3012, spellID = 58490 }; --Scroll of Strength VII
		[18] = {itemID = 3012, spellID = 58489 }; --Scroll of Strength VI
		[19] = {itemID = 3012, spellID = 58488 }; --Scroll of Strength V
		[20] = {itemID = 3012, spellID = 58487 }; --Scroll of Strength IV
		[21] = {itemID = 3012, spellID = 58486 }; --Scroll of Strength III
		[22] = {itemID = 3012, spellID = 58485 }; --Scroll of Strength II
		[23] = {itemID = 3012, spellID = 58484 }; --Scroll of Strength
	};
	{
		Name = AL["Miscellaneous"];
		[01] = {spellID = 59504, icon = "INV_Feather_05" }; --Darkmoon Card of the North
		[02] = {spellID = 59503, icon = "INV_Feather_05" }; --Greater Darkmoon Card
		[03] = {spellID = 59502, icon = "INV_Feather_05" }; --Darkmoon Card
		[04] = {spellID = 59491, icon = "INV_Feather_05" }; --Shadowy Tarot
		[05] = {spellID = 59487, icon = "INV_Feather_05" }; --Arcane Tarot
		[06] = {spellID = 48247, icon = "INV_Feather_05" }; --Mysterious Tarot" .. "
		[07] = {spellID = 59480, icon = "INV_Feather_05" }; --Strange Tarot
		[09] = {spellID = 61117, icon = "INV_Inscription_Tradeskill01" }; --Master's Inscription of the Axe
		[10] = {spellID = 61118, icon = "INV_Inscription_Tradeskill01" }; --Master's Inscription of the Crag
		[11] = {spellID = 61119, icon = "INV_Inscription_Tradeskill01" }; --Master's Inscription of the Pinnacle
		[12] = {spellID = 61120, icon = "INV_Inscription_Tradeskill01" }; --Master's Inscription of the Storm
		[14] = {spellID = 52175, icon = "INV_Misc_Book_11" }; --Decipher
		[16] = {itemID = 43145, spellID = 59500 }; --Armor Vellum III
		[17] = {itemID = 37602, spellID = 59499 }; --Armor Vellum II
		[18] = {itemID = 38682, spellID = 52739 }; --Armor Vellum
		[20] = {itemID = 43146, spellID = 59501 }; --Weapon Vellum III
		[21] = {itemID = 39350, spellID = 59488 }; --Weapon Vellum II
		[22] = {itemID = 39349, spellID = 52840 }; --Weapon Vellum
		[24] = {itemID = 43850, spellID = 59387 }; --Certificate of Ownership
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"];
		[01] = {itemID = 43533, spellID = 57207 }; --Glyph of Anti-Magic Shell
		[02] = {itemID = 43826, spellID = 59339 }; --Glyph of Blood Strike
		[03] = {itemID = 43536, spellID = 57210 }; --Glyph of Bone Shield
		[04] = {itemID = 43537, spellID = 57211 }; --Glyph of Chains of Ice
		[05] = {itemID = 45799, spellID = 64297 }; --Glyph of Dancing Rune Weapon
		[06] = {itemID = 43538, spellID = 57212 }; --Glyph of Dark Command
		[07] = {itemID = 45804, spellID = 64266 }; --Glyph of Dark Death
		[08] = {itemID = 43542, spellID = 57214 }; --Glyph of Death and Decay
		[09] = {itemID = 43541, spellID = 57213 }; --Glyph of Death Grip
		[10] = {itemID = 43827, spellID = 59340 }; --Glyph of Death Strike
		[11] = {itemID = 45805, spellID = 64267 }; --Glyph of Disease
		[12] = {itemID = 43543, spellID = 57216 }; --Glyph of Frost Strike
		[13] = {itemID = 43534, spellID = 57208 }; --Glyph of Heart Strike
		[14] = {itemID = 45806, spellID = 64300 }; --Glyph of Howling Blast
		[15] = {itemID = 45800, spellID = 64298 }; --Glyph of Hungering Cold
		[16] = {itemID = 43545, spellID = 57218 }; --Glyph of Icebound Fortitude
		[17] = {itemID = 43546, spellID = 57219 }; --Glyph of Icy Touch
		[18] = {itemID = 43547, spellID = 57220 }; --Glyph of Obliterate
		[19] = {itemID = 43548, spellID = 57221 }; --Glyph of Plague Strike
		[20] = {itemID = 43550, spellID = 57223 }; --Glyph of Rune Strike
		[21] = {itemID = 43825, spellID = 59338 }; --Glyph of Rune Tap
		[22] = {itemID = 43551, spellID = 57224 }; --Glyph of Scourge Strike
		[23] = {itemID = 43552, spellID = 57225 }; --Glyph of Strangulate
		[24] = {itemID = 43549, spellID = 57222 }; --Glyph of the Ghoul
		[25] = {itemID = 43553, spellID = 57226 }; --Glyph of Unbreakable Armor
		[26] = {itemID = 45803, spellID = 64299 }; --Glyph of Unholy Blight
		[27] = {itemID = 43554, spellID = 57227 }; --Glyph of Vampiric Blood
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"];
		[01] = {itemID = 43535, spellID = 57209 }; --Glyph of Blood Tap
		[02] = {itemID = 43671, spellID = 57229 }; --Glyph of Corpse Explosion
		[03] = {itemID = 43539, spellID = 57215 }; --Glyph of Death's Embrace
		[04] = {itemID = 43544, spellID = 57217 }; --Glyph of Horn of Winter
		[05] = {itemID = 43672, spellID = 57230 }; --Glyph of Pestilence
		[06] = {itemID = 43673, spellID = 57228 }; --Glyph of Raise Dead
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["DRUID"];
		[01] = {itemID = 45623, spellID = 64256 }; --Glyph of Barkskin
		[02] = {itemID = 45601, spellID = 64268 }; --Glyph of Berserk
		[03] = {itemID = 48720, spellID = 67600 }; --Glyph of Claw
		[04] = {itemID = 40924, spellID = 48121 }; --Glyph of Entangling Roots
		[05] = {itemID = 44928, spellID = 62162 }; --Glyph of Focus
		[06] = {itemID = 40896, spellID = 56943 }; --Glyph of Frenzied Regeneration
		[07] = {itemID = 40899, spellID = 56944 }; --Glyph of Growl
		[08] = {itemID = 40914, spellID = 56945 }; --Glyph of Healing Touch
		[09] = {itemID = 40920, spellID = 56946 }; --Glyph of Hurricane
		[10] = {itemID = 40908, spellID = 56947 }; --Glyph of Innervate
		[11] = {itemID = 40919, spellID = 56948 }; --Glyph of Insect Swarm
		[12] = {itemID = 40915, spellID = 56949 }; --Glyph of Lifebloom
		[13] = {itemID = 40900, spellID = 56950 }; --Glyph of Mangle
		[14] = {itemID = 40897, spellID = 56961 }; --Glyph of Maul
		[15] = {itemID = 45622, spellID = 64258 }; --Glyph of Monsoon
		[16] = {itemID = 40923, spellID = 56951 }; --Glyph of Moonfire
		[17] = {itemID = 45603, spellID = 64313 }; --Glyph of Nourish
		[18] = {itemID = 40903, spellID = 56952 }; --Glyph of Rake
		[19] = {itemID = 50125, spellID = 71015 }; --Glyph of Rapid Rejuvenation
		[20] = {itemID = 40909, spellID = 56953 }; --Glyph of Rebirth
		[21] = {itemID = 40912, spellID = 56954 }; --Glyph of Regrowth
		[22] = {itemID = 40913, spellID = 56955 }; --Glyph of Rejuvenation
		[23] = {itemID = 40902, spellID = 56956 }; --Glyph of Rip
		[24] = {itemID = 45604, spellID = 64307 }; --Glyph of Savage Roar
		[25] = {itemID = 40901, spellID = 56957 }; --Glyph of Shred
		[26] = {itemID = 40921, spellID = 56958 }; --Glyph of Starfall
		[27] = {itemID = 40916, spellID = 56959 }; --Glyph of Starfire
		[28] = {itemID = 46372, spellID = 65245 }; --Glyph of Survival Instincts
		[29] = {itemID = 40906, spellID = 56960 }; --Glyph of Swiftmend
		[30] = {itemID = 40922, spellID = 56963 }; --Glyph of WRATH
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["DRUID"];
		[01] = {itemID = 45602, spellID = 64270 }; --Glyph of Wild Growth
		[02] = {itemID = 43316, spellID = 58286 }; --Glyph of Aquatic Form
		[03] = {itemID = 43334, spellID = 58287 }; --Glyph of Challenging Roar
		[04] = {itemID = 43674, spellID = 59315 }; --Glyph of Dash
		[05] = {itemID = 43335, spellID = 58296 }; --Glyph of the Wild
		[06] = {itemID = 43332, spellID = 58289 }; --Glyph of Thorns
		[07] = {itemID = 44922, spellID = 56965 }; --Glyph of Typhoon
		[08] = {itemID = 43331, spellID = 58288 }; --Glyph of Unburdened Rebirth
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[01] = {itemID = 42897, spellID = 56994 }; --Glyph of Aimed Shot
		[02] = {itemID = 42898, spellID = 56995 }; --Glyph of Arcane Shot
		[03] = {itemID = 42899, spellID = 56996 }; --Glyph of Aspect of the Beast
		[04] = {itemID = 42900, spellID = 56997 }; --Glyph of Aspect of the Monkey
		[05] = {itemID = 42901, spellID = 56998 }; --Glyph of Aspect of the Viper
		[06] = {itemID = 42902, spellID = 56999 }; --Glyph of Beastial WRATH
		[07] = {itemID = 45625, spellID = 64271 }; --Glyph of Chimera Shot
		[08] = {itemID = 42903, spellID = 57000 }; --Glyph of Deterrence
		[09] = {itemID = 42904, spellID = 57001 }; --Glyph of Disengage
		[10] = {itemID = 45731, spellID = 64273 }; --Glyph of Explosive Shot
		[11] = {itemID = 45733, spellID = 64253 }; --Glyph of Explosive Trap
		[12] = {itemID = 42905, spellID = 57002 }; --Glyph of Freezing Trap
		[13] = {itemID = 42906, spellID = 57003 }; --Glyph of Frost Trap
		[14] = {itemID = 42907, spellID = 57004 }; --Glyph of Hunter's Mark
		[15] = {itemID = 42908, spellID = 57005 }; --Glyph of Immolation Trap
		[16] = {itemID = 42909, spellID = 57006 }; --Glyph of Improved Aspect of the Hawk
		[17] = {itemID = 45732, spellID = 64304 }; --Glyph of Kill Shot
		[18] = {itemID = 42910, spellID = 57007 }; --Glyph of Multi-Shot
		[19] = {itemID = 42911, spellID = 57008 }; --Glyph of Rapid Fire
		[20] = {itemID = 45735, spellID = 64246 }; --Glyph of Raptor Strike
		[21] = {itemID = 45734, spellID = 64249 }; --Glyph of Scatter Shot
		[22] = {itemID = 42912, spellID = 57009 }; --Glyph of Serpent Sting
		[23] = {itemID = 42913, spellID = 57010 }; --Glyph of Snake Trap
		[24] = {itemID = 42914, spellID = 57011 }; --Glyph of Steady Shot
		[25] = {itemID = 42915, spellID = 57012 }; --Glyph of Trueshot Aura
		[26] = {itemID = 42916, spellID = 57013 }; --Glyph of Volley
		[27] = {itemID = 42917, spellID = 57014 }; --Glyph of Wyvern Sting
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[01] = {itemID = 43351, spellID = 58302 }; --Glyph of Feign Death
		[02] = {itemID = 43350, spellID = 58301 }; --Glyph of Mend Pet
		[03] = {itemID = 43354, spellID = 58300 }; --Glyph of Possessed Strength
		[04] = {itemID = 43338, spellID = 58299 }; --Glyph of Revive Pet
		[05] = {itemID = 43356, spellID = 58298 }; --Glyph of Scare Beast
		[06] = {itemID = 43355, spellID = 58297 }; --Glyph of the Pack
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[01] = {itemID = 45738, spellID = 64276 }; --Glyph of Arcane Barrage
		[02] = {itemID = 44955, spellID = 56991 }; --Glyph of Arcane Blast
		[03] = {itemID = 42734, spellID = 56968 }; --Glyph of Arcane Explosion
		[04] = {itemID = 42735, spellID = 56971 }; --Glyph of Arcane Missiles
		[05] = {itemID = 42736, spellID = 56972 }; --Glyph of Arcane Power
		[06] = {itemID = 42737, spellID = 56973 }; --Glyph of Blink
		[07] = {itemID = 45736, spellID = 64274 }; --Glyph of Deep Freeze
		[08] = {itemID = 50045, spellID = 71101 }; --Glyph of Eternal Water
		[09] = {itemID = 42738, spellID = 56974 }; --Glyph of Evocation
		[10] = {itemID = 42740, spellID = 57719 }; --Glyph of Fire Blast
		[11] = {itemID = 42739, spellID = 56975 }; --Glyph of Fireball
		[12] = {itemID = 42741, spellID = 56976 }; --Glyph of Frost Nova
		[13] = {itemID = 42742, spellID = 56977 }; --Glyph of Frostbolt
		[14] = {itemID = 44684, spellID = 61677 }; --Glyph of Frostfire
		[15] = {itemID = 42743, spellID = 56978 }; --Glyph of Ice Armor
		[16] = {itemID = 45740, spellID = 64257 }; --Glyph of Ice Barrier
		[17] = {itemID = 42744, spellID = 56979 }; --Glyph of Ice Block
		[18] = {itemID = 42745, spellID = 56980 }; --Glyph of Ice Lance
		[19] = {itemID = 42746, spellID = 56981 }; --Glyph of Icy Veins
		[20] = {itemID = 42747, spellID = 56982 }; --Glyph of Improved Scorch
		[21] = {itemID = 42748, spellID = 56983 }; --Glyph of Invisibility
		[22] = {itemID = 45737, spellID = 64275 }; --Glyph of Living Bomb
		[23] = {itemID = 42749, spellID = 56984 }; --Glyph of Mage Armor
		[24] = {itemID = 42750, spellID = 56985 }; --Glyph of Mana Gem
		[25] = {itemID = 45739, spellID = 64314 }; --Glyph of Mirror Image
		[26] = {itemID = 42751, spellID = 56986 }; --Glyph of Molten Armor
		[27] = {itemID = 42752, spellID = 56987 }; --Glyph of Polymorph
		[28] = {itemID = 42753, spellID = 56988 }; --Glyph of Remove Curse
		[29] = {itemID = 42754, spellID = 56989 }; --Glyph of Water Elemental
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[01] = {itemID = 43339, spellID = 58303 }; --Glyph of Arcane Intellect
		[02] = {itemID = 44920, spellID = 56990 }; --Glyph of Blast Wave
		[03] = {itemID = 43357, spellID = 58305 }; --Glyph of Fire Ward
		[04] = {itemID = 43359, spellID = 58306 }; --Glyph of Frost Armor
		[05] = {itemID = 43360, spellID = 58307 }; --Glyph of Frost Ward
		[06] = {itemID = 43364, spellID = 58308 }; --Glyph of Slow Fall
		[07] = {itemID = 43361, spellID = 58310 }; --Glyph of the Penguin
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		[01] = {itemID = 41101, spellID = 57019 }; --Glyph of Avenger's Shield
		[02] = {itemID = 41107, spellID = 57021 }; --Glyph of Avenging WRATH
		[03] = {itemID = 45741, spellID = 64277 }; --Glyph of Beacon of Light
		[04] = {itemID = 41104, spellID = 57020 }; --Glyph of Cleansing
		[05] = {itemID = 41099, spellID = 57023 }; --Glyph of Consecration
		[06] = {itemID = 41098, spellID = 57024 }; --Glyph of Crusader Strike
		[07] = {itemID = 45745, spellID = 64305 }; --Glyph of Divine Plea
		[08] = {itemID = 45743, spellID = 64279 }; --Glyph of Divine Storm
		[09] = {itemID = 41108, spellID = 57031 }; --Glyph of Divinity
		[10] = {itemID = 41103, spellID = 57025 }; --Glyph of Exorcism
		[11] = {itemID = 41105, spellID = 57026 }; --Glyph of Flash of Light
		[12] = {itemID = 41095, spellID = 57027 }; --Glyph of Hammer of Justice
		[13] = {itemID = 45742, spellID = 64278 }; --Glyph of Hammer of the Righteous
		[14] = {itemID = 41097, spellID = 57028 }; --Glyph of Hammer of WRATH
		[15] = {itemID = 41106, spellID = 57029 }; --Glyph of Holy Light
		[16] = {itemID = 45746, spellID = 64254 }; --Glyph of Holy Shock
		[17] = {itemID = 41092, spellID = 57030 }; --Glyph of Judgement
		[18] = {itemID = 41100, spellID = 57032 }; --Glyph of Righteous Defense
		[19] = {itemID = 45747, spellID = 64251 }; --Glyph of Salvation
		[20] = {itemID = 43867, spellID = 59559 }; --Glyph of Seal of Blood
		[21] = {itemID = 41094, spellID = 57033 }; --Glyph of Seal of Command
		[22] = {itemID = 41110, spellID = 57034 }; --Glyph of Seal of Light
		[23] = {itemID = 43868, spellID = 59560 }; --Glyph of Seal of Righteousness
		[24] = {itemID = 43869, spellID = 59561 }; --Glyph of Seal of Vengeance
		[25] = {itemID = 41109, spellID = 57035 }; --Glyph of Seal of Wisdom
		[26] = {itemID = 45744, spellID = 64308 }; --Glyph of Shield of Righteousness
		[27] = {itemID = 41096, spellID = 57022 }; --Glyph of Spiritual Attunement
		[28] = {itemID = 41102, spellID = 57036 }; --Glyph of Turn Evil
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
		[01] = {itemID = 43365, spellID = 58311 }; --Glyph of Blessing of Kings
		[02] = {itemID = 43340, spellID = 58314 }; --Glyph of Blessing of Might
		[03] = {itemID = 43366, spellID = 58312 }; --Glyph of Blessing of Wisdom
		[04] = {itemID = 43367, spellID = 58313 }; --Glyph of Lay on Hands
		[05] = {itemID = 43368, spellID = 58315 }; --Glyph of Sense Undead
		[06] = {itemID = 43369, spellID = 58316 }; --Glyph of the Wise
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		[01] = {itemID = 42396, spellID = 57181 }; --Glyph of Circle of Healing
		[02] = {itemID = 42397, spellID = 57183 }; --Glyph of Dispel Magic
		[03] = {itemID = 45753, spellID = 64280 }; --Glyph of Dispersion
		[04] = {itemID = 42398, spellID = 57184 }; --Glyph of Fade
		[05] = {itemID = 42399, spellID = 57185 }; --Glyph of Fear Ward
		[06] = {itemID = 42400, spellID = 57186 }; --Glyph of Flash Heal
		[07] = {itemID = 45755, spellID = 64281 }; --Glyph of Guardian Spirit
		[08] = {itemID = 42401, spellID = 57187 }; --Glyph of Holy Nova
		[09] = {itemID = 45758, spellID = 64283 }; --Glyph of Hymn of Hope
		[10] = {itemID = 42402, spellID = 57188 }; --Glyph of Inner Fire
		[11] = {itemID = 42403, spellID = 57189 }; --Glyph of Lightwell
		[12] = {itemID = 42404, spellID = 57190 }; --Glyph of Mass Dispel
		[13] = {itemID = 42405, spellID = 57191 }; --Glyph of Mind Control
		[14] = {itemID = 42406, spellID = 57192 }; --Glyph of Mind Flay
		[15] = {itemID = 45757, spellID = 64309 }; --Glyph of Mind Sear
		[16] = {itemID = 45760, spellID = 64259 }; --Glyph of Pain Suppression
		[17] = {itemID = 45756, spellID = 64282 }; --Glyph of Penance
		[18] = {itemID = 42408, spellID = 57194 }; --Glyph of Power Word: Shield
		[19] = {itemID = 42409, spellID = 57195 }; --Glyph of Prayer of Healing
		[20] = {itemID = 42410, spellID = 57196 }; --Glyph of Psychic Scream
		[21] = {itemID = 42411, spellID = 57197 }; --Glyph of Renew
		[22] = {itemID = 42412, spellID = 57198 }; --Glyph of Scourge Imprisonment
		[23] = {itemID = 42407, spellID = 57193 }; --Glyph of Shadow
		[24] = {itemID = 42414, spellID = 57199 }; --Glyph of Shadow Word: Death
		[25] = {itemID = 42415, spellID = 57200 }; --Glyph of Shadow Word: Pain
		[26] = {itemID = 42416, spellID = 57201 }; --Glyph of Smite
		[27] = {itemID = 42417, spellID = 57202 }; --Glyph of Spirit of Redemption
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
		[01] = {itemID = 43342, spellID = 58317 }; --Glyph of Fading
		[02] = {itemID = 43371, spellID = 58318 }; --Glyph of Fortitude
		[03] = {itemID = 43370, spellID = 58319 }; --Glyph of Levitate
		[04] = {itemID = 43373, spellID = 58320 }; --Glyph of Shackle Undead
		[05] = {itemID = 43372, spellID = 58321 }; --Glyph of Shadow Protection
		[06] = {itemID = 43374, spellID = 58322 }; --Glyph of Shadowfiend
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[01] = {itemID = 42954, spellID = 57112 }; --Glyph of Adrenaline Rush
		[02] = {itemID = 42955, spellID = 57113 }; --Glyph of Ambush
		[03] = {itemID = 42956, spellID = 57114 }; --Glyph of Backstab
		[04] = {itemID = 42957, spellID = 57115 }; --Glyph of Blade Flurry
		[05] = {itemID = 45769, spellID = 64303 }; --Glyph of Cloak of Shadows
		[06] = {itemID = 42958, spellID = 57116 }; --Glyph of Crippling Poison
		[07] = {itemID = 42959, spellID = 57117 }; --Glyph of Deadly Throw
		[08] = {itemID = 42960, spellID = 57119 }; --Glyph of Evasion
		[09] = {itemID = 42961, spellID = 57120 }; --Glyph of Eviscerate
		[10] = {itemID = 42962, spellID = 57121 }; --Glyph of Expose Armor
		[11] = {itemID = 45766, spellID = 64315 }; --Glyph of Fan of Knives
		[12] = {itemID = 42963, spellID = 57122 }; --Glyph of Feint
		[13] = {itemID = 42964, spellID = 57123 }; --Glyph of Garrote
		[14] = {itemID = 42965, spellID = 57124 }; --Glyph of Ghostly Strike
		[15] = {itemID = 42966, spellID = 57125 }; --Glyph of Gouge
		[16] = {itemID = 42967, spellID = 57126 }; --Glyph of Hemorrhage
		[17] = {itemID = 45761, spellID = 64284 }; --Glyph of Hunger for Blood
		[18] = {itemID = 45762, spellID = 64285 }; --Glyph of Killing Spree
		[19] = {itemID = 45768, spellID = 64260 }; --Glyph of Mutilate
		[20] = {itemID = 42968, spellID = 57127 }; --Glyph of Preparation
		[21] = {itemID = 42969, spellID = 57128 }; --Glyph of Rupture
		[22] = {itemID = 42970, spellID = 57129 }; --Glyph of Sap
		[23] = {itemID = 45764, spellID = 64286 }; --Glyph of Shadow Dance
		[24] = {itemID = 42972, spellID = 57131 }; --Glyph of Sinister Strike
		[25] = {itemID = 42973, spellID = 57132 }; --Glyph of Slice and Dice
		[26] = {itemID = 42974, spellID = 57133 }; --Glyph of Sprint
		[27] = {itemID = 45767, spellID = 64310 }; --Glyph of Tricks of the Trade
		[28] = {itemID = 42971, spellID = 57130 }; --Glyph of Vigor
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[01] = {itemID = 43379, spellID = 58323 }; --Glyph of Blurred Speed
		[02] = {itemID = 43376, spellID = 58324 }; --Glyph of Distract
		[03] = {itemID = 43377, spellID = 58325 }; --Glyph of Pick Lock
		[04] = {itemID = 43343, spellID = 58326 }; --Glyph of Pick Pocket
		[05] = {itemID = 43378, spellID = 58327 }; --Glyph of Safe Fall
		[06] = {itemID = 43380, spellID = 58328 }; --Glyph of Vanish
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		[01] = {itemID = 41517, spellID = 57232 }; --Glyph of Chain Heal
		[02] = {itemID = 41518, spellID = 57233 }; --Glyph of Chain Lightning
		[03] = {itemID = 45775, spellID = 64261 }; --Glyph of Earth Shield
		[04] = {itemID = 41526, spellID = 57235 }; --Glyph of Earth Shock
		[05] = {itemID = 41527, spellID = 57236 }; --Glyph of Earthliving Weapon
		[06] = {itemID = 41552, spellID = 57250 }; --Glyph of Elemental Mastery
		[07] = {itemID = 45771, spellID = 64288 }; --Glyph of Feral Spirit
		[08] = {itemID = 41529, spellID = 57237 }; --Glyph of Fire Elemental Totem
		[09] = {itemID = 41530, spellID = 57238 }; --Glyph of Fire Nova Totem
		[10] = {itemID = 41531, spellID = 57239 }; --Glyph of Flame Shock
		[11] = {itemID = 41532, spellID = 57240 }; --Glyph of Flametongue Weapon
		[12] = {itemID = 41547, spellID = 57241 }; --Glyph of Frost Shock
		[13] = {itemID = 41533, spellID = 57242 }; --Glyph of Healing Stream Totem
		[14] = {itemID = 41534, spellID = 57243 }; --Glyph of Healing Wave
		[15] = {itemID = 45777, spellID = 64316 }; --Glyph of Hex
		[16] = {itemID = 41524, spellID = 57234 }; --Glyph of Lava
		[17] = {itemID = 41540, spellID = 57249 }; --Glyph of Lava Lash
		[18] = {itemID = 41535, spellID = 57244 }; --Glyph of Lesser Healing Wave
		[19] = {itemID = 41536, spellID = 57245 }; --Glyph of Lightning Bolt
		[20] = {itemID = 41537, spellID = 57246 }; --Glyph of Lightning Shield
		[21] = {itemID = 41538, spellID = 57247 }; --Glyph of Mana Tide Totem
		[22] = {itemID = 45772, spellID = 64289 }; --Glyph of Riptide
		[23] = {itemID = 45778, spellID = 64247 }; --Glyph of Stoneclaw Totem
		[24] = {itemID = 41539, spellID = 57248 }; --Glyph of Stormstrike
		[25] = {itemID = 45770, spellID = 64287 }; --Glyph of Thunder
		[26] = {itemID = 45776, spellID = 64262 }; --Glyph of Totem of WRATH
		[27] = {itemID = 41541, spellID = 57251 }; --Glyph of Water Mastery
		[28] = {itemID = 41542, spellID = 57252 }; --Glyph of Windfury Weapon
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
		[01] = {itemID = 43381, spellID = 58329 }; --Glyph of Astral Recall
		[02] = {itemID = 43725, spellID = 59326 }; --Glyph of Ghost Wolf
		[03] = {itemID = 43385, spellID = 58330 }; --Glyph of Renewed Life
		[04] = {itemID = 44923, spellID = 57253 }; --Glyph of Thunderstorm
		[05] = {itemID = 43344, spellID = 58331 }; --Glyph of Water Breathing
		[06] = {itemID = 43386, spellID = 58332 }; --Glyph of Water Shield
		[07] = {itemID = 43388, spellID = 58333 }; --Glyph of Water Walking
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[01] = {itemID = 45781, spellID = 64294 }; --Glyph of Chaos Bolt
		[02] = {itemID = 42454, spellID = 57258 }; --Glyph of Conflagrate
		[03] = {itemID = 42455, spellID = 57259 }; --Glyph of Corruption
		[04] = {itemID = 42456, spellID = 57260 }; --Glyph of Curse of Agony
		[05] = {itemID = 42457, spellID = 57261 }; --Glyph of Death Coil
		[06] = {itemID = 45782, spellID = 64317 }; --Glyph of Demonic Circle
		[07] = {itemID = 42458, spellID = 57262 }; --Glyph of Fear
		[08] = {itemID = 42459, spellID = 57263 }; --Glyph of Felguard
		[09] = {itemID = 42460, spellID = 57264 }; --Glyph of Felhunter
		[10] = {itemID = 45779, spellID = 64291 }; --Glyph of Haunt
		[11] = {itemID = 42461, spellID = 57265 }; --Glyph of Health Funnel
		[12] = {itemID = 42462, spellID = 57266 }; --Glyph of Healthstone
		[13] = {itemID = 42463, spellID = 57267 }; --Glyph of Howl of Terror
		[14] = {itemID = 42464, spellID = 57268 }; --Glyph of Immolate
		[15] = {itemID = 42465, spellID = 57269 }; --Glyph of Imp
		[16] = {itemID = 42453, spellID = 57257 }; --Glyph of Incinerate
		[17] = {itemID = 45785, spellID = 64248 }; --Glyph of Life Tap
		[18] = {itemID = 45780, spellID = 64318 }; --Glyph of Metamorphosis
		[19] = {itemID = 50077, spellID = 71102 }; --Glyph of Quick Decay
		[20] = {itemID = 42466, spellID = 57270 }; --Glyph of Searing Pain
		[21] = {itemID = 42467, spellID = 57271 }; --Glyph of Shadow Bolt
		[22] = {itemID = 42468, spellID = 57272 }; --Glyph of Shadowburn
		[23] = {itemID = 45783, spellID = 64311 }; --Glyph of Shadowflame
		[24] = {itemID = 42469, spellID = 57273 }; --Glyph of Siphon Life
		[25] = {itemID = 45789, spellID = 64250 }; --Glyph of Soul Link
		[26] = {itemID = 42470, spellID = 57274 }; --Glyph of Soulstone
		[27] = {itemID = 42471, spellID = 57275 }; --Glyph of Succubus
		[28] = {itemID = 42472, spellID = 57276 }; --Glyph of Unstable Affliction
		[29] = {itemID = 42473, spellID = 57277 }; --Glyph of Voidwalker
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[01] = {itemID = 43392, spellID = 58338 }; --Glyph of Curse of Exhaustion
		[02] = {itemID = 43390, spellID = 58337 }; --Glyph of Drain Soul
		[03] = {itemID = 43393, spellID = 58339 }; --Glyph of Enslave Demon
		[04] = {itemID = 43391, spellID = 58340 }; --Glyph of Kilrogg
		[05] = {itemID = 43394, spellID = 58341 }; --Glyph of Souls
		[06] = {itemID = 43389, spellID = 58336 }; --Glyph of Unending Breath
	};
	{
		Name = AL["Major Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
		[01] = {itemID = 43420, spellID = 57151 }; --Glyph of Barbaric Insults
		[02] = {itemID = 45790, spellID = 64295 }; --Glyph of Bladestorm
		[03] = {itemID = 43425, spellID = 57152 }; --Glyph of Blocking
		[04] = {itemID = 43412, spellID = 57153 }; --Glyph of Bloodthirst
		[05] = {itemID = 43414, spellID = 57154 }; --Glyph of Cleaving
		[06] = {itemID = 43415, spellID = 57155 }; --Glyph of Devastate
		[07] = {itemID = 45794, spellID = 64312 }; --Glyph of Enraged Regeneration
		[08] = {itemID = 43416, spellID = 57156 }; --Glyph of Execution
		[09] = {itemID = 43417, spellID = 57157 }; --Glyph of Hamstring
		[10] = {itemID = 43418, spellID = 57158 }; --Glyph of Heroic Strike
		[11] = {itemID = 43419, spellID = 57159 }; --Glyph of Intervene
		[12] = {itemID = 43426, spellID = 57166 }; --Glyph of Last Stand
		[13] = {itemID = 43421, spellID = 57160 }; --Glyph of Mortal Strike
		[14] = {itemID = 43422, spellID = 57161 }; --Glyph of Overpower
		[15] = {itemID = 43413, spellID = 57162 }; --Glyph of Rapid Charge
		[16] = {itemID = 43423, spellID = 57163 }; --Glyph of Rending
		[17] = {itemID = 43430, spellID = 57164 }; --Glyph of Resonating Power
		[18] = {itemID = 43424, spellID = 57165 }; --Glyph of Revenge
		[19] = {itemID = 45797, spellID = 64252 }; --Glyph of Shield Wall
		[20] = {itemID = 45792, spellID = 64296 }; --Glyph of Shockwave
		[21] = {itemID = 45795, spellID = 64302 }; --Glyph of Spell Reflection
		[22] = {itemID = 43427, spellID = 57167 }; --Glyph of Sunder Armor
		[23] = {itemID = 43428, spellID = 57168 }; --Glyph of Sweeping Strikes
		[24] = {itemID = 43429, spellID = 57169 }; --Glyph of Taunt
		[25] = {itemID = 43431, spellID = 57170 }; --Glyph of Victory Rush
		[26] = {itemID = 45793, spellID = 64255 }; --Glyph of Vigilance
		[27] = {itemID = 43432, spellID = 57172 }; --Glyph of Whirlwind
	};
	{
		Name = AL["Minor Glyph"] .. " - " .. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
		[01] = {itemID = 43395, spellID = 58342 }; --Glyph of Battle
		[02] = {itemID = 43396, spellID = 58343 }; --Glyph of Bloodrage
		[03] = {itemID = 43397, spellID = 58344 }; --Glyph of Charge
		[04] = {itemID = 49084, spellID = 68166 }; --Glyph of Command
		[05] = {itemID = 43400, spellID = 58347 }; --Glyph of Enduring Victory
		[06] = {itemID = 43398, spellID = 58345 }; --Glyph of Mocking Blow
		[07] = {itemID = 43399, spellID = 58346 }; --Glyph of Thunder Clap
	};
};

---------------------
--- Jewelcrafting ---
---------------------


AtlasLoot_Data["JewelcraftingWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath";
	Name = JEWELCRAFTING;
	Type = "WrathCrafting";
	{
		Name = AL["AtlasLoot.Colors.RED Gems"];
		[01] = {itemID = 40111, spellID = 66447 }; --Bold Cardinal Ruby
		[02] = {itemID = 40114, spellID = 66449 }; --Bright Cardinal Ruby
		[03] = {itemID = 40112, spellID = 66448 }; --Delicate Cardinal Ruby
		[04] = {itemID = 40116, spellID = 66453 }; --Flashing Cardinal Ruby
		[05] = {itemID = 40117, spellID = 66451 }; --Fractured Cardinal Ruby
		[06] = {itemID = 40118, spellID = 66450 }; --Precise Cardinal Ruby
		[07] = {itemID = 40113, spellID = 66446 }; --Runed Cardinal Ruby
		[08] = {itemID = 40115, spellID = 66452 }; --Subtle Cardinal Ruby
		[09] = {itemID = 39996, spellID = 53830 }; --Bold Scarlet Ruby
		[10] = {itemID = 39999, spellID = 53947 }; --Bright Scarlet Ruby
		[11] = {itemID = 39997, spellID = 53945 }; --Delicate Scarlet Ruby
		[12] = {itemID = 40001, spellID = 53949 }; --Flashing Scarlet Ruby
		[13] = {itemID = 40002, spellID = 53950 }; --Fractured Scarlet Ruby
		[14] = {itemID = 40003, spellID = 53951 }; --Precise Scarlet Ruby
		[15] = {itemID = 39998, spellID = 53946 }; --Runed Scarlet Ruby
		[16] = {itemID = 39907, spellID = 53843 }; --Subtle Bloodstone
		[17] = {itemID = 39900, spellID = 53831 }; --Bold Bloodstone
		[18] = {itemID = 39906, spellID = 53835 }; --Bright Bloodstone
		[19] = {itemID = 39905, spellID = 53832 }; --Delicate Bloodstone
		[20] = {itemID = 39908, spellID = 53844 }; --Flashing Bloodstone
		[21] = {itemID = 39909, spellID = 53845 }; --Fractured Bloodstone
		[22] = {itemID = 39910, spellID = 54017 }; --Precise Bloodstone
		[23] = {itemID = 39911, spellID = 53834 }; --Runed Bloodstone
	};
	{
		Name = AL["AtlasLoot.Colors.BLUE Gems"];
		[01] = {itemID = 40121, spellID = 66500 }; --Lustrous Majestic Zircon
		[02] = {itemID = 40119, spellID = 66497 }; --Solid Majestic Zircon
		[03] = {itemID = 40120, spellID = 66498 }; --Sparkling Majestic Zircon
		[04] = {itemID = 40122, spellID = 66499 }; --Stormy Majestic Zircon
		[05] = {itemID = 40010, spellID = 53954 }; --Lustrous Sky Sapphire
		[06] = {itemID = 40008, spellID = 53952 }; --Solid Sky Sapphire
		[07] = {itemID = 40009, spellID = 53953 }; --Sparkling Sky Sapphire
		[08] = {itemID = 40011, spellID = 53955 }; --Stormy Sky Sapphire
		[09] = {itemID = 39927, spellID = 53941 }; --Lustrous Chalcedony
		[10] = {itemID = 39919, spellID = 53934 }; --Solid Chalcedony
		[11] = {itemID = 39920, spellID = 53940 }; --Sparkling Chalcedony
		[12] = {itemID = 39932, spellID = 53943 }; --Stormy Chalcedony
	};
	{
		Name = AL["Yellow Gems"];
		[01] = {itemID = 40123, spellID = 66503 }; --Brilliant King's Amber
		[02] = {itemID = 40127, spellID = 66505 }; --Mystic King's Amber
		[03] = {itemID = 40128, spellID = 66506 }; --Quick King's Amber
		[04] = {itemID = 40125, spellID = 66501 }; --Rigid King's Amber
		[05] = {itemID = 40124, spellID = 66502 }; --Smooth King's Amber
		[06] = {itemID = 40126, spellID = 66504 }; --Thick King's Amber
		[07] = {itemID = 40012, spellID = 53956 }; --Brilliant Autumn's Glow
		[08] = {itemID = 40016, spellID = 53960 }; --Mystic Autumn's Glow
		[09] = {itemID = 40017, spellID = 53961 }; --Quick Autumn's Glow
		[10] = {itemID = 40014, spellID = 53958 }; --Rigid Autumn's Glow
		[11] = {itemID = 40013, spellID = 53957 }; --Smooth Autumn's Glow
		[12] = {itemID = 40015, spellID = 53959 }; --Thick Autumn's Glow
		[16] = {itemID = 39912, spellID = 53852 }; --Brilliant Sun Crystal
		[17] = {itemID = 39917, spellID = 53857 }; --Mystic Sun Crystal
		[18] = {itemID = 39918, spellID = 53856 }; --Quick Sun Crystal
		[19] = {itemID = 39915, spellID = 53854 }; --Rigid Sun Crystal
		[20] = {itemID = 39914, spellID = 53853 }; --Smooth Sun Crystal
		[21] = {itemID = 39916, spellID = 53855 }; --Thick Sun Crystal
	};
	{
		Name = AL["AtlasLoot.Colors.GREEN Gems"];
		[01] = {itemID = 40175, spellID = 66430 }; --Dazzling Eye of Zul
		[02] = {itemID = 40167, spellID = 66338 }; --Enduring Eye of Zul
		[03] = {itemID = 40179, spellID = 66442 }; --Energized Eye of Zul
		[04] = {itemID = 40169, spellID = 66434 }; --Forceful Eye of Zul
		[05] = {itemID = 40174, spellID = 66440 }; --Intricate Eye of Zul
		[06] = {itemID = 40165, spellID = 66431 }; --Jagged Eye of Zul
		[07] = {itemID = 40177, spellID = 66439 }; --Lambent Eye of Zul
		[08] = {itemID = 40171, spellID = 66435 }; --Misty Eye of Zul
		[09] = {itemID = 40178, spellID = 66444 }; --Opaque Eye of Zul
		[10] = {itemID = 40180, spellID = 66441 }; --Radiant Eye of Zul
		[11] = {itemID = 40170, spellID = 66433 }; --Seer's Eye of Zul
		[12] = {itemID = 40182, spellID = 66443 }; --Shattered Eye of Zul
		[13] = {itemID = 40172, spellID = 66437 }; --Shining Eye of Zul
		[14] = {itemID = 40168, spellID = 66428 }; --Steady Eye of Zul
		[15] = {itemID = 40176, spellID = 66436 }; --Sundered Eye of Zul
		[16] = {itemID = 40181, spellID = 66438 }; --Tense Eye of Zul
		[17] = {itemID = 40164, spellID = 66432 }; --Timeless Eye of Zul
		[18] = {itemID = 40173, spellID = 66445 }; --Turbid Eye of Zul
		[19] = {itemID = 40166, spellID = 66429 }; --Vivid Eye of Zul
		[20] = {itemID = 40094, spellID = 54007 }; --Dazzling Forest Emerald
		[21] = {itemID = 40089, spellID = 53998 }; --Enduring Forest Emerald
		[22] = {itemID = 40105, spellID = 54011 }; --Energized Forest Emerald
		[23] = {itemID = 40091, spellID = 54001 }; --Forceful Forest Emerald
		[24] = {itemID = 40104, spellID = 54006 }; --Intricate Forest Emerald
		[25] = {itemID = 40086, spellID = 53996 }; --Jagged Forest Emerald
		[26] = {itemID = 40100, spellID = 54009 }; --Lambent Forest Emerald
		[27] = {itemID = 40095, spellID = 54003 }; --Misty Forest Emerald" .. "
		[28] = {itemID = 40103, spellID = 54010 }; --Opaque Forest Emerald
		[29] = {itemID = 40098, spellID = 54012 }; --Radiant Forest Emerald
		[30] = {itemID = 40092, spellID = 54002 }; --Seer's Forest Emerald
	};
	{
		Name = AL["AtlasLoot.Colors.GREEN Gems"];
		[01] = {itemID = 40106, spellID = 54014 }; --Shattered Forest Emerald
		[02] = {itemID = 40099, spellID = 54004 }; --Shining Forest Emerald" .. "
		[03] = {itemID = 40090, spellID = 54000 }; --Steady Forest Emerald
		[04] = {itemID = 40096, spellID = 54008 }; --Sundered Forest Emerald
		[05] = {itemID = 40101, spellID = 54013 }; --Tense Forest Emerald
		[06] = {itemID = 40085, spellID = 53995 }; --Timeless Forest Emerald
		[07] = {itemID = 40102, spellID = 54005 }; --Turbid Forest Emerald
		[08] = {itemID = 40088, spellID = 53997 }; --Vivid Forest Emerald
		[09] = {itemID = 39984, spellID = 53926 }; --Dazzling Dark Jade
		[10] = {itemID = 39976, spellID = 53918 }; --Enduring Dark Jade
		[11] = {itemID = 39989, spellID = 53930 }; --Energized Dark Jade
		[12] = {itemID = 39978, spellID = 53920 }; --Forceful Dark Jade
		[13] = {itemID = 39983, spellID = 53925 }; --Intricate Dark Jade
		[14] = {itemID = 39974, spellID = 53916 }; --Jagged Dark Jade
		[15] = {itemID = 39986, spellID = 53928 }; --Lambent Dark Jade
		[16] = {itemID = 39980, spellID = 53922 }; --Misty Dark Jade
		[17] = {itemID = 39988, spellID = 53929 }; --Opaque Dark Jade
		[18] = {itemID = 39990, spellID = 53931 }; --Radiant Dark Jade
		[19] = {itemID = 39979, spellID = 53921 }; --Seer's Dark Jade
		[20] = {itemID = 39992, spellID = 53933 }; --Shattered Dark Jade
		[21] = {itemID = 39981, spellID = 53923 }; --Shining Dark Jade
		[22] = {itemID = 39977, spellID = 53919 }; --Steady Dark Jade
		[23] = {itemID = 39985, spellID = 53927 }; --Sundered Dark Jade
		[24] = {itemID = 39991, spellID = 53932 }; --Tense Dark Jade
		[25] = {itemID = 39968, spellID = 53894 }; --Timeless Dark Jade
		[26] = {itemID = 39982, spellID = 53924 }; --Turbid Dark Jade
		[27] = {itemID = 39975, spellID = 53917 }; --Vivid Dark Jade
	};
	{
		Name = AL["AtlasLoot.Colors.ORANGE Gems"];
		[01] = {itemID = 40162, spellID = 66576 }; --Accurate Ametrine
		[02] = {itemID = 40144, spellID = 66579 }; --Champion's Ametrine
		[03] = {itemID = 40147, spellID = 66568 }; --Deadly Ametrine
		[04] = {itemID = 40150, spellID = 66584 }; --Deft Ametrine
		[05] = {itemID = 40154, spellID = 66571 }; --Durable Ametrine
		[06] = {itemID = 40158, spellID = 66580 }; --Empowered Ametrine
		[07] = {itemID = 40143, spellID = 66572 }; --Etched Ametrine
		[08] = {itemID = 40146, spellID = 66583 }; --Fierce Ametrine
		[09] = {itemID = 40161, spellID = 66578 }; --Glimmering Ametrine
		[10] = {itemID = 40148, spellID = 66575 }; --Glinting Ametrine
		[11] = {itemID = 40142, spellID = 66567 }; --Inscribed Ametrine
		[12] = {itemID = 40149, spellID = 66585 }; --Lucent Ametrine
		[13] = {itemID = 40151, spellID = 66566 }; --Luminous Ametrine
		[14] = {itemID = 40152, spellID = 66569 }; --Potent Ametrine
		[15] = {itemID = 40157, spellID = 66573 }; --Pristine Ametrine
		[16] = {itemID = 40155, spellID = 66574 }; --Reckless Ametrine
		[17] = {itemID = 40163, spellID = 66586 }; --Resolute Ametrine
		[18] = {itemID = 40145, spellID = 66582 }; --Resplendent Ametrine
		[19] = {itemID = 40160, spellID = 66581 }; --Stalwart Ametrine
		[20] = {itemID = 40159, spellID = 66587 }; --Stark Ametrine
		[21] = {itemID = 40153, spellID = 66570 }; --Veiled Ametrine
		[22] = {itemID = 40156, spellID = 66577 }; --Wicked Ametrine
	};
	{
		Name = AL["AtlasLoot.Colors.ORANGE Gems"];
		[01] = {itemID = 40058, spellID = 53994 }; --Accurate Monarch Topaz
		[02] = {itemID = 40039, spellID = 53977 }; --Champion's Monarch Topaz" .. "
		[03] = {itemID = 40043, spellID = 53979 }; --Deadly Monarch Topaz
		[04] = {itemID = 40046, spellID = 53982 }; --Deft Monarch Topaz
		[05] = {itemID = 40050, spellID = 53986 }; --Durable Monarch Topaz
		[06] = {itemID = 40054, spellID = 53990 }; --Empowered Monarch Topaz
		[07] = {itemID = 40038, spellID = 53976 }; --Etched Monarch Topaz" .. "
		[08] = {itemID = 40041, spellID = 54019 }; --Fierce Monarch Topaz
		[09] = {itemID = 40057, spellID = 53993 }; --Glimmering Monarch Topaz
		[10] = {itemID = 40044, spellID = 53980 }; --Glinting Monarch Topaz
		[11] = {itemID = 40037, spellID = 53975 }; --Inscribed Monarch Topaz" .. "
		[12] = {itemID = 40045, spellID = 53981 }; --Lucent Monarch Topaz
		[13] = {itemID = 40047, spellID = 53983 }; --Luminous Monarch Topaz
		[14] = {itemID = 40048, spellID = 53984 }; --Potent Monarch Topaz
		[15] = {itemID = 40053, spellID = 53989 }; --Pristine Monarch Topaz
		[16] = {itemID = 40051, spellID = 53987 }; --Reckless Monarch Topaz
		[17] = {itemID = 40059, spellID = 54023 }; --Resolute Monarch Topaz" .. "
		[18] = {itemID = 40040, spellID = 53978 }; --Resplendent Monarch Topaz
		[19] = {itemID = 40056, spellID = 53992 }; --Stalwart Monarch Topaz" .. "
		[20] = {itemID = 40055, spellID = 53991 }; --Stark Monarch Topaz
		[21] = {itemID = 40049, spellID = 53985 }; --Veiled Monarch Topaz
		[22] = {itemID = 40052, spellID = 53988 }; --Wicked Monarch Topaz
	};
	{
		Name = AL["AtlasLoot.Colors.ORANGE Gems"];
		[01] = {itemID = 39965, spellID = 53891 }; --Glimmering Huge Citrine
		[02] = {itemID = 39966, spellID = 53892 }; --Accurate Huge Citrine
		[03] = {itemID = 39949, spellID = 53874 }; --Champion's Huge Citrine
		[04] = {itemID = 39952, spellID = 53877 }; --Deadly Huge Citrine
		[05] = {itemID = 39955, spellID = 53880 }; --Deft Huge Citrine
		[06] = {itemID = 39958, spellID = 53884 }; --Durable Huge Citrine
		[07] = {itemID = 39962, spellID = 53888 }; --Empowered Huge Citrine
		[08] = {itemID = 39948, spellID = 53873 }; --Etched Huge Citrine
		[09] = {itemID = 39951, spellID = 53876 }; --Fierce Huge Citrine
		[10] = {itemID = 39953, spellID = 53878 }; --Glinting Huge Citrine
		[11] = {itemID = 39947, spellID = 53872 }; --Inscribed Huge Citrine
		[12] = {itemID = 39954, spellID = 53879 }; --Lucent Huge Citrine
		[13] = {itemID = 39946, spellID = 53881 }; --Luminous Huge Citrine
		[14] = {itemID = 39956, spellID = 53882 }; --Potent Huge Citrine
		[15] = {itemID = 39961, spellID = 53887 }; --Pristine Huge Citrine
		[16] = {itemID = 39959, spellID = 53885 }; --Reckless Huge Citrine
		[17] = {itemID = 39967, spellID = 53893 }; --Resolute Huge Citrine
		[18] = {itemID = 39950, spellID = 53875 }; --Resplendent Huge Citrine
		[19] = {itemID = 39964, spellID = 53890 }; --Stalwart Huge Citrine
		[20] = {itemID = 39963, spellID = 53889 }; --Stark Huge Citrine
		[21] = {itemID = 39957, spellID = 53883 }; --Veiled Huge Citrine
		[22] = {itemID = 39960, spellID = 53886 }; --Wicked Huge Citrine
	};
	{
		Name = AL["Purple Gems"];
		[01] = {itemID = 40136, spellID = 66553 }; --Balanced Dreadstone
		[02] = {itemID = 40139, spellID = 66560 }; --Defender's Dreadstone
		[03] = {itemID = 40132, spellID = 66555 }; --Glowing Dreadstone
		[04] = {itemID = 40141, spellID = 66561 }; --Guardian's Dreadstone
		[05] = {itemID = 40137, spellID = 66564 }; --Infused Dreadstone
		[06] = {itemID = 40135, spellID = 66562 }; --Mysterious Dreadstone
		[07] = {itemID = 40140, spellID = 66563 }; --Puissant Dreadstone
		[08] = {itemID = 40133, spellID = 66556 }; --Purified Dreadstone
		[09] = {itemID = 40138, spellID = 66559 }; --Regal Dreadstone
		[10] = {itemID = 40134, spellID = 66558 }; --Royal Dreadstone
		[11] = {itemID = 40130, spellID = 66557 }; --Shifting Dreadstone
		[12] = {itemID = 40129, spellID = 66554 }; --Sovereign Dreadstone
		[13] = {itemID = 40131, spellID = 66565 }; --Tenuous Dreadstone
		[27] = {itemID = 40029, spellID = 53969 }; --Balanced Twilight Opal
		[28] = {itemID = 40032, spellID = 53972 }; --Defender's Twilight Opal
		[16] = {itemID = 40025, spellID = 53965 }; --Glowing Twilight Opal
		[17] = {itemID = 40034, spellID = 53974 }; --Guardian's Twilight Opal
		[18] = {itemID = 40030, spellID = 53970 }; --Infused Twilight Opal
		[19] = {itemID = 40028, spellID = 53968 }; --Mysterious Twilight Opal
		[20] = {itemID = 40033, spellID = 53973 }; --Puissant Twilight Opal
		[21] = {itemID = 40026, spellID = 53966 }; --Purified Twilight Opal" .. "
		[22] = {itemID = 40031, spellID = 53971 }; --Regal Twilight Opal
		[23] = {itemID = 40027, spellID = 53967 }; --Royal Twilight Opal
		[24] = {itemID = 40023, spellID = 53963 }; --Shifting Twilight Opal
		[25] = {itemID = 40022, spellID = 53962 }; --Sovereign Twilight Opal
		[26] = {itemID = 40024, spellID = 53964 }; --Tenuous Twilight Opal" .. "
	};
	{
		Name = AL["Purple Gems"];
		[01] = {itemID = 39940, spellID = 53871 }; --Guardian's Shadow Crystal
		[02] = {itemID = 39944, spellID = 53867 }; --Infused Shadow Crystal
		[03] = {itemID = 39945, spellID = 53865 }; --Mysterious Shadow Crystal
		[04] = {itemID = 39933, spellID = 53870 }; --Puissant Shadow Crystal
		[05] = {itemID = 39941, spellID = 53863 }; --Purified Shadow Crystal
		[06] = {itemID = 39943, spellID = 53864 }; --Royal Shadow Crystal
		[07] = {itemID = 39935, spellID = 53860 }; --Shifting Shadow Crystal
		[08] = {itemID = 39934, spellID = 53859 }; --Sovereign Shadow Crystal
		[09] = {itemID = 39942, spellID = 53861 }; --Tenuous Shadow Crystal
		[10] = {itemID = 39938, spellID = 53868 }; --Regal Shadow Crystal
		[11] = {itemID = 39937, spellID = 53866 }; --Balanced Shadow Crystal
		[12] = {itemID = 39939, spellID = 53869 }; --Defender's Shadow Crystal
		[13] = {itemID = 39936, spellID = 53862 }; --Glowing Shadow Crystal
		[14] = {itemID = 32833, spellID = 41420 }; --Purified Jaggal Pearl
	};
	{
		Name = AL["Meta Gems"];
		[01] = {itemID = 41285, spellID = 55389 }; --Chaotic Skyflare Diamond
		[02] = {itemID = 41307, spellID = 55390 }; --Destructive Skyflare Diamond" .. "
		[03] = {itemID = 41377, spellID = 55384 }; --Effulgent Skyflare Diamond
		[04] = {itemID = 41333, spellID = 55392 }; --Ember Skyflare Diamond
		[05] = {itemID = 41335, spellID = 55393 }; --Enigmatic Skyflare Diamond
		[06] = {itemID = 41378, spellID = 55387 }; --Forlorn Skyflare Diamond
		[07] = {itemID = 41379, spellID = 55388 }; --Impassive Skyflare Diamond
		[08] = {itemID = 41339, spellID = 55394 }; --Swift Skyflare Diamond
		[09] = {itemID = 41400, spellID = 55395 }; --Thundering Skyflare Diamond" .. "
		[10] = {itemID = 41375, spellID = 55386 }; --Tireless Skyflare Diamond
		[16] = {itemID = 41380, spellID = 55401 }; --Austere Earthsiege Diamond
		[17] = {itemID = 41389, spellID = 55405 }; --Beaming Earthsiege Diamond" .. "
		[18] = {itemID = 41395, spellID = 55397 }; --Bracing Earthsiege Diamond
		[19] = {itemID = 41396, spellID = 55398 }; --Eternal Earthsiege Diamond
		[20] = {itemID = 41401, spellID = 55396 }; --Insightful Earthsiege Diamond
		[21] = {itemID = 41385, spellID = 55404 }; --Invigorating Earthsiege Diamond
		[22] = {itemID = 41381, spellID = 55402 }; --Persistant Earthsiege Diamond
		[23] = {itemID = 41397, spellID = 55399 }; --Powerful Earthsiege Diamond
		[24] = {itemID = 41398, spellID = 55400 }; --Relentless Earthsiege Diamond
		[25] = {itemID = 41382, spellID = 55403 }; --Trenchant Earthsiege Diamond
	};
	{
		Name = AL["Prismatic Gems"];
		[01] = {itemID = 49110, spellID = 68253 }; --Nightmare Tear
		[02] = {itemID = 22459, spellID = 28028 }; --Void Sphere
		[03] = {itemID = 42702, spellID = 56531 }; --Enchanted Tear
		[04] = {itemID = 22460, spellID = 28027 }; --Prismatic Sphere
		[05] = {itemID = 42701, spellID = 56530 }; --Enchanted Pearl
		[06] = {itemID = 42701, spellID = 62941 }; --Prismatic Black Diamond
	};
	{
		Name = "Dragon's Eyes";
		[01] = {itemID = 42142, spellID = 56049 }; --Bold Dragon's Eye
		[02] = {itemID = 36766, spellID = 56054 }; --Bright Dragon's Eye
		[03] = {itemID = 42148, spellID = 56074 }; --Brilliant Dragon's Eye
		[04] = {itemID = 42143, spellID = 56052 }; --Delicate Dragon's Eye
		[05] = {itemID = 42152, spellID = 56056 }; --Flashing Dragon's Eye
		[06] = {itemID = 42153, spellID = 56076 }; --Fractured Dragon's Eye
		[07] = {itemID = 42146, spellID = 56077 }; --Lustrous Dragon's Eye
		[08] = {itemID = 42158, spellID = 56079 }; --Mystic Dragon's Eye
		[09] = {itemID = 42154, spellID = 56081 }; --Precise Dragon's Eye
		[10] = {itemID = 42150, spellID = 56083 }; --Quick Dragon's Eye
		[11] = {itemID = 42156, spellID = 56084 }; --Rigid Dragon's Eye
		[12] = {itemID = 42144, spellID = 56053 }; --Runed Dragon's Eye
		[13] = {itemID = 42149, spellID = 56085 }; --Smooth Dragon's Eye
		[14] = {itemID = 36767, spellID = 56086 }; --Solid Dragon's Eye
		[15] = {itemID = 42145, spellID = 56087 }; --Sparkling Dragon's Eye
		[16] = {itemID = 42155, spellID = 56088 }; --Stormy Dragon's Eye
		[17] = {itemID = 42151, spellID = 56055 }; --Subtle Dragon's Eye
		[18] = {itemID = 42157, spellID = 56089 }; --Thick Dragon's Eye
		[20] = {itemID = 42225 }; --Dragon's Eye
	};
	{
		Name = AL["Trinkets"];
		[01] = {itemID = 42418, spellID = 56203 }; --Figurine - Emerald Boar
		[02] = {itemID = 44063, spellID = 59759 }; --Figurine - Monarch Crab
		[03] = {itemID = 42341, spellID = 56199 }; --Figurine - Ruby Hare
		[04] = {itemID = 42413, spellID = 56202 }; --Figurine - Sapphire Owl
		[05] = {itemID = 42395, spellID = 56201 }; --Figurine - Twilight Serpent
	};
	{
		Name = AL["Rings"];
		[01] = {itemID = 42643, spellID = 56497 }; --Titanium Earthguard Ring
		[02] = {itemID = 42642, spellID = 56496 }; --Titanium Impact Band
		[03] = {itemID = 42644, spellID = 56498 }; --Titanium Spellshock Ring
		[04] = {itemID = 43582, spellID = 58954 }; --Titanium Frostguard Ring
		[05] = {itemID = 31398, spellID = 38503 }; --The Frozen Eye
		[06] = {itemID = 31399, spellID = 38504 }; --The Natural Ward
		[07] = {itemID = 34361, spellID = 46124 }; --Hard Khorium Band", "=ds="..AL["Skill Required:"].." 365
		[08] = {itemID = 34362, spellID = 46122 }; --Loop of Forged Power", "=ds="..AL["Skill Required:"].." 365
		[09] = {itemID = 34363, spellID = 46123 }; --Ring of Flowing Life", "=ds="..AL["Skill Required:"].." 365
		[10] = {itemID = 45808, spellID = 64727 }; --Runed Mana Band
		[11] = {itemID = 45809, spellID = 64728 }; --Scarlet Signet
		[12] = {itemID = 43250, spellID = 58147 }; --Ring of Earthern Might
		[13] = {itemID = 43253, spellID = 58150 }; --Ring of Northern Tears
		[14] = {itemID = 43251, spellID = 58148 }; --Ring of Scarlet Shadows
		[15] = {itemID = 43498, spellID = 58507 }; --Savage Titanium Band
		[16] = {itemID = 43482, spellID = 58492 }; --Savage Titanium Ring
		[17] = {itemID = 43252, spellID = 58149 }; --Windfire Band
		[18] = {itemID = 42340, spellID = 56197 }; --Dream Signet
		[19] = {itemID = 43246, spellID = 58143 }; --Earthshadow Ring
		[20] = {itemID = 43247, spellID = 58144 }; --Jade Ring of Slaying
		[21] = { itemID = 42337, spellID = 56194 }, --Sun Rock Ring
		[22] = { itemID = 42336, spellID = 56193 }, --Bloodstone Band
	};
	{
		Name = AL["Necks"];
		[01] = {itemID = 42646, spellID = 56500 }; --Titanium Earthguard Chain
		[02] = {itemID = 42645, spellID = 56499 }; --Titanium Impact Choker
		[03] = {itemID = 42647, spellID = 56501 }; --Titanium Spellshock Necklace
		[04] = {itemID = 34360, spellID = 46126 }; --Amulet of Flowing Life", "=ds="..AL["Skill Required:"].." 365
		[05] = {itemID = 34358, spellID = 46127 }; --Hard Khorium Choker", "=ds="..AL["Skill Required:"].." 365
		[06] = {itemID = 34359, spellID = 46125 }; --Pendant of Sunfire", "=ds="..AL["Skill Required:"].." 365
		[07] = {itemID = 45812, spellID = 64725 }; --Emerald Choker
		[08] = {itemID = 45813, spellID = 64726 }; --Sky Sapphire Amulet
		[09] = {itemID = 42339, spellID = 56196 }; --Blood Sun Necklace
		[10] = {itemID = 42338, spellID = 56195 }; --Jade Dagger Pendant
		[11] = { itemID = 43245, spellID = 58142 }, --Crystal Chalcedony Amulet
		[12] = { itemID = 43244, spellID = 58141 }, --Crystal Citrine Necklace
	};
	{
		Name = AL["Miscellaneous"];
		[01] = {itemID = 24123, spellID = 31078 }; --Circlet of Arcane Might", "=ds="..AL["Skill Required:"].." 370
		[02] = {itemID = 24122, spellID = 31077 }; --Coronet of the Verdant Flame", "=ds="..AL["Skill Required:"].." 370
		[03] = {itemID = 44943, spellID = 62242 }; --Icy Prism
		[04] = { itemID = 42421, spellID = 56208 }, --Shadow Jade Focusing Lens
		[05] = { itemID = 42420, spellID = 56206 }, --Shadow Crystal Focusing Lens
		[06] = { itemID = 41367, spellID = 56205 }, --Dark Jade Focusing Lens

	};
};


----------------------
--- Leatherworking ---
----------------------

AtlasLoot_Data["LeatherworkingWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath";
	Name = LEATHERWORKING;
	Type = "WrathCrafting";
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Back";
		[01] = {itemID = 43565, spellID = 60640 }; --Durable Nerubhide Cape
		[02] = {itemID = 43566, spellID = 60637 }; --Ice Striker's Cloak
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest";
		[01] = {itemID = 47600, spellID = 67142 }; --Knightbane Carapace
		[02] = {itemID = 47599, spellID = 67086 }; --Knightbane Carapace
		[03] = {itemID = 47602, spellID = 67084 }; --Lunar Eclipse Chestguard
		[04] = {itemID = 47601, spellID = 67140 }; --Lunar Eclipse Chestguard
		[05] = {itemID = 43590, spellID = 60996 }; --Polar Vest
		[06] = {itemID = 43434, spellID = 60703 }; --Eviscerator's Chestguard
		[07] = {itemID = 43263, spellID = 60718 }; --Overcast Chestguard
		[08] = {itemID = 43257, spellID = 60669 }; --Wildscale Breastplate
		[09] = {itemID = 38592, spellID = 51570 }; --Dark Arctic Chestpiece
		[10] = {itemID = 44441, spellID = 60613 }; --Dark Iceborne Chestguard
		[11] = {itemID = 38400, spellID = 50944 }; --Arctic Chestpiece
		[12] = {itemID = 38408, spellID = 50938 }; --Iceborne Chestguard
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Feet";
		[01] = {itemID = 49894, spellID = 70555 }; --Blessed Cenarion Boots
		[02] = {itemID = 49895, spellID = 70557 }; --Footpads of Impending Death
		[03] = {itemID = 45565, spellID = 63201 }; --Boots of Wintry Endurance
		[04] = {itemID = 45564, spellID = 63199 }; --Footpads of Silence
		[05] = {itemID = 43502, spellID = 60761 }; --Earthgiving Boots
		[06] = {itemID = 43592, spellID = 60998 }; --Polar Boots
		[07] = {itemID = 44930, spellID = 62176 }; --Windripper Boots
		[08] = {itemID = 43439, spellID = 60712 }; --Eviscerator's Treads
		[09] = {itemID = 43273, spellID = 60727 }; --Overcast Boots
		[10] = {itemID = 43256, spellID = 60666 }; --Jormscale Footpads
		[11] = {itemID = 38590, spellID = 51568 }; --Black Chitinguard Boots
		[12] = {itemID = 44442, spellID = 60620 }; --Bugsquashers
		[13] = {itemID = 38404, spellID = 50948 }; --Arctic Boots
		[14] = {itemID = 38407, spellID = 50942 }; --Iceborne Boots
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Hands";
		[01] = {itemID = 43436, spellID = 60705 }; --Eviscerator's Gauntlets
		[02] = {itemID = 43265, spellID = 60721 }; --Overcast Handwraps
		[03] = {itemID = 43255, spellID = 60665 }; --Seafoam Gauntlets
		[04] = {itemID = 38403, spellID = 50947 }; --Arctic Gloves
		[05] = {itemID = 38409, spellID = 50941 }; --Iceborne Gloves
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Head";
		[01] = {itemID = 43260, spellID = 60697 }; --Eviscerator's Facemask
		[02] = {itemID = 43261, spellID = 60715 }; --Overcast Headguard
		[03] = {itemID = 38437, spellID = 51572 }; --Arctic Helm
		[04] = {itemID = 38438, spellID = 60608 }; --Iceborne Helm
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Legs";
		[01] = {itemID = 49899, spellID = 70556 }; --Bladeborn Leggings
		[02] = {itemID = 49898, spellID = 70554 }; --Legwraps of Unleashed Nature
		[03] = {itemID = 43495, spellID = 60760 }; --Earthgiving Legguards
		[04] = {itemID = 44931, spellID = 62177 }; --Windripper Leggings
		[05] = {itemID = 43438, spellID = 60711 }; --Eviscerator's Legguards
		[06] = {itemID = 43271, spellID = 60725 }; --Overcast Leggings
		[07] = {itemID = 42731, spellID = 60660 }; --Leggings of Visceral Strikes
		[08] = {itemID = 38591, spellID = 51569 }; --Dark Arctic Leggings
		[09] = {itemID = 44440, spellID = 60611 }; --Dark Iceborne Leggings
		[10] = {itemID = 38401, spellID = 50945 }; --Arctic Leggings
		[11] = {itemID = 38410, spellID = 50939 }; --Iceborne Leggings
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Shoulder";
		[01] = {itemID = 43481, spellID = 60758 }; --Trollwoven Spaulders
		[02] = {itemID = 43433, spellID = 60702 }; --Eviscerator's Shoulderpads
		[03] = {itemID = 43262, spellID = 60716 }; --Overcast Spaulders
		[04] = {itemID = 43258, spellID = 60671 }; --Purehorn Spaulders
		[05] = {itemID = 38402, spellID = 50946 }; --Arctic Shoulderpads
		[06] = {itemID = 38411, spellID = 50940 }; --Iceborne Shoulderpads
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Waist";
		[01] = {itemID = 45556, spellID = 63200 }; --Belt of Arctic Life
		[02] = {itemID = 45555, spellID = 63198 }; --Death-warmed Belt
		[03] = {itemID = 43484, spellID = 60759 }; --Trollwoven Girdle
		[04] = {itemID = 43591, spellID = 60997 }; --Polar Cord
		[05] = {itemID = 43437, spellID = 60706 }; --Eviscerator's Waistguard
		[06] = {itemID = 43266, spellID = 60723 }; --Overcast Belt
		[07] = {itemID = 38405, spellID = 50949 }; --Arctic Belt
		[08] = {itemID = 38406, spellID = 50943 }; --Iceborne Belt
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Wrist";
		[01] = {itemID = 47581, spellID = 67087 }; --Bracers of Swift Death
		[02] = {itemID = 47582, spellID = 67139 }; --Bracers of Swift Death
		[03] = {itemID = 47583, spellID = 67085 }; --Moonshadow Armguards
		[04] = {itemID = 47584, spellID = 67141 }; --Moonshadow Armguards
		[05] = {itemID = 43435, spellID = 60704 }; --Eviscerator's Bindings
		[06] = {itemID = 38434, spellID = 60607 }; --Iceborne Wristguards
		[07] = {itemID = 43264, spellID = 60720 }; --Overcast Bracers
		[08] = {itemID = 38433, spellID = 51571 }; --Arctic Wristguards
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest";
		[01] = {itemID = 47596, spellID = 67138 }; --Crusader's Dragonscale Breastplate
		[02] = {itemID = 47595, spellID = 67082 }; --Crusader's Dragonscale Breastplate
		[03] = {itemID = 47597, spellID = 67080 }; --Ensorcelled Nerubian Breastplate
		[04] = {itemID = 47598, spellID = 67136 }; --Ensorcelled Nerubian Breastplate
		[05] = {itemID = 43461, spellID = 60756 }; --Revenant's Breastplate
		[06] = {itemID = 43593, spellID = 60999 }; --Icy Scale Chestguard
		[07] = {itemID = 43445, spellID = 60730 }; --Swiftarrow Hauberk
		[08] = {itemID = 43453, spellID = 60747 }; --Stormhide Hauberk
		[09] = {itemID = 43129, spellID = 60649 }; --Razorstrike Breastplate
		[10] = {itemID = 44437, spellID = 60604 }; --Dark Frostscale Breastplate
		[11] = {itemID = 44444, spellID = 60629 }; --Dark Nerubian Chestpiece
		[12] = {itemID = 38414, spellID = 50950 }; --Frostscale Chestguard
		[13] = {itemID = 38420, spellID = 50956 }; --Nerubian Chestguard
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Feet";
		[01] = {itemID = 49896, spellID = 70559 }; --Earthsoul Boots
		[02] = {itemID = 49897, spellID = 70561 }; --Rock-Steady Treads
		[03] = {itemID = 45562, spellID = 63195 }; --Boots of Living Scale
		[04] = {itemID = 45563, spellID = 63197 }; --Lightning Grounded Boots
		[05] = {itemID = 43595, spellID = 61002 }; --Icy Scale Boots
		[06] = {itemID = 43443, spellID = 60737 }; --Swiftarrow Boots
		[07] = {itemID = 43451, spellID = 60752 }; --Stormhide Stompers
		[08] = {itemID = 43469, spellID = 60757 }; --Revenant's Treads
		[09] = {itemID = 44438, spellID = 60605 }; --Dragonstompers
		[10] = {itemID = 44445, spellID = 60630 }; --Scaled Icewalkers
		[11] = {itemID = 38413, spellID = 50954 }; --Frostscale Boots
		[12] = {itemID = 38419, spellID = 50960 }; --Nerubian Boots
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Hands";
		[01] = {itemID = 43446, spellID = 60732 }; --Swiftarrow Gauntlets
		[02] = {itemID = 43454, spellID = 60749 }; --Stormhide Grips
		[03] = {itemID = 38415, spellID = 50953 }; --Frostscale Gloves
		[04] = {itemID = 38421, spellID = 50959 }; --Nerubian Gloves

	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Head";
		[01] = {itemID = 43447, spellID = 60728 }; --Swiftarrow Helm
		[02] = {itemID = 43455, spellID = 60743 }; --Stormhide Crown
		[03] = {itemID = 43132, spellID = 60655 }; --Nightshock Hood
		[04] = {itemID = 38440, spellID = 60600 }; --Frostscale Helm
		[05] = {itemID = 38439, spellID = 60624 }; --Nerubian Helm
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Legs";
		[01] = {itemID = 49901, spellID = 70560 }; --Draconic Bonesplinter Legguards
		[02] = {itemID = 49900, spellID = 70558 }; --Lightning-Infused Leggings
		[03] = {itemID = 43458, spellID = 60754 }; --Giantmaim Legguards
		[04] = {itemID = 43448, spellID = 60735 }; --Swiftarrow Leggings
		[05] = {itemID = 43456, spellID = 60751 }; --Stormhide Legguards
		[06] = {itemID = 44436, spellID = 60601 }; --Dark Frostscale Leggings
		[07] = {itemID = 44443, spellID = 60627 }; --Dark Nerubian Leggings
		[08] = {itemID = 38416, spellID = 50951 }; --Frostscale Leggings
		[09] = {itemID = 38422, spellID = 50957 }; --Nerubian Legguards
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Shoulder";
		[01] = {itemID = 43449, spellID = 60729 }; --Swiftarrow Shoulderguards
		[02] = {itemID = 43457, spellID = 60746 }; --Stormhide Shoulders
		[03] = {itemID = 43130, spellID = 60651 }; --Virulent Spaulders
		[04] = {itemID = 38424, spellID = 50952 }; --Frostscale Shoulders
		[05] = {itemID = 38417, spellID = 50958 }; --Nerubian Shoulders
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Waist";
		[01] = {itemID = 45553, spellID = 63194 }; --Belt of Dragons
		[02] = {itemID = 45554, spellID = 63196 }; --AtlasLoot.Colors.BLUE Belt of Chaos
		[03] = {itemID = 43594, spellID = 61000 }; --Icy Scale Belt
		[04] = {itemID = 43442, spellID = 60734 }; --Swiftarrow Belt
		[05] = {itemID = 43450, spellID = 60750 }; --Stormhide Belt
		[06] = {itemID = 43133, spellID = 60658 }; --Nightshock Girdle
		[07] = {itemID = 38412, spellID = 50955 }; --Frostscale Belt
		[08] = {itemID = 38418, spellID = 50961 }; --Nerubian Belt
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Wrist";
		[01] = {itemID = 47580, spellID = 67137 }; --Black Chitin Bracers
		[02] = {itemID = 47579, spellID = 67081 }; --Black Chitin Bracers
		[03] = {itemID = 47576, spellID = 67083 }; --Crusader's Dragonscale Bracers
		[04] = {itemID = 47577, spellID = 67143 }; --Crusader's Dragonscale Bracers
		[05] = {itemID = 43459, spellID = 60755 }; --Giantmaim Bracers
		[06] = {itemID = 43444, spellID = 60731 }; --Swiftarrow Bracers
		[07] = {itemID = 43452, spellID = 60748 }; --Stormhide Wristguards
		[08] = {itemID = 43131, spellID = 60652 }; --Eaglebane Bracers
		[09] = {itemID = 38436, spellID = 60599 }; --Frostscale Bracers
		[10] = {itemID = 38435, spellID = 60622 }; --Nerubian Bracers
	};
	{
		Name = AL["Item Enhancements"];
		[01] = {itemID = 44963, spellID = 62448 }; --Earthen Leg Armor
		[02] = {itemID = 38373, spellID = 50965 }; --Frosthide Leg Armor
		[03] = {itemID = 38374, spellID = 50967 }; --Icescale Leg Armor
		[04] = {itemID = 29536, spellID = 35557 }; --Nethercleft Leg Armor", "=ds="..AL["Skill Required:"].." 365
		[05] = {itemID = 29535, spellID = 35554 }; --Nethercobra Leg Armor", "=ds="..AL["Skill Required:"].." 365
		[06] = {itemID = 38371, spellID = 50964 }; --Jormungar Leg Armor
		[07] = {itemID = 38372, spellID = 50966 }; --Nerubian Leg Armor
		[08] = {itemID = 29534, spellID = 35555 }; --Clefthide Leg Armor
		[09] = {itemID = 29533, spellID = 35549 }; --Cobrahide Leg Armor
		[10] = {itemID = 18251, spellID = 22727 }; --Core Armor Kit", "=ds="..AL["Skill Required:"].." 300
		[11] = {itemID = 38376, spellID = 50963 }; --Heavy Borean Armor Kit
		[16] = {spellID = 57683, icon = "Trade_LeatherWorking" }; --Fur Lining - Attack Power
		[17] = {spellID = 57701, icon = "Trade_LeatherWorking" }; --Fur Lining - Arcane Resist
		[18] = {spellID = 57692, icon = "Trade_LeatherWorking" }; --Fur Lining - Fire Resist
		[19] = {spellID = 57694, icon = "Trade_LeatherWorking" }; --Fur Lining - Frost Resist
		[20] = {spellID = 57699, icon = "Trade_LeatherWorking" }; --Fur Lining - Nature Resist
		[21] = {spellID = 57696, icon = "Trade_LeatherWorking" }; --Fur Lining - Shadow Resist
		[22] = {spellID = 57691, icon = "Trade_LeatherWorking" }; --Fur Lining - Spell Power
		[23] = {spellID = 57690, icon = "Trade_LeatherWorking" }; --Fur Lining - Stamina
		[24] = {spellID = 60583, icon = "Trade_LeatherWorking" }; --Jormungar Leg Reinforcements
		[25] = {spellID = 60584, icon = "Trade_LeatherWorking" }; --Nerubian Leg Reinforcements
	};
	{
		Name = AL["Quivers and Ammo Pouches"];
		[01] = {itemID = 44447, spellID = 60645 }; --Dragonscale Ammo Pouch
		[02] = {itemID = 44448, spellID = 60647 }; --Nerubian Reinforced Quiver
	};
	{
		Name = AL["Drums, Bags and Misc."];
		[01] = {itemID = 44446, spellID = 60643 }; --Pack of Endless Pockets
		[02] = {itemID = 38399, spellID = 50970 }; --Trapper's Traveling Pack
		[03] = {itemID = 38347, spellID = 50971 }; --Mammoth Mining Bag
		[04] = {itemID = 49633, spellID = 69386 }; --Drums of Forgotten Kings
		[05] = {itemID = 49634, spellID = 69388 }; --Drums of the Wild

	};
	{
		Name = BabbleInventory["Leather"];
		[01] = {itemID = 38425, spellID = 50936 }; --Heavy Borean Leather
		[02] = {itemID = 33568, spellID = 64661 }; --Borean Leather
	};
};


AtlasLoot_Data["MiningWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath";
	Name = MINING;
	Type = "WrathCrafting";
	{
		Name = MINING;
		[01] = {itemID = 37663, spellID = 55208 }; --Smelt Titansteel
		[02] = {itemID = 41163, spellID = 55211 }; --Smelt Titanium
		[03] = {itemID = 36913, spellID = 49258 }; --Smelt Saronite
		[04] = {itemID = 36916, spellID = 49252 }; --Smelt Cobalt
	};
};

AtlasLoot_Data["FirstAidWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath";
	Name = FIRSTAID;
	Type = "WrathCrafting";
	{
		Name = FIRSTAID;
		[01] = {itemID = 34722, spellID = 45546 }; --Heavy Frostweave Bandage
		[02] = {itemID = 34721, spellID = 45545 }; --Frostweave Bandage
	};
};
-----------------
--- Tailoring ---
-----------------

AtlasLoot_Data["TailoringWRATH"] = {
	Module = "AtlasLoot_Crafting_Wrath";
	Name = TAILORING;
	Type = "WrathCrafting";
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Back";
		[01] = {itemID = 41610, spellID = 56017 }; --Deathchill Cloak
		[02] = {itemID = 41609, spellID = 56016 }; --Wispcloak
		[03] = {itemID = 45810, spellID = 64730 }; --Cloak of Crimson Snow
		[04] = {itemID = 45811, spellID = 64729 }; --Frostguard Drape
		[05] = {itemID = 41608, spellID = 56015 }; --Cloak of Frozen Spirits
		[06] = {itemID = 41607, spellID = 56014 }; --Cloak of the Moon
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest";
		[01] = {itemID = 47603, spellID = 67066 }; --Merlin's Robe
		[02] = {itemID = 47604, spellID = 67146 }; --Merlin's Robe
		[03] = {itemID = 47605, spellID = 67064 }; --Royal Moonshroud Robe
		[04] = {itemID = 47606, spellID = 67144 }; --Royal Moonshroud Robe
		[05] = {itemID = 42101, spellID = 56026 }; --Ebonweave Robe
		[06] = {itemID = 42100, spellID = 56024 }; --Moonshroud Robe
		[07] = {itemID = 42102, spellID = 56028 }; --Spellweave Robe
		[08] = {itemID = 43583, spellID = 60993 }; --Glacial Robe
		[09] = {itemID = 43972, spellID = 59587 }; --Frostsavage Robe
		[10] = {itemID = 41554, spellID = 55941 }; --Black Duskweave Robe
		[11] = {itemID = 41525, spellID = 55911 }; --Mystic Frostwoven Robe
		[12] = {itemID = 41549, spellID = 55921 }; --Duskweave Robe
		[13] = {itemID = 41515, spellID = 55903 }; --Frostwoven Robe
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Feet";
		[01] = {itemID = 49890, spellID = 70551 }; --Deathfrost Boots
		[02] = {itemID = 49893, spellID = 70553 }; --Sandals of Consecration
		[03] = {itemID = 45567, spellID = 63206 }; --Savior's Slippers
		[04] = {itemID = 45566, spellID = 63204 }; --Spellslinger's Slippers
		[05] = {itemID = 43585, spellID = 60994 }; --Glacial Slippers
		[06] = {itemID = 42096, spellID = 56023 }; --Aurora Slippers
		[07] = {itemID = 43970, spellID = 59585 }; --Frostsavage Boots
		[08] = {itemID = 41544, spellID = 55924 }; --Duskweave Boots
		[09] = {itemID = 41520, spellID = 55906 }; --Frostwoven Boots
		[10] = {itemID = 41985, spellID = 56019 }; --Silky Iceshard Boots

	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Hands";
		[01] = {itemID = 42111, spellID = 56027 }; --Ebonweave Gloves
		[02] = {itemID = 42103, spellID = 56025 }; --Moonshroud Gloves
		[03] = {itemID = 42113, spellID = 56029 }; --Spellweave Gloves
		[04] = {itemID = 41516, spellID = 59586 }; --Frostsavage Gloves
		[05] = {itemID = 42095, spellID = 56022 }; --Light Blessed Mittens
		[06] = {itemID = 41545, spellID = 55922 }; --Duskweave Gloves
		[07] = {itemID = 44211, spellID = 55904 }; --Frostwoven Gloves
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Head";
		[01] = {itemID = 41984, spellID = 56018 }; --Hat of Wintry Doom
		[02] = {itemID = 43971, spellID = 59589 }; --Frostsavage Cowl
		[03] = {itemID = 41546, spellID = 55919 }; --Duskweave Cowl
		[04] = {itemID = 41521, spellID = 55907 }; --Frostwoven Cowl
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Legs";
		[01] = {itemID = 49891, spellID = 70550 }; --Leggings of Woven Death
		[02] = {itemID = 49892, spellID = 70552 }; --Lightweave Leggings
		[03] = {itemID = 42093, spellID = 56021 }; --Frostmoon Pants
		[04] = {itemID = 43975, spellID = 59588 }; --Frostsavage Leggings
		[05] = {itemID = 41553, spellID = 55925 }; --Black Duskweave Leggings
		[06] = {itemID = 41548, spellID = 55901 }; --Duskweave Leggings
		[07] = {itemID = 41519, spellID = 56030 }; --Frostwoven Leggings
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Shoulder";
		[01] = {itemID = 43973, spellID = 59584 }; --Frostsavage Shoulders
		[02] = {itemID = 41523, spellID = 55910 }; --Mystic Frostwoven Shoulders
		[03] = {itemID = 41550, spellID = 55923 }; --Duskweave Shoulders
		[04] = {itemID = 41513, spellID = 55902 }; --Frostwoven Shoulders
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Waist";
		[01] = {itemID = 45558, spellID = 63205 }; --Cord of the AtlasLoot.Colors.WHITE Dawn
		[02] = {itemID = 45557, spellID = 63203 }; --Sash of Ancient Power
		[03] = {itemID = 43584, spellID = 60990 }; --Glacial Waistband
		[04] = {itemID = 41986, spellID = 56020 }; --Deep Frozen Cord
		[05] = {itemID = 43969, spellID = 59582 }; --Frostsavage Belt
		[06] = {itemID = 41543, spellID = 55914 }; --Duskweave Belt
		[07] = {itemID = 41522, spellID = 55908 }; --Frostwoven Belt
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Wrist";
		[01] = {itemID = 47586, spellID = 67145 }; --Bejeweled Wizard's Bracers
		[02] = {itemID = 47585, spellID = 67079 }; --Bejeweled Wizard's Bracers
		[03] = {itemID = 47587, spellID = 67065 }; --Royal Moonshroud Bracers" ..", " .. BabbleZone["Trial of the Crusader"]
		[04] = {itemID = 47588, spellID = 67147 }; --Royal Moonshroud Bracers" ..", " .. BabbleZone["Trial of the Crusader"]
		[05] = {itemID = 41555, spellID = 55943 }; --Black Duskweave Wristwraps
		[06] = {itemID = 43974, spellID = 59583 }; --Frostsavage Bracers
		[07] = {itemID = 41528, spellID = 55913 }; --Mystic Frostwoven Wriststraps
		[08] = {itemID = 41551, spellID = 55920 }; --Duskweave Wriststraps
		[09] = {itemID = 41512, spellID = 56031 }; --Frostwoven Wriststraps
	};
	{
		Name = AL["Bags"];
		[01] = {itemID = 41600, spellID = 56005 }; --Glacial Bag
		[02] = {itemID = 41598, spellID = 56006 }; --Mysterious Bag
		[03] = {itemID = 41597, spellID = 56004 }; --Abyssal Bag
		[04] = {itemID = 45773, spellID = 63924 }; --Emerald Bag
		[05] = { itemID = 41599, spellID = 56007 }, --Frostweave Bag
	};
	{
		Name = AL["Item Enhancements"];
		[01] = {itemID = 41602, spellID = 56009 }; --Brilliant Spellthread
		[02] = {itemID = 41604, spellID = 56011 }; --Sapphire Spellthread
		[03] = {itemID = 41603, spellID = 56010 }; --Azure Spellthread
		[04] = {itemID = 41601, spellID = 56008 }; --Shining Spellthread
		[16] = {spellID = 56034, icon = "Spell_Nature_AstralRecalGroup" }; --Master's Spellthread
		[17] = {spellID = 56039, icon = "Spell_Nature_AstralRecalGroup" }; --Sanctified Spellthread
		[19] = {spellID = 55769, icon = "INV_Misc_Thread_01" }; --Darkglow Embroidery
		[20] = {spellID = 55642, icon = "INV_Misc_Thread_01" }; --Lightweave Embroidery
		[21] = {spellID = 55777, icon = "INV_Misc_Thread_01" }; --Swordguard Embroidery
	};
	{
		Name = "Cloth/" .. AL["Miscellaneous"];
		[01] = {itemID = 41593, spellID = 56002 }; --Ebonweave
		[02] = {itemID = 41594, spellID = 56001 }; --Moonshroud
		[03] = {itemID = 41595, spellID = 56003 }; --Spellweave
		[04] = {itemID = 41511, spellID = 55900 }; --Bolt of Imbued Frostweave
		[05] = {itemID = 41510, spellID = 55899 }; --Bolt of Frostweave
		[07] = {itemID = 44558, spellID = 60971 }; --Magnificent Flying Carpet
		[08] = {itemID = 54797, spellID = 75597 }; --Frosty Flying Carpet
		[10] = {itemID = 41509, spellID = 55898 }; --Frostweave Net
	};
	{
		Name = AL["Shirts"];
		[01] = {itemID = 41249, spellID = 55994 }; --AtlasLoot.Colors.BLUE Lumberjack Shirt
		[02] = {itemID = 41253, spellID = 55998 }; --AtlasLoot.Colors.BLUE Workman's Shirt
		[03] = {itemID = 41250, spellID = 55996 }; --AtlasLoot.Colors.GREEN Lumberjack Shirt
		[04] = {itemID = 41255, spellID = 56000 }; --AtlasLoot.Colors.GREEN Workman's Shirt
		[05] = {itemID = 41248, spellID = 55993 }; --AtlasLoot.Colors.RED Lumberjack Shirt
		[06] = {itemID = 41252, spellID = 55997 }; --AtlasLoot.Colors.RED Workman's Shirt
		[07] = {itemID = 41254, spellID = 55999 }; --Rustic Workman's Shirt
		[08] = {itemID = 41251, spellID = 55995 }; --Yellow Lumberjack Shirt
		[09] = {itemID = 10034, spellID = 12085 }; --Tuxedo Shirt
		[10] = {itemID = 10055, spellID = 12080 }; --Pink Mageweave Shirt
		[11] = {itemID = 10054, spellID = 12075 }; --Lavender Mageweave Shirt
		[12] = {itemID = 10052, spellID = 12064 }; --AtlasLoot.Colors.ORANGE Martial Shirt
		[13] = {itemID = 10056, spellID = 12061 }; --AtlasLoot.Colors.ORANGE Mageweave Shirt
		[14] = {itemID = 4336, spellID = 3873 }; --Black Swashbuckler's Shirt
		[15] = {itemID = 17723, spellID = 21945 }; --AtlasLoot.Colors.GREEN Holiday Shirt
		[16] = {itemID = 4335, spellID = 3872 }; --Rich Purple Silk Shirt
		[17] = {itemID = 6796, spellID = 8489 }; --AtlasLoot.Colors.RED Swashbuckler's Shirt
		[18] = {itemID = 4334, spellID = 3871 }; --Formal AtlasLoot.Colors.WHITE Shirt
		[19] = {itemID = 6795, spellID = 8483 }; --AtlasLoot.Colors.WHITE Swashbuckler's Shirt
		[20] = {itemID = 4333, spellID = 3870 }; --Dark Silk Shirt
		[21] = {itemID = 4332, spellID = 3869 }; --Bright Yellow Shirt
		[22] = {itemID = 6384, spellID = 7892 }; --Stylish AtlasLoot.Colors.BLUE Shirt
		[23] = {itemID = 6385, spellID = 7893 }; --Stylish AtlasLoot.Colors.GREEN Shirt
		[24] = {itemID = 4330, spellID = 3866 }; --Stylish AtlasLoot.Colors.RED Shirt
		[25] = {itemID = 2587, spellID = 2406 }; --Gray Woolen Shirt
		[26] = {itemID = 2579, spellID = 2396 }; --AtlasLoot.Colors.GREEN Linen Shirt
		[27] = {itemID = 2577, spellID = 2394 }; --AtlasLoot.Colors.BLUE Linen Shirt
		[28] = {itemID = 2575, spellID = 2392 }; --AtlasLoot.Colors.RED Linen Shirt
		[29] = {itemID = 2576, spellID = 2393 }; --AtlasLoot.Colors.WHITE Linen Shirt
		[30] = {itemID = 4344, spellID = 3915 }; --Brown Linen Shirt
	};
};
