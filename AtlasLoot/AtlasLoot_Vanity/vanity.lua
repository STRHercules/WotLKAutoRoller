local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

---------------
--- Tabards ---
---------------

AtlasLoot_Data["Tabards"] = {
	Module = "AtlasLoot_Vanity";
	Name = "Tabards";
	{
		Name = AL["Page 1"];
		[01] = { itemID = 51534 }; --Wrathful Gladiator's Tabard
		[02] = { itemID = 49086 }; --Relentless Gladiator's Tabard
		[03] = { itemID = 45983 }; --Furious Gladiator's Tabard
		[04] = { itemID = 43349, desc = "=ds="..AL["Achievement Reward"] }; --Tabard of Brute Force
		[05] = { itemID = 40643, desc = "=ds="..AL["Achievement Reward"] }; --Tabard of the Achiever
		[06] = { itemID = 43348, desc = "=ds="..AL["Achievement Reward"] }; --Tabard of the Explorer
		[07] = { itemID = 43300, desc = "=ds="..AL["Achievement Reward"] }; --Loremaster's Colors
		[08] = { itemID = 49052, desc = "=ds="..AL["Achievement Reward"].." =ec1="..BabbleFaction["Alliance"] }; --Tabard of Conquest
		[09] = { itemID = 49054, desc = "=ds="..AL["Achievement Reward"].." =ec1="..BabbleFaction["Horde"] }; --Tabard of Conquest
		[11] = { itemID = 46874 }; --Argent Crusader's Tabard
		[12] = { itemID = 46817 }; --Silver Covenant Tabard
		[13] = { itemID = 46818 }; --Sunreaver Tabard
		[16] = { itemID = 43154 }; --Tabard of the Argent Crusade
		[17] = { itemID = 43157 }; --Tabard of the Kirin Tor
		[18] = { itemID = 43155 }; --Tabard of the Ebon Blade
		[19] = { itemID = 43156 }; --Tabard of the Wyrmrest Accord
		[21] = { itemID = 45579 }; --Darnassus Tabard
		[22] = { itemID = 45580 }; --Exodar Tabard
		[23] = { itemID = 45578 }; --Gnomeregan Tabard
		[24] = { itemID = 45577 }; --Ironforge Tabard
		[25] = { itemID = 45574 }; --Stormwind Tabard
		[26] = { itemID = 45581 }; --Orgrimmar Tabard
		[27] = { itemID = 45582 }; --Sen'jin Tabard
		[28] = { itemID = 45585 }; --Silvermoon City Tabard
		[29] = { itemID = 45584 }; --Thunder Bluff Tabard
		[30] = { itemID = 45583 }; --Undercity Tabard
	};
	{
		Name = AL["Page 2"];
		[01] = { itemID = 38312 }; --Tabard of Brilliance
		[02] = { itemID = 23705 }; --Tabard of Flame
		[03] = { itemID = 23709 }; --Tabard of Frost
		[04] = { itemID = 38313 }; --Tabard of Fury
		[05] = { itemID = 38309 }; --Tabard of Nature
		[06] = { itemID = 38310 }; --Tabard of the Arcane
		[07] = { itemID = 38314 }; --Tabard of the Defender
		[08] = { itemID = 38311 }; --Tabard of the Void
		[09] = { itemID = 35279 }; --Tabard of Summer Skies
		[11] = { itemID = 35280 }; --Tabard of Summer Flames
		[12] = { itemID = 31404 }; --AtlasLoot.Colors.GREEN Trophy Tabard of the Illidari
		[13] = { itemID = 31405 }; --Purple Trophy Tabard of the Illidari
		[14] = { itemID = 24344 }; --Tabard of the Hand
		[15] = { itemID = 25549 }; --Blood Knight Tabard
		[16] = { itemID = 31779 }; --Aldor Tabard
		[17] = { itemID = 31804 }; --Cenarion Expedition Tabard
		[18] = { itemID = 31776 }; --Consortium Tabard
		[19] = { itemID = 23999 }; --Honor Hold Tabard
		[20] = { itemID = 31777 }; --Keepers of Time Tabard
		[21] = { itemID = 31774 }; --Kurenai Tabard
		[22] = { itemID = 31778 }; --Lower City Tabard
		[23] = { itemID = 31773 }; --Mag'har Tabard
		[24] = { itemID = 32828 }; --Ogri'la Tabard
		[25] = { itemID = 31781 }; --Sha'tar Tabard
		[26] = { itemID = 31775 }; --Sporeggar Tabard
		[27] = { itemID = 31780 }; --Scryers Tabard
		[28] = { itemID = 32445 }; --Skyguard Tabard
		[29] = { itemID = 35221 }; --Tabard of the Shattered Sun
		[30] = { itemID = 24004 }; --Thrallmar Tabard
	};
	{
		Name = AL["Page 3"];
		[01] = { icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE..BabbleFaction["Alliance"] };
		[02] = { itemID = 15196 }; --Private's Tabard
		[03] = { itemID = 15198 }; --Knight's Colors
		[04] = { itemID = 20132 }; --Arathor Battle Tabard
		[05] = { itemID = 19032 }; --Stormpike Battle Tabard
		[06] = { itemID = 19506 }; --Silverwing Battle Tabard
		[08] = { icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE..BabbleFaction["Horde"] };
		[09] = { itemID = 15197 }; --Scout's Tabard
		[10] = { itemID = 15199 }; --Stone Guard's Herald
		[11] = { itemID = 20131 }; --Battle Tabard of the Defilers
		[12] = { itemID = 19031 }; --Frostwolf Battle Tabard
		[13] = { itemID = 19505 }; --Warsong Battle Tabard
		[16] = { itemID = 23192 }; --Tabard of the Scarlet Crusade",  "0%
		[17] = { itemID = 5976 }; --Guild Tabard
		[19] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Unattainable Tabards"] };
		[20] = { itemID = 36941 }; --Competitor's Tabard
		[21] = { itemID = 22999 }; --Tabard of the Agent Dawn
		[22] = { itemID = 28788 }; --Tabard of the Protector
		[23] = { itemID = 19160 }; --Contest Winner's Tabard
	};
};

-------------------
--- Vanity Pets ---
-------------------

AtlasLoot_Data["VanityPets"] = {
	Module = "AtlasLoot_Vanity";
	Name = "Vanity Pets";
	{
		Name = AL["Merchant Sold"];
		[01] = { itemID = 44984 }; --Ammen Vale Lashling
		[02] = { itemID = 54436 }; --AtlasLoot.Colors.BLUE Clockwork Rocket Bot
		[03] = { itemID = 44970 }; --Dun Morogh Cub
		[04] = { itemID = 44973 }; --Durotar Scorpion
		[05] = { itemID = 44974 }; --Elwynn Lamb
		[06] = { itemID = 44982 }; --Enchanted Broom
		[07] = { itemID = 39973 }; --Ghostly Skull
		[08] = { itemID = 45002 }; --Mechanopeep
		[09] = { itemID = 44980 }; --Mulgore Hatchling
		[10] = { itemID = 45606 }; --Sen'jin Fetish
		[11] = { itemID = 44965 }; --Teldrassil Sproutling
		[12] = { itemID = 44971 }; --Tirisfal Batling
		[13] = { itemID = 44822 }; --Albino Snake
		[14] = { itemID = 11023 }; --Ancona Chicken
		[15] = { itemID = 10360 }; --Black Kingsnake
		[16] = { itemID = 10361 }; --Brown Snake
		[17] = { itemID = 29958 }; --AtlasLoot.Colors.BLUE Dragonhawk Hatchling
		[18] = { itemID = 29901 }; --AtlasLoot.Colors.BLUE Moth Egg
		[19] = { itemID = 29364 }; --Brown Rabbit Crate
		[20] = { itemID = 46398 }; --Calico Cat
		[21] = { itemID = 8485 }; --Cat Carrier (Bombay)
		[22] = { itemID = 8486 }; --Cat Carrier (Cornish Rex)
		[23] = { itemID = 8487 }; --Cat Carrier (AtlasLoot.Colors.ORANGE Tabby)
		[24] = { itemID = 8490 }; --Cat Carrier (Siamese)
		[25] = { itemID = 8488 }; --Cat Carrier (Silver Tabby)
		[26] = { itemID = 8489 }; --Cat Carrier (AtlasLoot.Colors.WHITE Kitten)
		[27] = { itemID = 10393 }; --Cockroach
		[28] = { itemID = 10392 }; --Crimson Snake
		[29] = { itemID = 29953 }; --Golden Dragonhawk Hatchling
		[30] = { itemID = 8500 }; --Great Horned Owl
	};
	{
		Name = AL["Merchant Sold"];
		[01] = { itemID = 8501 }; --Hawk Owl
		[02] = { itemID = 29363 }; --Mana Wyrmling
		[03] = { itemID = 48120 }; --Obsidian Hatchling
		[04] = { itemID = 8496 }; --Parrot Cage (Cockatiel)
		[05] = { itemID = 8492 }; --Parrot Cage (AtlasLoot.Colors.GREEN Wing Macaw)
		[06] = { itemID = 8495 }; --Parrot Cage (Senegal)
		[07] = { itemID = 10394 }; --Prairie Dog Whistle
		[08] = { itemID = 8497 }; --Rabbit Crate (Snowshoe)
		[09] = { itemID = 29956 }; --AtlasLoot.Colors.RED Dragonhawk Hatchling
		[10] = { itemID = 29902 }; --AtlasLoot.Colors.RED Moth Egg
		[11] = { itemID = 29957 }; --Silver Dragonhawk Hatchling
		[12] = { itemID = 11026 }; --Tree Frog Box
		[13] = { itemID = 29904 }; --AtlasLoot.Colors.WHITE Moth Egg
		[14] = { itemID = 11027 }; --Wood Frog Box
		[15] = { itemID = 29903 }; --Yellow Moth Egg
	};
	{
		Name = AL["Quest"].." / "..AL["Crafted"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Quest"] };
		[02] = { itemID = 45022 }; --Argent Gruntling
		[03] = { itemID = 44998 }; --Argent Squire
		[04] = { itemID = 35350 }; --Chuck's Bucket
		[05] = { itemID = 33818 }; --Muckbreath's Bucket
		[06] = { itemID = 35349 }; --Snarly's Bucket
		[07] = { itemID = 44983 }; --Strand Crawler
		[08] = { itemID = 33816 }; --Toothy's Bucket
		[09] = { itemID = 19450 }; --A Jubling's Tiny Home
		[10] = { itemID = 11110 }; --Chicken Egg
		[11] = { itemID = 10398 }; --Mechanical Chicken
		[12] = { itemID = 31760 }; --Miniwing
		[13] = { itemID = 12529 }; --Smolderweb Carrier
		[14] = { itemID = 11474 }; --Sprite Darter Egg
		[15] = { itemID = 12264 }; --Worg Carrier
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Crafted"] };
		[17] = { itemID = 15996 }; --Lifelike Mechanical Toad
		[18] = { itemID = 11826 }; --Lil' Smoky
		[19] = { itemID = 4401 }; --Mechanical Squirrel Box
		[20] = { itemID = 11825 }; --Pet Bombling
		[21] = { itemID = 21277 }; --Tranquil Mechanical Yeti
	};
	{
		Name = AL["Rare"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Achievement"] };
		[02] = { itemID = 44738 }; --Kirin Tor Familiar
		[03] = { itemID = 44841 }; --Little Fawn's Salt Lick
		[04] = { itemID = 49912 }; --Perky Pug
		[05] = { itemID = 49646 }; --Core Hound Pup
		[06] = { itemID = 40653 }; --Reeking Pet Carrier
		[07] = { itemID = 44810 }; --Turkey Cage
		[08] = { itemID = 44819 }; --Baby Blizzard Bear
		[09] = { itemID = 49362 }; --Onyxian Whelpling
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Faction"] };
		[17] = { itemID = 38628 }; --Nether Ray Fry
		[18] = { itemID = 44723 }; --Nurtured Penguin Egg
		[19] = { itemID = 46820 }; --Shimmering Wyrmling
		[20] = { itemID = 46821 }; --Shimmering Wyrmling
		[21] = { itemID = 34478 }; --Tiny Sporebat
		[22] = { itemID = 39898 }; --Cobra Hatchling
		[23] = { itemID = 44721 }; --Proto-Drake Whelp
		[24] = { itemID = 39896 }; --Tickbird Hatchling
		[25] = { itemID = 39899 }; --AtlasLoot.Colors.WHITE Tickbird Hatchling
	};
	{
		Name = AL["Rare"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["World Drop"] };
		[02] = { itemID = 8494 }; --Parrot Cage (Hyacinth Macaw)
		[03] = { itemID = 43698 }; --Giant Sewer Rat
		[04] = { itemID = 34535 }; --Azure Whelpling
		[05] = { itemID = 29960 }; --Captured Firefly
		[06] = { itemID = 8491 }; --Cat Carrier (Black Tabby)
		[07] = { itemID = 10822 }; --Dark Whelpling
		[08] = { itemID = 48112 }; --Darting Hatchling
		[09] = { itemID = 20769 }; --Disgusting Oozeling
		[10] = { itemID = 48116 }; --Gundrak Hatchling
		[11] = { itemID = 48118 }; --Leaping Hatchling
		[12] = { itemID = 27445 }; --Magical Crawdad Box
		[13] = { itemID = 48122 }; --Ravasaur Hatchling
		[14] = { itemID = 48124 }; --Razormaw Hatchling
		[15] = { itemID = 8499 }; --Tiny Crimson Whelpling
		[16] = { itemID = 8498 }; --Tiny Emerald Whelpling
		[18] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Dungeon/Raid"] };
		[19] = { itemID = 33993, desc = "=q1=" .. BabbleZone["Zul'Aman"] }; --Mojo
		[20] = { itemID = 35504, desc = "=q2=" .. BabbleBoss["Kael'thas Sunstrider"] .. ", =q1=" .. BabbleZone["Magisters' Terrace"] }; --Phoenix Hatchling
		[21] = { itemID = 38658, desc = "=q2=" .. BabbleBoss["Prince Tenris Mirkblood"] .. ", =q1=" .. BabbleZone["Karazhan"] }; --Vampiric Batling
		[22] = { itemID = 48114, desc = "=q2=" .. AL["Deviate Ravager/Deviate Guardian"] .. ", =q1=" .. BabbleZone["Wailing Caverns"] }; --Deviate Hatchling
		[23] = { itemID = 48126, desc = "=q2=" .. AL["Razzashi Raptor"] .. ", =q1=" .. BabbleZone["Zul'Gurub"] }; --Razzashi Hatchling
	};
	{
		Name = AL["World Events"];
		[01] = { itemID = 23083 }; --Captured Flame
		[02] = { itemID = 34425 }; --Clockwork Rocket Bot
		[03] = { itemID = 46545 }; --Curious Oracle Hatchling
		[04] = { itemID = 46544 }; --Curious Wolvar Pup
		[05] = { itemID = 32616 }; --Egbert's Egg
		[06] = { itemID = 32622 }; --Elekk Training Collar
		[07] = { itemID = 53641 }; --Ice Chip
		[08] = { itemID = 46707 }; --Pint-Sized Pink Pachyderm
		[09] = { itemID = 34955 }; --Scorched Stone
		[10] = { itemID = 33154 }; --Sinister Squashling
		[11] = { itemID = 32617 }; --Sleepy Willy
		[12] = { itemID = 44794 }; --Spring Rabbit's Foot
		[13] = { itemID = 32233 }; --Wolpertinger's Tankard
		[14] = { itemID = 50446 }; --Toxic Wasteling
		[16] = { itemID = 21301 }; --AtlasLoot.Colors.GREEN Helper Box
		[17] = { itemID = 21308 }; --Jingling Bell
		[18] = { itemID = 23007 }; --Piglet's Collar
		[19] = { itemID = 23015 }; --Rat Cage
		[20] = { itemID = 21305 }; --AtlasLoot.Colors.RED Helper Box
		[21] = { itemID = 21309 }; --Snowman Kit
		[22] = { itemID = 22235 }; --Truesilver Shafted Arrow
		[23] = { itemID = 23002 }; --Turtle Box
	};
	{
		Name = AL["Promotional"];
		[01] = { itemID = 34493 }; --Dragon Kite
		[02] = { itemID = 23713 }; --Hippogryph Hatchling
		[03] = { itemID = 49287 }; --Tuskarr Kite
		[04] = { itemID = 32588 }; --Banana Charm
		[05] = { itemID = 20371 }; --AtlasLoot.Colors.BLUE Murloc Egg
		[06] = { itemID = 13584 }; --Diablo Stone
		[07] = { itemID = 39286 }; --Frosty's Collar
		[08] = { itemID = 37297 }; --Gold Medallion
		[09] = { itemID = 46802 }; --Heavy Murloc Egg
		[10] = { itemID = 30360 }; --Lurky's Egg
		[11] = { itemID = 45180 }; --Murkimus' Little Spear
		[12] = { itemID = 25535 }; --Netherwhelp's Collar
		[13] = { itemID = 13583 }; --Panda Collar
		[14] = { itemID = 22114 }; --Pink Murloc Egg
		[15] = { itemID = 34492 }; --Rocket Chicken
		[16] = { itemID = 38050 }; --Soul-Trader Beacon
		[17] = { itemID = 49343 }; --Spectral Tiger Cub
		[18] = { itemID = 39656 }; --Tyrael's Hilt
		[19] = { itemID = 41133 }; --Unhatched Mr. Chilly
		[20] = { itemID = 46767 }; --Warbot Ignition Key
		[21] = { itemID = 13582 }; --Zergling Leash
		[22] = { itemID = 56806 }; --Mini Thor
	};
	{
		Name = AL["Pet Store"];
		[01] = { itemID = 49693 }; --Lil' Phylactery
		[02] = { itemID = 54847 }; --Lil' XT
		[03] = { itemID = 49665 }; --Pandaren Monk
		[04] = { itemID = 49663 }; --Wind Rider Cub
		[05] = { itemID = 49662 }; --Gryphon Hatchling
	};
	{
		Name = AL["Accessories"];
		[01] = { itemID = 47541 }; --Argent Pony Bridle
		[02] = { itemID = 35223 }; --Papa Hummel's Old-Fashioned Pet Biscuit
		[03] = { itemID = 37431 }; --Fetch Ball
		[04] = { itemID = 43626 }; --Happy Pet Snack
		[05] = { itemID = 43352 }; --Pet Grooming Kit
		[06] = { itemID = 44820 }; --AtlasLoot.Colors.RED Ribbon Pet Leash
		[07] = { itemID = 37460 }; --Rope Pet Leash
	};
};

--------------
--- Mounts ---
--------------
AtlasLoot_Data["Mounts"] = {
	Module = "AtlasLoot_Vanity";
	Name = "Mounts";
	{
		Name = AL["Alliance Mounts"].." Page 1";
		[01] = { icon = "inv_misc_tournaments_symbol_nightelf", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Darnassus"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Alliance"] };
		[02] = { itemID = 18766 }; --Reins of the Swift Frostsaber
		[03] = { itemID = 18767 }; --Reins of the Swift Mistsaber
		[04] = { itemID = 18902 }; --Reins of the Swift Stormsaber
		[05] = { itemID = 8632 }; --Reins of the Spotted Frostsaber
		[06] = { itemID = 47100 }; --Reins of the Striped Dawnsaber
		[07] = { itemID = 8631 }; --Reins of the Striped Frostsaber
		[08] = { itemID = 8629 }; --Reins of the Striped Nightsaber
		[16] = { icon = "inv_misc_tournaments_symbol_gnome", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Gnomeregan Exiles"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Alliance"] };
		[17] = { itemID = 18772 }; --Swift AtlasLoot.Colors.GREEN Mechanostrider
		[18] = { itemID = 18773 }; --Swift AtlasLoot.Colors.WHITE Mechanostrider
		[19] = { itemID = 18774 }; --Swift Yellow Mechanostrider
		[20] = { itemID = 8595 }; --AtlasLoot.Colors.BLUE Mechanostrider
		[21] = { itemID = 13321 }; --AtlasLoot.Colors.GREEN Mechanostrider
		[22] = { itemID = 8563 }; --AtlasLoot.Colors.RED Mechanostrider
		[23] = { itemID = 13322 }; --Unpainted Mechanostrider
	};
	{
		Name = AL["Alliance Mounts"].." Page 2";
		[01] = { icon = "inv_misc_tournaments_symbol_dwarf", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Ironforge"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Alliance"] };
		[02] = { itemID = 18786 }; --Swift Brown Ram
		[03] = { itemID = 18787 }; --Swift Gray Ram
		[04] = { itemID = 18785 }; --Swift AtlasLoot.Colors.WHITE Ram
		[05] = { itemID = 5872 }; --Brown Ram
		[06] = { itemID = 5864 }; --Gray Ram
		[07] = { itemID = 5873 }; --AtlasLoot.Colors.WHITE Ram
		[09] = { icon = "inv_misc_tournaments_symbol_draenei", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Exodar"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Alliance"] };
		[10] = { itemID = 29745 }; --Great AtlasLoot.Colors.BLUE Elekk
		[11] = { itemID = 29746 }; --Great AtlasLoot.Colors.GREEN Elekk
		[12] = { itemID = 29747 }; --Great Purple Elekk
		[13] = { itemID = 28481 }; --Brown Elekk
		[14] = { itemID = 29744 }; --Gray Elekk
		[15] = { itemID = 29743 }; --Purple Elekk
		[16] = { icon = "inv_misc_tournaments_symbol_human", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Stormwind"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Alliance"] };
		[17] = { itemID = 18777 }; --Swift Brown Steed
		[18] = { itemID = 18776 }; --Swift Palomino
		[19] = { itemID = 18778 }; --Swift AtlasLoot.Colors.WHITE Steed
		[20] = { itemID = 2411 }; --Black Stallion Bridle
		[21] = { itemID = 5656 }; --Brown Horse Bridle
		[22] = { itemID = 5655 }; --Chestnut Mare Bridle
		[23] = { itemID = 2414 }; --Pinto Bridle
	};
	{
		Name = AL["Alliance Mounts"].." Page 3";
		[01] = { icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.. AL["Alliance Flying Mounts"], desc = "=ec1="..BabbleFaction["Alliance"] };
		[02] = { itemID = 25473 }; --Swift AtlasLoot.Colors.BLUE Gryphon
		[03] = { itemID = 25528 }; --Swift AtlasLoot.Colors.GREEN Gryphon
		[04] = { itemID = 25529 }; --Swift Purple Gryphon
		[05] = { itemID = 25527 }; --Swift AtlasLoot.Colors.RED Gryphon
		[06] = { itemID = 25471 }; --Ebon Gryphon
		[07] = { itemID = 25470 }; --Golden Gryphon
		[08] = { itemID = 25472 }; --Snowy Gryphon
		[10] = { itemID = 44225 }; --Reins of the Armored Brown Bear
		[11] = { itemID = 44230 }; --Reins of the Wooly Mammoth
		[12] = { itemID = 44235 }; --Reins of the Traveler's Tundra Mammoth
		[13] = { itemID = 44689 }; --Armored Snowy Gryphon
		[16] = { icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Kurenai"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Alliance"] };
		[17] = { itemID = 29227 }; --Reins of the Cobalt War Talbuk
		[18] = { itemID = 29229 }; --Reins of the Silver War Talbuk
		[19] = { itemID = 29230 }; --Reins of the Tan War Talbuk
		[20] = { itemID = 29231 }; --Reins of the AtlasLoot.Colors.WHITE War Talbuk
		[21] = { itemID = 31830 }; --Reins of the Cobalt Riding Talbuk
		[22] = { itemID = 31832 }; --Reins of the Silver Riding Talbuk
		[23] = { itemID = 31834 }; --Reins of the Tan Riding Talbuk
		[24] = { itemID = 31836 }; --Reins of the AtlasLoot.Colors.WHITE Riding Talbuk
		[26] = { icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Wintersaber Trainers"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Alliance"] };
		[27] = { itemID = 13086 }; --Reins of the Winterspring Frostsaber
		[28] = { icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.. BabbleFaction["The Silver Covenant"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Alliance"] };
		[29] = { itemID = 46815 }; --Quel'dorei Steed
		[30] = { itemID = 46813 }; --Silver Covenant Hippogryph
	};
	{
		Name = AL["Horde Mounts"].." Page 1";
		[01] = { icon = "inv_misc_tournaments_symbol_orc", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Orgrimmar"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Horde"] };
		[02] = { itemID = 18796 }; --Horn of the Swift Brown Wolf
		[03] = { itemID = 18798 }; --Horn of the Swift Gray Wolf
		[04] = { itemID = 18797 }; --Horn of the Swift Timber Wolf
		[05] = { itemID = 46099 }; --Horn of the Black Wolf
		[06] = { itemID = 5668 }; --Horn of the Brown Wolf
		[07] = { itemID = 5665 }; --Horn of the Dire Wolf
		[08] = { itemID = 1132 }; --Horn of the Timber Wolf
		[16] = { icon = "inv_misc_tournaments_symbol_bloodelf", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Silvermoon City"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Horde"] };
		[17] = { itemID = 29223 }; --Swift AtlasLoot.Colors.GREEN Hawkstrider
		[18] = { itemID = 28936 }; --Swift Pink Hawkstrider
		[19] = { itemID = 29224 }; --Swift Purple Hawkstrider
		[20] = { itemID = 29221 }; --Black Hawkstrider
		[21] = { itemID = 29220 }; --AtlasLoot.Colors.BLUE Hawkstrider
		[22] = { itemID = 29222 }; --Purple Hawkstrider
		[23] = { itemID = 28927 }; --AtlasLoot.Colors.RED Hawkstrider
	};
	{
		Name = AL["Horde Mounts"].." Page 2";
		[01] = { icon = "inv_misc_tournaments_symbol_troll", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Darkspear Trolls"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Horde"] };
		[02] = { itemID = 18788 }; --Swift AtlasLoot.Colors.BLUE Raptor
		[03] = { itemID = 18789 }; --Swift Olive Raptor
		[04] = { itemID = 18790 }; --Swift AtlasLoot.Colors.ORANGE Raptor
		[05] = { itemID = 8588 }; --Whistle of the Emerald Raptor
		[06] = { itemID = 8591 }; --Whistle of the Turquoise Raptor
		[07] = { itemID = 8592 }; --Whistle of the Violet Raptor
		[09] = { icon = "inv_misc_tournaments_symbol_tauren", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Thunder Bluff"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Horde"] };
		[10] = { itemID = 18794 }; --Great Brown Kodo
		[11] = { itemID = 18795 }; --Great Gray Kodo
		[12] = { itemID = 18793 }; --Great AtlasLoot.Colors.WHITE Kodo
		[13] = { itemID = 15290 }; --Brown Kodo
		[14] = { itemID = 15277 }; --Gray Kodo
		[15] = { itemID = 46100 }; --AtlasLoot.Colors.WHITE Kodo
		[16] = { icon = "inv_misc_tournaments_symbol_scourge", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Undercity"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Horde"] };
		[17] = { itemID = 13334 }; --AtlasLoot.Colors.GREEN Skeletal Warhorse
		[18] = { itemID = 47101 }; --Ochre Skeletal Warhorse
		[19] = { itemID = 18791 }; --Purple Skeletal Warhorse
		[20] = { itemID = 46308 }; --Black Skeletal Horse
		[21] = { itemID = 13332 }; --AtlasLoot.Colors.BLUE Skeletal Horse
		[22] = { itemID = 13333 }; --Brown Skeletal Horse
		[23] = { itemID = 13331 }; --AtlasLoot.Colors.RED Skeletal Horse
	};
	{
		Name = AL["Horde Mounts"].." Page 3";
		[01] = { icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE.. AL["Horde Flying Mounts"], desc = "=ec1="..BabbleFaction["Horde"] };
		[02] = { itemID = 25531 }; --Swift AtlasLoot.Colors.GREEN Wind Rider
		[03] = { itemID = 25533 }; --Swift Purple Wind Rider
		[04] = { itemID = 25477 }; --Swift AtlasLoot.Colors.RED Wind Rider
		[05] = { itemID = 25532 }; --Swift Yellow Wind Rider
		[06] = { itemID = 25475 }; --AtlasLoot.Colors.BLUE Wind Rider
		[07] = { itemID = 25476 }; --AtlasLoot.Colors.GREEN Wind Rider
		[08] = { itemID = 25474 }; --Tawny Wind Rider
		[10] = { itemID = 44226 }; --Reins of the Armored Brown Bear
		[11] = { itemID = 44231 }; --Reins of the Wooly Mammoth
		[12] = { itemID = 44234 }; --Reins of the Traveler's Tundra Mammoth
		[13] = { itemID = 44690 }; --Armored AtlasLoot.Colors.BLUE Wind Rider
		[16] = { icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE.. BabbleFaction["The Mag'har"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Horde"] };
		[17] = { itemID = 29102 }; --Reins of the Cobalt War Talbuk
		[18] = { itemID = 29104 }; --Reins of the Silver War Talbuk
		[19] = { itemID = 29105 }; --Reins of the Tan War Talbuk
		[20] = { itemID = 29103 }; --Reins of the AtlasLoot.Colors.WHITE War Talbuk
		[21] = { itemID = 31829 }; --Reins of the Cobalt Riding Talbuk
		[22] = { itemID = 31831 }; --Reins of the Silver Riding Talbuk
		[23] = { itemID = 31833 }; --Reins of the Tan Riding Talbuk
		[24] = { itemID = 31835 }; --Reins of the AtlasLoot.Colors.WHITE Riding Talbuk
		[26] = { icon = "INV_BannerPVP_02", name = "=q6=Ravasaur Trainers ", "=ec1="..BabbleFaction["Alliance"] };
		[27] = { itemID = 46102 }; --Whistle of the Venomhide Ravasaur
		[28] = { icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE.. BabbleFaction["The Sunreavers"] .. AL["Mounts"], desc = "=ec1="..BabbleFaction["Alliance"] };
		[29] = { itemID = 46816 }; --Sunreaver Hawkstrider
		[30] = { itemID = 46814 }; --Sunreaver Dragonhawk
	};
	{
		Name = AL["Neutral Faction Mounts"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Netherwing"] .. AL["Mounts"] };
		[02] = { itemID = 32858 }; --Reins of the Azure Netherwing Drake
		[03] = { itemID = 32859 }; --Reins of the Cobalt Netherwing Drake
		[04] = { itemID = 32857 }; --Reins of the Onyx Netherwing Drake
		[05] = { itemID = 32860 }; --Reins of the Purple Netherwing Drake
		[06] = { itemID = 32861 }; --Reins of the Veridian Netherwing Drake
		[07] = { itemID = 32862 }; --Reins of the Violet Netherwing Drake
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Sha'tari Skyguard"] .. AL["Mounts"] };
		[10] = { itemID = 32319 }; --AtlasLoot.Colors.BLUE Riding Nether Ray
		[11] = { itemID = 32314 }; --AtlasLoot.Colors.GREEN Riding Nether Ray
		[12] = { itemID = 32317 }; --AtlasLoot.Colors.RED Riding Nether Ray
		[13] = { itemID = 32316 }; --Purple Riding Nether Ray
		[14] = { itemID = 32318 }; --Silver Riding Nether Ray
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleFaction["Cenarion Expedition"] .. AL["Mounts"] };
		[17] = { itemID = 33999 }; --Cenarion War Hippogryph
		[19] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleFaction["The Sons of Hodir"] .. AL["Mounts"] };
		[20] = { itemID = 43958 }; --Reins of the Ice Mammoth
		[21] = { itemID = 44080 }; --Reins of the Ice Mammoth
		[22] = { itemID = 43961 }; --Reins of the Grand Ice Mammoth
		[23] = { itemID = 44086 }; --Reins of the Grand Ice Mammoth
		[25] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleFaction["The Wyrmrest Accord"] .. AL["Mounts"] };
		[26] = { itemID = 43955 }; --Reins of the AtlasLoot.Colors.RED Drake
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleFaction["The Oracles"] .. AL["Mounts"] };
		[29] = { itemID = 44707, desc = AL["Mysterious Egg"] }; --Reins of the AtlasLoot.Colors.GREEN Proto-Drake
	};
	{
		Name = AL["PvP Mounts"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Arena Reward"] };
		[02] = { itemID = 30609 }; --Swift Nether Drake
		[03] = { itemID = 34092 }; --Merciless Nether Drake
		[04] = { itemID = 37676 }; --Vengeful Nether Drake
		[05] = { itemID = 43516 }; --Brutal Nether Drake
		[06] = { itemID = 46171 }; --Deadly Gladiator's Frostwyrm
		[08] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Alliance PvP Mounts"] };
		[09] = { itemID = 29465 }; --Black Battlestrider
		[10] = { itemID = 29467 }; --Black War Ram
		[11] = { itemID = 29468 }; --Black War Steed Bridle
		[12] = { itemID = 35906 }; --Reins of the Black War Elekk
		[13] = { itemID = 29471 }; --Reins of the Black War Tiger
		[14] = { itemID = 19030 }; --Stormpike Battle Charger
		[15] = { itemID = 43956 }; --Reins of the Black War Mammoth
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Halaa PvP Mounts"] };
		[17] = { itemID = 28915 }; --Reins of the Dark Riding Talbuk
		[18] = { itemID = 29228 }; --Reins of the Dark War Talbuk
		[23] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Horde PvP Mounts"] };
		[24] = { itemID = 29466 }; --Black War Kodo
		[25] = { itemID = 29469 }; --Horn of the Black War Wolf
		[26] = { itemID = 29470 }; --AtlasLoot.Colors.RED Skeletal Warhorse
		[27] = { itemID = 34129 }; --Swift Warstrider
		[28] = { itemID = 29472 }; --Whistle of the Black War Raptor
		[29] = { itemID = 19029 }; --Horn of the Frostwolf Howler
		[30] = { itemID = 44077 }; --Reins of the Black War Mammoth
	};
	{
		Name = AL["Rare Mounts"].." Page 1";
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Dungeon/Raid"] };
		[02] = { itemID = 33809 }; --Amani War Bear
		[03] = { itemID = 32458 }; --Ashes of Al'ar
		[04] = { itemID = "49098", desc = "=q1=" .. BabbleZone["Trial of the Crusader"] }; --Crusader's Black Warhorse","=q2=" .. AL["A Tribute to Immortality"] .. 
		[05] = { itemID = "49096", desc = "=q1=" .. BabbleZone["Trial of the Crusader"] }; --Crusader's AtlasLoot.Colors.WHITE Warhorse","=q2=" .. AL["A Tribute to Immortality"] .. 
		[06] = { itemID = 13335, desc = "=q2="..BabbleBoss["Baron Rivendare"]..", =q1="..BabbleZone["Stratholme"] }; --Deathcharger's Reins
		[07] = { itemID = 30480, desc = "=q2="..BabbleBoss["Attumen the Huntsman"]..", =q1="..BabbleZone["Karazhan"], "0.25%" }; --Fiery Warhorse's Reins
		[08] = { itemID = 50818, desc = "=q2=" ..BabbleBoss["The Lich King"] .. ", =q1=" .. BabbleZone["Icecrown Citadel"] }; --Invincible's Reins
		[09] = { itemID = 45693, desc = "=q2=" .. AL["Alone in the Darkness"] .. ", =q1=" .. BabbleZone["Ulduar"] }; --Mimiron's Head
		[10] = { itemID = 43986, desc = "=q2="..BabbleBoss["Sartharion"]..", =q1="..AL["10 Man"].." "..BabbleZone["The Obsidian Sanctum"].." "..AL["Hard Mode"] }; --Reins of the Black Drake
		[11] = { itemID = 43954, desc = "=q2="..BabbleBoss["Sartharion"]..", =q1="..AL["25 Man"].." "..BabbleZone["The Obsidian Sanctum"].." "..AL["Hard Mode"] }; --Reins of the Twilight Drake
		[12] = { itemID = 43953, desc = "=q2=" .. BabbleZone["The Oculus"] }; --Reins of the AtlasLoot.Colors.BLUE Drake
		[13] = { itemID = 43952, desc = "=q2="..BabbleBoss["Malygos"]..", =q1="..AL["25 Man"].." "..BabbleZone["The Eye of Eternity"] }; --Reins of the Azure Drake
		[14] = { itemID = 44151, desc = "=q2="..BabbleBoss["Skadi the Ruthless"]..", =q1="..AL["Heroic"].." "..BabbleZone["Utgarde Pinnacle"] }; --Reins of the AtlasLoot.Colors.BLUE Proto-Drake
		[15] = { itemID = 43951, desc = "=q2="..BabbleBoss["Infinite Corruptor"]..", =q1="..AL["Heroic"].." "..BabbleZone["Old Stratholme"] }; --Reins of the Bronze Drake
		[17] = { itemID = "52200", desc = "=q1=" .. BabbleZone["Icecrown Citadel"] }; --Reins of the Crimson Deathcharger","=q2=" .. BabbleBoss["The Lich King"] .. 
		[18] = { itemID = 44083 }; --Reins of the Grand Black War Mammoth
		[19] = { itemID = 43959 }; --Reins of the Grand Black War Mammoth
		[20] = { itemID = 32768, desc = "=q2="..BabbleBoss["Anzu"]..", =q1="..BabbleZone["Sethekk Halls"] }; --Reins of the Raven Lord
		[21] = { itemID = 49046, desc = "=q2=" .. AL["A Tribute to Insanity (50)"] .. ", =q1=" .. BabbleZone["Trial of the Crusader"] }; --Swift Horde Wolf --Horde
		[22] = { itemID = 49044, desc = "=q2=" .. AL["A Tribute to Insanity (50)"] .. ", =q1=" .. BabbleZone["Trial of the Crusader"] }; --Swift Alliance Steed --Alliance
		[23] = { itemID = 35513, desc = "=q2="..AL["Crimson Sorcerer"]..", =q1="..BabbleZone["Magisters' Terrace"] }; --Swift AtlasLoot.Colors.WHITE Hawkstrider
		[24] = { itemID = 19872, desc = "=q2="..BabbleBoss["Bloodlord Mandokir"]..", =q1="..BabbleZone["Zul'Gurub"], "0.43%" }; --Swift Razzashi Raptor
		[25] = { itemID = 19902, desc = "=q2="..BabbleBoss["High Priest Thekal"]..", =q1="..BabbleZone["Zul'Gurub"], " 0.70%" }; --Swift Zulian Tiger
	};
	{
		Name = AL["Rare Mounts"].." Page 2";
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Achievement Reward"] };
		[02] = { itemID = 44223 }; --Reins of the Black War Bear
		[03] = { itemID = 44224 }; --Reins of the Black War Bear
		[04] = { itemID = 44843 }; --AtlasLoot.Colors.BLUE Dragonhawk Mount
		[05] = { itemID = 44842 }; --AtlasLoot.Colors.RED Dragonhawk Mount
		[06] = { itemID = 44178 }; --Reins of the Albino Drake
		[07] = { itemID = 44164 }; --Reins of the Black Proto-Drake
		[08] = { itemID = 45801 }; --Reins of the Ironbound Proto-Drake
		[09] = { itemID = 44175 }; --Reins of the Plagued Proto-Drake
		[10] = { itemID = 44160 }; --Reins of the AtlasLoot.Colors.RED Proto-Drake
		[11] = { itemID = 45802 }; --Reins of the Rusted Proto-Drake
		[12] = { itemID = 44177 }; --Reins of the Violet Proto-Drake
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Rare Mounts"] };
		[17] = { itemID = 44168 }; --Reins of the Time-Lost Proto-Drake
		[18] = { itemID = 46109 }; --Sea Turtle
		[20] = { itemID = 21218, desc = "=q2="..AL["Trash Mobs"]..", =q1="..BabbleZone["Ahn'Qiraj"] }; --AtlasLoot.Colors.BLUE Qiraji Resonating Crystal
		[21] = { itemID = 21323, desc = "=q2="..AL["Trash Mobs"]..", =q1="..BabbleZone["Ahn'Qiraj"] }; --AtlasLoot.Colors.GREEN Qiraji Resonating Crystal
		[22] = { itemID = 21321, desc = "=q2="..AL["Trash Mobs"]..", =q1="..BabbleZone["Ahn'Qiraj"] }; --AtlasLoot.Colors.RED Qiraji Resonating Crystal
		[23] = { itemID = 21324, desc = "=q2="..AL["Trash Mobs"]..", =q1="..BabbleZone["Ahn'Qiraj"] }; --Yellow Qiraji Resonating Crystal
	};
	{
		Name = AL["Rare Mounts"].." Page 3";
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Quest Reward"] };
		[02] = { itemID = 21176, desc = AL["Quest Reward"] }; --Black Qiraji Resonating Crystal
		[03] = { itemID = 43962, desc = AL["Quest Reward"]..": "..AL["Hyldnir Spoils"] }; --Reins of the AtlasLoot.Colors.WHITE Polar Bear
	};
	{
		Name = AL["Crafted Mounts"];
		[01] = { itemID = 54797 }; --Frosty Flying Carpet
		[02] = { itemID = 44558 }; --Magnificent Flying Carpet
		[03] = { itemID = 44413 }; --Mekgineer's Chopper
		[04] = { itemID = 41508 }; --Mechano-hog
		[05] = { itemID = 34061 }; --Turbo-Charged Flying Machine Control
		[06] = { itemID = 44554 }; --Flying Carpet
		[07] = { itemID = 34060 }; --Flying Machine Control
	};
	{
		Name = AL["Promotional Mounts"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Promotional Mounts"] };
		[02] = { itemID = 43599 }; --Big Blizzard Bear
		[03] = { itemID = 37719 }; --Swift Zhevra
		[04] = { itemID = 54860 }; --X-53 Touring Rocket
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Card Game Mounts"] };
		[06] = { itemID = 54068 }; --Wooly AtlasLoot.Colors.WHITE Rhino 
		[07] = { itemID = 49282 }; --Big Battle Bear
		[08] = { itemID = 49290 }; --Magic Rooster Egg
		[09] = { itemID = 49284 }; --Reins of the Swift Spectral Tiger
		[10] = { itemID = 23720 }; --Riding Turtle
		[12] = { itemID = 49286 }; --X-51 Nether-Rocket X-TREME
		[13] = { itemID = 49283 }; --Reins of the Spectral Tiger
		[14] = { itemID = 49285 }; --X-51 Nether-Rocket
	};
	{
		Name = AL["World Events"].." Page 1";
		[01] = { icon = "INV_BannerPVP_02", name = AtlasLoot.Colors.WHITE..BabbleFaction["Alliance"] };
		[02] = { itemID = 45591, price = "100 #champseal#" }; --Darnassian Nightsaber
		[03] = { itemID = 45590, price = "100 #champseal#" }; --Exodar Elekk
		[04] = { itemID = 45589, price = "100 #champseal#" }; --Gnomeregan Mechanostrider
		[05] = { itemID = 45586, price = "100 #champseal#" }; --Ironforge Ram
		[06] = { itemID = 45125, price = "100 #champseal#" }; --Stormwind Steed
		[08] = { itemID = 46745, price = "500 #gold# 5 #champseal#" }; --Great AtlasLoot.Colors.RED Elekk
		[09] = { itemID = 46752, price = "500 #gold# 5 #champseal#" }; --Swift Gray Steed
		[10] = { itemID = 46744, price = "500 #gold# 5 #champseal#" }; --Swift Moonsaber
		[11] = { itemID = 46748, price = "500 #gold# 5 #champseal#" }; --Swift Violet Ram
		[12] = { itemID = 46747, price = "500 #gold# 5 #champseal#" }; --Turbostrider
		[14] = { itemID = 47179, price = "100 #champseal#" }; --Argent Charger
		[15] = { itemID = 47180, price = "100 #champseal#" }; --Argent Warhorse
		[16] = { icon = "INV_BannerPVP_01", name = AtlasLoot.Colors.WHITE..BabbleFaction["Horde"] };
		[17] = { itemID = 45593, price = "100 #champseal#" }; --Darkspear Raptor
		[18] = { itemID = 45597, price = "100 #champseal#" }; --Forsaken Warhorse
		[19] = { itemID = 45595, price = "100 #champseal#" }; --Orgrimmar Wolf
		[20] = { itemID = 45596, price = "100 #champseal#" }; --Silvermoon Hawkstrider
		[21] = { itemID = 45592, price = "100 #champseal#" }; --Thunder Bluff Kodo
		[23] = { itemID = 46750, price = "500 #gold# 5 #champseal#" }; --Great Golden Kodo
		[24] = { itemID = 46749, price = "500 #gold# 5 #champseal#" }; --Swift Burgundy Wolf
		[25] = { itemID = 46743, price = "500 #gold# 5 #champseal#" }; --Swift Purple Raptor
		[26] = { itemID = 46751, price = "500 #gold# 5 #champseal#" }; --Swift AtlasLoot.Colors.RED Hawkstrider
		[27] = { itemID = 46746, price = "500 #gold# 5 #champseal#" }; --AtlasLoot.Colors.WHITE Skeletal Warhorse
		[29] = { itemID = 45725, price = "150 #champseal#" }; --Argent Hippogryph
	};
	{
		Name = AL["World Events"].." Page 2";
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Brewfest"] };
		[02] = { itemID = 37828, desc = "=q2="..AL["Headless Horseman"] }; --Great Brewfest Kodo
		[03] = { itemID = 33977, desc = "=q2="..AL["Headless Horseman"] }; --Swift Brewfest Ram
		[04] = { itemID = 33976 }; --Brewfest Ram
		[06] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Hallow's End"] };
		[07] = { itemID = 37012, desc = "=q2="..AL["Headless Horseman"] }; --The Horseman's Reins
		[08] = { itemID = 37011, desc = "=q2="..AL["Headless Horseman"] }; --Magic Broom
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Love is in the Air"] };
		[17] = { itemID = 50250 }; --Big Love Rocket
	};
};

