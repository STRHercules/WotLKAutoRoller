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
local JEWELCRAFTING = GetSpellInfo(25229);
local LEATHERWORKING = GetSpellInfo(2108);
local DRAGONSCALE = GetSpellInfo(10656);
local ELEMENTAL = GetSpellInfo(10658);
local TRIBAL = GetSpellInfo(10660);
local MINING = GetSpellInfo(2575);
local TAILORING = GetSpellInfo(3908);
local MOONCLOTH = GetSpellInfo(26798);
local SHADOWEAVE = GetSpellInfo(26801);
local SPELLFIRE = GetSpellInfo(26797);

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
--- Other
---- Crafted Epic Weapons

-----------------------
--- Tradeskill List ---
-----------------------

---------------
--- Alchemy ---
---------------
AtlasLoot_Data["AlchemyTBC"] = {
	Module = "AtlasLoot_Crafting_TBC";
	Name = ALCHEMY;
	Type = "BCCrafting";
	{
		Name = AL["Battle Elixirs"];
		[01] = { itemID = 22835, spellID = 28558 }, --Elixir of Major Shadow Power
		[02] = { itemID = 22833, spellID = 28556 }, --Elixir of Major Firepower
		[03] = { itemID = 31679, spellID = 38960 }, --Fel Strength Elixir
		[04] = { itemID = 22831, spellID = 28553 }, --Elixir of Major Agility
		[05] = { itemID = 22827, spellID = 28549 }, --Elixir of Major Frost Power
		[06] = { itemID = 28104, spellID = 33741 }, --Elixir of Mastery
		[07] = { itemID = 22825, spellID = 28545 }, --Elixir of Healing Power
		[08] = { itemID = 22824, spellID = 28544 }, --Elixir of Major Strength
		[9] = { itemID = 28103, spellID = 33740 }, --Adept's Elixir
		[10] = { itemID = 28102, spellID = 33738 }, --Onslaught Elixir
	};
	{
		Name = AL["Guardian Elixirs"];
		[01] = { itemID = 22848, spellID = 28578 }, --Elixir of Empowerment
		[02] = { itemID = 22840, spellID = 28570 }, --Elixir of Major Mageblood
		[03] = { itemID = 22834, spellID = 28557 }, --Elixir of Major Defense
		[04] = { itemID = 32068, spellID = 39639 }, --Elixir of Ironskin
		[05] = { itemID = 32063, spellID = 39637 }, --Earthen Elixir
		[06] = { itemID = 32067, spellID = 39638 }, --Elixir of Draenic Wisdom
		[07] = { itemID = 32062, spellID = 39636 }, --Elixir of Major Fortitude
	};
	{
		Name = AL["Potions"];
		[01] = { itemID = 22850, spellID = 28586 }, --Super Rejuvenation Potion
		[02] = { itemID = 31677, spellID = 38961 }, --Fel Mana Potion
		[03] = { itemID = 22849, spellID = 28579 }, --Ironshield Potion
		[04] = { itemID = 22845, spellID = 28575 }, --Major Arcane Protection Potion
		[05] = { itemID = 22841, spellID = 28571 }, --Major Fire Protection Potion
		[06] = { itemID = 22842, spellID = 28572 }, --Major Frost Protection Potion
		[07] = { itemID = 22847, spellID = 28577 }, --Major Holy Protection Potion
		[08] = { itemID = 22844, spellID = 28573 }, --Major Nature Protection Potion
		[9] = { itemID = 22846, spellID = 28576 }, --Major Shadow Protection Potion
		[10] = { itemID = 22839, spellID = 28565 }, --Destruction Potion
		[11] = { itemID = 22838, spellID = 28564 }, --Haste Potion
		[12] = { itemID = 22837, spellID = 28563 }, --Heroic Potion
		[13] = { itemID = 22836, spellID = 28562 }, --Major Dreamless Sleep Potion
		[14] = { itemID = 31676, spellID = 38962 }, --Fel Regeneration Potion
		[15] = { itemID = 22832, spellID = 28555 }, --Super Mana Potion
		[16] = { itemID = 22871, spellID = 28554 }, --Shrouding Potion
		[17] = { itemID = 34440, spellID = 45061 }, --Mad Alchemist's Potion
		[18] = { itemID = 22829, spellID = 28551 }, --Super Healing Potion
		[19] = { itemID = 22828, spellID = 28550 }, --Insane Strength Potion
		[20] = { itemID = 22826, spellID = 28546 }, --Sneaking Potion
		[21] = { itemID = 28101, spellID = 33733 }, --Unstable Mana Potion
		[22] = { itemID = 28100, spellID = 33732 }, --Volatile Healing Potion
	};
	{
		Name = AL["Flasks"];
		[01] = { itemID = 33208, spellID = 42736 }, --Flask of Chromatic Wonder
		[02] = { itemID = 22861, spellID = 28590 }, --Flask of Blinding Light
		[03] = { itemID = 22851, spellID = 28587 }, --Flask of Fortification
		[04] = { itemID = 22853, spellID = 28588 }, --Flask of Mighty Restoration
		[05] = { itemID = 22866, spellID = 28591 }, --Flask of Pure Death
		[06] = { itemID = 22854, spellID = 28589 }, --Flask of Relentless Assault
	};
	{
		Name = AL["Transmutes"];
		[01] = { itemID = 23571, spellID = 29688 }, --Transmute: Primal Might
		[02] = { itemID = 25867, spellID = 32765 }, --Transmute: Earthstorm Diamond
		[03] = { itemID = 25868, spellID = 32766 }, --Transmute: Skyfire Diamond
		[04] = { itemID = 21886, spellID = 28585 }, --Transmute: Primal Earth to Life
		[05] = { itemID = 22457, spellID = 28583 }, --Transmute: Primal Fire to Mana
		[06] = { itemID = 22452, spellID = 28584 }, --Transmute: Primal Life to Earth
		[07] = { itemID = 21884, spellID = 28582 }, --Transmute: Primal Mana to Fire
		[08] = { itemID = 21885, spellID = 28580 }, --Transmute: Primal Shadow to Water
		[9] = { itemID = 22456, spellID = 28581 }, --Transmute: Primal Water to Shadow
		[10] = { itemID = 21884, spellID = 28566 }, --Transmute: Primal Air to Fire
		[11] = { itemID = 21885, spellID = 28567 }, --Transmute: Primal Earth to Water
		[12] = { itemID = 22452, spellID = 28568 }, --Transmute: Primal Fire to Earth
		[13] = { itemID = 22451, spellID = 28569 }, --Transmute: Primal Water to Air
	};
	{
		Name = AL["Miscellaneous"];
		[01] = { itemID = 19931, spellID = 24266 }, --Gurubashi Mojo Madness
		[02] = { itemID = 9154, spellID = 11460 }, --Elixir of Detect Undead
		[03] = { itemID = 18294, spellID = 22808 }, --Elixir of Greater Water Breathing
		[04] = { itemID = 9061, spellID = 11456 }, --Goblin Rocket Fuel
		[05] = { itemID = 8956, spellID = 11451 }, --Oil of Immolation
		[06] = { itemID = 10592, spellID = 12609 }, --Catseye Elixir
		[07] = { itemID = 3829, spellID = 3454 }, --Frost Oil
		[08] = { itemID = 9149, spellID = 11459 }, --Philosopher's Stone
		[9] = { itemID = 3828, spellID = 3453 }, --Elixir of Detect Lesser Invisibility
		[10] = { itemID = 3824, spellID = 3449 }, --Shadow Oil
		[11] = { itemID = 6371, spellID = 7837 }, --Fire Oil
		[12] = { itemID = 5996, spellID = 7179 }, --Elixir of Water Breathing
		[13] = { itemID = 6370, spellID = 7836 }, --Blackmouth Oil
	};
	{
		Name = AL["High Risk"];
		[01] = { name = AL["Rare"], icon = "INV_Box_01"},
		[02] = { itemID = 1203258, spellID = 979362 }, --Impure Flask of Manifesting Power
		[03] = { itemID = 1203260, spellID = 979364 }, --Impure Flask of the Warsong
		[04] = { itemID = 1203262, spellID = 979366 }, --Impure Flask of the Kirin Tor
		[05] = { itemID = 1203264, spellID = 979368 }, --Impure Flask of Butchery
		[06] = { itemID = 1203266, spellID = 979370 }, --Impure Flask of the Unyielding
		[07] = { itemID = 1203268, spellID = 979372 }, --Impure Flask of Unrelenting Power
		[08] = { itemID = 1203270, spellID = 979374 }, --Impure Flask of Savage Assault
		[9] = { itemID = 1203272, spellID = 979376 }, --Impure Flask of Shattering Thunder
		[10] = { itemID = 1203274, spellID = 979378 }, --Impure Flask of the Executioner
		[11] = { itemID = 1203276, spellID = 979380 }, --Impure Flask of Deep Meditation
		[12] = { itemID = 1203278, spellID = 979382 }, --Impure Flask of Adept Striking
		[16] = { name = AL["Epic"], icon = "INV_Box_01"},
		[17] = { itemID = 1203259, spellID = 979363 }, --Pure Flask of Manifesting Power
		[18] = { itemID = 1203261, spellID = 979365 }, --Pure Flask of the Warsong
		[19] = { itemID = 1203263, spellID = 979367 }, --Pure Flask of the Kirin Tor
		[20] = { itemID = 1203265, spellID = 979369 }, --Pure Flask of Butchery
		[21] = { itemID = 1203267, spellID = 979371 }, --Pure Flask of the Unyielding
		[22] = { itemID = 1203269, spellID = 979373 }, --Pure Flask of Unrelenting Power
		[23] = { itemID = 1203271, spellID = 979375 }, --Pure Flask of Savage Assault
		[24] = { itemID = 1203273, spellID = 979377 }, --Pure Flask of Shattering Thunder
		[25] = { itemID = 1203275, spellID = 979379 }, --Pure Flask of the Executioner
		[26] = { itemID = 1203277, spellID = 979381 }, --Pure Flask of Deep Meditation
		[27] = { itemID = 1203279, spellID = 979383 }, --Pure Flask of Adept Striking
	};
};



---------------------
--- Blacksmithing ---
---------------------

AtlasLoot_Data["SmithingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC";
	Name = BLACKSMITHING;
	Type = "BCCrafting";
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest";
		[01] = { itemID = 28484, spellID = 34534 }, --Bulwark of Kings
		[02] = { itemID = 28485, spellID = 36257 }, --Bulwark of the Ancient Kings
		[03] = { itemID = 23565, spellID = 36256 }, --Embrace of the Twisting Nether
		[04] = { itemID = 31369, spellID = 38477 }, --Iceguard Breastplate
		[05] = { itemID = 23564, spellID = 34530 }, --Twisting Nether Chain Shirt
		[06] = { itemID = 31364, spellID = 38473 }, --Wildguard Breastplate
		[07] = { itemID = 34377, spellID = 46144 }, --Hard Khorium Battleplate
		[08] = { itemID = 34379, spellID = 46142 }, --Sunblessed Breastplate
		[9] = { itemID = 23527, spellID = 29649 }, --Earthpeace Breastplate
		[10] = { itemID = 23522, spellID = 29645 }, --Ragesteel Breastplate
		[11] = { itemID = 23513, spellID = 29617 }, --Flamebane Breastplate
		[12] = { itemID = 23509, spellID = 29610 }, --Enchanted Adamantite Breastplate
		[13] = { itemID = 28483, spellID = 34533 }, --Breastplate of Kings
		[14] = { itemID = 23563, spellID = 34529 }, --Nether Chain Shirt
		[15] = { itemID = 23507, spellID = 29606 }, --Adamantite Breastplate
		[16] = { itemID = 30074, spellID = 36129 }, --Heavy Earthforged Breastplate
		[17] = { itemID = 30076, spellID = 36130 }, --Stormforged Hauberk
		[18] = { itemID = 23489, spellID = 29550 }, --Fel Iron Breastplate
		[19] = { itemID = 23490, spellID = 29556 }, --Fel Iron Chain Tunic
	};
	{ Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Feet";
		[01] = { itemID = 30033, spellID = 36391 }, --Boots of the Protector
		[02] = { itemID = 30031, spellID = 36392 }, --AtlasLoot.Colors.RED Havoc Boots
		[03] = { itemID = 32402, spellID = 40033 }, --Shadesteel Sabots
		[04] = { itemID = 23525, spellID = 29630 }, --Khorium Boots
		[05] = { itemID = 23511, spellID = 29611 }, --Enchanted Adamantite Boots
		[06] = { itemID = 23487, spellID = 29548 }, --Fel Iron Plate Boots
	};
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Hands";
		[01] = { itemID = 23526, spellID = 29648 }, --Swiftsteel Gloves
		[02] = { itemID = 23531, spellID = 29658 }, --Felfury Gauntlets
		[03] = { itemID = 23532, spellID = 29622 }, --Gauntlets of the Iron Tower
		[04] = { itemID = 23533, spellID = 29662 }, --Steelgrip Gauntlets
		[05] = { itemID = 34380, spellID = 46140 }, --Sunblessed Gauntlets
		[06] = { itemID = 34378, spellID = 46141 }, --Hard Khorium Battlefists
		[07] = { itemID = 23520, spellID = 29642 }, --Ragesteel Gloves
		[08] = { itemID = 23517, spellID = 29619 }, --Felsteel Gloves
		[9] = { itemID = 23514, spellID = 29616 }, --Flamebane Gloves
		[10] = { itemID = 23508, spellID = 29605 }, --Adamantite Plate Gloves
		[11] = { itemID = 23491, spellID = 29552 }, --Fel Iron Chain Gloves
		[12] = { itemID = 23482, spellID = 29545 }, --Fel Iron Plate Gloves
	};
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Head";
		[01] = { itemID = 31371, spellID = 38479 }, --Iceguard Helm
		[02] = { itemID = 31368, spellID = 38476 }, --Wildguard Helm
		[03] = { itemID = 23535, spellID = 29664 }, --Helm of the Stalwart Defender
		[04] = { itemID = 23536, spellID = 29668 }, --Oathkeeper's Helm
		[05] = { itemID = 23534, spellID = 29663 }, --Storm Helm
		[06] = { itemID = 23519, spellID = 29621 }, --Felsteel Helm
		[07] = { itemID = 23521, spellID = 29643 }, --Ragesteel Helm
		[08] = { itemID = 23516, spellID = 29615 }, --Flamebane Helm
		[9] = { itemID = 23493, spellID = 29551 }, --Fel Iron Chain Coif
	};
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Legs";
		[01] = { itemID = 31370, spellID = 38478 }, --Iceguard Leggings
		[02] = { itemID = 32404, spellID = 40035 }, --Shadesteel Greaves
		[03] = { itemID = 31367, spellID = 38475 }, --Wildguard Leggings
		[04] = { itemID = 23512, spellID = 29613 }, --Enchanted Adamantite Leggings
		[05] = { itemID = 23518, spellID = 29620 }, --Felsteel Leggings
		[06] = { itemID = 23523, spellID = 29629 }, --Khorium Pants
		[07] = { itemID = 23488, spellID = 29549 }, --Fel Iron Plate Pants
	};
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Shoulder";
		[01] = { itemID = 32573, spellID = 41135 }, --Dawnsteel Shoulders
		[02] = { itemID = 33173, spellID = 42662 }, --Ragesteel Shoulders
		[03] = { itemID = 32570, spellID = 41133 }, --Swiftsteel Shoulders
	};
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Waist";
		[01] = { itemID = 30034, spellID = 36389 }, --Belt of the Guardian
		[02] = { itemID = 30032, spellID = 36390 }, --AtlasLoot.Colors.RED Belt of Battle
		[03] = { itemID = 32401, spellID = 40036 }, --Shadesteel Girdle
		[04] = { itemID = 23524, spellID = 29628 }, --Khorium Belt
		[05] = { itemID = 23510, spellID = 29608 }, --Enchanted Adamantite Belt
		[06] = { itemID = 23484, spellID = 29547 }, --Fel Iron Plate Belt
	};
	{
		Name = BabbleInventory["Armor"] .. AtlasLoot.Colors.WHITE .. " - Wrist";
		[01] = { itemID = 32571, spellID = 41134 }, --Dawnsteel Bracers
		[02] = { itemID = 32403, spellID = 40034 }, --Shadesteel Bracers
		[03] = { itemID = 32568, spellID = 41132 }, --Swiftsteel Bracers
		[04] = { itemID = 23537, spellID = 29669 }, --Black Felsteel Bracers
		[05] = { itemID = 23539, spellID = 29672 }, --Blessed Bracers
		[06] = { itemID = 23538, spellID = 29671 }, --Bracers of the AtlasLoot.Colors.GREEN Fortress
		[07] = { itemID = 23515, spellID = 29614 }, --Flamebane Bracers
		[08] = { itemID = 23506, spellID = 29603 }, --Adamantite Plate Bracers
		[9] = { itemID = 23494, spellID = 29553 }, --Fel Iron Chain Bracers
	};
	{
		Name = "Weapon " .. AtlasLoot.Colors.WHITE .." - OneHanded";
		[01] = { itemID = 28432, spellID = 34542 }, --Black Planar Edge
		[02] = { itemID = 28427, spellID = 36258 }, --Blazefury
		[03] = { itemID = 28426, spellID = 34537 }, --Blazeguard
		[04] = { itemID = 28438, spellID = 34546 }, --Dragonmaw
		[05] = { itemID = 28439, spellID = 36262 }, --Dragonstrike
		[06] = { itemID = 28433, spellID = 36260 }, --Wicked Edge of the Planes
		[07] = { itemID = 23555, spellID = 29699 }, --Dirge
		[08] = { itemID = 23554, spellID = 29698 }, --Eternium Runed Blade
		[9] = { itemID = 23542, spellID = 29694 }, --Fel Edged Battleaxe
		[10] = { itemID = 23540, spellID = 29692 }, --Felsteel Longblade
		[11] = { itemID = 23556, spellID = 29700 }, --Hand of Eternity
		[12] = { itemID = 23544, spellID = 29696 }, --Runic Hammer
		[13] = { itemID = 28437, spellID = 34545 }, --Drakefist Hammer
		[14] = { itemID = 28425, spellID = 34535 }, --Fireguard
		[15] = { itemID = 28431, spellID = 34541 }, --The Planar Edge
		[16] = { itemID = 29204, spellID = 34983 }, --Felsteel Whisper Knives
		[17] = { itemID = 30089, spellID = 36136 }, --Lavaforged Warhammer
		[18] = { itemID = 30087, spellID = 36134 }, --Stormforged Axe
		[19] = { itemID = 30077, spellID = 36131 }, --Windforged Rapier
		[20] = { itemID = 23505, spellID = 29571 }, --Adamantite Rapier
		[21] = { itemID = 23504, spellID = 29569 }, --Adamantite Dagger
		[22] = { itemID = 23498, spellID = 29558 }, --Fel Iron Hammer
		[23] = { itemID = 23497, spellID = 29557 }, --Fel Iron Hatchet
	};
	{
		Name = "Weapon " .. AtlasLoot.Colors.WHITE .." - TwoHanded";
		[01] = { itemID = 28436, spellID = 36261 }, --Bloodmoon
		[02] = { itemID = 28441, spellID = 34548 }, --Deep Thunder
		[03] = { itemID = 28429, spellID = 34540 }, --Lionheart Champion
		[04] = { itemID = 28430, spellID = 36259 }, --Lionheart Executioner
		[05] = { itemID = 28435, spellID = 34544 }, --Mooncleaver
		[06] = { itemID = 28442, spellID = 36263 }, --Stormherald
		[07] = { itemID = 23546, spellID = 29697 }, --Fel Hardened Maul
		[08] = { itemID = 23543, spellID = 29695 }, --Felsteel Reaper
		[9] = { itemID = 32854, spellID = 43846 }, --Hammer of Righteous Might
		[10] = { itemID = 23541, spellID = 29693 }, --Khorium Champion
		[11] = { itemID = 28428, spellID = 34538 }, --Lionheart Blade
		[12] = { itemID = 28434, spellID = 34543 }, --Lunar Crescent
		[13] = { itemID = 28440, spellID = 34547 }, --Thunder
		[14] = { itemID = 30093, spellID = 36137 }, --Great Earthforged Hammer
		[15] = { itemID = 30088, spellID = 36135 }, --Skyforged Great Axe
		[16] = { itemID = 30086, spellID = 36133 }, --Stoneforged Claymore
		[17] = { itemID = 23503, spellID = 29568 }, --Adamantite Cleaver
		[18] = { itemID = 23502, spellID = 29566 }, --Adamantite Maul
		[19] = { itemID = 23499, spellID = 29565 }, --Fel Iron Greatsword
	};
	{
		Name = AL["Item Enhancements"];
		[01] = { itemID = 23530, spellID = 29657 }, --Felsteel Shield Spike
		[02] = { itemID = 23529, spellID = 29656 }, --Adamantite Sharpening Stone
		[03] = { itemID = 28421, spellID = 34608 }, --Adamantite Weightstone
		[04] = { itemID = 33185, spellID = 42688 }, --Adamantite Weapon Chain
		[05] = { itemID = 18262, spellID = 22757 }, --Elemental Sharpening Stone
		[06] = { itemID = 12645, spellID = 16651 }, --Thorium Shield Spike
		[07] = { itemID = 7969, spellID = 9964 }, --Mithril Spurs
		[08] = { itemID = 7967, spellID = 9939 }, --Mithril Shield Spike
		[9] = { itemID = 23576, spellID = 29729 }, --Greater Ward of Shielding
		[10] = { itemID = 25521, spellID = 32285 }, --Greater Rune of Warding
		[11] = { itemID = 23575, spellID = 29728 }, --Lesser Ward of Shielding
		[12] = { itemID = 23559, spellID = 32284 }, --Lesser Rune of Warding
		[13] = { itemID = 23528, spellID = 29654 }, --Fel Sharpening Stone
		[14] = { itemID = 28420, spellID = 34607 }, --Fel Weightstone
	};
	{
		Name = AL["Miscellaneous"];
		[01] = { itemID = 15872, spellID = 19669 }, --Arcanite Skeleton Key
		[02] = { itemID = 25845, spellID = 32657 }, --Eternium Rod
		[03] = { itemID = 25844, spellID = 32656 }, --Adamantite Rod
		[04] = { itemID = 25843, spellID = 32655 }, --Fel Iron Rod
	};
	{
		Name = ARMORSMITH;
		[08] = { itemID = 30074, spellID = 36129 }, --Heavy Earthforged Breastplate
		[07] = { itemID = 30076, spellID = 36130 }, --Stormforged Hauberk
		[06] = { itemID = 28483, spellID = 34533 }, --Breastplate of Kings
		[05] = { itemID = 23563, spellID = 34529 }, --Nether Chain Shirt
		[04] = { itemID = 28484, spellID = 34534 }, --Bulwark of Kings
		[03] = { itemID = 28485, spellID = 36257 }, --Bulwark of the Ancient Kings
		[02] = { itemID = 23565, spellID = 36256 }, --Embrace of the Twisting Nether
		[01] = { itemID = 23564, spellID = 34530 }, --Twisting Nether Chain Shirt
	};
	{
		Name = WEAPONSMITH;
		[01] = { itemID = 30071, spellID = 36125 }, --Light Earthforged Blade
		[02] = { itemID = 30073, spellID = 36128 }, --Light Emberforged Hammer
		[03] = { itemID = 30072, spellID = 36126 }, --Light Skyforged Axe
	};
	{
		Name = AXESMITH;
		[08] = { itemID = 30088, spellID = 36135 }, --Skyforged Great Axe
		[07] = { itemID = 30087, spellID = 36134 }, --Stormforged Axe
		[06] = { itemID = 28434, spellID = 34543 }, --Lunar Crescent
		[05] = { itemID = 28431, spellID = 34541 }, --The Planar Edge
		[04] = { itemID = 28432, spellID = 34542 }, --Black Planar Edge
		[03] = { itemID = 28436, spellID = 36261 }, --Bloodmoon
		[02] = { itemID = 28435, spellID = 34544 }, --Mooncleaver
		[01] = { itemID = 28433, spellID = 36260 }, --Wicked Edge of the Planes
	};
	{
		Name = HAMMERSMITH;
		[08] = { itemID = 30093, spellID = 36137 }, --Great Earthforged Hammer
		[07] = { itemID = 30089, spellID = 36136 }, --Lavaforged Warhammer
		[06] = { itemID = 28437, spellID = 34545 }, --Drakefist Hammer
		[05] = { itemID = 28440, spellID = 34547 }, --Thunder
		[04] = { itemID = 28441, spellID = 34548 }, --Deep Thunder
		[03] = { itemID = 28438, spellID = 34546 }, --Dragonmaw
		[02] = { itemID = 28439, spellID = 36262 }, --Dragonstrike
		[01] = { itemID = 28442, spellID = 36263 }, --Stormherald
	};
	{
		Name = SWORDSMITH;
		[08] = { itemID = 30086, spellID = 36133 }, --Stoneforged Claymore
		[07] = { itemID = 30077, spellID = 36131 }, --Windforged Rapier
		[06] = { itemID = 28425, spellID = 34535 }, --Fireguard
		[05] = { itemID = 28428, spellID = 34538 }, --Lionheart Blade
		[04] = { itemID = 28427, spellID = 36258 }, --Blazefury
		[03] = { itemID = 28426, spellID = 34537 }, --Blazeguard
		[02] = { itemID = 28429, spellID = 34540 }, --Lionheart Champion
		[01] = { itemID = 28430, spellID = 36259 }, --Lionheart Executioner
	};
	{
		Name = AL["High Risk"];
		[01] = { name = AL["Rare"], icon = "INV_Box_01"},
		[02] = { itemID = 1204033, spellID = 979534 }, --Hulking Belt Buckle
		[03] = { itemID = 1204035, spellID = 979536 }, --Blade Master's Belt Buckle
		[04] = { itemID = 1204037, spellID = 979538 }, --Agile Belt Buckle
		[05] = { itemID = 1204039, spellID = 979540 }, --Eluding Belt Buckle
		[06] = { itemID = 1204041, spellID = 979542 }, --Scholar's Belt Buckle
		[07] = { itemID = 1204043, spellID = 979544 }, --Priestly Belt Buckle
		[08] = { itemID = 1204045, spellID = 979546 }, --Champion\'s Belt Buckle
		[9] = { itemID = 1204047, spellID = 979548 }, --Guarded Belt Buckle
		[16] = { name = AL["Epic"], icon = "INV_Box_01"},
		[17] = { itemID = 1204034, spellID = 979535 }, --Mastercraft Hulking Belt Buckle
		[18] = { itemID = 1204036, spellID = 979537 }, --Mastercraft Blade Master's Belt Buckle
		[19] = { itemID = 1204038, spellID = 979539 }, --Mastercraft Agile Belt Buckle
		[20] = { itemID = 1204040, spellID = 979541 }, --Mastercraft Eluding Belt Buckle
		[21] = { itemID = 1204042, spellID = 979543 }, --Mastercraft Scholar's Belt Buckle
		[22] = { itemID = 1204044, spellID = 979545 }, --Mastercraft Priestly Belt Buckle
		[23] = { itemID = 1204046, spellID = 979547 }, --Mastercraft Champion\'s Belt Buckle
		[24] = { itemID = 1204048, spellID = 979549 }, --Mastercraft Guarded Belt Buckle
	};
};

---------------
--- Cooking ---
---------------

AtlasLoot_Data["CookingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC";
	Name = COOKING;
	Type = "BCCrafting";
	{
		Name = AL["Page 1"];
		[01] = { itemID = 33052, spellID = 42302 }, --Fisherman's Feast
		[02] = { itemID = 33053, spellID = 42305 }, --Hot Buttered Trout
		[03] = { itemID = 27667, spellID = 33296 }, --Spicy Crawdad
		[04] = { itemID = 31673, spellID = 38868 }, --Crunchy Serpent
		[05] = { itemID = 31672, spellID = 38867 }, --Mok'Nathal Shortribs
		[06] = { itemID = 27666, spellID = 33295 }, --Golden Fish Sticks
		[07] = { itemID = 34411, spellID = 45022 }, --Hot Apple Cider
		[08] = { itemID = 27658, spellID = 33287 }, --Roasted Clefthoof
		[9] = { itemID = 33825, spellID = 43707 }, --Skullfish Soup
		[10] = { itemID = 33872, spellID = 43765 }, --Spicy Hot Talbuk
		[11] = { itemID = 27660, spellID = 33289 }, --Talbuk Steak
		[12] = { itemID = 27659, spellID = 33288 }, --Warp Burger
		[13] = { itemID = 27664, spellID = 33293 }, --Grilled Mudfish
		[14] = { itemID = 27665, spellID = 33294 }, --Poached Bluefish
		[15] = { itemID = 33048, spellID = 42296 }, --Stewed Trout
		[16] = { itemID = 27657, spellID = 33286 }, --Blackened Basilisk
		[17] = { itemID = 27663, spellID = 33292 }, --Blackened Sporefish
		[18] = { itemID = 27656, spellID = 33285 }, --Sporeling Snack
		[19] = { itemID = 27661, spellID = 33290 }, --Blackened Trout
		[20] = { itemID = 33867, spellID = 43761 }, --Broiled Bloodfin
		[21] = { itemID = 27651, spellID = 33279 }, --Buzzard Bites
		[22] = { itemID = 30155, spellID = 36210 }, --Clam Bar
		[23] = { itemID = 21023, spellID = 25659 }, --Dirge's Kickin' Chimaerok Chops
		[24] = { itemID = 100626, spellID = 966455 }, --Azerothian Schmorgus Boards
		[25] = { itemID = 100609, spellID = 966436 }, --Chilled Lava Eels
		[26] = { itemID = 100608, spellID = 966435 }, --Chillwind Flank Steaks
		[27] = { itemID = 100607, spellID = 966434 }, --Hippogryph Steaks
		[28] = { itemID = 100606, spellID = 966433 }, --Steamed Makrinni Claws
		[29] = { itemID = 100605, spellID = 966432 }, --Rubbed Ravasaur Ribss
		[30] = { itemID = 100604, spellID = 966431 }, --Hearty Stegodon Stews

	};
	{
		Name = AL["Page 2"];
		[01] = { itemID = 100603, spellID = 966430 }, --Crispy Pterrordax Wings
		[02] = { itemID = 100602, spellID = 966429 }, --Spicy Dino Jerkys
		[03] = { itemID = 100601, spellID = 966428 }, --Dirge's Nevermelt Ice Creams
		[04] = { itemID = 100599, spellID = 966427 }, --Silithid Snacks
		[05] = { itemID = 100598, spellID = 966426 }, --Hydra Scale Soups
		[06] = { itemID = 100597, spellID = 966425 }, --Ghostly Goulashs
		[07] = { itemID = 100583, spellID = 966398 }, --Seared Cunning Carps
		[08] = { itemID = 33874, spellID = 43772 }, --Kibler's Bits
		[9] = { itemID = 27655, spellID = 33284 }, --Ravager Dog
		[10] = { itemID = 33866, spellID = 43758 }, --Stormchops
	};
	{
		Name = AL["High Risk"].." - Page 1",
		[01] = { name = AL["Rare"], icon = "INV_Box_01"},
		[02] = { itemID = 1203280, spellID = 979384 }, --Infused Living Soup
		[03] = { itemID = 1203282, spellID = 979386 }, --Infused Charred Steak
		[04] = { itemID = 1203284, spellID = 979388 }, --Infused Steamed Wontons
		[05] = { itemID = 1203286, spellID = 979390 }, --Infused Air Fried Chops
		[06] = { itemID = 1203288, spellID = 979392 }, --Infused Rock\'s Stew (Airsick lowlander flavor text)
		[07] = { itemID = 1203290, spellID = 979394 }, --Infused Clear-Cut Chops
		[08] = { itemID = 1203292, spellID = 979396 }, --Infused Clear-Cut Wontons
		[9] = { itemID = 1203294, spellID = 979398 }, --Infused Clear-Cut Steak
		[10] = { itemID = 1203358, spellID = 979463 }, --Infused Bold Simmered Stew
		[11] = { itemID = 1203360, spellID = 979465 }, --Infused Bold Duck Stew
		[12] = { itemID = 1203338, spellID = 979443 }, --Infused Subtle Chops
		[13] = { itemID = 1203340, spellID = 979445 }, --Infused Subtle Steak
		[14] = { itemID = 1203342, spellID = 979447 }, --Infused Subtle Wontons
		[15] = { itemID = 1203344, spellID = 979449 }, --Infused Subtle Soup
		[16] = { name = AL["Epic"], icon = "INV_Box_01"},
		[17] = { itemID = 1203281, spellID = 979385 }, --Charged Living Soup
		[18] = { itemID = 1203283, spellID = 979387 }, --Charged Charred Steak
		[19] = { itemID = 1203285, spellID = 979389 }, --Charged Steamed Wontons
		[20] = { itemID = 1203287, spellID = 979391 }, --Charged Air Fried Chops
		[21] = { itemID = 1203289, spellID = 979393 }, --Charged Rock\'s Stew (Airsick lowlander flavor text)
		[22] = { itemID = 1203291, spellID = 979395 }, --Charged Clear-Cut Chops
		[23] = { itemID = 1203293, spellID = 979397 }, --Charged Clear-Cut Wontons
		[24] = { itemID = 1203295, spellID = 979399 }, --Charged Clear-Cut Steak
		[25] = { itemID = 1203359, spellID = 979464 }, --Charged Bold Simmered Stew
		[26] = { itemID = 1203361, spellID = 979466 }, --Charged Bold Duck Stew
		[27] = { itemID = 1203339, spellID = 979444 }, --Charged Subtle Chops
		[28] = { itemID = 1203341, spellID = 979446 }, --Charged Subtle Steak
		[29] = { itemID = 1203343, spellID = 979448 }, --Charged Subtle Wontons
		[30] = { itemID = 1203345, spellID = 979450 }, --Charged Subtle Soup
	};
	{
		Name = AL["High Risk"].." - Page 2",
		[01] = { name = AL["Rare"], icon = "INV_Box_01"},
		[02] = { itemID = 1203346, spellID = 979451 }, --Infused Bold Stew
		[03] = { itemID = 1203296, spellID = 979400 }, --Infused Piercing Chops
		[04] = { itemID = 1203298, spellID = 979402 }, --Infused Piercing Steak
		[05] = { itemID = 1203300, spellID = 979404 }, --Infused Seared Wontons
		[06] = { itemID = 1203302, spellID = 979406 }, --Infused Seared Chops
		[07] = { itemID = 1203316, spellID = 979421 }, --Infused Duck Stew
		[08] = { itemID = 1203318, spellID = 979423 }, --Infused Chunky Stew
		[9] = { itemID = 1203320, spellID = 979425 }, --Infused Simmered Stew
		[10] = { itemID = 1203322, spellID = 979427 }, --Infused Wizard Wontons
		[11] = { itemID = 1203324, spellID = 979429 }, --Infused Wizard Soup
		[12] = { itemID = 1203326, spellID = 979431 }, --Infused Heightened Wontons
		[13] = { itemID = 1203336, spellID = 979441 }, --Infused Vibrant Chops
		[14] = { itemID = 1203304, spellID = 979408 }, --Infused Savory Stew
		[15] = { itemID = 1203306, spellID = 979410 }, --Infused Savory Chops
		[16] = { name = AL["Epic"], icon = "INV_Box_01"},
		[17] = { itemID = 1203347, spellID = 979452 }, --Charged Bold Stew
		[18] = { itemID = 1203297, spellID = 979401 }, --Charged Piercing Chops
		[19] = { itemID = 1203299, spellID = 979403 }, --Charged Piercing Steak
		[20] = { itemID = 1203301, spellID = 979405 }, --Charged Seared Wontons
		[21] = { itemID = 1203303, spellID = 979407 }, --Charged Seared Chops
		[22] = { itemID = 1203317, spellID = 979422 }, --Charged Duck Stew
		[23] = { itemID = 1203319, spellID = 979424 }, --Charged Chunky Stew
		[24] = { itemID = 1203321, spellID = 979426 }, --Charged Simmered Stew
		[25] = { itemID = 1203323, spellID = 979428 }, --Charged Wizard Wontons
		[26] = { itemID = 1203325, spellID = 979430 }, --Charged Wizard Soup
		[27] = { itemID = 1203327, spellID = 979432 }, --Charged Heightened Wontons
		[28] = { itemID = 1203337, spellID = 979442 }, --Charged Vibrant Chops
		[29] = { itemID = 1203305, spellID = 979409 }, --Charged Savory Stew
		[30] = { itemID = 1203307, spellID = 979412 }, --Charged Savory Chops
	};
	{
		Name = AL["High Risk"].." - Page 3",
		[01] = { name = AL["Rare"], icon = "INV_Box_01"},
		[02] = { itemID = 1203308, spellID = 979413 }, --Infused Savory Steak
		[03] = { itemID = 1203310, spellID = 979415 }, --Infused Savory Wontons
		[04] = { itemID = 1203312, spellID = 979417 }, --Infused AtlasLoot.Colors.RED-Hot Stew
		[05] = { itemID = 1203314, spellID = 979419 }, --Infused Blazing Stew
		[06] = { itemID = 1203328, spellID = 979433 }, --Infused Hearty Living Soup
		[07] = { itemID = 1203330, spellID = 979435 }, --Infused Hearty Air Fried Chops
		[08] = { itemID = 1203332, spellID = 979437 }, --Infused Hearty Charred Steak
		[9] = { itemID = 1203334, spellID = 979439 }, --Infused Hearty Steamed Wontons
		[10] = { itemID = 1203348, spellID = 979453 }, --Infused Mana Charged Roast
		[11] = { itemID = 1203350, spellID = 979455 }, --Infused Sizzling Roast
		[12] = { itemID = 1203352, spellID = 979457 }, --Infused Wild Roast
		[13] = { itemID = 1203354, spellID = 979459 }, --Infused Winter Roast
		[14] = { itemID = 1203356, spellID = 979461 }, --Infused Blackened Roast
		[16] = { name = AL["Epic"], icon = "INV_Box_01"},
		[17] = { itemID = 1203309, spellID = 979414 }, --Charged Savory Steak
		[18] = { itemID = 1203311, spellID = 979416 }, --Charged Savory Wontons
		[19] = { itemID = 1203313, spellID = 979418 }, --Charged AtlasLoot.Colors.RED-Hot Stew
		[20] = { itemID = 1203315, spellID = 979420 }, --Charged Blazing Stew
		[21] = { itemID = 1203329, spellID = 979434 }, --Charged Hearty Living Soup
		[22] = { itemID = 1203331, spellID = 979436 }, --Charged Hearty Air Fried Chops
		[23] = { itemID = 1203333, spellID = 979438 }, --Charged Hearty Charred Steak
		[24] = { itemID = 1203335, spellID = 979440 }, --Charged Hearty Steamed Wontons
		[25] = { itemID = 1203349, spellID = 979454 }, --Charged Mana Charged Roast
		[26] = { itemID = 1203351, spellID = 979456 }, --Charged Sizzling Roast
		[27] = { itemID = 1203353, spellID = 979458 }, --Charged Wild Roast
		[28] = { itemID = 1203355, spellID = 979460 }, --Charged Winter Roast
		[29] = { itemID = 1203357, spellID = 979462 }, --Charged Blackened Roast
	};
};

------------------
--- Enchanting ---
------------------

AtlasLoot_Data["EnchantingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC";
	Name = ENCHANTING;
	Type = "BCCrafting";
	{
		Name = AL["Enchant Boots"];
		[01] = { icon = "Spell_Holy_GreaterHeal", spellID = 27954 }, --Enchant Boots - Surefooted
		[02] = { icon = "Spell_Holy_GreaterHeal", spellID = 34008 }, --Enchant Boots - Boar's Speed
		[03] = { icon = "Spell_Holy_GreaterHeal", spellID = 34007 }, --Enchant Boots - Cat's Swiftness
		[04] = { icon = "Spell_Holy_GreaterHeal", spellID = 27951 }, --Enchant Boots - Dexterity
		[05] = { icon = "Spell_Holy_GreaterHeal", spellID = 27950 }, --Enchant Boots - Fortitude
		[06] = { icon = "Spell_Holy_GreaterHeal", spellID = 27948 }, --Enchant Boots - Vitality
	};
	{
		Name = AL["Enchant Bracer"];
		[01] = { icon = "Spell_Holy_GreaterHeal", spellID = 27917 }, --Enchant Bracers - Spellpower
		[02] = { icon = "Spell_Holy_GreaterHeal", spellID = 27914 }, --Enchant Bracers - Fortitude
		[03] = { icon = "Spell_Holy_GreaterHeal", spellID = 27913 }, --Enchant Bracers - Restore Mana Prime
		[04] = { icon = "Spell_Holy_GreaterHeal", spellID = 27911 }, --Enchant Bracers - Superior Healing
		[05] = { icon = "Spell_Holy_GreaterHeal", spellID = 27906 }, --Enchant Bracers - Major Defense
		[06] = { icon = "Spell_Holy_GreaterHeal", spellID = 27905 }, --Enchant Bracers - Stats
		[07] = { icon = "Spell_Holy_GreaterHeal", spellID = 27899 }, --Enchant Bracers - Brawn
		[08] = { icon = "Spell_Holy_GreaterHeal", spellID = 34001 }, --Enchant Bracers - Major Intellect
		[9] = { icon = "Spell_Holy_GreaterHeal", spellID = 34002 }, --Enchant Bracers - Assault
	};
	{
		Name = AL["Enchant Chest"];
		[01] = { icon = "Spell_Holy_GreaterHeal", spellID = 46594 }, --Enchant Chest - Defense
		[02] = { icon = "Spell_Holy_GreaterHeal", spellID = 27960 }, --Enchant Chest - Exceptional Stats
		[03] = { icon = "Spell_Holy_GreaterHeal", spellID = 33992 }, --Enchant Chest - Major Resilience
		[04] = { icon = "Spell_Holy_GreaterHeal", spellID = 33990 }, --Enchant Chest - Major Spirit
		[05] = { icon = "Spell_Holy_GreaterHeal", spellID = 27957 }, --Enchant Chest - Exceptional Health
		[06] = { icon = "Spell_Holy_GreaterHeal", spellID = 33991 }; --Enchant Chest - Restore Mana Prime
	};
	{
		Name = AL["Enchant Cloak"];
		[01] = { icon = "Spell_Holy_GreaterHeal", spellID = 47051 }, --Enchant Cloak - Steelweave
		[02] = { icon = "Spell_Holy_GreaterHeal", spellID = 351501 }, --Enchant Cloak - Crushing Wave
		[03] = { icon = "Spell_Holy_GreaterHeal", spellID = 351530 }, --Enchant Cloak - Phoenix Fire
		[04] = { icon = "Spell_Holy_GreaterHeal", spellID = 34005 }, --Enchant Cloak - Greater Arcane Resistance
		[05] = { icon = "Spell_Holy_GreaterHeal", spellID = 34006 }, --Enchant Cloak - Greater Shadow Resistance
		[06] = { icon = "Spell_Holy_GreaterHeal", spellID = 27962 }, --Enchant Cloak - Major Resistance
		[07] = { icon = "Spell_Holy_GreaterHeal", spellID = 34003 }, --Enchant Cloak - Spell Penetration
		[08] = { icon = "Spell_Holy_GreaterHeal", spellID = 34004 }, --Enchant Cloak - Greater Agility
		[9] = { icon = "Spell_Holy_GreaterHeal", spellID = 27961 }, --Enchant Cloak - Major Armor
		[10] = { icon = "Spell_Holy_GreaterHeal", spellID = 25082 }, --Enchant Cloak - Greater Nature Resistance
		[11] = { icon = "Spell_Holy_GreaterHeal", spellID = 25083 }, --Enchant Cloak - Stealth
		[12] = { icon = "Spell_Holy_GreaterHeal", spellID = 25084 }, --Enchant Cloak - Subtlety
		[13] = { icon = "Spell_Holy_GreaterHeal", spellID = 25086 }, --Enchant Cloak - Dodge
	};
	{
		Name = AL["Enchant Gloves"];
		[01] = { icon = "Spell_Holy_GreaterHeal", spellID = 33997 }, --Enchant Gloves - Major Spellpower
		[02] = { icon = "Spell_Holy_GreaterHeal", spellID = 33994 }, --Enchant Gloves - Spell Strike
		[03] = { icon = "Spell_Holy_GreaterHeal", spellID = 33999 }, --Enchant Gloves - Major Healing
		[04] = { icon = "Spell_Holy_GreaterHeal", spellID = 33995 }, --Enchant Gloves - Major Strength
		[05] = { icon = "Spell_Holy_GreaterHeal", spellID = 33996 }, --Enchant Gloves - Assault
		[06] = { icon = "Spell_Holy_GreaterHeal", spellID = 33993 }, --Enchant Gloves - Blasting
		[07] = { icon = "Spell_Holy_GreaterHeal", spellID = 225080 }, --Enchant Gloves - Superior Agility
		[08] = { icon = "Spell_Holy_GreaterHeal", spellID = 25072 }, --Enchant Gloves - Threat
	};
	{
		Name = AL["Enchant Ring"];
		[01] = { icon = "Spell_Holy_GreaterHeal", spellID = 27927 }, --Enchant Ring - Stats
		[02] = { icon = "Spell_Holy_GreaterHeal", spellID = 27926 }, --Enchant Ring - Healing Power
		[03] = { icon = "Spell_Holy_GreaterHeal", spellID = 27924 }, --Enchant Ring - Spellpower
		[04] = { icon = "Spell_Holy_GreaterHeal", spellID = 27920 }, --Enchant Ring - Striking
	};
	{
		Name = AL["Enchant Shield"];
		[01] = { icon = "Spell_Holy_GreaterHeal", spellID = 27947 }, --Enchant Shield - Resistance
		[02] = { icon = "Spell_Holy_GreaterHeal", spellID = 27946 }, --Enchant Shield - Shield Block
		[03] = { icon = "Spell_Holy_GreaterHeal", spellID = 44383 }, --Enchant Shield - Resilience
		[04] = { icon = "Spell_Holy_GreaterHeal", spellID = 27945 }, --Enchant Shield - Intellect
		[05] = { icon = "Spell_Holy_GreaterHeal", spellID = 34009 }, --Enchant Shield - Major Stamina
		[06] = { icon = "Spell_Holy_GreaterHeal", spellID = 27944 }, --Enchant Shield - Tough Shield
	};
	{
		Name = AL["Enchant 2H Weapon"];
		[01] = { icon = "Spell_Holy_GreaterHeal", spellID = 27977 }, --Enchant 2H Weapon - Major Agility
		[02] = { icon = "Spell_Holy_GreaterHeal", spellID = 27971 }, --Enchant 2H Weapon - Savagery
	};
	{
		Name = AL["Enchant Weapon"];
		[01] = { icon = "Spell_Holy_GreaterHeal", spellID = 351535 }, --Enchant Weapon - Witchdoctor
		[02] = { icon = "Spell_Holy_GreaterHeal", spellID = 42974 }, --Enchant Weapon - Executioner
		[03] = { icon = "Spell_Holy_GreaterHeal", spellID = 820034 }, --Enchant Weapon - Undaunted Might
		[04] = { icon = "Spell_Holy_GreaterHeal", spellID = 359012 }, --Enchant Weapon - Faith
		[05] = { icon = "Spell_Holy_GreaterHeal", spellID = 27984 }, --Enchant Weapon - Mongoose
		[06] = { icon = "Spell_Holy_GreaterHeal", spellID = 27982 }, --Enchant Weapon - Soulfrost
		[07] = { icon = "Spell_Holy_GreaterHeal", spellID = 27981 }, --Enchant Weapon - Sunfire
		[08] = { icon = "Spell_Holy_GreaterHeal", spellID = 28004 }, --Enchant Weapon - Battlemaster
		[9] = { icon = "Spell_Holy_GreaterHeal", spellID = 28003 }, --Enchant Weapon - Spellsurge
		[10] = { icon = "Spell_Holy_GreaterHeal", spellID = 46578 }, --Enchant Weapon - Deathfrost
		[11] = { icon = "Spell_Holy_GreaterHeal", spellID = 34010 }, --Enchant Weapon - Major Healing
		[12] = { icon = "Spell_Holy_GreaterHeal", spellID = 27975 }, --Enchant Weapon - Major Spellpower
		[13] = { icon = "Spell_Holy_GreaterHeal", spellID = 27972 }, --Enchant Weapon - Potency
		[14] = { icon = "Spell_Holy_GreaterHeal", spellID = 42620 }, --Enchant Weapon - Greater Agility
		[15] = { icon = "Spell_Holy_GreaterHeal", spellID = 27968 }, --Enchant Weapon - Major Intellect
		[16] = { icon = "Spell_Holy_GreaterHeal", spellID = 27967 }, --Enchant Weapon - Major Striking
	};
	{
		Name = AL["Miscellaneous"];
		[01] = { itemID = 22463, spellID = 32667 }, --Runed Eternium Rod
		[02] = { itemID = 22449, spellID = 45765 }, --Void Shatter
		[03] = { itemID = 22448, spellID = 42615 }, --Small Prismatic Shard
		[04] = { itemID = 22449, spellID = 28022 }, --Large Prismatic Shard
		[05] = { itemID = 22460, spellID = 28027 }, --Prismatic Sphere
		[06] = { itemID = 22448, spellID = 42613 }, --Nexus Transformation
		[07] = { itemID = 11811, spellID = 15596 }, --Smoking Heart of the Mountain
		[08] = { itemID = 22462, spellID = 32665 }, --Runed Adamantite Rod
		[9] = { itemID = 22522, spellID = 28019 }, --Superior Wizard Oil
		[10] = { itemID = 22521, spellID = 28016 }, --Superior Mana Oil
	};
	{
		Name = AL["High Risk"];
		[01] = { name = AL["Rare"], icon = "INV_Box_01"},
		[02] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968677 }, --Enchant Weapon - Void Assault
		[03] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968680 }, --Enchant Weapon - Dread Assault
		[04] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968683 }, --Enchant Weapon - Twisted Evoker
		[05] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968686 }, --Enchant Weapon - Twisted Assault
		[06] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968689 }, --Enchant Weapon - Twisted Channeler
		[07] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968692 }, --Enchant Weapon - Dread Omen Strikes
		[08] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968695 }, --Enchant Weapon - Void Flows
		[9] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968698 }, --Enchant Weapon - Void Blasting
		[10] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968701 }, --Enchant Weapon - Dread Precision
		[11] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968770 }, --Enchant Weapon - Twisted Crusader
		[16] = { name = AL["Epic"], icon = "INV_Box_01"},
		[17] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968678 }, --Enchant Weapon - Overpowering Void Assault
		[18] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968681 }, --Enchant Weapon - Overpowering Dread Assault
		[19] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968684 }, --Enchant Weapon - Overpowering Twisted Evoker
		[20] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968687 }, --Enchant Weapon - Overpowering Twisted Assault
		[21] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968690 }, --Enchant Weapon - Overpowering Twisted Channeler
		[22] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968693 }, --Enchant Weapon - Overpowering Dread Omen Strikes
		[23] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968696 }, --Enchant Weapon - Overpowering Void Flows
		[24] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968699 }, --Enchant Weapon - Overpowering Void Blasting
		[25] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968702 }, --Enchant Weapon - Overpowering Dread Precision
		[26] = { icon = "Spell_Holy_GreaterHeal", spellID = 1968771 }, --Enchant Weapon - Overpowering Twisted Crusader
	};
};


-------------------
--- Engineering ---
-------------------

AtlasLoot_Data["EngineeringTBC"] = {
	Module = "AtlasLoot_Crafting_TBC";
	Name = ENGINEERING;
	Type = "BCCrafting";
	{
		Name = AL["Ammunition"];
		[01] = { itemID = 20475, spellID = 43676 }, --Adamantite Arrow Maker
		[02] = { itemID = 34504, spellID = 30347 }, --Adamantite Shell Machine
		[03] = { itemID = 23772, spellID = 30346 }, --Fel Iron Shells
	};
	{
		Name = BabbleInventory["Armor"];
		[01] = { itemID = 34847, spellID = 46111 }, --Annihilator Holo-Gogs
		[02] = { itemID = 23838, spellID = 30565 }, --Foreman's Enchanted Helmet
		[03] = { itemID = 23839, spellID = 30566 }, --Foreman's Reinforced Helmet
		[04] = { itemID = 23829, spellID = 30575 }, --Gnomish Battle Goggles
		[05] = { itemID = 23828, spellID = 30574 }, --Gnomish Power Goggles
		[06] = { itemID = 34357, spellID = 46115 }, --Hard Khorium Goggles
		[07] = { itemID = 35182, spellID = 46109 }, --Hyper-Magnified Moon Specs
		[08] = { itemID = 35185, spellID = 46107 }, --Justicebringer 3000 Specs
		[9] = { itemID = 34355, spellID = 46112 }, --Lightning Etched Specs
		[10] = { itemID = 34354, spellID = 46114 }, --Mayhem Projection Goggles
		[11] = { itemID = 35181, spellID = 46108 }, --Powerheal 9000 Lens
		[12] = { itemID = 35184, spellID = 46110 }, --Primal-Attuned Goggles
		[13] = { itemID = 34353, spellID = 46116 }, --Quad Deathblow X44 Goggles
		[14] = { itemID = 34356, spellID = 46113 }, --Surestrike Goggles v3.0
		[15] = { itemID = 35183, spellID = 46106 }, --Wonderheal XT68 Shades
		[16] = { itemID = 32478, spellID = 41317 }, --Deathblow X11 Goggles
		[17] = { itemID = 32474, spellID = 41314 }, --Surestrike Goggles v2.0
		[18] = { itemID = 32494, spellID = 41320 }, --Destruction Holo-gogs
		[19] = { itemID = 32461, spellID = 40274 }, --Furious Gizmatic Goggles
		[20] = { itemID = 32476, spellID = 41315 }, --Gadgetstorm Goggles
		[21] = { itemID = 32472, spellID = 41311 }, --Justicebringer 2000 Specs
		[22] = { itemID = 32475, spellID = 41316 }, --Living Replicator Specs
		[23] = { itemID = 32480, spellID = 41319 }, --Magnified Moon Specs
		[24] = { itemID = 32473, spellID = 41312 }, --Tankatronic Goggles
	};
	{
		Name = BabbleInventory["Armor"];
		[01] = { itemID = 23763, spellID = 30325 }, --Hyper-Vision Goggles
		[02] = { itemID = 23824, spellID = 30556 }, --Rocket Boots Xtreme
		[03] = { itemID = 35581, spellID = 46697 }, --Rocket Boots Xtreme Lite
		[04] = { itemID = 23836, spellID = 30563 }, --Goblin Rocket Launcher
		[05] = { itemID = 23825, spellID = 30570 }, --Nigh-Invulnerability Belt
		[06] = { itemID = 23762, spellID = 30318 }, --Ultra-Spectropic Detection Goggles
		[07] = { itemID = 23758, spellID = 30316 }, --Cogspinner Goggles
		[08] = { itemID = 23835, spellID = 30569 }, --Gnomish Poultryizer
		[9] = { itemID = 23761, spellID = 30317 }, --Power Amplification Goggles
	};
	{
		Name = AL["Explosives"];
		[01] = { itemID = 23819, spellID = 30547 }, --Elemental Seaforium Charge
		[02] = { itemID = 23827, spellID = 30560 }, --Super Sapper Charge
		[03] = { itemID = 23737, spellID = 30311 }, --Adamantite Grenade
		[04] = { itemID = 23826, spellID = 30558 }, --The Bigger One
		[05] = { itemID = 23736, spellID = 30310 }, --Fel Iron Bomb
	};
	{
		Name = AL["Item Enhancements"];
		[01] = { itemID = 23766, spellID = 30334 }, --Stabilized Eternium Scope
		[02] = { itemID = 23765, spellID = 30332 }, --Khorium Scope
		[03] = { itemID = 23764, spellID = 30329 }, --Adamantite Scope
		[04] = { itemID = 18283, spellID = 22793 }, --Biznicks 247x128 Accurascope
	};
	{
		Name = AL["Miscellaneous"];
		[01] = { itemID = 34061, spellID = 44157 }, --Turbo-Charged Flying Machine
		[02] = { itemID = 34060, spellID = 44155 }, --Flying Machine
		[03] = { itemID = 23774, spellID = 30348 }, --Fel Iron Toolbox
		[04] = { itemID = 23767, spellID = 30337 }, --Crashin' Thrashin' Robot
		[05] = { itemID = 34113, spellID = 44391 }, --Field Repair Bot 110G
		[06] = { itemID = 33093, spellID = 30552 }, --Mana Potion Injector
		[07] = { itemID = 23771, spellID = 30344 }, --AtlasLoot.Colors.GREEN Smoke Flare
		[08] = { itemID = 25886, spellID = 32814 }, --Purple Smoke Flare
		[9] = { itemID = 23768, spellID = 30341 }, --AtlasLoot.Colors.WHITE Smoke Flare
		[10] = { itemID = 33092, spellID = 30551 }, --Healing Potion Injector
		[11] = { itemID = 23841, spellID = 30568 }, --Gnomish Flame Turret
		[12] = { itemID = 23821, spellID = 30548 }, --Zapthrottle Mote Extractor
	};
	{
		Name = AL["Reagents"];
		[01] = { itemID = 23787, spellID = 30309 }, --Felsteel Stabilizer
		[02] = { itemID = 23785, spellID = 30307 }, --Hardened Adamantite Tube
		[03] = { itemID = 23786, spellID = 30308 }, --Khorium Power Core
		[04] = { itemID = 32423, spellID = 39971 }, --Icy Blasting Primers
		[05] = { itemID = 23784, spellID = 30306 }, --Adamantite Frame
		[06] = { itemID = 23783, spellID = 30305 }, --Handful of Fel Iron Bolts
		[07] = { itemID = 23781, spellID = 30303 }, --Elemental Blasting Powder
		[08] = { itemID = 23782, spellID = 30304 }, --Fel Iron Casing
	};
	{
		Name = BabbleInventory["Weapon"];
		[01] = { itemID = 32756, spellID = 41307 }, --Gyro-balanced Khorium Destroyer
		[02] = { itemID = 23748, spellID = 30315 }, --Ornate Khorium Rifle
		[03] = { itemID = 23747, spellID = 30314 }, --Felsteel Boomstick
		[04] = { itemID = 23746, spellID = 30313 }, --Adamantite Rifle
		[05] = { itemID = 23742, spellID = 30312 }, --Fel Iron Musket
	};
	{
		Name = GNOMISH;
		[01] = { itemID = 23825, spellID = 30570 }, --Nigh-Invulnerability Belt
		[02] = { itemID = 23835, spellID = 30569 }, --Gnomish Poultryizer
		[03] = { itemID = 30544, spellID = 36955 }, --Ultrasafe Transporter - Toshley's Station
	};
	{
		Name = GOBLIN;
		[01] = { itemID = 23836, spellID = 30563 }, --Goblin Rocket Launcher
		[02] = { itemID = 30542, spellID = 36954 }, --Dimensional Ripper - Area 52
	};
	{
		Name = AL["High Risk"];
		[01] = { name = AL["Rare"], icon = "INV_Box_01"},
		[02] = { itemID = 1204101, spellID = 979550 }, --Gnomish Magnification Polish
		[03] = { itemID = 1204103, spellID = 979552 }, --Gnomish Sharpening Polish
		[04] = { itemID = 1204105, spellID = 979554 }, --Gnomish Prismatic Polish
		[05] = { itemID = 1204107, spellID = 979556 }, --Felfire Scope
		[06] = { itemID = 1204109, spellID = 979558 }, --Sighted Scope
		[07] = { itemID = 1204111, spellID = 979560 }, --Quickshot Scope
		[16] = { name = AL["Epic"], icon = "INV_Box_01"},
		[17] = { itemID = 1204102, spellID = 979551 }, --Fine Gnomish Magnification Polish
		[18] = { itemID = 1204104, spellID = 979553 }, --Fine Gnomish Sharpening Polish
		[19] = { itemID = 1204106, spellID = 979555 }, --Fine Gnomish Prismatic Polish
		[20] = { itemID = 1204108, spellID = 979557 }, --Focused Felfire Scope
		[21] = { itemID = 1204110, spellID = 979559 }, --Focused Sighted Scope
		[22] = { itemID = 1204112, spellID = 979561 }, --Focused Quickshot Scope
	};
};

-----------------
--- First Aid ---
-----------------

AtlasLoot_Data["FirstAid"] = {
	Module = "AtlasLoot_Crafting_TBC";
	Name = FIRSTAID;
	Type = "BCCrafting";
	{
		Name = FIRSTAID;
		[01] = { itemID = 34722, spellID = 45546 }, --Heavy Frostweave Bandage
		[02] = { itemID = 34721, spellID = 45545 }, --Frostweave Bandage
		[03] = { itemID = 21991, spellID = 27033 }, --Heavy Netherweave Bandage
		[04] = { itemID = 21990, spellID = 27032 }, --Netherweave Bandage
		[05] = { itemID = 19440, spellID = 23787 }, --Powerful Anti-Venom
		[06] = { itemID = 14530, spellID = 18630 }, --Heavy Runecloth Bandage
		[07] = { itemID = 14529, spellID = 18629 }, --Runecloth Bandage
		[08] = { itemID = 8545, spellID = 10841 }, --Heavy Mageweave Bandage
		[9] = { itemID = 8544, spellID = 10840 }, --Mageweave Bandage
		[10] = { itemID = 6451, spellID = 7929 }, --Heavy Silk Bandage
		[11] = { itemID = 6450, spellID = 7928 }, --Silk Bandage
		[12] = { itemID = 6453, spellID = 7935 }, --Strong Anti-Venom
		[13] = { itemID = 3531, spellID = 3278 }, --Heavy Wool Bandage
		[14] = { itemID = 3530, spellID = 3277 }, --Wool Bandage
		[15] = { itemID = 6452, spellID = 7934 }, --Anti-Venom
		[16] = { itemID = 2581, spellID = 3276 }, --Heavy Linen Bandage
		[17] = { itemID = 1251, spellID = 3275 }, --Linen Bandage
	};
};

---------------------
--- Jewelcrafting ---
---------------------

AtlasLoot_Data["JewelcraftingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC";
	Name = JEWELCRAFTING;
	Type = "BCCrafting";
	{
		Name = AL["AtlasLoot.Colors.RED Gems"];
		[01] = { itemID = 32193, spellID = 39705 }, --Bold Crimson Spinel
		[02] = { itemID = 32197, spellID = 39712 }, --Bright Crimson Spinel
		[03] = { itemID = 32194, spellID = 39706 }, --Delicate Crimson Spinel
		[04] = { itemID = 32199, spellID = 39714 }, --Flashing Crimson Spinel
		[05] = { itemID = 32196, spellID = 39711 }, --Runed Crimson Spinel
		[06] = { itemID = 32198, spellID = 39713 }, --Subtle Crimson Spinel
		[07] = { itemID = 32195, spellID = 39710 }, --Teardrop Crimson Spinel
		[08] = { itemID = 33131, spellID = 42589 }, --Crimson Sun
		[9] = { itemID = 33133, spellID = 42558 }, --Don Julio's Heart
		[10] = { itemID = 33134, spellID = 42588 }, --Kailee's Rose
		[16] = { itemID = 24027, spellID = 31084 }, --Bold Living Ruby
		[17] = { itemID = 24031, spellID = 31089 }, --Bright Living Ruby
		[18] = { itemID = 24028, spellID = 31085 }, --Delicate Living Ruby
		[19] = { itemID = 24036, spellID = 31091 }, --Flashing Living Ruby
		[20] = { itemID = 24030, spellID = 31088 }, --Runed Living Ruby
		[21] = { itemID = 24032, spellID = 31090 }, --Subtle Living Ruby
		[22] = { itemID = 24029, spellID = 31087 }, --Teardrop Living Ruby
		[24] = { itemID = 23097, spellID = 28907 }, --Delicate Blood Garnet
		[25] = { itemID = 23096, spellID = 28906 }, --Runed Blood Garnet
		[26] = { itemID = 23095, spellID = 28905 }, --Bold Blood Garnet
		[27] = { itemID = 28595, spellID = 34590 }, --Bright Blood Garnet
		[28] = { itemID = 23094, spellID = 28903 }, --Teardrop Blood Garnet
	};
	{
		Name = AL["AtlasLoot.Colors.BLUE Gems"];
		[01] = { itemID = 32202, spellID = 39717 }, --Lustrous Empyrean Sapphire
		[02] = { itemID = 32200, spellID = 39715 }, --Solid Empyrean Sapphire
		[03] = { itemID = 32201, spellID = 39716 }, --Sparkling Empyrean Sapphire
		[04] = { itemID = 32203, spellID = 39718 }, --Stormy Empyrean Sapphire
		[05] = { itemID = 33135, spellID = 42590 }, --Falling Star
		[07] = { itemID = 24037, spellID = 31094 }, --Lustrous Star of Elune
		[08] = { itemID = 24033, spellID = 31092 }, --Solid Star of Elune
		[9] = { itemID = 24035, spellID = 31149 }, --Sparkling Star of Elune
		[10] = { itemID = 24039, spellID = 31095 }, --Stormy Star of Elune
		[16] = { itemID = 23121, spellID = 28957 }, --Lustrous Azure Moonstone
		[17] = { itemID = 23120, spellID = 28955 }, --Stormy Azure Moonstone
		[18] = { itemID = 23119, spellID = 28953 }, --Sparkling Azure Moonstone
		[19] = { itemID = 23118, spellID = 28950 }, --Solid Azure Moonstone
	};
	{
		Name = AL["Yellow Gems"];
		[01] = { itemID = 32204, spellID = 39719 }, --Brilliant Lionseye
		[02] = { itemID = 32207, spellID = 39722 }, --Gleaming Lionseye
		[03] = { itemID = 32210, spellID = 39725 }, --Great Lionseye
		[04] = { itemID = 32209, spellID = 39724 }, --Mystic Lionseye
		[05] = { itemID = 35761, spellID = 47056 }, --Quick Lionseye
		[06] = { itemID = 32206, spellID = 39721 }, --Rigid Lionseye
		[07] = { itemID = 32205, spellID = 39720 }, --Smooth Lionseye
		[08] = { itemID = 32208, spellID = 39723 }, --Thick Lionseye
		[9] = { itemID = 33140, spellID = 42592 }, --Blood of Amber
		[10] = { itemID = 33144, spellID = 42593 }, --Facet of Eternity
		[11] = { itemID = 33143, spellID = 42591 }, --Stone of Blades
		[16] = { itemID = 24047, spellID = 31096 }, --Brilliant Dawnstone
		[17] = { itemID = 24050, spellID = 31099 }, --Gleaming Dawnstone
		[18] = { itemID = 31861, spellID = 39452 }, --Great Dawnstone
		[19] = { itemID = 24053, spellID = 31101 }, --Mystic Dawnstone
		[20] = { itemID = 35315, spellID = 46403 }, --Quick Dawnstone
		[21] = { itemID = 24051, spellID = 31098 }, --Rigid Dawnstone
		[22] = { itemID = 24048, spellID = 31097 }, --Smooth Dawnstone
		[23] = { itemID = 24052, spellID = 31100 }, --Thick Dawnstone
		[25] = { itemID = 31860, spellID = 39451 }, --Great Golden Draenite
		[26] = { itemID = 23116, spellID = 28948 }, --Rigid Golden Draenite
		[27] = { itemID = 28290, spellID = 34069 }, --Smooth Golden Draenite
		[28] = { itemID = 23115, spellID = 28947 }, --Thick Golden Draenite
		[29] = { itemID = 23114, spellID = 28944 }, --Gleaming Golden Draenite
		[30] = { itemID = 23113, spellID = 28938 }, --Brilliant Golden Draenite
	};
	{
		Name = AL["AtlasLoot.Colors.GREEN Gems"];
		[01] = { itemID = 32225, spellID = 39741 }, --Dazzling Seaspray Emerald
		[02] = { itemID = 32223, spellID = 39739 }, --Enduring Seaspray Emerald
		[03] = { itemID = 35759, spellID = 47053 }, --Forceful Seaspray Emerald
		[04] = { itemID = 32226, spellID = 39742 }, --Jagged Seaspray Emerald
		[05] = { itemID = 32224, spellID = 39740 }, --Radiant Seaspray Emerald
		[06] = { itemID = 35758, spellID = 47054 }, --Steady Seaspray Emerald
		[08] = { itemID = 24065, spellID = 31112 }, --Dazzling Talasite
		[9] = { itemID = 24062, spellID = 31110 }, --Enduring Talasite
		[10] = { itemID = 35318, spellID = 46405 }, --Forceful Talasite
		[11] = { itemID = 24067, spellID = 31113 }, --Jagged Talasite
		[12] = { itemID = 24066, spellID = 31111 }, --Radiant Talasite
		[13] = { itemID = 33782, spellID = 43493 }, --Steady Talasite
		[16] = { itemID = 23106, spellID = 28924 }, --Dazzling Deep Peridot
		[17] = { itemID = 23105, spellID = 28918 }, --Enduring Deep Peridot
		[18] = { itemID = 23104, spellID = 28917 }, --Jagged Deep Peridot
		[19] = { itemID = 23103, spellID = 28916 }, --Radiant Deep Peridot
	};
	{
		Name = AL["AtlasLoot.Colors.ORANGE Gems"];
		[01] = { itemID = 32220, spellID = 39736 }, --Glinting Pyrestone
		[02] = { itemID = 32217, spellID = 39733 }, --Inscribed Pyrestone
		[03] = { itemID = 32219, spellID = 39735 }, --Luminous Pyrestone
		[04] = { itemID = 32218, spellID = 39734 }, --Potent Pyrestone
		[05] = { itemID = 35760, spellID = 47055 }, --Reckless Pyrestone
		[06] = { itemID = 32221, spellID = 39737 }, --Veiled Pyrestone
		[07] = { itemID = 32222, spellID = 39738 }, --Wicked Pyrestone
		[9] = { itemID = 24061, spellID = 31109 }, --Glinting Noble Topaz
		[10] = { itemID = 24058, spellID = 31106 }, --Inscribed Noble Topaz
		[11] = { itemID = 24060, spellID = 31108 }, --Luminous Noble Topaz
		[12] = { itemID = 24059, spellID = 31107 }, --Potent Noble Topaz
		[13] = { itemID = 35316, spellID = 46404 }, --Reckless Noble Topaz
		[14] = { itemID = 31867, spellID = 39470 }, --Veiled Noble Topaz
		[15] = { itemID = 31868, spellID = 39471 }, --Wicked Noble Topaz
		[16] = { itemID = 31866, spellID = 39466 }, --Veiled Flame Spessarite
		[17] = { itemID = 31869, spellID = 39467 }, --Wicked Flame Spessarite
		[18] = { itemID = 23100, spellID = 28914 }, --Glinting Flame Spessarite
		[19] = { itemID = 23099, spellID = 28912 }, --Luminous Flame Spessarite
		[20] = { itemID = 23098, spellID = 28910 }, --Inscribed Flame Spessarite
		[21] = { itemID = 23101, spellID = 28915 }, --Potent Flame Spessarite
	};
	{
		Name = AL["Purple Gems"];
		[01] = { itemID = 32213, spellID = 39729 }, --Balanced Shadowsong Amethyst
		[02] = { itemID = 32215, spellID = 39731 }, --Glowing Shadowsong Amethyst
		[03] = { itemID = 32214, spellID = 39730 }, --Infused Shadowsong Amethyst
		[04] = { itemID = 37503, spellID = 48789 }, --Purified Shadowsong Amethyst
		[05] = { itemID = 32216, spellID = 39732 }, --Royal Shadowsong Amethyst
		[06] = { itemID = 32212, spellID = 39728 }, --Shifting Shadowsong Amethyst
		[07] = { itemID = 32211, spellID = 39727 }, --Sovereign Shadowsong Amethyst
		[9] = { itemID = 31863, spellID = 39463 }, --Balanced Nightseye
		[10] = { itemID = 24056, spellID = 31104 }, --Glowing Nightseye
		[11] = { itemID = 31865, spellID = 39462 }, --Infused Nightseye
		[12] = { itemID = 35707, spellID = 46803 }, --Regal Nightseye
		[13] = { itemID = 24057, spellID = 31105 }, --Royal Nightseye
		[14] = { itemID = 24055, spellID = 31103 }, --Shifting Nightseye
		[15] = { itemID = 24054, spellID = 31102 }, --Sovereign Nightseye
		[16] = { itemID = 32836, spellID = 41429 }, --Purified Shadow Pearl
		[18] = { itemID = 31862, spellID = 39455 }, --Balanced Shadow Draenite
		[19] = { itemID = 31864, spellID = 39458 }, --Infused Shadow Draenite
		[20] = { itemID = 23111, spellID = 28936 }, --Sovereign Shadow Draenite
		[21] = { itemID = 23110, spellID = 28933 }, --Shifting Shadow Draenite
		[22] = { itemID = 23109, spellID = 28927 }, --Royal Shadow Draenite
		[23] = { itemID = 23108, spellID = 28925 }, --Glowing Shadow Draenite
	};
	{
		Name = AL["Meta Gems"];
		[01] = { itemID = 35503, spellID = 46601 }, --Ember Skyfire Diamond
		[02] = { itemID = 34220, spellID = 44794 }, --Chaotic Skyfire Diamond
		[03] = { itemID = 25890, spellID = 32871 }, --Destructive Skyfire Diamond
		[04] = { itemID = 25895, spellID = 32874 }, --Enigmatic Skyfire Diamond
		[05] = { itemID = 25893, spellID = 32872 }, --Mystical Skyfire Diamond
		[06] = { itemID = 25894, spellID = 32873 }, --Swift Skyfire Diamond
		[07] = { itemID = 32410, spellID = 39963 }, --Thundering Skyfire Diamond
		[16] = { itemID = 35501, spellID = 46597 }, --Eternal Earthstorm Diamond
		[17] = { itemID = 25897, spellID = 32867 }, --Bracing Earthstorm Diamond
		[18] = { itemID = 25899, spellID = 32869 }, --Brutal Earthstorm Diamond
		[19] = { itemID = 25901, spellID = 32870 }, --Insightful Earthstorm Diamond
		[20] = { itemID = 25896, spellID = 32866 }, --Powerful Earthstorm Diamond
		[21] = { itemID = 32409, spellID = 39961 }, --Relentless Earthstorm Diamond
		[22] = { itemID = 25898, spellID = 32868 }, --Tenacious Earthstorm Diamond
	};
	{
		Name = AL["Prismatic Gems"];
		[01] = { itemID = 22459, spellID = 28028 }, --Void Sphere
		[02] = { itemID = 22460, spellID = 28027 }, --Prismatic Sphere
		[03] = { itemID = 42701, spellID = 62941 }, --Prismatic Black Diamond
	};
	{
		Name = AL["Trinkets"];
		[01] = { itemID = 35700, spellID = 46777 }, --Figurine - Crimson Serpent
		[02] = { itemID = 35693, spellID = 46775 }, --Figurine - Empyrean Tortoise
		[03] = { itemID = 35694, spellID = 46776 }, --Figurine - Khorium Boar
		[04] = { itemID = 35703, spellID = 46779 }, --Figurine - Seaspray Albatross
		[05] = { itemID = 35702, spellID = 46778 }, --Figurine - Shadowsong Panther
		[06] = { itemID = 24125, spellID = 31080 }, --Figurine - Dawnstone Crab
		[07] = { itemID = 24124, spellID = 31079 }, --Figurine - Felsteel Boar
		[08] = { itemID = 24126, spellID = 31081 }, --Figurine - Living Ruby Serpent
		[9] = { itemID = 24128, spellID = 31083 }, --Figurine - Nightseye Panther
		[10] = { itemID = 24127, spellID = 31082 }, --Figurine - Talasite Owl
		[16] = { itemID = 21784, spellID = 26912 }, --Figurine - Black Diamond Crab
		[17] = { itemID = 21789, spellID = 26914 }, --Figurine - Dark Iron Scorpid
		[18] = { itemID = 21777, spellID = 26909 }, --Figurine - Emerald Owl
		[19] = { itemID = 21769, spellID = 26900 }, --Figurine - Ruby Serpent
		[20] = { itemID = 21763, spellID = 26882 }, --Figurine - Truesilver Boar
		[21] = { itemID = 21760, spellID = 26881 }, --Figurine - Truesilver Crab
		[22] = { itemID = 21756, spellID = 26873 }, --Figurine - Golden Hare
		[23] = { itemID = 21748, spellID = 26872 }, --Figurine - Jade Owl
		[24] = { itemID = 21758, spellID = 26875 }, --Figurine - Black Pearl Panther
	};
	{
		Name = AL["Rings"]..AtlasLoot.Colors.WHITE.." - Page 1";
		[01] = { itemID = 24086, spellID = 31057 }, --Arcane Khorium Band
		[02] = { itemID = 24089, spellID = 31061 }, --Blazing Eternium Band
		[03] = { itemID = 24085, spellID = 31056 }, --Khorium Band of Leaves
		[04] = { itemID = 30825, spellID = 37855 }, --Ring of Arcane Shielding
		[05] = { itemID = 24088, spellID = 31060 }, --Delicate Eternium Ring
		[06] = { itemID = 24080, spellID = 31054 }, --Khorium Band of Frost
		[07] = { itemID = 24082, spellID = 31055 }, --Khorium Inferno Band
		[08] = { itemID = 24079, spellID = 31053 }, --Khorium Band of Shadows
		[9] = { itemID = 24087, spellID = 31058 }, --Heavy Felsteel Ring
		[10] = { itemID = 24078, spellID = 31052 }, --Heavy Adamantite Ring
		[11] = { itemID = 32774, spellID = 41415 }, --The Black Pearl
		[16] = { itemID = 32772, spellID = 41414 }, --Brilliant Pearl Band
		[17] = { itemID = 24076, spellID = 31050 }, --Azure Moonstone Ring
		[18] = { itemID = 21779, spellID = 26916 }, --Band of Natural Fire
		[19] = { itemID = 24074, spellID = 31048 }, --Fel Iron Blood Ring
		[20] = { itemID = 24075, spellID = 31049 }, --Golden Draenite Ring
		[21] = { itemID = 29160, spellID = 34961 }, --Emerald Lion Ring
		[22] = { itemID = 21778, spellID = 26910 }, --Ring of Bitter Shadows
		[23] = { itemID = 29159, spellID = 34960 }, --Glowing Thorium Band
		[24] = { itemID = 21775, spellID = 26907 }, --Onslaught Ring
	};
	{
		Name = AL["Rings"]..AtlasLoot.Colors.WHITE.." - Page 2";
		[01] = { itemID = 21768, spellID = 26903 }, --Sapphire Signet
		[02] = { itemID = 30422, spellID = 36526 }, --Diamond Focus Ring
		[03] = { itemID = 21767, spellID = 26902 }, --Simple Opal Ring
		[04] = { itemID = 21753, spellID = 26896 }, --Gem Studded Band
		[05] = { itemID = 21754, spellID = 26887 }, --The Aquamarine Ward
		[06] = { itemID = 21765, spellID = 26885 }, --Truesilver Healing Ring
		[07] = { itemID = 30421, spellID = 36525 }, --AtlasLoot.Colors.RED Ring of Destruction
		[08] = { itemID = 20964, spellID = 26874 }, --Aquamarine Signet
		[9] = { itemID = 29158, spellID = 34959 }, --Truesilver Commander's Ring
		[10] = { itemID = 29157, spellID = 34955 }, --Golden Ring of Power
		[11] = { itemID = 20961, spellID = 25621 }, --Citrine Ring of Rapid Healing
		[12] = { itemID = 20960, spellID = 25620 }, --Engraved Truesilver Ring
		[13] = { itemID = 20959, spellID = 25619 }, --The Jade Eye
		[14] = { itemID = 20958, spellID = 25617 }, --Blazing Citrine Ring
		[15] = { itemID = 20955, spellID = 25613 }, --Golden Dragon Ring
		[16] = { itemID = 20833, spellID = 25323 }, --Wicked Moonstone Ring
		[17] = { itemID = 30420, spellID = 36524 }, --Heavy Jade Ring
		[18] = { itemID = 20828, spellID = 25318 }, --Ring of Twilight Shadows
		[19] = { itemID = 20826, spellID = 25305 }, --Heavy Silver Ring
		[20] = { itemID = 20827, spellID = 25317 }, --Ring of Silver Might
		[21] = { itemID = 20823, spellID = 25287 }, --Gloom Band
		[22] = { itemID = 30804, spellID = 37818 }, --Bronze Band of Force
		[23] = { itemID = 20820, spellID = 25284 }, --Simple Pearl Ring
		[24] = { itemID = 20907, spellID = 25490 }, --Solid Bronze Ring
		[25] = { itemID = 20818, spellID = 25280 }, --Elegant Silver Ring
		[26] = { itemID = 20821, spellID = 25283 }, --Inlaid Malachite Ring
		[27] = { itemID = 25439, spellID = 32179 }, --Tigerseye Band
		[28] = { itemID = 21932, spellID = 26926 }, --Heavy Copper Ring
		[29] = { itemID = 20906, spellID = 25493 }, --Braided Copper Ring
		[30] = { itemID = 21931, spellID = 26925 }, --Woven Copper Ring
	};
	{
		Name = AL["Necks"]..AtlasLoot.Colors.WHITE.." - Page 1";
		[01] = { itemID = 24117, spellID = 31072 }, --Embrace of the Dawn
		[02] = { itemID = 24114, spellID = 31070 }, --Braided Eternium Chain
		[03] = { itemID = 24116, spellID = 31071 }, --Eye of the Night
		[04] = { itemID = 24092, spellID = 31062 }, --Pendant of Frozen Flame
		[05] = { itemID = 24097, spellID = 31065 }, --Pendant of Shadow's End
		[06] = { itemID = 24093, spellID = 31063 }, --Pendant of Thawing
		[07] = { itemID = 24098, spellID = 31066 }, --Pendant of the Null Rune
		[08] = { itemID = 24095, spellID = 31064 }, --Pendant of Withering
		[16] = { itemID = 24110, spellID = 31068 }, --Living Ruby Pendant
		[17] = { itemID = 24106, spellID = 31067 }, --Thick Felsteel Necklace
		[18] = { itemID = 32508, spellID = 40514 }, --Necklace of the Deep
		[19] = { itemID = 24077, spellID = 31051 }, --Thick Adamantite Necklace
		[20] = { itemID = 21792, spellID = 26915 }, --Necklace of the Diamond Tower
	};
	{
		Name = AL["Necks"]..AtlasLoot.Colors.WHITE.." - Page 2";
		[01] = { itemID = 21791, spellID = 26911 }, --Living Emerald Pendant
		[02] = { itemID = 21790, spellID = 26908 }, --Sapphire Pendant of Winter Night
		[03] = { itemID = 21766, spellID = 26897 }, --Opal Necklace of Impact
		[04] = { itemID = 21764, spellID = 26883 }, --Ruby Pendant of Fire
		[05] = { itemID = 21755, spellID = 26876 }, --Aquamarine Pendant of the Warrior
		[06] = { itemID = 45627, spellID = 63743 }, --Amulet of Truesight
		[07] = { itemID = 20967, spellID = 25622 }, --Citrine Pendant of Golden Healing
		[08] = { itemID = 20966, spellID = 25618 }, --Jade Pendant of Blasting
		[9] = { itemID = 20831, spellID = 25320 }, --Heavy Golden Necklace of Battle
		[16] = { itemID = 20950, spellID = 25610 }, --Pendant of the Agate Shield
		[17] = { itemID = 20830, spellID = 25339 }, --Amulet of the Moon
		[18] = { itemID = 20909, spellID = 25498 }, --Barbaric Iron Collar
		[19] = { itemID = 31154, spellID = 38175 }, --Bronze Torc
		[20] = { itemID = 30419, spellID = 36523 }, --Brilliant Necklace
		[21] = { itemID = 21933, spellID = 26927 }, --Thick Bronze Necklace
		[22] = { itemID = 21934, spellID = 26928 }, --Ornate Tigerseye Necklace
		[23] = { itemID = 25438, spellID = 32178 }, --Malachite Pendant
	};
	{
		Name = AL["Miscellaneous"];
		[01] = { itemID = 24123, spellID = 31078 }, --Circlet of Arcane Might
		[02] = { itemID = 24122, spellID = 31077 }, --Coronet of the Verdant Flame
		[03] = { itemID = 32776, spellID = 41418 }, --Crown of the Sea Witch
		[04] = { itemID = 35945, spellID = 47280 }, --Brilliant Glass
		[05] = { itemID = 31079, spellID = 38068 }, --Mercurial Adamantite
		[06] = { itemID = 21774, spellID = 26906 }, --Emerald Crown of Destruction
		[07] = { itemID = 20969, spellID = 26878 }, --Ruby Crown of Restoration
		[08] = { itemID = 21752, spellID = 26880 }, --Thorium Setting
		[9] = { itemID = 25883, spellID = 32809 }, --Dense Stone Statue
		[10] = { itemID = 25882, spellID = 32808 }, --Solid Stone Statue
		[11] = { itemID = 20963, spellID = 25615 }, --Mithril Filigree
		[12] = { itemID = 20954, spellID = 25612 }, --Heavy Iron Knuckles
		[13] = { itemID = 20832, spellID = 25321 }, --Moonsoul Crown
		[14] = { itemID = 25881, spellID = 32807 }, --Heavy Stone Statue
		[15] = { itemID = 20817, spellID = 25278 }, --Bronze Setting
		[16] = { itemID = 25880, spellID = 32801 }, --Coarse Stone Statue
		[17] = { itemID = 20816, spellID = 25255 }, --Delicate Copper Wire
		[18] = { itemID = 25498, spellID = 32259 }, --Rough Stone Statue
	};
	{
		Name = AL["High Risk"];
		[01] = { name = AL["Rare"], icon = "INV_Box_01"},
		[02] = { itemID = 1204165, spellID = 979639 }, --Deep Gold Twisted Pendant
		[03] = { itemID = 1204167, spellID = 979641 }, --Bloodshadow Twisted Pendant
		[04] = { itemID = 1204169, spellID = 979643 }, --Azureflame Twisted Pendant
		[05] = { itemID = 1204171, spellID = 979645 }, --Shadowgold Dread Pendant
		[06] = { itemID = 1204173, spellID = 979647 }, --Deep Azure Dread Pendant
		[07] = { itemID = 1204175, spellID = 979649 }, --Bloodflame Dread Pendant
		[08] = { itemID = 1204177, spellID = 979651 }, --Living Night Void Pendant
		[9] = { itemID = 1204179, spellID = 979653 }, --Dawnstar Void Pendant
		[10] = { itemID = 1204181, spellID = 979655 }, --Noble Talasite Void Pendant
		[16] = { name = AL["Epic"], icon = "INV_Box_01"},
		[17] = { itemID = 1204166, spellID = 979640 }, --Engraved Deep Gold Twisted Pendant
		[18] = { itemID = 1204168, spellID = 979642 }, --Engraved Bloodshadow Twisted Pendant
		[19] = { itemID = 1204170, spellID = 979644 }, --Engraved Azureflame Twisted Pendant
		[20] = { itemID = 1204172, spellID = 979646 }, --Engraved Shadowgold Dread Pendant
		[21] = { itemID = 1204174, spellID = 979648 }, --Engraved Deep Azure Dread Pendant
		[22] = { itemID = 1204176, spellID = 979650 }, --Engraved Bloodflame Dread Pendant
		[23] = { itemID = 1204178, spellID = 979652 }, --Engraved Living Night Void Pendant
		[24] = { itemID = 1204180, spellID = 979654 }, --Engraved Dawnstar Void Pendant
		[25] = { itemID = 1204182, spellID = 979656 }, --Engraved Noble Talasite Void Pendant
	};
};

----------------------
--- Leatherworking ---
----------------------
AtlasLoot_Data["LeatherworkingTBC"] = {
	Module = "AtlasLoot_Crafting_TBC";
	Name = LEATHERWORKING;
	Type = "BCCrafting";
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Back";
		[01] = { itemID = 33122, spellID = 42546 }, --Cloak of Darkness
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest";
		[01] = { itemID = 29525, spellID = 35589 }, --Primalstrike Vest
		[02] = { itemID = 29522, spellID = 35585 }, --Windhawk Hauberk
		[03] = { itemID = 34369, spellID = 46138 }, --Carapace of Sun and Shadow
		[04] = { itemID = 34371, spellID = 46136 }, --Leather Chestguard of the Sun
		[05] = { itemID = 33204, spellID = 42731 }, --Shadowprowler's Chestguard
		[06] = { itemID = 25689, spellID = 32495 }, --Heavy Clefthoof Vest
		[07] = { itemID = 29974, spellID = 36078 }, --Living Crystal Breastplate
		[08] = { itemID = 29973, spellID = 36077 }, --Primalstorm Breastplate
		[9] = { itemID = 25671, spellID = 32473 }, --Thick Draenic Vest
		[10] = { itemID = 25676, spellID = 32481 }, --Wild Draenish Vest
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Feet";
		[01] = { itemID = 30041, spellID = 36355 }, --Boots of Natural Grace
		[02] = { itemID = 30039, spellID = 36357 }, --Boots of Utter Darkness
		[03] = { itemID = 32394, spellID = 40003 }, --Redeemed Soul Moccasins
		[04] = { itemID = 32394, spellID = 40003 }, --Redeemed Soul Moccasins
		[05] = { itemID = 25691, spellID = 32497 }, --Heavy Clefthoof Boots
		[06] = { itemID = 29499, spellID = 35536 }, --Blastguard Boots
		[07] = { itemID = 29497, spellID = 35534 }, --Enchanted Clefthoof Boots
		[08] = { itemID = 25686, spellID = 32493 }, --Fel Leather Boots
		[9] = { itemID = 25668, spellID = 32472 }, --Thick Draenic Boots
		[10] = { itemID = 25673, spellID = 32478 }, --Wild Draenish Boots
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Hands";
		[01] = { itemID = 29503, spellID = 35559 }, --Cobrascale Gloves
		[02] = { itemID = 34370, spellID = 46134 }, --Gloves of Immortal Dusk
		[03] = { itemID = 29506, spellID = 35562 }, --Gloves of the Living Touch
		[04] = { itemID = 34372, spellID = 46132 }, --Leather Gauntlets of the Sun
		[05] = { itemID = 29507, spellID = 35563 }, --Windslayer Wraps
		[06] = { itemID = 29496, spellID = 35533 }, --Enchanted Clefthoof Gloves
		[07] = { itemID = 25685, spellID = 32490 }, --Fel Leather Gloves
		[08] = { itemID = 25674, spellID = 32479 }, --Wild Draenish Gloves
		[9] = { itemID = 25669, spellID = 32470 }, --Thick Draenic Gloves
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Head";
		[01] = { itemID = 29502, spellID = 35558 }, --Cobrascale Hood
		[02] = { itemID = 29505, spellID = 35561 }, --Hood of Primal Life
		[03] = { itemID = 29504, spellID = 35560 }, --Windscale Hood
		[04] = { itemID = 25682, spellID = 32489 }, --Stylin' Jungle Hat
		[05] = { itemID = 25680, spellID = 32485 }, --Stylin' Purple Hat
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Legs";
		[01] = { itemID = 32396, spellID = 40005 }, --Redeemed Soul Legguards
		[02] = { itemID = 25690, spellID = 32496 }, --Heavy Clefthoof Leggings
		[03] = { itemID = 29498, spellID = 35535 }, --Blastguard Pants
		[04] = { itemID = 29495, spellID = 35532 }, --Enchanted Clefthoof Leggings
		[05] = { itemID = 25687, spellID = 32494 }, --Fel Leather Leggings
		[06] = { itemID = 25675, spellID = 32480 }, --Wild Draenish Leggings
		[07] = { itemID = 25670, spellID = 32471 }, --Thick Draenic Pants
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Shoulder";
		[01] = { itemID = 32583, spellID = 41157 }, --Shoulderpads of Renewed Life
		[02] = { itemID = 32581, spellID = 41160 }, --Swiftstrike Shoulders
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Waist";
		[01] = { itemID = 30040, spellID = 36351 }, --Belt of Deep Shadow
		[02] = { itemID = 30042, spellID = 36349 }, --Belt of Natural Power
		[03] = { itemID = 29526, spellID = 35590 }, --Primalstrike Belt
		[04] = { itemID = 32393, spellID = 40006 }, --Redeemed Soul Cinch
		[05] = { itemID = 29524, spellID = 35587 }, --Windhawk Belt
	};
	{
		Name = AL["Leather Armor"] .. AtlasLoot.Colors.WHITE .. " - Wrist";
		[01] = { itemID = 32582, spellID = 41156 }, --Bracers of Renewed Life
		[02] = { itemID = 29527, spellID = 35591 }, --Primalstrike Bracers
		[03] = { itemID = 32395, spellID = 40004 }, --Redeemed Soul Wristguards
		[04] = { itemID = 32580, spellID = 41158 }, --Swiftstrike Bracers
		[05] = { itemID = 29523, spellID = 35588 }, --Windhawk Bracers
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest";
		[01] = { itemID = 29519, spellID = 35580 }, --Netherstrike Breastplate
		[02] = { itemID = 29515, spellID = 35575 }, --Ebon Netherscale Breastplate
		[03] = { itemID = 34373, spellID = 46137 }, --Embrace of the Phoenix
		[04] = { itemID = 34375, spellID = 46139 }, --Sun-Drenched Scale Chestguard
		[05] = { itemID = 29514, spellID = 35574 }, --Thick Netherscale Breastplate
		[06] = { itemID = 25696, spellID = 32500 }, --Felstalker Breastplate
		[07] = { itemID = 29975, spellID = 36079 }, --Golden Dragonstrike Breastplate
		[08] = { itemID = 25657, spellID = 32465 }, --Felscale Breastplate
		[9] = { itemID = 25660, spellID = 32468 }, --Scaled Draenic Vest
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Feet";
		[01] = { itemID = 30043, spellID = 36359 }, --Hurricane Boots
		[02] = { itemID = 32398, spellID = 39997 }, --Boots of Shackled Souls
		[03] = { itemID = 30045, spellID = 36358 }, --Boots of the Crimson Hawk
		[04] = { itemID = 29512, spellID = 35567 }, --Earthen Netherscale Boots
		[05] = { itemID = 29493, spellID = 35528 }, --Flamescale Boots
		[06] = { itemID = 25693, spellID = 32503 }, --Netherfury Boots
		[07] = { itemID = 29491, spellID = 35527 }, --Enchanted Felscale Boots
		[08] = { itemID = 25659, spellID = 32469 }, --Scaled Draenic Boots
		[9] = { itemID = 25655, spellID = 32463 }, --Felscale Boots
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Hands";
		[01] = { itemID = 34376, spellID = 46135 }, --Sun-Drenched Scale Gloves
		[02] = { itemID = 34374, spellID = 46133 }, --Fletcher's Gloves of the Phoenix
		[03] = { itemID = 29509, spellID = 35568 }, --Windstrike Gloves
		[04] = { itemID = 29511, spellID = 35573 }, --Netherdrake Gloves
		[05] = { itemID = 25661, spellID = 32467 }, --Scaled Draenic Gloves
		[06] = { itemID = 25654, spellID = 32462 }, --Felscale Gloves
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Head";
		[01] = { itemID = 29508, spellID = 35564 }, --Living Dragonscale Helm
		[02] = { itemID = 29510, spellID = 35572 }, --Netherdrake Helm
		[03] = { itemID = 25681, spellID = 32487 }, --Stylin' Adventure Hat
		[04] = { itemID = 25683, spellID = 32488 }, --Stylin' Crimson Hat
		[05] = { itemID = 29490, spellID = 35526 }, --Enchanted Felscale Gloves
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Legs";
		[01] = { itemID = 32400, spellID = 40001 }, --Greaves of Shackled Souls
		[02] = { itemID = 29492, spellID = 35529 }, --Flamescale Leggings
		[03] = { itemID = 29489, spellID = 35525 }, --Enchanted Felscale Leggings
		[04] = { itemID = 25692, spellID = 32502 }, --Netherfury Leggings
		[05] = { itemID = 25656, spellID = 32464 }, --Felscale Pants
		[06] = { itemID = 25662, spellID = 32466 }, --Scaled Draenic Pants
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Shoulder";
		[01] = { itemID = 32575, spellID = 41162 }, --Shoulders of Lightning Reflexes
		[02] = { itemID = 32579, spellID = 41164 }, --Living Earth Shoulders
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Waist";
		[01] = { itemID = 32397, spellID = 40002 }, --Waistguard of Shackled Souls
		[02] = { itemID = 29520, spellID = 35582 }, --Netherstrike Belt
		[03] = { itemID = 30044, spellID = 36353 }, --Monsoon Belt
		[04] = { itemID = 29516, spellID = 35576 }, --Ebon Netherscale Belt
		[05] = { itemID = 30046, spellID = 36352 }, --Belt of the Black Eagle
		[06] = { itemID = 25695, spellID = 32498 }, --Felstalker Belt
		[07] = { itemID = 29494, spellID = 35531 }, --Flamescale Belt
		[08] = { itemID = 29500, spellID = 35537 }, --Blastguard Belt
		[9] = { itemID = 25694, spellID = 32501 }, --Netherfury Belt
	};
	{
		Name = AL["Mail Armor"] .. AtlasLoot.Colors.WHITE .. " - Wrist";
		[01] = { itemID = 29521, spellID = 35584 }, --Netherstrike Bracers
		[02] = { itemID = 32399, spellID = 52733 }, --Bracers of Shackled Souls
		[03] = { itemID = 29517, spellID = 35577 }, --Ebon Netherscale Bracers
		[04] = { itemID = 32577, spellID = 41163 }, --Living Earth Bindings
		[05] = { itemID = 32574, spellID = 41161 }, --Bindings of Lightning Reflexes
		[06] = { itemID = 25697, spellID = 32499 }, --Felstalker Bracer
	};
	{
		Name = AL["Item Enhancements"];
		[01] = { itemID = 29536, spellID = 35557 }, --Nethercleft Leg Armor
		[02] = { itemID = 29535, spellID = 35554 }, --Nethercobra Leg Armor
		[03] = { itemID = 29534, spellID = 35555 }, --Clefthide Leg Armor
		[04] = { itemID = 29533, spellID = 35549 }, --Cobrahide Leg Armor
		[05] = { itemID = 18251, spellID = 22727 }, --Core Armor Kit
		[06] = { itemID = 38376, spellID = 50963 }, --Heavy Borean Armor Kit
		[07] = { itemID = 34207, spellID = 44770 }, --Glove Reinforcements
		[08] = { itemID = 29488, spellID = 35524 }, --Arcane Armor Kit
		[9] = { itemID = 29485, spellID = 35521 }, --Flame Armor Kit
		[10] = { itemID = 29486, spellID = 35522 }, --Frost Armor Kit
		[11] = { itemID = 29487, spellID = 35523 }, --Nature Armor Kit
		[12] = { itemID = 29483, spellID = 35520 }, --Shadow Armor Kit
		[13] = { itemID = 38375, spellID = 50962 }, --Borean Armor Kit
		[14] = { itemID = 34330, spellID = 44970 }, --Heavy Knothide Armor Kit
		[15] = { itemID = 25652, spellID = 32458 }, --Magister's Armor Kit
		[16] = { itemID = 25651, spellID = 32457 }, --Vindicator's Armor Kit
		[17] = { itemID = 25650, spellID = 32456 }, --Knothide Armor Kit
		[18] = { itemID = 25679, spellID = 32482 }, --Comfortable Insoles
	};
	{
		Name = AL["Quivers and Ammo Pouches"];
		[01] = { itemID = 34106, spellID = 44768 }, --Netherscale Ammo Pouch
		[02] = { itemID = 34105, spellID = 44359 }, --Quiver of a Thousand Feathers
		[03] = { itemID = 34099, spellID = 44343 }, --Knothide Ammo Pouch
		[04] = { itemID = 34100, spellID = 44344 }, --Knothide Quiver
	};
	{
		Name = AL["Drums, Bags and Misc."];
		[01] = { itemID = 29529, spellID = 35543 }, --Drums of Battle
		[02] = { itemID = 34490, spellID = 45117 }, --Bag of Many Hides
		[03] = { itemID = 25653, spellID = 32461 }, --Riding Crop
		[04] = { itemID = 29532, spellID = 35538 }, --Drums of Panic
		[05] = { itemID = 29531, spellID = 35539 }, --Drums of Restoration
		[06] = { itemID = 29530, spellID = 35544 }, --Drums of Speed
		[07] = { itemID = 29528, spellID = 35540 }, --Drums of War
		[08] = { itemID = 29540, spellID = 35530 }, --Reinforced Mining Bag
		[9] = { itemID = 34482, spellID = 45100 }, --Leatherworker's Satchel
	};
	{
		Name = BabbleInventory["Leather"];
		[01] = { itemID = 23793, spellID = 32455 }, --Heavy Knothide Leather
		[02] = { itemID = 21887, spellID = 32454 }, --Knothide Leather
	};
	{
		Name = DRAGONSCALE;
		[01] = { itemID = 29516, spellID = 35576 }, --Ebon Netherscale Belt
		[02] = { itemID = 29517, spellID = 35577 }, --Ebon Netherscale Bracers
		[03] = { itemID = 29515, spellID = 35575 }, --Ebon Netherscale Breastplate
		[04] = { itemID = 29520, spellID = 35582 }, --Netherstrike Belt
		[05] = { itemID = 29521, spellID = 35584 }, --Netherstrike Bracers
		[06] = { itemID = 29519, spellID = 35580 }, --Netherstrike Breastplate
		[07] = { itemID = 29975, spellID = 36079 }, --Golden Dragonstrike Breastplate
	};
	{
		Name = ELEMENTAL;
		[01] = { itemID = 29526, spellID = 35590 }, --Primalstrike Belt
		[02] = { itemID = 29527, spellID = 35591 }, --Primalstrike Bracers
		[03] = { itemID = 29525, spellID = 35589 }, --Primalstrike Vest
		[04] = { itemID = 29973, spellID = 36077 }, --Primalstorm Breastplate
	};
	{
		Name = TRIBAL;
		[01] = { itemID = 29524, spellID = 35587 }, --Windhawk Belt
		[02] = { itemID = 29523, spellID = 35588 }, --Windhawk Bracers
		[03] = { itemID = 29522, spellID = 35585 }, --Windhawk Hauberk
		[04] = { itemID = 29974, spellID = 36078 }, --Living Crystal Breastplate
	};
	{
		Name = AL["High Risk"];
		[01] = { name = AL["Rare"], icon = "INV_Box_01"},
		[02] = { itemID = 1204021, spellID = 979522 }, --Cobra Strike Gambeson
		[03] = { itemID = 1204023, spellID = 979524 }, --Fel Strike Gambeson
		[04] = { itemID = 1204025, spellID = 979526 }, --Wind Gambeson
		[05] = { itemID = 1204027, spellID = 979528 }, --True Strike Gambeson
		[06] = { itemID = 1204029, spellID = 979530 }, --Clefthoof Gambeson
		[07] = { itemID = 1204031, spellID = 979532 }, --Subtle Gambeson
		[16] = { name = AL["Epic"], icon = "INV_Box_01"},
		[17] = { itemID = 1204022, spellID = 979523 }, --Mastercraft Cobra Strike Gambeson
		[18] = { itemID = 1204024, spellID = 979525 }, --Mastercraft Fel Strike Gambeson
		[19] = { itemID = 1204026, spellID = 979527 }, --Mastercraft Wind Gambeson
		[20] = { itemID = 1204028, spellID = 979529 }, --Mastercraft True Strike Gambeson
		[21] = { itemID = 1204030, spellID = 979531 }, --Mastercraft Clefthoof Gambeson
		[22] = { itemID = 1204032, spellID = 979533 }, --Mastercraft Subtle Gambeson
	};
};

AtlasLoot_Data["MiningTBC"] = {
	Module = "AtlasLoot_Crafting_TBC";
	Name = MINING;
	Type = "BCCrafting";
	{
		Name = MINING;
		[01] = { itemID = 35128, spellID = 46353 }, --Smelt Hardened Khorium
		[02] = { itemID = 23573, spellID = 29686 }, --Smelt Hardened Adamantite
		[03] = { itemID = 23449, spellID = 29361 }, --Smelt Khorium
		[04] = { itemID = 23448, spellID = 29360 }, --Smelt Felsteel
		[05] = { itemID = 23447, spellID = 29359 }, --Smelt Eternium
		[06] = { itemID = 23446, spellID = 29358 }, --Smelt Adamantite
		[07] = { itemID = 23445, spellID = 29356 }, --Smelt Fel Iron
		[08] = { itemID = 22574, spellID = 35751 }, --Fire Sunder
		[9] = { itemID = 22573, spellID = 35750 }, --Earth Shatter
	};
};

AtlasLoot_Data["FirstAidTBC"] = {
	Module = "AtlasLoot_Crafting_TBC";
	Name = FIRSTAID;
	Type = "BCCrafting";
	{
		Name = FIRSTAID;
		[01] = { itemID = 21991, spellID = 27033 }, --Heavy Netherweave Bandage
		[02] = { itemID = 21990, spellID = 27032 }, --Netherweave Bandage
	};
};
-----------------
--- Tailoring ---
-----------------



AtlasLoot_Data["TailoringTBC"] = {
	Module = "AtlasLoot_Crafting_TBC";
	Name = TAILORING;
	Type = "BCCrafting";
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Back";
		[01] = { itemID = 32420, spellID = 40060 }, --Night's End
		[02] = { itemID = 24260, spellID = 31450 }, --Manaweave Cloak
		[03] = { itemID = 24259, spellID = 31449 }, --Vengeance Wrap
		[04] = { itemID = 30831, spellID = 37873 }, --Cloak of Arcane Evasion
		[05] = { itemID = 24253, spellID = 31440 }, --Cloak of Eternity
		[06] = { itemID = 24252, spellID = 31438 }, --Cloak of the Black Void
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Chest";
		[01] = { itemID = 21871, spellID = 26758 }, --Frozen Shadoweave Robe
		[02] = { itemID = 21875, spellID = 26762 }, --Primal Mooncloth Robe
		[03] = { itemID = 21865, spellID = 26781 }, --Soulcloth Vest
		[04] = { itemID = 21848, spellID = 26754 }, --Spellfire Robe
		[05] = { itemID = 34365, spellID = 46131 }, --Robe of Eternal Light
		[06] = { itemID = 34364, spellID = 46130 }, --Sunfire Robe
		[07] = { itemID = 21868, spellID = 26784 }, --Arcanoweave Robe
		[08] = { itemID = 30839, spellID = 37884 }, --Flameheart Vest
		[9] = { itemID = 21861, spellID = 26777 }, --Imbued Netherweave Robe
		[10] = { itemID = 21862, spellID = 26778 }, --Imbued Netherweave Tunic
		[11] = { itemID = 21855, spellID = 26774 }, --Netherweave Tunic
		[12] = { itemID = 21854, spellID = 26773 }, --Netherweave Robe
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Feet";
		[01] = { itemID = 30037, spellID = 36317 }, --Boots of Blasting
		[02] = { itemID = 30035, spellID = 36318 }, --Boots of the Long Road
		[03] = { itemID = 32391, spellID = 40020 }, --Soulguard Slippers
		[04] = { itemID = 21870, spellID = 26757 }, --Frozen Shadoweave Boots
		[05] = { itemID = 21867, spellID = 26783 }, --Arcanoweave Boots
		[06] = { itemID = 21860, spellID = 26776 }, --Imbued Netherweave Boots
		[07] = { itemID = 21853, spellID = 26772 }, --Netherweave Boots
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Hands";
		[01] = { itemID = 32584, spellID = 41207 }, --Swiftheal Wraps
		[02] = { itemID = 34367, spellID = 46129 }, --Hands of Eternal Light
		[03] = { itemID = 21847, spellID = 26753 }, --Spellfire Gloves
		[04] = { itemID = 34366, spellID = 46128 }, --Sunfire Handwraps
		[05] = { itemID = 21863, spellID = 26779 }, --Soulcloth Gloves
		[06] = { itemID = 30838, spellID = 37883 }, --Flameheart Gloves
		[07] = { itemID = 21851, spellID = 26770 }, --Netherweave Gloves
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Head";
		[01] = { itemID = 24267, spellID = 31456 }, --Battlecast Hood
		[02] = { itemID = 24266, spellID = 31455 }, --Spellstrike Hood
		[03] = { itemID = 24264, spellID = 31454 }, --Whitemend Hood
		[04] = { itemID = 24258, spellID = 31448 }, --Resolute Cape
		[05] = { itemID = 24254, spellID = 31441 }, --AtlasLoot.Colors.WHITE Remedy Cape
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Legs";
		[01] = { itemID = 24263, spellID = 31453 }, --Battlecast Pants
		[02] = { itemID = 32389, spellID = 40023 }, --Soulguard Leggings
		[03] = { itemID = 24262, spellID = 31452 }, --Spellstrike Pants
		[04] = { itemID = 24261, spellID = 31451 }, --Whitemend Pants
		[05] = { itemID = 21859, spellID = 26775 }, --Imbued Netherweave Pants
		[06] = { itemID = 21852, spellID = 26771 }, --Netherweave Pants
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Shoulder";
		[01] = { itemID = 32587, spellID = 41206 }, --Mantle of Nimble Thought
		[02] = { itemID = 32585, spellID = 41208 }, --Swiftheal Mantle
		[03] = { itemID = 21874, spellID = 26761 }, --Primal Mooncloth Shoulders
		[04] = { itemID = 21864, spellID = 26780 }, --Soulcloth Shoulders
		[05] = { itemID = 21869, spellID = 26756 }, --Frozen Shadoweave Shoulders
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Waist";
		[01] = { itemID = 30038, spellID = 36315 }, --Belt of Blasting
		[02] = { itemID = 30036, spellID = 36316 }, --Belt of the Long Road
		[03] = { itemID = 32390, spellID = 40024 }, --Soulguard Girdle
		[04] = { itemID = 24257, spellID = 31444 }, --Black Belt of Knowledge
		[05] = { itemID = 24256, spellID = 31443 }, --Girdle of Ruination
		[06] = { itemID = 24255, spellID = 31442 }, --Unyielding Girdle
		[07] = { itemID = 21873, spellID = 26760 }, --Primal Mooncloth Belt
		[08] = { itemID = 21846, spellID = 26752 }, --Spellfire Belt
		[9] = { itemID = 21850, spellID = 26765 }, --Netherweave Belt
	};
	{
		Name = AL["Cloth Armor"] .. AtlasLoot.Colors.WHITE .. " - Wrist";
		[01] = { itemID = 32586, spellID = 41205 }, --Bracers of Nimble Thought
		[02] = { itemID = 32392, spellID = 40021 }, --Soulguard Bracers
		[03] = { itemID = 21866, spellID = 26782 }, --Arcanoweave Bracers
		[04] = { itemID = 24251, spellID = 31437 }, --Blackstrike Bracers
		[05] = { itemID = 30837, spellID = 37882 }, --Flameheart Bracers
		[06] = { itemID = 24249, spellID = 31434 }, --Unyielding Bracers
		[07] = { itemID = 24250, spellID = 31435 }, --Bracers of Havok
		[08] = { itemID = 21849, spellID = 26764 }, --Netherweave Bracers
	};
	{
		Name = AL["Bags"];
		[01] = { itemID = 21872, spellID = 26759 }, --Ebon Shadowbag
		[02] = { itemID = 38225, spellID = 50194 }, --Mycah's Botanical Bag
		[03] = { itemID = 21876, spellID = 26763 }, --Primal Mooncloth Bag
		[04] = { itemID = 21858, spellID = 26755 }, --Spellfire Bag
		[05] = { itemID = 21341, spellID = 26086 }, --Felcloth Bag
		[06] = { itemID = 24270, spellID = 31459 }, --Bag of Jewels
		[07] = { itemID = 21843, spellID = 26749 }, --Imbued Netherweave Bag
		[08] = { itemID = 21841, spellID = 26746 }, --Netherweave Bag
	};
	{
		Name = AL["Item Enhancements"];
		[01] = { itemID = 24276, spellID = 31433 }, --Golden Spellthread
		[02] = { itemID = 24274, spellID = 31432 }, --Runic Spellthread
		[03] = { itemID = 24273, spellID = 31430 }, --Mystic Spellthread
		[04] = { itemID = 24275, spellID = 31431 }, --Silver Spellthread
	};
	{
		Name = BabbleInventory["Cloth"];
		[01] = { itemID = 21845, spellID = 26751 }, --Primal Mooncloth
		[02] = { itemID = 24272, spellID = 36686 }, --Shadowcloth
		[03] = { itemID = 24271, spellID = 31373 }, --Spellcloth
		[04] = { itemID = 21842, spellID = 26747 }, --Bolt of Imbued Netherweave
		[05] = { itemID = 21844, spellID = 26750 }, --Bolt of Soulcloth
		[06] = { itemID = 21840, spellID = 26745 }, --Bolt of Netherweave
	};
	{
		Name = AL["Miscellaneous"];
		[01] = {itemID = 44554, spellID = 60969 }; --Flying Carpet
		[03] = { itemID = 24268, spellID = 31460 }, --Netherweave Net
	};
	{
		Name = MOONCLOTH;
		[01] = { itemID = 21875, spellID = 26762 }, --Primal Mooncloth Robe
		[02] = { itemID = 21874, spellID = 26761 }, --Primal Mooncloth Shoulders
		[03] = { itemID = 21873, spellID = 26760 }, --Primal Mooncloth Belt
	};
	{
		Name = SHADOWEAVE;
		[01] = { itemID = 21871, spellID = 26758 }, --Frozen Shadoweave Robe
		[02] = { itemID = 21870, spellID = 26757 }, --Frozen Shadoweave Boots
		[03] = { itemID = 21869, spellID = 26756 }, --Frozen Shadoweave Shoulders
	};
	{
		Name = SPELLFIRE;
		[01] = { itemID = 21848, spellID = 26754 }, --Spellfire Robe
		[02] = { itemID = 21847, spellID = 26753 }, --Spellfire Gloves
		[03] = { itemID = 21846, spellID = 26752 }, --Spellfire Belt
	};
	{
		Name = AL["High Risk"];
		[01] = { name = AL["Rare"], icon = "INV_Box_01"},
		[02] = { itemID = 1967813, spellID = 1968496 }, --Wrist Wraps of Twisted Might
		[03] = { itemID = 1967815, spellID = 1968498 }, --Wrist Wraps of Twisted Fury
		[04] = { itemID = 1967817, spellID = 1968500 }, --Wrist Wraps of Twisted Precision
		[05] = { itemID = 1967819, spellID = 1968502 }, --Wrist Wraps of Twisted Efficiency
		[06] = { itemID = 1967821, spellID = 1968504 }, --Wrist Wraps of Twisted Crushing
		[07] = { itemID = 1967823, spellID = 1968506 }, --Wrist Wraps of Twisted Glory
		[16] = { name = AL["Epic"], icon = "INV_Box_01"},
		[17] = { itemID = 1967814, spellID = 1968497 }, --Fitted Wrist Wraps of Twisted Might
		[18] = { itemID = 1967816, spellID = 1968499 }, --Fitted Wrist Wraps of Twisted Fury
		[19] = { itemID = 1967818, spellID = 1968501 }, --Fitted Wrist Wraps of Twisted Precision
		[20] = { itemID = 1967820, spellID = 1968503 }, --Fitted Wrist Wraps of Twisted Efficiency
		[21] = { itemID = 1967822, spellID = 1968505 }, --Fitted Wrist Wraps of Twisted Crushing
		[22] = { itemID = 1967824, spellID = 1968507 }, --Fitted Wrist Wraps of Twisted Glory
	};
};