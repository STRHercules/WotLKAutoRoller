local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")
local alDif = AtlasLoot.Difficulties
local BabbleBoss = AtlasLoot_GetLocaleLibBabble("LibBabble-Boss-3.0")
local BabbleInventory = AtlasLoot_GetLocaleLibBabble("LibBabble-Inventory-3.0")
local BabbleFaction = AtlasLoot_GetLocaleLibBabble("LibBabble-Faction-3.0")
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")

-- Index
--- Dungeons & Raids
---- Keys
---- Utgarde Keep
---- The Nexus
---- Azjol-Nerub
---- Ahn'kahet: The Old Kingdom
---- Drak'Tharon Keep
---- The Violet Hold
---- Gundrak
---- Halls of Stone
---- Halls of Lightning
---- Caverns of Time: Old Stratholme
---- Utgarde Pinnacle
---- The Oculus
---- Vault of Archavon
---- Naxxramas
----- Construct Quarter
----- Arachnid Quarter
----- Military Quarter
----- Plague Quarter
----- Frostwyrm Lair
---- Obsidian Sanctum
---- The Eye of Eternity
---- Ulduar
---- Trial of the Champion
---- Trial of the Crusader
---- Trial of the Grand Crusader
---- Onyxia (Level 80)
---- The Forge of Souls
---- Pit of Saron
---- Halls of Reflection
---- Icecrown Citadel
----- Lower Spire
----- The Plagueworks
----- The Crimson Hall
----- Frostwing Halls
----- The Frozen Throne
---- Icecrown Citadel HEROIC
---- Ruby Sanctum
--- Factions
---- Alliance Vanguard
---- Argent Crusade
---- Frenzyheart Tribe
---- Horde Expedition
---- Kirin Tor
---- Knights of the Ebon Blade
---- The Kalu'ak
---- The Oracles
---- The Sons of Hodir
---- Winterfin Retreat
---- The Wyrmrest Accord
---- The Ashen Verdict
--- PvP
---- Armor Sets
---- Level 80 Epic Non-Sets
---- Wrathful Gladiator Weapons
---- PvP Class Items
---- PvP Miscellaneous
---- World PvP - Wintergrasp
---- World PvP - Grizzly Hills: Venture Bay
--- Sets & Collections
---- Naxx Sets (T7)/Ulduar Sets (T8)
---- Tier 9 Sets (T9)
---- Tier 10 Sets (T10)
---- Wrath Of The Lich King Sets
---- Blizzard Collectables
---- Legendaries
---- Tabards
---- Card Game Items
---- Vanity Pets
---- Mounts
---- BoE World Epics
---- Heirloom Items
---- Emblem of Heroism Items
---- Emblem of Valor Items
---- Emblem of Conquest Items
---- Emblem of Triumph Items
---- Emblem of Frost Items

------------------------
--- Dungeons & Raids ---
------------------------

------------
--- Keys ---
------------

AtlasLoot_Data["WrathKeys"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = "Keys";
	{
		Name = "Keys";
		[01] = { itemID = 44582 }; --Key to the Focusing Iris
		[02] = { itemID = 44581 }; --Heroic Key to the Focusing Iris
		[03] = { itemID = 45796 }; --Celestial Planetarium Key
		[04] = { itemID = 45798 }; --Heroic Celestial Planetarium Key
		[05] = { itemID = 42482 }; --The Violet Hold Key
	};
};
--------------------
--- Utgarde Keep ---
--------------------

AtlasLoot_Data["UtgardeKeep"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Utgarde Keep"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Prince Keleseth"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35572 }; --Reinforced Velvet Helm
		[03] = { itemID = 35571 }; --Dragon Stabler's Gauntlets
		[04] = { itemID = 35570 }; --Keleseth's Blade of Evocation
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37180 }; --Battlemap Hide Helm
		[19] = { itemID = 37178 }; --Strategist's Belt
		[20] = { itemID = 37179 }; --Infantry Assault Blade
		[21] = { itemID = 37177 }; --Wand of the San'layn
	};
	{
		Name = BabbleBoss["Skarvald the Constructor"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35575 }; --Skarvald's Dragonskin Habergeon
		[03] = { itemID = 35574 }; --Chestplate of the Northern Lights
		[04] = { itemID = 35573 }; --Arm Blade of Augelmir
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37183 }; --Bindings of the Tunneler
		[19] = { itemID = 37184 }; --Dalronn's Jerkin
		[20] = { itemID = 37182 }; --Helmet of the Constructor
		[21] = { itemID = 37181 }; --Dagger of Betrayal
	};
	{
		Name = BabbleBoss["Ingvar the Plunderer"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35577 }; --Holistic Patchwork Breeches
		[03] = { itemID = 35578 }; --Overlaid Chain Spaulders
		[04] = { itemID = 35576 }; --Ingvar's Monolithic Cleaver
		[05] = { itemID = 33330 }; --Ingvar's Head
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37194 }; --Sharp-Barbed Leather Belt
		[19] = { itemID = 37193 }; --Staggering Legplates
		[20] = { itemID = 37192 }; --Annhylde's Ring
		[21] = { itemID = 37191 }; --Drake-Mounted Crossbow
		[22] = { itemID = 37189 }; --Breeches of the Caller
		[23] = { itemID = 37188 }; --Plunderer's Helmet
		[24] = { itemID = 37186 }; --Unsmashable Heavy Band
		[25] = { itemID = 37190 }; --Enraged Feral Staff
		[26] = { itemID = 41793 }; --Design: Fierce Monarch Topaz
		[27] = { itemID = 43102 }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35580 }; --Skein Woven Mantle
		[03] = { itemID = 35579 }; --Vrykul Shackles
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 37197 }; --Tattered Castle Drape
		[18] = { itemID = 37196 }; --Runecaster's Mantle
	};
}

-----------------
--- The Nexus ---
-----------------

AtlasLoot_Data["TheNexus"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["The Nexus"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Grand Magus Telestra"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35602 }; --Chiseled Stalagmite Pauldrons
		[03] = { itemID = 35603 }; --Greaves of the AtlasLoot.Colors.BLUE Flight
		[04] = { itemID = 35601 }; --Drakonid Arm Blade
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37153 }; --Gloves of the Crystal Gardener
		[19] = { itemID = 37155 }; --Frozen Forest Kilt
		[20] = { itemID = 37152 }; --Girdle of Ice
		[21] = { itemID = 37151 }; --Band of Frosted Thorns
	};
	{
		Name = BabbleBoss["Anomalus"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35599 }; --Gauntlets of Serpent Scales
		[03] = { itemID = 35600 }; --Cleated Ice Boots
		[04] = { itemID = 35598 }; --Tome of the Lore Keepers
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37149 }; --Helm of Anomalus
		[19] = { itemID = 37144 }; --Hauberk of the Arcane Wraith
		[20] = { itemID = 37150 }; --Rift Striders
		[21] = { itemID = 37141 }; --Amulet of Dazzling Light
	};
	{
		Name = BabbleBoss["Ormorok the Tree-Shaper"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35605 }; --Belt of Draconic Runes
		[03] = { itemID = 35604 }; --Insulating Bindings
		[04] = { itemID = 35617 }; --Wand of Shimmering Scales
		[06] = { itemID = 21524 }; --AtlasLoot.Colors.RED Winter Hat
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37139 }; --Spaulders of the Careless Thief
		[19] = { itemID = 37138 }; --Bands of Channeled Energy
		[20] = { itemID = 37135 }; --Arcane-Shielded Helm
		[21] = { itemID = 37134 }; --Telestra's Journal
		[23] = { itemID = 21524 }; --AtlasLoot.Colors.RED Winter Hat
	};
	{
		Name = BabbleBoss["Commander Kolurg"];
		[01] = { itemID = 47241 }; --Emblem of Triumph
		[02] = { itemID = 37728 }; --Cloak of the Enemy
		[03] = { itemID = 37731 }; --Opposed Stasis Leggings
		[04] = { itemID = 37730 }; --Cleric's Linen Shoes
		[05] = { itemID = 37729 }; --Grips of Sculptured Icicles
	};
	{
		Name = BabbleBoss["Keristrasza"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35596 }; --Attuned Crystalline Boots
		[03] = { itemID = 35595 }; --Glacier Sharpened Vileblade
		[04] = { itemID = 35597 }; --Band of Glittering Permafrost
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37172 }; --Gloves of Glistening Runes
		[19] = { itemID = 37170 }; --Interwoven Scale Bracers
		[20] = { itemID = 37171 }; --Flame-Bathed Steel Girdle
		[21] = { itemID = 37169 }; --War Mace of Unrequited Love
		[22] = { itemID = 37165 }; --Crystal-Infused Tunic
		[23] = { itemID = 37167 }; --Dragon Slayer's Sabatons
		[24] = { itemID = 37166 }; --Sphere of AtlasLoot.Colors.RED Dragon's Blood
		[25] = { itemID = 37162 }; --Bulwark of the Noble Protector
		[26] = { itemID = 41794 }; --Design: Deadly Monarch Topaz
		[27] = { itemID = 43102 }; --Frozen Orb
	};
}

-------------------
--- Azjol-Nerub ---
-------------------

AtlasLoot_Data["AzjolNerub"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Azjol-Nerub"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Krik'thir the Gatewatcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35657 }; --Exquisite Spider-Silk Footwraps
		[03] = { itemID = 35656 }; --Aura Focused Gauntlets
		[04] = { itemID = 35655 }; --Cobweb Machete
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37218 }; --Stone-Worn Footwraps
		[19] = { itemID = 37219 }; --Custodian's Chestpiece
		[20] = { itemID = 37217 }; --Golden Limb Bands
		[21] = { itemID = 37216 }; --Facade Shield of Glyphs
	};
	{
		Name = BabbleBoss["Hadronox"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35660 }; --Spinneret Epaulets
		[03] = { itemID = 35659 }; --Treads of Aspiring Heights
		[04] = { itemID = 35658 }; --Life-Staff of the Web Lair
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37222 }; --Egg Sac Robes
		[19] = { itemID = 37230 }; --Grotto Mist Gloves
		[20] = { itemID = 37221 }; --Hollowed Mandible Legplates
		[21] = { itemID = 37220 }; --Essence of Gossamer
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35663 }; --Charmed Silken Cord
		[03] = { itemID = 35662 }; --Wing Cover Girdle
		[04] = { itemID = 35661 }; --Signet of Arachnathid Command
		[06] = { itemID = 43411 }; --Anub'arak's Broken Husk
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37242 }; --Sash of the Servant
		[19] = { itemID = 37240 }; --Flamebeard's Bracers
		[20] = { itemID = 37241 }; --Ancient Aligned Girdle
		[21] = { itemID = 37238 }; --Rod of the Fallen Monarch
		[22] = { itemID = 37236 }; --Insect Vestments
		[23] = { itemID = 37237 }; --Chitin Shell Greathelm
		[24] = { itemID = 37232 }; --Ring of the Traitor King
		[25] = { itemID = 37235 }; --Crypt Lord's Deft Blade
		[26] = { itemID = 41796 }; --Design: Infused Twilight Opal
		[27] = { itemID = 43102 }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[02] = { itemID = 37243 }; --Treasure Seeker's Belt
		[03] = { itemID = 37625 }; --Web Winder Gloves
		[04] = { itemID = 37624 }; --Stained-Glass Shard Ring
	};
}

----------------------------------
--- Ahn'kahet: The Old Kingdom ---
----------------------------------

AtlasLoot_Data["Ahnkahet"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Ahn'kahet: The Old Kingdom"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Elder Nadox"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35607 }; --Ahn'kahar Handwraps
		[03] = { itemID = 35608 }; --Crawler-Emblem Belt
		[04] = { itemID = 35606 }; --Blade of Nadox
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37594 }; --Elder Headpiece
		[19] = { itemID = 37593 }; --Sprinting Shoulderpads
		[20] = { itemID = 37592 }; --Brood Plague Helmet
		[21] = { itemID = 37591 }; --Nerubian Shield Ring
	};
	{
		Name = BabbleBoss["Prince Taldaram"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35611 }; --Gloves of the Blood Prince
		[03] = { itemID = 35610 }; --Slasher's Amulet
		[04] = { itemID = 35609 }; --Talisman of Scourge Command
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37613 }; --Flame Sphere Bindings
		[19] = { itemID = 37614 }; --Gauntlets of the Plundering Geist
		[20] = { itemID = 37612 }; --Bonegrinder Breastplate
		[21] = { itemID = 37595 }; --Necklace of Taldaram
	};
	{
		Name = BabbleBoss["Amanitar"] .. " (" .. AL["Heroic"] .. ")";
		[01] = { itemID = 47241 }; --Emblem of Triumph
		[02] = { itemID = 43287 }; --Silken Bridge Handwraps
		[03] = { itemID = 43286 }; --Legguards of Swarming Attacks
		[04] = { itemID = 43285 }; --Amulet of the Spell Flinger
		[05] = { itemID = 43284 }; --Amanitar Skullbow
	};
	{
		Name = BabbleBoss["Jedoga Shadowseeker"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 43278 }; --Cloak of the Darkcaster
		[03] = { itemID = 43279 }; --Battlechest of the Twilight Cult
		[04] = { itemID = 43277 }; --Jedoga's Greatring
		[06] = { itemID = 21524 }; --AtlasLoot.Colors.RED Winter Hat
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 43283 }; --Subterranean Waterfall Shroud
		[19] = { itemID = 43280 }; --Faceguard of the Hammer Clan
		[20] = { itemID = 43282 }; --Shadowseeker's Pendant
		[21] = { itemID = 43281 }; --Edge of Oblivion
		[23] = { itemID = 21524 }; --AtlasLoot.Colors.RED Winter Hat
	};
	{
		Name = BabbleBoss["Herald Volazj"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35612 }; --Mantle of Echoing Bats
		[03] = { itemID = 35613 }; --Pyramid Embossed Belt
		[04] = { itemID = 35614 }; --Volazj's Sabatons
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37622 }; --Skirt of the Old Kingdom
		[19] = { itemID = 37623 }; --Fiery Obelisk Handguards
		[20] = { itemID = 37620 }; --Bracers of the Herald
		[21] = { itemID = 37619 }; --Wand of Ahnkahet
		[22] = { itemID = 37616 }; --Kilt of the Forgotten One
		[23] = { itemID = 37618 }; --Greaves of Ancient Evil
		[24] = { itemID = 37617 }; --Staff of Sinister Claws
		[25] = { itemID = 37615 }; --Titanium Compound Bow
		[26] = { itemID = 41790 }; --Design: Precise Scarlet Ruby
		[27] = { itemID = 43102 }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35616 }; --Spored Tendrils Spaulders
		[03] = { itemID = 35615 }; --Glowworm Cavern Bindings
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 37625 }; --Web Winder Gloves
		[18] = { itemID = 37624 }; --Stained-Glass Shard Ring
	};
}

------------------------
--- Drak'Tharon Keep ---
------------------------

AtlasLoot_Data["DrakTharonKeep"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Drak'Tharon Keep"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Trollgore"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35620 }; --Berserker's Horns
		[03] = { itemID = 35619 }; --Infection Resistant Legguards
		[04] = { itemID = 35618 }; --Troll Butcherer
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37715 }; --Cowl of the Dire Troll
		[19] = { itemID = 37714 }; --Batrider's Cord
		[20] = { itemID = 37717 }; --Legs of Physical Regeneration
		[21] = { itemID = 37712 }; --Terrace Defence Boots
	};
	{
		Name = BabbleBoss["Novos the Summoner"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35632 }; --Robes of Novos
		[03] = { itemID = 35631 }; --Crystal Pendant of Warding
		[04] = { itemID = 35630 }; --Summoner's Stone Gavel
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37722 }; --Breastplate of Undeath
		[19] = { itemID = 37718 }; --Temple Crystal Fragment
		[20] = { itemID = 37721 }; --Cursed Lich Blade
	};
	{
		Name = BabbleBoss["King Dred"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35635 }; --Stable Master's Breeches
		[03] = { itemID = 35634 }; --Scabrous-Hide Helm
		[04] = { itemID = 35633 }; --Staff of the Great Reptile
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37725 }; --Savage Wound Wrap
		[19] = { itemID = 37724 }; --Handler's Arm Strap
		[20] = { itemID = 37726 }; --King Dred's Helm
		[21] = { itemID = 37723 }; --Incisor Fragment
	};
	{
		Name = BabbleBoss["The Prophet Tharon'ja"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35638 }; --Helmet of Living Flesh
		[03] = { itemID = 35637 }; --Muradin's Lost Greaves
		[04] = { itemID = 35636 }; --Tharon'ja's Aegis
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37798 }; --Overlook Handguards
		[19] = { itemID = 37791 }; --Leggings of the Winged Serpent
		[20] = { itemID = 37788 }; --Limb Regeneration Bracers
		[21] = { itemID = 37784 }; --Keystone Great-Ring
		[22] = { itemID = 37735 }; --Ziggurat Imprinted Chestguard
		[23] = { itemID = 37732 }; --Spectral Seal of the Prophet
		[24] = { itemID = 37734 }; --Talisman of Troll Divinity
		[25] = { itemID = 37733 }; --Mojo Masked Crusher
		[26] = { itemID = 41795 }; --Design: Timeless Forest Emerald
		[27] = { itemID = 43102 }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35641 }; --Scytheclaw Boots
		[03] = { itemID = 35640 }; --Darkweb Bindings
		[04] = { itemID = 35639 }; --Brighthelm of Guarding
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 37799 }; --Reanimator's Cloak
		[18] = { itemID = 37800 }; --Aviary Guardsman's Hauberk
		[19] = { itemID = 37801 }; --Waistguard of the Risen Knight
	};
}

-----------------------
--- The Violet Hold ---
-----------------------

AtlasLoot_Data["TheVioletHold"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["The Violet Hold"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Erekem"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 43363 }; --Screeching Cape
		[03] = { itemID = 43375 }; --Trousers of the Arakkoa
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 43406 }; --Cloak of the Gushing Wound
		[19] = { itemID = 43405 }; --Sabatons of Erekem
		[20] = { itemID = 43407 }; --Stormstrike Mace
	};
	{
		Name = BabbleBoss["Zuramat the Obliterator"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 43353 }; --Void Sentry Legplates
		[03] = { itemID = 43358 }; --Pendant of Shadow Beams
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 43403 }; --Shroud of Darkness
		[19] = { itemID = 43402 }; --The Obliterator Greaves
		[20] = { itemID = 43404 }; --Zuramat's Necklace
	};
	{
		Name = BabbleBoss["Xevozz"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35644 }; --Xevozz's Belt
		[03] = { itemID = 35642 }; --Riot Shield
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37867 }; --Footwraps of Teleportation
		[19] = { itemID = 37868 }; --Girdle of the Ethereal
		[20] = { itemID = 37861 }; --Necklace of Arcane Spheres
	};
	{
		Name = BabbleBoss["Ichoron"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35647 }; --Handguards of Rapid Pursuit
		[03] = { itemID = 35643 }; --Spaulders of Ichoron
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 43401 }; --Water-Drenched Robe
		[19] = { itemID = 37862 }; --Gauntlets of the Water Revenant
		[20] = { itemID = 37869 }; --Globule Signet
	};
	{
		Name = BabbleBoss["Moragg"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 43387 }; --Shoulderplates of the Beholder
		[03] = { itemID = 43382 }; --Band of Eyes
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 43410 }; --Moragg's Chestguard
		[19] = { itemID = 43408 }; --Solitare of Reflecting Beams
		[20] = { itemID = 43409 }; --Saliva Corroded Pike
	};
	{
		Name = BabbleBoss["Lavanthor"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35646 }; --Lava Burn Gloves
		[03] = { itemID = 35645 }; --Prison Warden's Shotgun
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37870 }; --Twin-Headed Boots
		[19] = { itemID = 37872 }; --Lavanthor's Talisman
		[20] = { itemID = 37871 }; --The Key
	};
	{
		Name = BabbleBoss["Cyanigosa"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35650 }; --Boots of the Portal Guardian
		[03] = { itemID = 35651 }; --Plate Claws of the Dragon
		[04] = { itemID = 35649 }; --Jailer's Baton
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37884 }; --Azure Cloth Bindings
		[19] = { itemID = 37886 }; --Handgrips of the Savage Emissary
		[20] = { itemID = 43500 }; --Bolstered Legplates
		[21] = { itemID = 37883 }; --Staff of Trickery
		[22] = { itemID = 37876 }; --Cyanigosa's Leggings
		[23] = { itemID = 37875 }; --Spaulders of the Violet Hold
		[24] = { itemID = 37874 }; --Gauntlets of Capture
		[25] = { itemID = 37873 }; --Mark of the War Prisoner
		[26] = { itemID = 41791 }; --Design: Thick Autumn's Glow
		[27] = { itemID = 43102 }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35654 }; --Bindings of the Bastille
		[03] = { itemID = 35653 }; --Dungeon Girdle
		[04] = { itemID = 35652 }; --Incessant Torch
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 35654 }; --Bindings of the Bastille
		[18] = { itemID = 37890 }; --Chain Gang Legguards
		[19] = { itemID = 37891 }; --Cast Iron Shackles
		[20] = { itemID = 35653 }; --Dungeon Girdle
		[21] = { itemID = 37889 }; --Prison Manifest
		[22] = { itemID = 35652 }; --Incessant Torch
	};
}

---------------
--- Gundrak ---
---------------

AtlasLoot_Data["Gundrak"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Gundrak"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Slad'ran"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35584 }; --Embroidered Gown of Zul'drak
		[03] = { itemID = 35585 }; --Cannibal's Legguards
		[04] = { itemID = 35583 }; --Witch Doctor's Wildstaff
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37629 }; --Slithering Slippers
		[19] = { itemID = 37628 }; --Slad'ran's Coiled Cord
		[20] = { itemID = 37627 }; --Snake Den Spaulders
		[21] = { itemID = 37626 }; --Wand of Sseratus
	};
	{
		Name = BabbleBoss["Drakkari Colossus"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35591 }; --Shoulderguards of the Ice Troll
		[03] = { itemID = 35592 }; --Hauberk of Totemic Mastery
		[04] = { itemID = 35590 }; --Drakkari Hunting Bow
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37637 }; --Living Mojo Belt
		[19] = { itemID = 37636 }; --Helm of Cheated Fate
		[20] = { itemID = 37634 }; --Bracers of the Divine Elemental
		[21] = { itemID = 37635 }; --Pauldrons of the Colossus
	};
	{
		Name = BabbleBoss["Moorabi"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35588 }; --Forlorn Breastplate of War
		[03] = { itemID = 35589 }; --Arcane Focal Signet
		[04] = { itemID = 35587 }; --Frozen Scepter of Necromancy
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37630 }; --Shroud of Moorabi
		[19] = { itemID = 37633 }; --Ground Tremor Helm
		[20] = { itemID = 37632 }; --Mojo Frenzy Greaves
		[21] = { itemID = 37631 }; --Fist of the Deity
	};
	{
		Name = BabbleBoss["Eck the Ferocious"] .. " (" .. AL["Heroic"] .. ")";
		[01] = { itemID = 47241 }; --Emblem of Triumph
		[02] = { itemID = 43313 }; --Leggings of the Ruins Dweller
		[03] = { itemID = 43312 }; --Gorloc Muddy Footwraps
		[04] = { itemID = 43311 }; --Helmet of the Shrine
		[05] = { itemID = 43310 }; --Engraved Chestplate of Eck
	};
	{
		Name = BabbleBoss["Gal'darah"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 43305 }; --Shroud of Akali
		[03] = { itemID = 43309 }; --Amulet of the Stampede
		[04] = { itemID = 43306 }; --Gal'darah's Signet
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37643 }; --Sash of Blood Removal
		[19] = { itemID = 37644 }; --Gored Hide Legguards
		[20] = { itemID = 37645 }; --Horn-Tipped Gauntlets
		[21] = { itemID = 37642 }; --Hemorrhaging Circle
		[22] = { itemID = 37641 }; --Arcane Flame Altar-Garb
		[23] = { itemID = 37640 }; --Boots of Transformation
		[24] = { itemID = 37639 }; --Grips of the Beast God
		[25] = { itemID = 37638 }; --Offering of Sacrifice
		[26] = { itemID = 43102 }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35594 }; --Snowmelt Silken Cinch
		[03] = { itemID = 35593 }; --Steel Bear Trap Bracers
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 37647 }; --Cloak of Bloodied Waters
		[18] = { itemID = 37648 }; --Belt of Tasseled Lanterns
		[19] = { itemID = 37646 }; --Burning Skull Pendant
	};
}

----------------------
--- Halls of Stone ---
----------------------

AtlasLoot_Data["HallsofStone"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Halls of Stone"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Maiden of Grief"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 38614 }; --Embrace of Sorrow
		[03] = { itemID = 38613 }; --Chain of Fiery Orbs
		[04] = { itemID = 38611 }; --Ringlet of Repose
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 38616 }; --Maiden's Girdle
		[19] = { itemID = 38615 }; --Lightning-Charged Gloves
		[20] = { itemID = 38617 }; --Woeful Band
		[21] = { itemID = 38618 }; --Hammer of Grief
	};
	{
		Name = BabbleBoss["Krystallus"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35673 }; --Leggings of Burning Gleam
		[03] = { itemID = 35672 }; --Hollow Geode Helm
		[04] = { itemID = 35670 }; --Brann's Lost Mining Helmet
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37652 }; --Spaulders of Krystallus
		[19] = { itemID = 37650 }; --Shardling Legguards
		[20] = { itemID = 37651 }; --The Prospector's Prize
	};
	{
		Name = BabbleBoss["The Tribunal of Ages"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35677 }; --Cosmos Vestments
		[03] = { itemID = 35676 }; --Constellation Leggings
		[04] = { itemID = 35675 }; --Linked Armor of the Sphere
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37655 }; --Mantle of the Tribunal
		[19] = { itemID = 37656 }; --Raging Construct Bands
		[20] = { itemID = 37654 }; --Sabatons of the Ages
		[21] = { itemID = 37653 }; --Sword of Justice
	};
	{
		Name = BabbleBoss["Sjonnir The Ironshaper"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35679 }; --Static Cowl
		[03] = { itemID = 35678 }; --Ironshaper's Legplates
		[04] = { itemID = 35680 }; --Amulet of Wills
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37669 }; --Leggings of the Stone Halls
		[19] = { itemID = 37668 }; --Bands of the Stoneforge
		[20] = { itemID = 37670 }; --Sjonnir's Girdle
		[21] = { itemID = 37667 }; --The Fleshshaper
		[22] = { itemID = 37666 }; --Boots of the Whirling Mist
		[23] = { itemID = 37658 }; --Sun-Emblazoned Chestplate
		[24] = { itemID = 37657 }; --Spark of Life
		[25] = { itemID = 37660 }; --Forge Ember
		[26] = { itemID = 41792 }; --Design: Deft Monarch Topaz
		[27] = { itemID = 43102 }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 35682 }; --Rune Giant Bindings
		[03] = { itemID = 35683 }; --Palladium Ring
		[04] = { itemID = 35681 }; --Unrelenting Blade
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 37673 }; --Dark Runic Mantle
		[18] = { itemID = 37672 }; --Patina-Coated Breastplate
		[19] = { itemID = 37671 }; --Refined Ore Gloves
	};
}

--------------------------
--- Halls of Lightning ---
--------------------------

AtlasLoot_Data["HallsofLightning"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Halls of Lightning"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["General Bjarngrim"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 36982 }; --Mantle of Electrical Charges
		[03] = { itemID = 36979 }; --Bjarngrim Family Signet
		[04] = { itemID = 36980 }; --Hewn Sparring Quarterstaff
		[05] = { itemID = 36981 }; --Hardened Vrykul Throwing Axe
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37825 }; --Traditionally Dyed Handguards
		[19] = { itemID = 37818 }; --Patroller's War-Kilt
		[20] = { itemID = 37814 }; --Iron Dwarf Smith Pauldrons
		[21] = { itemID = 37826 }; --The General's Steel Girdle
	};
	{
		Name = BabbleBoss["Volkhan"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 36983 }; --Cape of Seething Steam
		[03] = { itemID = 36985 }; --Volkhan's Hood
		[04] = { itemID = 36986 }; --Kilt of Molten Golems
		[05] = { itemID = 36984 }; --Eternally Folded Blade
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37840 }; --Shroud of Reverberation
		[19] = { itemID = 37843 }; --Giant-Hair Woven Gloves
		[20] = { itemID = 37842 }; --Belt of Vivacity
		[21] = { itemID = 37841 }; --Slag Footguards
	};
	{
		Name = BabbleBoss["Ionar"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 39536 }; --Thundercloud Grasps
		[03] = { itemID = 39657 }; --Tornado Cuffs
		[04] = { itemID = 39534 }; --Pauldrons of the Lightning Revenant
		[05] = { itemID = 39535 }; --Ionar's Girdle
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37846 }; --Charged-Bolt Grips
		[19] = { itemID = 37845 }; --Cord of Swirling Winds
		[20] = { itemID = 37826 }; --The General's Steel Girdle
		[21] = { itemID = 37844 }; --Winged Talisman
	};
	{
		Name = BabbleBoss["Loken"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 36991 }; --Raiments of the Titans
		[03] = { itemID = 36996 }; --Hood of the Furtive Assassin
		[04] = { itemID = 36992 }; --Leather-Braced Chain Leggings
		[05] = { itemID = 36995 }; --Fists of Loken
		[06] = { itemID = 36988 }; --Chaotic Spiral Amulet
		[07] = { itemID = 36993 }; --Seal of the Pantheon
		[08] = { itemID = 36994 }; --Projectile Activator
		[09] = { itemID = 36989 }; --Ancient Measuring Rod
		[10] = { itemID = 41799 }; --Design: Eternal Earthsiege Diamond
		[12] = { itemID = 43151 }; --Loken's Tongue
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37854 }; --Woven Bracae Leggings
		[19] = { itemID = 37853 }; --Advanced Tooled-Leather Bands
		[20] = { itemID = 37855 }; --Mail Girdle of the Audient Earth
		[21] = { itemID = 37852 }; --Colossal Skull-Clad Cleaver
		[22] = { itemID = 37851 }; --Ornate Woolen Stola
		[23] = { itemID = 37850 }; --Flowing Sash of Order
		[24] = { itemID = 37849 }; --Planetary Helm
		[25] = { itemID = 37848 }; --Lightning Giant Staff
		[26] = { itemID = 41799 }; --Design: Eternal Earthsiege Diamond
		[27] = { itemID = 43102 }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 36997 }; --Sash of the Hardened Watcher
		[03] = { itemID = 37000 }; --Storming Vortex Bracers
		[04] = { itemID = 36999 }; --Boots of the Terrestrial Guardian
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 37858 }; --Awakened Handguards
		[18] = { itemID = 37857 }; --Helm of the Lightning Halls
		[19] = { itemID = 37856 }; --Librarian's Paper Cutter
	};
}

---------------------------------------
--- Caverns of Time: Old Stratholme ---
---------------------------------------

AtlasLoot_Data["CoTStratholme"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Caverns of Time"] .. ": " .. BabbleZone["The Culling of Stratholme"];
	DisplayName = BabbleZone["The Culling of Stratholme"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Meathook"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 37083 }; --Kilt of Sewn Flesh
		[03] = { itemID = 37082 }; --Slaughterhouse Sabatons
		[04] = { itemID = 37079 }; --Enchanted Wire Stitching
		[05] = { itemID = 37081 }; --Meathook's Slicer
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37680 }; --Belt of Unified Souls
		[19] = { itemID = 37678 }; --Bile-Cured Gloves
		[20] = { itemID = 37679 }; --Spaulders of the Abomination
		[21] = { itemID = 37675 }; --Legplates of Steel Implants
	};
	{
		Name = BabbleBoss["Salramm the Fleshcrafter"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 37084 }; --Flowing Cloak of Command
		[03] = { itemID = 37095 }; --Waistband of the Thuzadin
		[04] = { itemID = 37088 }; --Spiked Metal Cilice
		[05] = { itemID = 37086 }; --Tome of Salramm
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37684 }; --Forgotten Shadow Hood
		[19] = { itemID = 37682 }; --Bindings of Dark Will
		[20] = { itemID = 37683 }; --Necromancer's Amulet
		[21] = { itemID = 37681 }; --Gavel of the Fleshcrafter
	};
	{
		Name = BabbleBoss["Chrono-Lord Epoch"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 37106 }; --Ouroboros Belt
		[03] = { itemID = 37105 }; --Treads of Altered History
		[04] = { itemID = 37096 }; --Necklace of the Chrono-Lord
		[05] = { itemID = 37099 }; --Sempiternal Staff
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37687 }; --Gloves of Distorted Time
		[19] = { itemID = 37686 }; --Cracked Epoch Grasps
		[20] = { itemID = 37688 }; --Legplates of the Infinite Drakonid
		[21] = { itemID = 37685 }; --Mobius Band
	};
	{
		Name = BabbleBoss["Infinite Corruptor"] .. " (" .. AL["Heroic"] .. ")";
		[01] = { itemID = 47241 }; --Emblem of Triumph
		[02] = { itemID = 43951 }; --Reins of the Bronze Drake
	};
	{
		Name = BabbleBoss["Mal'Ganis"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 37113 }; --Demonic Fabric Bands
		[03] = { itemID = 37114 }; --Gloves of Northern Lordaeron
		[04] = { itemID = 37110 }; --Gauntlets of Dark Conversion
		[05] = { itemID = 37109 }; --Discarded Silver Hand Spaulders
		[06] = { itemID = 37111 }; --Soul Preserver
		[07] = { itemID = 37108 }; --Dreadlord's Blade
		[08] = { itemID = 37112 }; --Beguiling Scepter
		[09] = { itemID = 37107 }; --Leeka's Shield
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37696 }; --Plague-Infected Bracers
		[19] = { itemID = 37695 }; --Legguards of Nature's Power
		[20] = { itemID = 37694 }; --Band of Guile
		[21] = { itemID = 37693 }; --Greed
		[22] = { itemID = 43085 }; --Royal Crest of Lordaeron
		[23] = { itemID = 37691 }; --Mantle of Deceit
		[24] = { itemID = 37690 }; --Pauldrons of Destiny
		[25] = { itemID = 37689 }; --Pendant of the Nathrezim
		[26] = { itemID = 37692 }; --Pierce's Pistol
		[27] = { itemID = 43102 }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { itemID = 37117 }; --King's Square Bracers
		[02] = { itemID = 37116 }; --Epaulets of Market Row
		[03] = { itemID = 37115 }; --Crusader's Square Pauldrons
	};
}

------------------------
--- Utgarde Pinnacle ---
------------------------

AtlasLoot_Data["UtgardePinnacle"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Utgarde Pinnacle"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Skadi the Ruthless"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 37043 }; --Tear-Linked Gauntlets
		[03] = { itemID = 37040 }; --Svala's Bloodied Shackles
		[04] = { itemID = 37037 }; --Ritualistic Athame
		[05] = { itemID = 37038 }; --Brazier Igniter
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37370 }; --Cuffs of the Trussed Hall
		[19] = { itemID = 37369 }; --Sorrowgrave's Breeches
		[20] = { itemID = 37368 }; --Silent Spectator Shoulderpads
		[21] = { itemID = 37367 }; --Echoing Stompers
	};
	{
		Name = BabbleBoss["King Ymiron"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 37048 }; --Shroud of Resurrection
		[03] = { itemID = 37052 }; --Reanimated Armor
		[04] = { itemID = 37051 }; --Seal of Valgarde
		[05] = { itemID = 37050 }; --Trophy Gatherer
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37374 }; --Ravenous Leggings of the Furbolg
		[19] = { itemID = 37373 }; --Massive Spaulders of the Jormungar
		[20] = { itemID = 37376 }; --Ferocious Pauldrons of the Rhino
		[21] = { itemID = 37371 }; --Ring of the Frenzied Wolvar
	};
	{
		Name = BabbleBoss["Svala Sorrowgrave"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 37055 }; --Silken Amice of the Ymirjar
		[03] = { itemID = 37057 }; --Drake Rider's Tunic
		[04] = { itemID = 37056 }; --Harpooner's Striders
		[05] = { itemID = 37053 }; --Amulet of Deflected Blows
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 44151 }; --Reins of the AtlasLoot.Colors.BLUE Proto-Drake
		[19] = { itemID = 37389 }; --Crenelation Leggings
		[20] = { itemID = 37379 }; --Skadi's Iron Belt
		[21] = { itemID = 37377 }; --Netherbreath Spellblade
		[22] = { itemID = 37384 }; --Staff of Wayward Principles
	};
	{
		Name = BabbleBoss["Gortok Palehoof"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 37067 }; --Ceremonial Pyre Mantle
		[03] = { itemID = 37062 }; --Crown of Forgotten Kings
		[04] = { itemID = 37066 }; --Ancient Royal Legguards
		[05] = { itemID = 37058 }; --Signet of Ranulf
		[06] = { itemID = 37064 }; --Vestige of Haldor
		[07] = { itemID = 37060 }; --Jeweled Coronation Sword
		[08] = { itemID = 37065 }; --Ymiron's Blade
		[09] = { itemID = 37061 }; --Tor's Crest
		[10] = { itemID = 41797 }; --Design: Austere Earthsiege Diamond
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37408 }; --Girdle of Bane
		[19] = { itemID = 37409 }; --Gilt-Edged Leather Gauntlets
		[20] = { itemID = 37407 }; --Sovereign's Belt
		[21] = { itemID = 37401 }; --AtlasLoot.Colors.RED Sword of Courage
		[22] = { itemID = 37398 }; --Mantle of Discarded Ways
		[23] = { itemID = 37395 }; --Ornamented Plate Regalia
		[24] = { itemID = 37397 }; --Gold Amulet of Kings
		[25] = { itemID = 37390 }; --Meteorite Whetstone
		[26] = { itemID = 41797 }; --Design: Austere Earthsiege Diamond
		[27] = { itemID = 43102 }; --Frozen Orb
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 37070 }; --Tundra Wolf Boots
		[03] = { itemID = 37069 }; --Dragonflayer Seer's Bindings
		[04] = { itemID = 37068 }; --Berserker's Sabatons
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 37587 }; --Ymirjar Physician's Robe
		[18] = { itemID = 37590 }; --Bands of Fading Light
		[19] = { itemID = 37410 }; --Tracker's Balanced Knives
	};
}

------------------
--- The Oculus ---
------------------

AtlasLoot_Data["TheOculus"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["The Oculus"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Drakos the Interrogator"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 36945 }; --Verdisa's Cuffs of Dreaming
		[03] = { itemID = 36946 }; --Runic Cage Chestpiece
		[04] = { itemID = 36943 }; --Timeless Beads of Eternos
		[05] = { itemID = 36944 }; --Lifeblade of Belgaristrasz
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37258 }; --Drakewing Raiments
		[19] = { itemID = 37256 }; --Scaled Armor of Drakos
		[20] = { itemID = 37257 }; --Band of Torture
		[21] = { itemID = 37255 }; --The Interrogator
	};
	{
		Name = BabbleBoss["Mage-Lord Urom"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 36947 }; --Centrifuge Core Cloak
		[03] = { itemID = 36949 }; --Gloves of the Azure-Lord
		[04] = { itemID = 36948 }; --Horned Helm of Varos
		[05] = { itemID = 36950 }; --Wing Commander's Breastplate
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37261 }; --Gloves of Radiant Light
		[19] = { itemID = 37262 }; --Azure Ringmail Leggings
		[20] = { itemID = 37263 }; --Legplates of the Oculus Guardian
		[21] = { itemID = 37260 }; --Cloudstrider's Waraxe
	};
	{
		Name = BabbleBoss["Varos Cloudstrider"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 36954 }; --The Conjurer's Slippers
		[03] = { itemID = 36951 }; --Sidestepping Handguards
		[04] = { itemID = 36953 }; --Spaulders of Skillful Maneuvers
		[05] = { itemID = 36952 }; --Girdle of Obscuring
		[07] = { itemID = 21525 }; --AtlasLoot.Colors.GREEN Winter Hat
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37289 }; --Sash of Phantasmal Images
		[19] = { itemID = 37288 }; --Catalytic Bands
		[20] = { itemID = 37195 }; --Band of Enchanted Growth
		[21] = { itemID = 37264 }; --Pendulum of Telluric Currents
		[23] = { itemID = 21525 }; --AtlasLoot.Colors.GREEN Winter Hat
	};
	{
		Name = BabbleBoss["Ley-Guardian Eregos"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 36973 }; --Vestments of the Scholar
		[03] = { itemID = 36971 }; --Headguard of Westrift
		[04] = { itemID = 36969 }; --Helm of the Ley-Guardian
		[05] = { itemID = 36974 }; --Eredormu's Ornamented Chestguard
		[06] = { itemID = 36961 }; --Dragonflight Great-Ring
		[07] = { itemID = 36972 }; --Tome of Arcane Phenomena
		[08] = { itemID = 36962 }; --Wyrmclaw Battleaxe
		[09] = { itemID = 36975 }; --Malygos's Favor
		[10] = { itemID = 41798 }; --Design: Bracing Earthsiege Diamond
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 37361 }; --Cuffs of Winged Levitation
		[19] = { itemID = 37363 }; --Gauntlets of Dragon Wrath
		[20] = { itemID = 37362 }; --Leggings of Protective Auras
		[21] = { itemID = 37360 }; --Staff of Draconic Combat
		[22] = { itemID = 37291 }; --Ancient Dragon Spirit Cape
		[23] = { itemID = 37294 }; --Crown of Unbridled Magic
		[24] = { itemID = 37293 }; --Mask of the Watcher
		[25] = { itemID = 37292 }; --Ley-Guardian's Legguards
		[26] = { itemID = 43102 }; --Frozen Orb
		[28] = { itemID = 52676, "=ds=" .. AL["Random Heroic Reward"] }; --Cache of the Ley-Guardian
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 36978 }; --Ley-Whelphide Belt
		[03] = { itemID = 36977 }; --Bindings of the Construct
		[04] = { itemID = 36976 }; --Ring-Lord's Leggings
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 37366 }; --Drake-Champion's Bracers
		[18] = { itemID = 37365 }; --Bands of the Sky Ring
		[19] = { itemID = 37290 }; --Dragon Prow Amulet
		[20] = { itemID = 37364 }; --Frostbridge Orb
	};
};

--------------------------
--- The Forge of Souls ---
--------------------------

AtlasLoot_Data["ForgeofSouls"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["The Forge of Souls"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Bronjahm"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 49788 }; --Cold Sweat Grips
		[03] = { itemID = 49785 }; --Bewildering Shoulderpads
		[04] = { itemID = 49786 }; --Robes of the Cheating Heart
		[05] = { itemID = 49787 }; --Seven Stormy Mornings
		[06] = { itemID = 49784 }; --Minister's Number One Legplates
		[07] = { itemID = 49783 }; --Lucky Old Sun
		[09] = { itemID = 50317 }; --Papa's New Bag
		[10] = { itemID = 50316 }; --Papa's Brand New Bag
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 50193 }; --Very Fashionable Shoulders
		[18] = { itemID = 50197 }; --Eyes of Bewilderment
		[19] = { itemID = 50194 }; --Weeping Gauntlets
		[20] = { itemID = 50196 }; --Love's Prisoner
		[21] = { itemID = 50191 }; --Nighttime
		[22] = { itemID = 50169 }; --Papa's Brand New Knife
		[24] = { itemID = 50317 }; --Papa's New Bag
		[25] = { itemID = 50316 }; --Papa's Brand New Bag
	};
	{
		Name = BabbleBoss["Devourer of Souls"];
		[01] = { itemID = 49792 }; --Accursed Crawling Cape
		[02] = { itemID = 49796 }; --Essence of Anger
		[03] = { itemID = 49798 }; --Soul Screaming Boots
		[04] = { itemID = 49791 }; --Lost Reliquary Chestguard
		[05] = { itemID = 49797 }; --Brace Guards of the Starless Night
		[06] = { itemID = 49794 }; --Legplates of Frozen Granite
		[07] = { itemID = 49795 }; --Sollerets of Suffering
		[16] = { itemID = 49799 }; --Coil of Missing Gems
		[17] = { itemID = 49800 }; --Spiteful Signet
		[19] = { itemID = 49789 }; --Heartshiver
		[20] = { itemID = 49790 }; --Blood Boil Lancet
		[21] = { itemID = 49793 }; --Tower of the Mouldering Corpse
	};
	{
		Name = BabbleBoss["Devourer of Souls"];
		[01] = { itemID = 50213 }; --Mord'rethar Robes
		[02] = { itemID = 50206 }; --Frayed Scoundrel's Cap
		[03] = { itemID = 50212 }; --Essence of Desire
		[04] = { itemID = 50214 }; --Helm of the Spirit Shock
		[05] = { itemID = 50209 }; --Essence of Suffering
		[06] = { itemID = 50208 }; --Pauldrons of the Devourer
		[07] = { itemID = 50207 }; --Black Spire Sabatons
		[08] = { itemID = 50215 }; --Recovered Reliquary Boots
		[16] = { itemID = 50211 }; --Arcane Loops of Anger
		[17] = { itemID = 50198 }; --Needle-Encrusted Scorpion
		[19] = { itemID = 50203 }; --Blood Weeper
		[20] = { itemID = 50210 }; --Seethe
	};
}

--------------------
--- Pit of Saron ---
--------------------

AtlasLoot_Data["PitofSaron"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Pit of Saron"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Forgemaster Garfrost"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 49805 }; --Ice-Steeped Sandals
		[03] = { itemID = 49806 }; --Flayer's Black Belt
		[04] = { itemID = 49804 }; --Polished Mirror Helm
		[05] = { itemID = 49803 }; --Ring of Carnelian and Bone
		[06] = { itemID = 49802 }; --Garfrost's Two-Ton Hammer
		[07] = { itemID = 49801 }; --Unspeakable Secret
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 50233 }; --Spurned Val'kyr Shoulderguards
		[18] = { itemID = 50234 }; --Shoulderplates of Frozen Blood
		[19] = { itemID = 50230 }; --Malykriss Vambraces
		[20] = { itemID = 50229 }; --Legguards of the Frosty Depths
		[21] = { itemID = 50228 }; --Barbed Ymirheim Choker
		[22] = { itemID = 50227 }; --Surgeon's Needle
	};
	{
		Name = AL["Krick and Ick"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 49809 }; --Wristguards of Subterranean Moss
		[03] = { itemID = 49810 }; --Scabrous Zombie Leather Belt
		[04] = { itemID = 49811 }; --Black Dragonskin Breeches
		[05] = { itemID = 49808 }; --Bent Gold Belt
		[06] = { itemID = 49812 }; --Purloined Wedding Ring
		[07] = { itemID = 49807 }; --Krick's Beetle Stabber
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 50266 }; --Ancient Polar Bear Hide
		[18] = { itemID = 50263 }; --Braid of Salt and Fire
		[19] = { itemID = 50264 }; --Chewed Leather Wristguards
		[20] = { itemID = 50265 }; --Blackened Ghoul Skin Leggings
		[21] = { itemID = 50235 }; --Ick's Rotting Thumb
		[22] = { itemID = 50262 }; --Felglacier Bolter
	};
	{
		Name = BabbleBoss["Scourgelord Tyrannus"];
		[01] = { itemID = 49823 }; --Cloak of the Fallen Cardinal
		[02] = { itemID = 49825 }; --Palebone Robes
		[03] = { itemID = 49822 }; --Rimewoven Silks
		[04] = { itemID = 49817 }; --Shaggy Wyrmleather Leggings
		[05] = { itemID = 49824 }; --Horns of the Spurned Val'kyr
		[06] = { itemID = 49826 }; --Shroud of Rime
		[07] = { itemID = 49820 }; --Gondria's Spectral Bracer
		[08] = { itemID = 49819 }; --Skeleton Lord's Cranium
		[09] = { itemID = 49816 }; --Scourgelord's Frigid Chestplate
		[16] = { itemID = 49818 }; --Painfully Sharp Choker
		[18] = { itemID = 49821 }; --Protector of Frigid Souls
		[19] = { itemID = 49813 }; --Rimebane Rifle
	};
	{
		Name = BabbleBoss["Scourgelord Tyrannus"];
		[01] = { itemID = 50286 }; --Prelate's Snowshoes
		[02] = { itemID = 50269 }; --Fleshwerk Leggings
		[03] = { itemID = 50270 }; --Belt of Rotted Fingernails
		[04] = { itemID = 50283 }; --Mudslide Boots
		[05] = { itemID = 50272 }; --Frost Wyrm Ribcage
		[06] = { itemID = 50285 }; --Icebound Bronze Cuirass
		[07] = { itemID = 50284 }; --Rusty Frozen Fingerguards
		[16] = { itemID = 50271 }; --Band of Stained Souls
		[17] = { itemID = 50259 }; --Nevermelting Ice Crystal
		[19] = { itemID = 50268 }; --Rimefang's Claw
		[20] = { itemID = 50267 }; --Tyrannical Beheader
		[21] = { itemID = 50273 }; --Engraved Gargoyle Femur
	};
}

---------------------------
--- Halls of Reflection ---
---------------------------

AtlasLoot_Data["HallsofReflection"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Halls of Reflection"];
	Type = "WrathDungeon";
	{
		Name = BabbleBoss["Falric"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 49832 }; --Eerie Runeblade Polisher
		[03] = { itemID = 49828 }; --Marwyn's Macabre Fingertips
		[04] = { itemID = 49830 }; --Fallen Sentry's Hood
		[05] = { itemID = 49831 }; --Muddied Boots of Brill
		[06] = { itemID = 49829 }; --Valonforth's Tarnished Pauldrons
		[07] = { itemID = 49827 }; --Ghoulslicer
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 50292 }; --Bracer of Worn Molars
		[18] = { itemID = 50293 }; --Spaulders of Black Betrayal
		[19] = { itemID = 50295 }; --Spiked Toestompers
		[20] = { itemID = 50294 }; --Chestpiece of High Treason
		[21] = { itemID = 50290 }; --Falric's Wrist-Chopper
		[22] = { itemID = 50291 }; --Soulsplinter
	};
	{
		Name = BabbleBoss["Marwyn"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 49834 }; --Frayed Abomination Stitching Shoulders
		[03] = { itemID = 49838 }; --Carpal Tunnelers
		[04] = { itemID = 49837 }; --Mitts of Burning Hail
		[05] = { itemID = 49836 }; --Frostsworn Bone Leggings
		[06] = { itemID = 49833 }; --Splintered Icecrown Parapet
		[07] = { itemID = 49835 }; --Splintered Door of the Citadel
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 50298 }; --Sightless Crown of Ulmaas
		[18] = { itemID = 50299 }; --Suspiciously Soft Gloves
		[19] = { itemID = 50300 }; --Choking Hauberk
		[20] = { itemID = 50297 }; --Frostsworn Bone Chestpiece
		[21] = { itemID = 50260 }; --Ephemeral Snowflake
		[22] = { itemID = 50296 }; --Orca-Hunter's Harpoon
	};
	{
		Name = BabbleBoss["The Lich King"];
		[01] = { itemID = 49842 }; --Tapestry of the Frozen Throne
		[02] = { itemID = 49849 }; --Tattered Glacial-Woven Hood
		[03] = { itemID = 49848 }; --Grim Lasher Shoulderguards
		[04] = { itemID = 49841 }; --Blackened Geist Ribs
		[05] = { itemID = 49847 }; --Legguards of Untimely Demise
		[06] = { itemID = 49851 }; --Greathelm of the Silver Hand
		[07] = { itemID = 49843 }; --Crystalline Citadel Gauntlets
		[16] = { itemID = 49846 }; --Chilled Heart of the Glacier
		[17] = { itemID = 49839 }; --Mourning Malice
		[18] = { itemID = 49840 }; --Hate-Forged Cleaver
		[19] = { itemID = 49845 }; --Bone Golem Scapula
		[20] = { itemID = 49844 }; --Crypt Fiend Slayer
	};
	{
		Name = BabbleBoss["The Lich King"];
		[01] = { itemID = 50314 }; --Strip of Remorse
		[02] = { itemID = 50312 }; --Chestguard of Broken Branches
		[03] = { itemID = 50308 }; --Blighted Leather Footpads
		[04] = { itemID = 50304 }; --Hoarfrost Gauntlets
		[05] = { itemID = 50311 }; --Second Helm of the Executioner
		[06] = { itemID = 50305 }; --Grinning Skull Boots
		[08] = { itemID = 50310 }; --Fossilized Ammonite Choker
		[09] = { itemID = 50313 }; --Oath of Empress Zoe
		[10] = { itemID = 50306 }; --The Lady's Promise
		[11] = { itemID = 50309 }; --Shriveled Heart
		[16] = { itemID = 50302 }; --Liar's Tongue
		[17] = { itemID = 50303 }; --Black Icicle
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 49854 }; --Mantle of Tattered Feathers
		[03] = { itemID = 49855 }; --Plated Grips of Korth'azz
		[04] = { itemID = 49853 }; --Titanium Links of Lore
		[05] = { itemID = 49852 }; --Coffin Nail
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 50318 }; --Ghostly Wristwraps
		[18] = { itemID = 50315 }; --Seven-Fingered Claws
		[19] = { itemID = 50319 }; --Unsharpened Ice Razor
		[21] = { itemID = 50380 }; --Battered Hilt
		[22] = { itemID = 50379 }; --Battered Hilt
		[23] = { itemID = 50047 }; --Quel'Delar, Lens of the Mind
		[24] = { itemID = 50046 }; --Quel'Delar, Cunning of the Shadows
		[25] = { itemID = 50049 }; --Quel'Delar, Ferocity of the Scorned
		[26] = { itemID = 50048 }; --Quel'Delar, Might of the Faithful
		[27] = { itemID = 50051 }; --Hammer of Purified Flame
		[28] = { itemID = 50050 }; --Cudgel of Furious Justice
		[29] = { itemID = 50052 }; --Lightborn Spire
	};
}


-----------------------------
--- Trial of the Champion ---
-----------------------------

AtlasLoot_Data["TrialoftheChampion"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Trial of the Champion"];
	Type = "WrathDungeon";
	{
		Name = AL["Faction Champions"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 47173 }; --Bindings of the Wicked
		[03] = { itemID = 47170 }; --Belt of Fierce Competition
		[04] = { itemID = 47174 }; --Binding of the Tranquil Glade
		[05] = { itemID = 47175 }; --Scale Boots of the Outlander
		[06] = { itemID = 47172 }; --Helm of the Bested Gallant
		[07] = { itemID = 47171 }; --Legguards of Abandoned Fealty
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 47249 }; --Leggings of the Snowy Bramble
		[19] = { itemID = 47248 }; --Treads of Dismal Fortune
		[20] = { itemID = 47250 }; --Pauldrons of the Deafening Gale
		[21] = { itemID = 47244 }; --Chestguard of the Ravenous Fiend
		[22] = { itemID = 47243 }; --Mark of the Relentless
		[23] = { itemID = 47493 }; --Edge of Ruin
		[24] = { itemID = 44990 }; --Champion's Seal
	};
	{
		Name = BabbleBoss["Argent Confessor Paletress"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 47181 }; --Belt of the Churning Blaze
		[03] = { itemID = 47218 }; --The Confessor's Binding
		[04] = { itemID = 47185 }; --Leggings of the Haggard Apprentice
		[05] = { itemID = 47217 }; --Gaze of the Somber Keeper
		[06] = { itemID = 47177 }; --Gloves of the Argent Fanatic
		[07] = { itemID = 47178 }; --Carapace of Grim Visions
		[08] = { itemID = 47211 }; --Wristguards of Ceaseless Regret
		[09] = { itemID = 47176 }; --Breastplate of the Imperial Joust
		[10] = { itemID = 47212 }; --Mercy's Hold
		[11] = { itemID = 47219 }; --Brilliant Hailstone Amulet
		[12] = { itemID = 47213 }; --Abyssal Rune
		[13] = { itemID = 47214 }; --Banner of Victory
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 47498 }; --Gloves of Dismal Fortune
		[19] = { itemID = 47496 }; --Armbands of the Wary Lookout
		[20] = { itemID = 47245 }; --Pauldrons of Concealed Loathing
		[21] = { itemID = 47497 }; --Helm of the Crestfallen Challenger
		[22] = { itemID = 47514 }; --Regal Aurous Shoulderplates
		[23] = { itemID = 47510 }; --Trueheart Girdle
		[24] = { itemID = 47495 }; --Legplates of Relentless Onslaught
		[25] = { itemID = 47511 }; --Plated Greaves of Providence
		[26] = { itemID = 47494 }; --Ancient Pendant of Arathor
		[27] = { itemID = 47512 }; --Sinner's Confession
		[28] = { itemID = 47500 }; --Peacekeeper Blade
		[29] = { itemID = 47522 }; --Marrowstrike
		[30] = { itemID = 44990 }; --Champion's Seal
	};
	{
		Name = BabbleBoss["Eadric the Pure"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Normal Mode"] };
		[02] = { itemID = 47181 }; --Belt of the Churning Blaze
		[03] = { itemID = 47185 }; --Leggings of the Haggard Apprentice
		[04] = { itemID = 47210 }; --Mantle of Gnarled Overgrowth
		[05] = { itemID = 47177 }; --Gloves of the Argent Fanatic
		[06] = { itemID = 47202 }; --Leggings of Brazen Trespass
		[07] = { itemID = 47178 }; --Carapace of Grim Visions
		[08] = { itemID = 47176 }; --Breastplate of the Imperial Joust
		[09] = { itemID = 47197 }; --Gauntlets of the Stouthearted Crusader
		[10] = { itemID = 47201 }; --Boots of Heartfelt Repentance
		[11] = { itemID = 47199 }; --Greaves of the Grand Paladin
		[12] = { itemID = 47200 }; --Signet of Purity
		[13] = { itemID = 47213 }; --Abyssal Rune
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Heroic Mode"] };
		[17] = { itemID = 47241 }; --Emblem of Triumph
		[18] = { itemID = 47501 }; --Kurisu's Indecision
		[19] = { itemID = 47496 }; --Armbands of the Wary Lookout
		[20] = { itemID = 47498 }; --Gloves of Dismal Fortune
		[21] = { itemID = 47504 }; --Barkhide Treads
		[22] = { itemID = 47497 }; --Helm of the Crestfallen Challenger
		[23] = { itemID = 47502 }; --Majestic Silversmith Shoulderplates
		[24] = { itemID = 47495 }; --Legplates of Relentless Onslaught
		[25] = { itemID = 47503 }; --Legplates of the Argent Armistice
		[26] = { itemID = 47494 }; --Ancient Pendant of Arathor
		[27] = { itemID = 47500 }; --Peacekeeper Blade
		[28] = { itemID = 47509 }; --Mariel's Sorrow
		[29] = { itemID = 47508 }; --Aledar's Battlestar
		[30] = { itemID = 44990 }; --Champion's Seal
	};
	{
		Name = BabbleBoss["The Black Knight"];
		[01] = { itemID = 47232 }; --Drape of the Undefeated
		[02] = { itemID = 47226 }; --Mantle of Inconsolable Fear
		[03] = { itemID = 47230 }; --Handwraps of Surrendered Hope
		[04] = { itemID = 47221 }; --Shoulderpads of the Infamous Knave
		[05] = { itemID = 47231 }; --Belt of Merciless Cruelty
		[06] = { itemID = 47228 }; --Leggings of the Bloodless Knight
		[07] = { itemID = 47220 }; --Helm of the Violent Fray
		[08] = { itemID = 47229 }; --Girdle of Arrogant Downfall
		[09] = { itemID = 47227 }; --Girdle of the Pallid Knight
		[16] = { itemID = 47222 }; --Uruka's Band of Zeal
		[17] = { itemID = 47215 }; --Tears of the Vanquished
		[18] = { itemID = 47216 }; --The Black Heart
	};
	{
		Name = BabbleBoss["The Black Knight"] .. " (" .. AL["Heroic"] .. ")";
		[01] = { itemID = 47241 }; --Emblem of Triumph
		[02] = { itemID = 47564 }; --Gaze of the Unknown
		[03] = { itemID = 47527 }; --Embrace of Madness
		[04] = { itemID = 47560 }; --Boots of the Crackling Flame
		[05] = { itemID = 47529 }; --Mask of Distant Memory
		[06] = { itemID = 47561 }; --Gloves of the Dark Exile
		[07] = { itemID = 47563 }; --Girdle of the Dauntless Conqueror
		[08] = { itemID = 47565 }; --Vambraces of Unholy Command
		[09] = { itemID = 47567 }; --Gauntlets of Revelation
		[10] = { itemID = 47562 }; --Symbol of Redemption
		[11] = { itemID = 47566 }; --The Warlord's Depravity
		[16] = { itemID = 47569 }; --Spectral Kris
		[17] = { itemID = 49682 }; --Black Knight's Rondel
		[18] = { itemID = 47568 }; --True-aim Long Rifle
		[20] = { itemID = 43102 }; --Frozen Orb
		[22] = { itemID = 44990 }; --Champion's Seal
	};
};

-------------------------
--- Vault of Archavon ---
-------------------------

AtlasLoot_Data["VaultofArchavon"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Vault of Archavon"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[02] = { itemID = 39492 }; --Heroes' Frostfire Robe
		[03] = { itemID = 39495 }; --Heroes' Frostfire Gloves
		[04] = { itemID = 39493 }; --Heroes' Frostfire Leggings
		[06] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[07] = { itemID = 39515 }; --Heroes' Robe of Faith
		[08] = { itemID = 39519 }; --Heroes' Gloves of Faith
		[09] = { itemID = 39517 }; --Heroes' Leggings of Faith
		[11] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[12] = { itemID = 39523 }; --Heroes' Raiments of Faith
		[13] = { itemID = 39530 }; --Heroes' Handwraps of Faith
		[14] = { itemID = 39528 }; --Heroes' Pants of Faith
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41950 }; --Hateful Gladiator's Silk Raiment
		[18] = { itemID = 41969 }; --Hateful Gladiator's Silk Handguards
		[19] = { itemID = 41957 }; --Hateful Gladiator's Silk Trousers
		[21] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[22] = { itemID = 41857 }; --Hateful Gladiator's Mooncloth Robe
		[23] = { itemID = 41872 }; --Hateful Gladiator's Mooncloth Gloves
		[24] = { itemID = 41862 }; --Hateful Gladiator's Mooncloth Leggings
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[27] = { itemID = 41919 }; --Hateful Gladiator's Satin Robe
		[28] = { itemID = 41938 }; --Hateful Gladiator's Satin Gloves
		[29] = { itemID = 41925 }; --Hateful Gladiator's Satin Leggings
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[02] = { itemID = 39497 }; --Heroes' Plagueheart Robe
		[03] = { itemID = 39500 }; --Heroes' Plagueheart Gloves
		[04] = { itemID = 39498 }; --Heroes' Plagueheart Leggings
		[06] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[07] = { itemID = 39547 }; --Heroes' Dreamwalker Vestments
		[08] = { itemID = 39544 }; --Heroes' Dreamwalker Gloves
		[09] = { itemID = 39546 }; --Heroes' Dreamwalker Trousers
		[11] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[12] = { itemID = 39554 }; --Heroes' Dreamwalker Raiments
		[13] = { itemID = 39557 }; --Heroes' Dreamwalker Handgrips
		[14] = { itemID = 39555 }; --Heroes' Dreamwalker Legguards
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[17] = { itemID = 42001 }; --Hateful Gladiator's Felweave Raiment
		[18] = { itemID = 42015 }; --Hateful Gladiator's Felweave Handguards
		[19] = { itemID = 42003 }; --Hateful Gladiator's Felweave Trousers
		[21] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[22] = { itemID = 41314 }; --Hateful Gladiator's Wyrmhide Robes
		[23] = { itemID = 41291 }; --Hateful Gladiator's Wyrmhide Gloves
		[24] = { itemID = 41302 }; --Hateful Gladiator's Wyrmhide Legguards
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[27] = { itemID = 41659 }; --Hateful Gladiator's Dragonhide Robes
		[28] = { itemID = 41771 }; --Hateful Gladiator's Dragonhide Gloves
		[29] = { itemID = 41665 }; --Hateful Gladiator's Dragonhide Legguards
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[02] = { itemID = 39538 }; --Heroes' Dreamwalker Robe
		[03] = { itemID = 39543 }; --Heroes' Dreamwalker Handguards
		[04] = { itemID = 39539 }; --Heroes' Dreamwalker Leggings
		[06] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[07] = { itemID = 39558 }; --Heroes' Bonescythe Breastplate
		[08] = { itemID = 39560 }; --Heroes' Bonescythe Gauntlets
		[09] = { itemID = 39564 }; --Heroes' Bonescythe Legplates
		[11] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[12] = { itemID = 39579 }; --Heroes' Crypstalker Tunic
		[13] = { itemID = 39582 }; --Heroes' Crypstalker Handguards
		[14] = { itemID = 39580 }; --Heroes' Crypstalker Legguards
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[17] = { itemID = 41308 }; --Hateful Gladiator's Kodohide Robes
		[18] = { itemID = 41284 }; --Hateful Gladiator's Kodohide Gloves
		[19] = { itemID = 41296 }; --Hateful Gladiator's Kodohide Legguards
		[21] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[22] = { itemID = 41648 }; --Hateful Gladiator's Leather Tunic
		[23] = { itemID = 41765 }; --Hateful Gladiator's Leather Gloves
		[24] = { itemID = 41653 }; --Hateful Gladiator's Leather Legguards
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[27] = { itemID = 41085 }; --Hateful Gladiator's Chain Armor
		[28] = { itemID = 41141 }; --Hateful Gladiator's Chain Gauntlets
		[29] = { itemID = 41203 }; --Hateful Gladiator's Chain Leggings
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[02] = { itemID = 39592 }; --Heroes' Earthshatter Hauberk
		[03] = { itemID = 39593 }; --Heroes' Earthshatter Gloves
		[04] = { itemID = 39595 }; --Heroes' Earthshatter Kilt
		[06] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[07] = { itemID = 39597 }; --Heroes' Earthshatter Chestguard
		[08] = { itemID = 39601 }; --Heroes' Earthshatter Grips
		[09] = { itemID = 39603 }; --Heroes' Earthshatter War-Kilt
		[11] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[12] = { itemID = 39588 }; --Heroes' Earthshatter Tunic
		[13] = { itemID = 39591 }; --Heroes' Earthshatter Handguards
		[14] = { itemID = 39589 }; --Heroes' Earthshatter Legguards
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[17] = { itemID = 40989 }; --Hateful Gladiator's Mail Armor
		[18] = { itemID = 41005 }; --Hateful Gladiator's Mail Gauntlets
		[19] = { itemID = 41031 }; --Hateful Gladiator's Mail Leggings
		[21] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[22] = { itemID = 41079 }; --Hateful Gladiator's Linked Armor
		[23] = { itemID = 41135 }; --Hateful Gladiator's Linked Gauntlets
		[24] = { itemID = 41162 }; --Hateful Gladiator's Linked Leggings
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[27] = { itemID = 40988 }; --Hateful Gladiator's Ringmail Armor
		[28] = { itemID = 40999 }; --Hateful Gladiator's Ringmail Gauntlets
		[29] = { itemID = 41025 }; --Hateful Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[02] = { itemID = 39617 }; --Heroes' Scourgeborne Battleplate
		[03] = { itemID = 39618 }; --Heroes' Scourgeborne Gauntlets
		[04] = { itemID = 39620 }; --Heroes' Scourgeborne Legplates
		[06] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[07] = { itemID = 39623 }; --Heroes' Scourgeborne Chestguard
		[08] = { itemID = 39624 }; --Heroes' Scourgeborne Handguards
		[09] = { itemID = 39626 }; --Heroes' Scourgeborne Legguards
		[11] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[12] = { itemID = 39629 }; --Heroes' Redemption Tunic
		[13] = { itemID = 39632 }; --Heroes' Redemption Gloves
		[14] = { itemID = 39630 }; --Heroes' Redemption Greaves
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40781 }; --Hateful Gladiator's Dreadplate Chestpiece
		[18] = { itemID = 40803 }; --Hateful Gladiator's Dreadplate Gauntlets
		[19] = { itemID = 40841 }; --Hateful Gladiator's Dreadplate Legguards
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[27] = { itemID = 40904 }; --Hateful Gladiator's Ornamented Chestguard
		[28] = { itemID = 40925 }; --Hateful Gladiator's Ornamented Gloves
		[29] = { itemID = 40937 }; --Hateful Gladiator's Ornamented Legplates
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[02] = { itemID = 39633 }; --Heroes' Redemption Chestpiece
		[03] = { itemID = 39634 }; --Heroes' Redemption Gauntlets
		[04] = { itemID = 39636 }; --Heroes' Redemption Legplates
		[06] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[07] = { itemID = 39638 }; --Heroes' Redemption Breastplate
		[08] = { itemID = 39639 }; --Heroes' Redemption Handguards
		[09] = { itemID = 39641 }; --Heroes' Redemption Legguards
		[11] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[12] = { itemID = 39606 }; --Heroes' Dreadnaught Battleplate
		[13] = { itemID = 39609 }; --Heroes' Dreadnaught Gauntlets
		[14] = { itemID = 39607 }; --Heroes' Dreadnaught Legplates
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[17] = { itemID = 40782 }; --Hateful Gladiator's Scaled Chestpiece
		[18] = { itemID = 40802 }; --Hateful Gladiator's Scaled Gauntlets
		[19] = { itemID = 40842 }; --Hateful Gladiator's Scaled Legguards
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[27] = { itemID = 40783 }; --Hateful Gladiator's Plate Chestpiece
		[28] = { itemID = 40801 }; --Hateful Gladiator's Plate Gauntlets
		[29] = { itemID = 40840 }; --Hateful Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[02] = { itemID = 39611 }; --Heroes' Dreadnaught Breastplate
		[03] = { itemID = 39622 }; --Heroes' Dreadnaught Handguards
		[04] = { itemID = 39612 }; --Heroes' Dreadnaught Legguards
		[06] = { itemID = 47241 }; --Emblem of Triumph
		[07] = { itemID = 43959 }; --Reins of the Grand Black War Mammoth
		[08] = { itemID = 44083 }; --Reins of the Grand Black War Mammoth
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[02] = { itemID = 40418 }; --Valorous Frostfire Robe
		[03] = { itemID = 40415 }; --Valorous Frostfire Gloves
		[04] = { itemID = 40417 }; --Valorous Frostfire Leggings
		[06] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[07] = { itemID = 40449 }; --Valorous Robe of Faith
		[08] = { itemID = 40445 }; --Valorous Gloves of Faith
		[09] = { itemID = 40448 }; --Valorous Leggings of Faith
		[11] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[12] = { itemID = 40458 }; --Valorous Raiments of Faith
		[13] = { itemID = 40454 }; --Valorous Handwraps of Faith
		[14] = { itemID = 40457 }; --Valorous Pants of Faith
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41951 }; --Deadly Gladiator's Silk Raiment
		[18] = { itemID = 41970 }; --Deadly Gladiator's Silk Handguards
		[19] = { itemID = 41958 }; --Deadly Gladiator's Silk Trousers
		[21] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[22] = { itemID = 41858 }; --Deadly Gladiator's Mooncloth Robe
		[23] = { itemID = 41873 }; --Deadly Gladiator's Mooncloth Gloves
		[24] = { itemID = 41863 }; --Deadly Gladiator's Mooncloth Leggings
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[27] = { itemID = 41920 }; --Deadly Gladiator's Satin Robe
		[28] = { itemID = 41939 }; --Deadly Gladiator's Satin Gloves
		[29] = { itemID = 41926 }; --Deadly Gladiator's Satin Leggings
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[02] = { itemID = 40423 }; --Valorous Plagueheart Robe
		[03] = { itemID = 40420 }; --Valorous Plagueheart Gloves
		[04] = { itemID = 40422 }; --Valorous Plagueheart Leggings
		[06] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[07] = { itemID = 40469 }; --Valorous Dreamwalker Vestments
		[08] = { itemID = 40466 }; --Valorous Dreamwalker Gloves
		[09] = { itemID = 40468 }; --Valorous Dreamwalker Trousers
		[11] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[12] = { itemID = 40471 }; --Valorous Dreamwalker Raiments
		[13] = { itemID = 40472 }; --Valorous Dreamwalker Handgrips
		[14] = { itemID = 40493 }; --Valorous Dreamwalker Legguards
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[17] = { itemID = 41997 }; --Deadly Gladiator's Felweave Raiment
		[18] = { itemID = 42016 }; --Deadly Gladiator's Felweave Handguards
		[19] = { itemID = 42004 }; --Deadly Gladiator's Felweave Trousers
		[21] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[22] = { itemID = 41315 }; --Deadly Gladiator's Wyrmhide Robes
		[23] = { itemID = 41292 }; --Deadly Gladiator's Wyrmhide Gloves
		[24] = { itemID = 41303 }; --Deadly Gladiator's Wyrmhide Legguards
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[27] = { itemID = 41660 }; --Deadly Gladiator's Dragonhide Robes
		[28] = { itemID = 41772 }; --Deadly Gladiator's Dragonhide Gloves
		[29] = { itemID = 41666 }; --Deadly Gladiator's Dragonhide Legguards
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[02] = { itemID = 40463 }; --Valorous Dreamwalker Robe
		[03] = { itemID = 40460 }; --Valorous Dreamwalker Handguards
		[04] = { itemID = 40462 }; --Valorous Dreamwalker Leggings
		[06] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[07] = { itemID = 40495 }; --Valorous Bonescythe Breastplate
		[08] = { itemID = 40496 }; --Valorous Bonescythe Gauntlets
		[09] = { itemID = 40500 }; --Valorous Bonescythe Legplates
		[11] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[12] = { itemID = 40503 }; --Valorous Crypstalker Tunic
		[13] = { itemID = 40504 }; --Valorous Crypstalker Handguards
		[14] = { itemID = 40506 }; --Valorous Crypstalker Legguards
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[17] = { itemID = 41309 }; --Deadly Gladiator's Kodohide Robes
		[18] = { itemID = 41286 }; --Deadly Gladiator's Kodohide Gloves
		[19] = { itemID = 41297 }; --Deadly Gladiator's Kodohide Legguards
		[21] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[22] = { itemID = 41649 }; --Deadly Gladiator's Leather Tunic
		[23] = { itemID = 41766 }; --Deadly Gladiator's Leather Gloves
		[24] = { itemID = 41654 }; --Deadly Gladiator's Leather Legguards
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[27] = { itemID = 41086 }; --Deadly Gladiator's Chain Armor
		[28] = { itemID = 41142 }; --Deadly Gladiator's Chain Gauntlets
		[29] = { itemID = 41204 }; --Deadly Gladiator's Chain Leggings
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[02] = { itemID = 40514 }; --Valorous Earthshatter Hauberk
		[03] = { itemID = 40515 }; --Valorous Earthshatter Gloves
		[04] = { itemID = 40517 }; --Valorous Earthshatter Kilt
		[06] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[07] = { itemID = 40523 }; --Valorous Earthshatter Chestguard
		[08] = { itemID = 40520 }; --Valorous Earthshatter Grips
		[09] = { itemID = 40522 }; --Valorous Earthshatter War-Kilt
		[11] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[12] = { itemID = 40508 }; --Valorous Earthshatter Tunic
		[13] = { itemID = 40509 }; --Valorous Earthshatter Handguards
		[14] = { itemID = 40512 }; --Valorous Earthshatter Legguards
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[17] = { itemID = 40991 }; --Deadly Gladiator's Mail Armor
		[18] = { itemID = 41006 }; --Deadly Gladiator's Mail Gauntlets
		[19] = { itemID = 41032 }; --Deadly Gladiator's Mail Leggings
		[21] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[22] = { itemID = 41080 }; --Deadly Gladiator's Linked Armor
		[23] = { itemID = 41136 }; --Deadly Gladiator's Linked Gauntlets
		[24] = { itemID = 41198 }; --Deadly Gladiator's Linked Leggings
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[27] = { itemID = 40990 }; --Deadly Gladiator's Ringmail Armor
		[28] = { itemID = 41000 }; --Deadly Gladiator's Ringmail Gauntlets
		[29] = { itemID = 41026 }; --Deadly Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[02] = { itemID = 40550 }; --Valorous Scourgeborne Battleplate
		[03] = { itemID = 40552 }; --Valorous Scourgeborne Gauntlets
		[04] = { itemID = 40556 }; --Valorous Scourgeborne Legplates
		[06] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[07] = { itemID = 40559 }; --Valorous Scourgeborne Chestguard
		[08] = { itemID = 40563 }; --Valorous Scourgeborne Handguards
		[09] = { itemID = 40567 }; --Valorous Scourgeborne Legguards
		[11] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[12] = { itemID = 40569 }; --Valorous Redemption Tunic
		[13] = { itemID = 40570 }; --Valorous Redemption Gloves
		[14] = { itemID = 40572 }; --Valorous Redemption Greaves
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40784 }; --Deadly Gladiator's Dreadplate Chestpiece
		[18] = { itemID = 40806 }; --Deadly Gladiator's Dreadplate Gauntlets
		[19] = { itemID = 40845 }; --Deadly Gladiator's Dreadplate Legguards
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[27] = { itemID = 40905 }; --Deadly Gladiator's Ornamented Chestguard
		[28] = { itemID = 40926 }; --Deadly Gladiator's Ornamented Gloves
		[29] = { itemID = 40938 }; --Deadly Gladiator's Ornamented Legplates
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[02] = { itemID = 40574 }; --Valorous Redemption Chestpiece
		[03] = { itemID = 40575 }; --Valorous Redemption Gauntlets
		[04] = { itemID = 40577 }; --Valorous Redemption Legplates
		[06] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[07] = { itemID = 40579 }; --Valorous Redemption Breastplate
		[08] = { itemID = 40580 }; --Valorous Redemption Handguards
		[09] = { itemID = 40583 }; --Valorous Redemption Legguards
		[11] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[12] = { itemID = 40525 }; --Valorous Dreadnaught Battleplate
		[13] = { itemID = 40527 }; --Valorous Dreadnaught Gauntlets
		[14] = { itemID = 40529 }; --Valorous Dreadnaught Legplates
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[17] = { itemID = 40785 }; --Deadly Gladiator's Scaled Chestpiece
		[18] = { itemID = 40805 }; --Deadly Gladiator's Scaled Gauntlets
		[19] = { itemID = 40846 }; --Deadly Gladiator's Scaled Legguards
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[27] = { itemID = 40786 }; --Deadly Gladiator's Plate Chestpiece
		[28] = { itemID = 40804 }; --Deadly Gladiator's Plate Gauntlets
		[29] = { itemID = 40844 }; --Deadly Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Archavon the Stone Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[02] = { itemID = 40544 }; --Valorous Dreadnaught Breastplate
		[03] = { itemID = 40545 }; --Valorous Dreadnaught Handguards
		[04] = { itemID = 40547 }; --Valorous Dreadnaught Legguards
		[06] = { itemID = 47241 }; --Emblem of Triumph
		[07] = { itemID = 43959 }; --Reins of the Grand Black War Mammoth
		[08] = { itemID = 44083 }; --Reins of the Grand Black War Mammoth
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[02] = { itemID = 46131 }; --Valorous Kirin'dor Gauntlets
		[03] = { itemID = 45367 }; --Valorous Kirin'dor Leggings
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[06] = { itemID = 45387 }; --Valorous Gloves of Sanctification
		[07] = { itemID = 45388 }; --Valorous Leggings of Sanctification
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 45392 }; --Valorous Handwraps of Sanctification
		[11] = { itemID = 45394 }; --Valorous Pants of Sanctification
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 45419 }; --Valorous Deathbringer Gloves
		[15] = { itemID = 45420 }; --Valorous Deathbringer Leggings
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41970 }; --Deadly Gladiator's Silk Handguards
		[18] = { itemID = 41958 }; --Deadly Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41873 }; --Deadly Gladiator's Mooncloth Gloves
		[22] = { itemID = 41863 }; --Deadly Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41939 }; --Deadly Gladiator's Satin Gloves
		[26] = { itemID = 41926 }; --Deadly Gladiator's Satin Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42016 }; --Deadly Gladiator's Felweave Handguards
		[30] = { itemID = 42004 }; --Deadly Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[02] = { itemID = 45351 }; --Valorous Nightsong Gloves
		[03] = { itemID = 45353 }; --Valorous Nightsong Trousers
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[06] = { itemID = 45355 }; --Valorous Nightsong Handgrips
		[07] = { itemID = 45357 }; --Valorous Nightsong Legguards
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 45345 }; --Valorous Nightsong Handguards
		[11] = { itemID = 45347 }; --Valorous Nightsong Leggings
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 45397 }; --Valorous Terrorblade Gauntlets
		[15] = { itemID = 45399 }; --Valorous Terrorblade Legplates
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41292 }; --Deadly Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41303 }; --Deadly Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41772 }; --Deadly Gladiator's Dragonhide Gloves
		[22] = { itemID = 41666 }; --Deadly Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41286 }; --Deadly Gladiator's Kodohide Gloves
		[26] = { itemID = 41297 }; --Deadly Gladiator's Kodohide Legguards
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41766 }; --Deadly Gladiator's Leather Gloves
		[30] = { itemID = 41654 }; --Deadly Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[02] = { itemID = 45360 }; --Valorous Scourgestalker Handguards
		[03] = { itemID = 45362 }; --Valorous Scourgestalker Legguards
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[06] = { itemID = 45406 }; --Valorous Worldbreaker Gloves
		[07] = { itemID = 45409 }; --Valorous Worldbreaker Kilt
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 45414 }; --Valorous Worldbreaker Grips
		[11] = { itemID = 45416 }; --Valorous Worldbreaker War-Kilt
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 45401 }; --Valorous Worldbreaker Handguards
		[15] = { itemID = 45403 }; --Valorous Worldbreaker Legguards
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41142 }; --Deadly Gladiator's Chain Gauntlets
		[18] = { itemID = 41204 }; --Deadly Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41006 }; --Deadly Gladiator's Mail Gauntlets
		[22] = { itemID = 41032 }; --Deadly Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41136 }; --Deadly Gladiator's Linked Gauntlets
		[26] = { itemID = 41198 }; --Deadly Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41000 }; --Deadly Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41026 }; --Deadly Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[02] = { itemID = 45341 }; --Valorous Darkruned Gauntlets
		[03] = { itemID = 45343 }; --Valorous Darkruned Legplates
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[06] = { itemID = 45337 }; --Valorous Darkruned Handguards
		[07] = { itemID = 45338 }; --Valorous Darkruned Legguards
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 45370 }; --Valorous Aegis Gloves
		[11] = { itemID = 45371 }; --Valorous Aegis Greaves
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 45376 }; --Valorous Aegis Gauntlets
		[15] = { itemID = 45379 }; --Valorous Aegis Legplates
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40806 }; --Deadly Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40845 }; --Deadly Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40926 }; --Deadly Gladiator's Ornamented Gloves
		[26] = { itemID = 40938 }; --Deadly Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40805 }; --Deadly Gladiator's Scaled Gauntlets
		[30] = { itemID = 40846 }; --Deadly Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[02] = { itemID = 45383 }; --Valorous Aegis Handguards
		[03] = { itemID = 45384 }; --Valorous Aegis Legguards
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[06] = { itemID = 45430 }; --Valorous Siegebreaker Gauntlets
		[07] = { itemID = 45432 }; --Valorous Siegebreaker Legplates
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 45426 }; --Valorous Siegebreaker Handguards
		[11] = { itemID = 45427 }; --Valorous Siegebreaker Legguards
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40804 }; --Deadly Gladiator's Plate Gauntlets
		[22] = { itemID = 40844 }; --Deadly Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[02] = { itemID = 41908 }; --Deadly Gladiator's Cuffs of Dominance
		[03] = { itemID = 41897 }; --Deadly Gladiator's Cord of Dominance
		[04] = { itemID = 41902 }; --Deadly Gladiator's Treads of Dominance
		[06] = { itemID = 41892 }; --Deadly Gladiator's Cuffs of Salvation
		[07] = { itemID = 41880 }; --Deadly Gladiator's Cord of Salvation
		[08] = { itemID = 41884 }; --Deadly Gladiator's Treads of Salvation
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41639 }; --Deadly Gladiator's Armwraps of Dominance
		[18] = { itemID = 41629 }; --Deadly Gladiator's Belt of Dominance
		[19] = { itemID = 41634 }; --Deadly Gladiator's Boots of Dominance
		[21] = { itemID = 41624 }; --Deadly Gladiator's Armwraps of Salvation
		[22] = { itemID = 41616 }; --Deadly Gladiator's Belt of Salvation
		[23] = { itemID = 41620 }; --Deadly Gladiator's Boots of Salvation
		[25] = { itemID = 41839 }; --Deadly Gladiator's Armwraps of Triumph
		[26] = { itemID = 41831 }; --Deadly Gladiator's Belt of Triumph
		[27] = { itemID = 41835 }; --Deadly Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[02] = { itemID = 41064 }; --Deadly Gladiator's Wristguards of Dominance
		[03] = { itemID = 41069 }; --Deadly Gladiator's Waistguard of Dominance
		[04] = { itemID = 41074 }; --Deadly Gladiator's Sabatons of Dominance
		[06] = { itemID = 41059 }; --Deadly Gladiator's Wristguards of Salvation
		[07] = { itemID = 41048 }; --Deadly Gladiator's Waistguard of Salvation
		[08] = { itemID = 41054 }; --Deadly Gladiator's Sabatons of Salvation
		[10] = { itemID = 41224 }; --Deadly Gladiator's Wristguards of Triumph
		[11] = { itemID = 41234 }; --Deadly Gladiator's Waistguard of Triumph
		[12] = { itemID = 41229 }; --Deadly Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40982 }; --Deadly Gladiator's Bracers of Salvation
		[18] = { itemID = 40974 }; --Deadly Gladiator's Girdle of Salvation
		[19] = { itemID = 40975 }; --Deadly Gladiator's Greaves of Salvation
		[21] = { itemID = 40888 }; --Deadly Gladiator's Bracers of Triumph
		[22] = { itemID = 40879 }; --Deadly Gladiator's Girdle of Triumph
		[23] = { itemID = 40880 }; --Deadly Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[02] = { itemID = 42064 }; --Deadly Gladiator's Cloak of Ascendancy
		[03] = { itemID = 42066 }; --Deadly Gladiator's Cloak of Deliverance
		[04] = { itemID = 42062 }; --Deadly Gladiator's Cloak of Dominance
		[05] = { itemID = 42065 }; --Deadly Gladiator's Cloak of Salvation
		[06] = { itemID = 42063 }; --Deadly Gladiator's Cloak of Subjugation
		[07] = { itemID = 42067 }; --Deadly Gladiator's Cloak of Triumph
		[08] = { itemID = 42068 }; --Deadly Gladiator's Cloak of Victory
		[11] = { itemID = 47241 }; --Emblem of Triumph
		[12] = { itemID = 43959 }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083 }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42030 }; --Deadly Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42032 }; --Deadly Gladiator's Pendant of Deliverance
		[19] = { itemID = 42029 }; --Deadly Gladiator's Pendant of Dominance
		[20] = { itemID = 42033 }; --Deadly Gladiator's Pendant of Salvation
		[21] = { itemID = 42031 }; --Deadly Gladiator's Pendant of Subjugation
		[22] = { itemID = 42027 }; --Deadly Gladiator's Pendant of Triumph
		[23] = { itemID = 42028 }; --Deadly Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42114 }; --Deadly Gladiator's Band of Ascendancy
		[28] = { itemID = 42115 }; --Deadly Gladiator's Band of Victory
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[02] = { itemID = 46132 }; --Conqueror's Kirin'dor Gauntlets
		[03] = { itemID = 46133 }; --Conqueror's Kirin'dor Leggings
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[06] = { itemID = 46188 }; --Conqueror's Gloves of Sanctification
		[07] = { itemID = 46195 }; --Conqueror's Leggings of Sanctification
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 46163 }; --Conqueror's Handwraps of Sanctification
		[11] = { itemID = 46170 }; --Conqueror's Pants of Sanctification
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 46135 }; --Conqueror's Deathbringer Gloves
		[15] = { itemID = 46139 }; --Conqueror's Deathbringer Leggings
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41971 }; --Furious Gladiator's Silk Handguards
		[18] = { itemID = 41959 }; --Furious Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41874 }; --Furious Gladiator's Mooncloth Gloves
		[22] = { itemID = 41864 }; --Furious Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41940 }; --Furious Gladiator's Satin Gloves
		[26] = { itemID = 41927 }; --Furious Gladiator's Satin Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42017 }; --Furious Gladiator's Felweave Handguards
		[30] = { itemID = 42005 }; --Furious Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[02] = { itemID = 46189 }; --Conqueror's Nightsong Gloves
		[03] = { itemID = 46192 }; --Conqueror's Nightsong Trousers
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[06] = { itemID = 46158 }; --Conqueror's Nightsong Handgrips
		[07] = { itemID = 46160 }; --Conqueror's Nightsong Legguards
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 46183 }; --Conqueror's Nightsong Handguards
		[11] = { itemID = 46185 }; --Conqueror's Nightsong Leggings
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 46124 }; --Conqueror's Terrorblade Gauntlets
		[15] = { itemID = 46126 }; --Conqueror's Terrorblade Legplates
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41293 }; --Furious Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41304 }; --Furious Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41773 }; --Furious Gladiator's Dragonhide Gloves
		[22] = { itemID = 41667 }; --Furious Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41287 }; --Furious Gladiator's Kodohide Gloves
		[26] = { itemID = 41298 }; --Furious Gladiator's Kodohide Legguards
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41767 }; --Furious Gladiator's Leather Gloves
		[30] = { itemID = 41655 }; --Furious Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[02] = { itemID = 46142 }; --Conqueror's Scourgestalker Handguards
		[03] = { itemID = 46144 }; --Conqueror's Scourgestalker Legguards
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[06] = { itemID = 46207 }; --Conqueror's Worldbreaker Gloves
		[07] = { itemID = 46210 }; --Conqueror's Worldbreaker Kilt
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 46200 }; --Conqueror's Worldbreaker Grips
		[11] = { itemID = 46208 }; --Conqueror's Worldbreaker War-Kilt
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 46199 }; --Conqueror's Worldbreaker Handguards
		[15] = { itemID = 46202 }; --Conqueror's Worldbreaker Legguards
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41143 }; --Furious Gladiator's Chain Gauntlets
		[18] = { itemID = 41205 }; --Furious Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41007 }; --Furious Gladiator's Mail Gauntlets
		[22] = { itemID = 41033 }; --Furious Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41137 }; --Furious Gladiator's Linked Gauntlets
		[26] = { itemID = 41199 }; --Furious Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41001 }; --Furious Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41027 }; --Furious Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[02] = { itemID = 46113 }; --Conqueror's Darkruned Gauntlets
		[03] = { itemID = 46116 }; --Conqueror's Darkruned Legplates
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[06] = { itemID = 46119 }; --Conqueror's Darkruned Handguards
		[07] = { itemID = 46121 }; --Conqueror's Darkruned Legguards
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 46179 }; --Conqueror's Aegis Gloves
		[11] = { itemID = 46181 }; --Conqueror's Aegis Greaves
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 46155 }; --Conqueror's Aegis Gauntlets
		[15] = { itemID = 46153 }; --Conqueror's Aegis Legplates
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40809 }; --Furious Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40848 }; --Furious Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40927 }; --Furious Gladiator's Ornamented Gloves
		[26] = { itemID = 40939 }; --Furious Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40808 }; --Furious Gladiator's Scaled Gauntlets
		[30] = { itemID = 40849 }; --Furious Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[02] = { itemID = 46174 }; --Conqueror's Aegis Handguards
		[03] = { itemID = 46176 }; --Conqueror's Aegis Legguards
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[06] = { itemID = 46148 }; --Conqueror's Siegebreaker Gauntlets
		[07] = { itemID = 46150 }; --Conqueror's Siegebreaker Legplates
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 46164 }; --Conqueror's Siegebreaker Handguards
		[11] = { itemID = 46169 }; --Conqueror's Siegebreaker Legguards
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40807 }; --Furious Gladiator's Plate Gauntlets
		[22] = { itemID = 40847 }; --Furious Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[02] = { itemID = 41909 }; --Furious Gladiator's Cuffs of Dominance
		[03] = { itemID = 41898 }; --Furious Gladiator's Cord of Dominance
		[04] = { itemID = 41903 }; --Furious Gladiator's Slippers of Dominance
		[06] = { itemID = 41893 }; --Furious Gladiator's Cuffs of Salvation
		[07] = { itemID = 41881 }; --Furious Gladiator's Cord of Salvation
		[08] = { itemID = 41885 }; --Furious Gladiator's Slippers of Salvation
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41640 }; --Furious Gladiator's Armwraps of Dominance
		[18] = { itemID = 41630 }; --Furious Gladiator's Belt of Dominance
		[19] = { itemID = 41635 }; --Furious Gladiator's Boots of Dominance
		[21] = { itemID = 41625 }; --Furious Gladiator's Armwraps of Salvation
		[22] = { itemID = 41617 }; --Furious Gladiator's Belt of Salvation
		[23] = { itemID = 41621 }; --Furious Gladiator's Boots of Salvation
		[25] = { itemID = 41840 }; --Furious Gladiator's Armwraps of Triumph
		[26] = { itemID = 41832 }; --Furious Gladiator's Belt of Triumph
		[27] = { itemID = 41836 }; --Furious Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[02] = { itemID = 41065 }; --Furious Gladiator's Wristguards of Dominance
		[03] = { itemID = 41070 }; --Furious Gladiator's Waistguard of Dominance
		[04] = { itemID = 41075 }; --Furious Gladiator's Sabatons of Dominance
		[06] = { itemID = 41060 }; --Furious Gladiator's Wristguards of Salvation
		[07] = { itemID = 41051 }; --Furious Gladiator's Waistguard of Salvation
		[08] = { itemID = 41055 }; --Furious Gladiator's Sabatons of Salvation
		[10] = { itemID = 41225 }; --Furious Gladiator's Wristguards of Triumph
		[11] = { itemID = 41235 }; --Furious Gladiator's Waistguard of Triumph
		[12] = { itemID = 41230 }; --Furious Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40983 }; --Furious Gladiator's Bracers of Salvation
		[18] = { itemID = 40976 }; --Furious Gladiator's Girdle of Salvation
		[19] = { itemID = 40977 }; --Furious Gladiator's Greaves of Salvation
		[21] = { itemID = 40889 }; --Furious Gladiator's Bracers of Triumph
		[22] = { itemID = 40881 }; --Furious Gladiator's Girdle of Triumph
		[23] = { itemID = 40882 }; --Furious Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Emalon the Storm Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[02] = { itemID = 42071 }; --Furious Gladiator's Cloak of Ascendancy
		[03] = { itemID = 42073 }; --Furious Gladiator's Cloak of Deliverance
		[04] = { itemID = 42069 }; --Furious Gladiator's Cloak of Dominance
		[05] = { itemID = 42072 }; --Furious Gladiator's Cloak of Salvation
		[06] = { itemID = 42070 }; --Furious Gladiator's Cloak of Subjugation
		[07] = { itemID = 42074 }; --Furious Gladiator's Cloak of Triumph
		[08] = { itemID = 42075 }; --Furious Gladiator's Cloak of Victory
		[11] = { itemID = 47241 }; --Emblem of Triumph
		[12] = { itemID = 43959 }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083 }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42037 }; --Furious Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42039 }; --Furious Gladiator's Pendant of Deliverance
		[19] = { itemID = 42036 }; --Furious Gladiator's Pendant of Dominance
		[20] = { itemID = 42040 }; --Furious Gladiator's Pendant of Salvation
		[21] = { itemID = 42038 }; --Furious Gladiator's Pendant of Subjugation
		[22] = { itemID = 46373 }; --Furious Gladiator's Pendant of Sundering
		[23] = { itemID = 42034 }; --Furious Gladiator's Pendant of Triumph
		[24] = { itemID = 42035 }; --Furious Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42116 }; --Furious Gladiator's Band of Dominance
		[28] = { itemID = 42117 }; --Furious Gladiator's Band of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[02] = { itemID = 47752 }; --Khadgar's Gauntlets of Conquest
		[03] = { itemID = 47750 }; --Khadgar's Leggings of Conquest
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[06] = { itemID = 47982 }; --Velen's Gloves of Conquest
		[07] = { itemID = 47980 }; --Velen's Leggings of Conquest
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 48072 }; --Velen's Handwraps of Conquest
		[11] = { itemID = 48074 }; --Velen's Pants of Conquest
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 47783 }; --Kel'Thuzad's Gloves of Conquest
		[15] = { itemID = 47785 }; --Kel'Thuzad's Leggings of Conquest
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41971 }; --Furious Gladiator's Silk Handguards
		[18] = { itemID = 41959 }; --Furious Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41874 }; --Furious Gladiator's Mooncloth Gloves
		[22] = { itemID = 41864 }; --Furious Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41940 }; --Furious Gladiator's Satin Gloves
		[26] = { itemID = 41927 }; --Furious Gladiator's Satin Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42017 }; --Furious Gladiator's Felweave Handguards
		[30] = { itemID = 42005 }; --Furious Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[02] = { itemID = 48162 }; --Stormrage's Gloves of Conquest
		[03] = { itemID = 48160 }; --Stormrage's Trousers of Conquest
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[06] = { itemID = 48213 }; --Stormrage's Handgrips of Conquest
		[07] = { itemID = 48215 }; --Stormrage's Legguards of Conquest
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 48132 }; --Stormrage's Handguards of Conquest
		[11] = { itemID = 48130 }; --Stormrage's Leggings of Conquest
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 48222 }; --VanCleef's Gauntlets of Conquest
		[15] = { itemID = 48220 }; --VanCleef's Legplates of Conquest
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41293 }; --Furious Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41304 }; --Furious Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41773 }; --Furious Gladiator's Dragonhide Gloves
		[22] = { itemID = 41667 }; --Furious Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41287 }; --Furious Gladiator's Kodohide Gloves
		[26] = { itemID = 41298 }; --Furious Gladiator's Kodohide Legguards
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41767 }; --Furious Gladiator's Leather Gloves
		[30] = { itemID = 41655 }; --Furious Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[02] = { itemID = 48254 }; --Windrunner's Handguards of Conquest
		[03] = { itemID = 48252 }; --Windrunner's Legguards of Conquest
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[06] = { itemID = 48312 }; --Nobundo's Gloves of Conquest
		[07] = { itemID = 48314 }; --Nobundo's Kilt of Conquest
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 48342 }; --Nobundo's Grips of Conquest
		[11] = { itemID = 48344 }; --Nobundo's War-Kilt of Conquest
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 48284 }; --Nobundo's Handguards of Conquest
		[15] = { itemID = 48282 }; --Nobundo's Legguards of Conquest
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41143 }; --Furious Gladiator's Chain Gauntlets
		[18] = { itemID = 41205 }; --Furious Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41007 }; --Furious Gladiator's Mail Gauntlets
		[22] = { itemID = 41033 }; --Furious Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41137 }; --Furious Gladiator's Linked Gauntlets
		[26] = { itemID = 41199 }; --Furious Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41001 }; --Furious Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41027 }; --Furious Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[02] = { itemID = 48480 }; --Thassarian's Gauntlets of Conquest
		[03] = { itemID = 48476 }; --Thassarian's Legplates of Conquest
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[06] = { itemID = 48537 }; --Thassarian's Handguards of Conquest
		[07] = { itemID = 48533 }; --Thassarian's Legguards of Conquest
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 48574 }; --Turalyon's Gloves of Conquest
		[11] = { itemID = 48568 }; --Turalyon's Greaves of Conquest
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 48603 }; --Turalyon's Gauntlets of Conquest
		[15] = { itemID = 48605 }; --Turalyon's Legplates of Conquest
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40809 }; --Furious Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40848 }; --Furious Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40927 }; --Furious Gladiator's Ornamented Gloves
		[26] = { itemID = 40939 }; --Furious Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40808 }; --Furious Gladiator's Scaled Gauntlets
		[30] = { itemID = 40849 }; --Furious Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[02] = { itemID = 48633 }; --Turalyon's Handguards of Conquest
		[03] = { itemID = 48635 }; --Turalyon's Legguards of Conquest
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[06] = { itemID = 48375 }; --Wrynn's Gauntlets of Conquest
		[07] = { itemID = 48373 }; --Wrynn's Legplates of Conquest
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 48449 }; --Wrynn's Handguards of Conquest
		[11] = { itemID = 48445 }; --Wrynn's Legguards of Conquest
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40807 }; --Furious Gladiator's Plate Gauntlets
		[22] = { itemID = 40847 }; --Furious Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[02] = { itemID = 41909 }; --Furious Gladiator's Cuffs of Dominance
		[03] = { itemID = 41898 }; --Furious Gladiator's Cord of Dominance
		[04] = { itemID = 41903 }; --Furious Gladiator's Slippers of Dominance
		[06] = { itemID = 41893 }; --Furious Gladiator's Cuffs of Salvation
		[07] = { itemID = 41881 }; --Furious Gladiator's Cord of Salvation
		[08] = { itemID = 41885 }; --Furious Gladiator's Slippers of Salvation
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41640 }; --Furious Gladiator's Armwraps of Dominance
		[18] = { itemID = 41630 }; --Furious Gladiator's Belt of Dominance
		[19] = { itemID = 41635 }; --Furious Gladiator's Boots of Dominance
		[21] = { itemID = 41625 }; --Furious Gladiator's Armwraps of Salvation
		[22] = { itemID = 41617 }; --Furious Gladiator's Belt of Salvation
		[23] = { itemID = 41621 }; --Furious Gladiator's Boots of Salvation
		[25] = { itemID = 41840 }; --Furious Gladiator's Armwraps of Triumph
		[26] = { itemID = 41832 }; --Furious Gladiator's Belt of Triumph
		[27] = { itemID = 41836 }; --Furious Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[02] = { itemID = 41065 }; --Furious Gladiator's Wristguards of Dominance
		[03] = { itemID = 41070 }; --Furious Gladiator's Waistguard of Dominance
		[04] = { itemID = 41075 }; --Furious Gladiator's Sabatons of Dominance
		[06] = { itemID = 41060 }; --Furious Gladiator's Wristguards of Salvation
		[07] = { itemID = 41051 }; --Furious Gladiator's Waistguard of Salvation
		[08] = { itemID = 41055 }; --Furious Gladiator's Sabatons of Salvation
		[10] = { itemID = 41225 }; --Furious Gladiator's Wristguards of Triumph
		[11] = { itemID = 41235 }; --Furious Gladiator's Waistguard of Triumph
		[12] = { itemID = 41230 }; --Furious Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40983 }; --Furious Gladiator's Bracers of Salvation
		[18] = { itemID = 40976 }; --Furious Gladiator's Girdle of Salvation
		[19] = { itemID = 40977 }; --Furious Gladiator's Greaves of Salvation
		[21] = { itemID = 40889 }; --Furious Gladiator's Bracers of Triumph
		[22] = { itemID = 40881 }; --Furious Gladiator's Girdle of Triumph
		[23] = { itemID = 40882 }; --Furious Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[02] = { itemID = 42071 }; --Furious Gladiator's Cloak of Ascendancy
		[03] = { itemID = 42073 }; --Furious Gladiator's Cloak of Deliverance
		[04] = { itemID = 42069 }; --Furious Gladiator's Cloak of Dominance
		[05] = { itemID = 42072 }; --Furious Gladiator's Cloak of Salvation
		[06] = { itemID = 42070 }; --Furious Gladiator's Cloak of Subjugation
		[07] = { itemID = 42074 }; --Furious Gladiator's Cloak of Triumph
		[08] = { itemID = 42075 }; --Furious Gladiator's Cloak of Victory
		[11] = { itemID = 47241 }; --Emblem of Triumph
		[12] = { itemID = 43959 }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083 }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42037 }; --Furious Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42039 }; --Furious Gladiator's Pendant of Deliverance
		[19] = { itemID = 42036 }; --Furious Gladiator's Pendant of Dominance
		[20] = { itemID = 42040 }; --Furious Gladiator's Pendant of Salvation
		[21] = { itemID = 42038 }; --Furious Gladiator's Pendant of Subjugation
		[22] = { itemID = 46373 }; --Furious Gladiator's Pendant of Sundering
		[23] = { itemID = 42034 }; --Furious Gladiator's Pendant of Triumph
		[24] = { itemID = 42035 }; --Furious Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42116 }; --Furious Gladiator's Band of Dominance
		[28] = { itemID = 42117 }; --Furious Gladiator's Band of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[02] = { itemID = 47753 }; --Khadgar's Gauntlets of Triumph
		[03] = { itemID = 47755 }; --Khadgar's Leggings of Triumph
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[06] = { itemID = 47983 }; --Velen's Gloves of Triumph
		[07] = { itemID = 47985 }; --Velen's Leggings of Triumph
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 48077 }; --Velen's Handwraps of Triumph
		[11] = { itemID = 48079 }; --Velen's Pants of Triumph
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 47782 }; --Kel'Thuzad's Gloves of Triumph
		[15] = { itemID = 47780 }; --Kel'Thuzad's Leggings of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41972 }; --Relentless Gladiator's Silk Handguards
		[18] = { itemID = 41960 }; --Relentless Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41875 }; --Relentless Gladiator's Mooncloth Gloves
		[22] = { itemID = 41865 }; --Relentless Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41941 }; --Relentless Gladiator's Satin Gloves
		[26] = { itemID = 41928 }; --Relentless Gladiator's Satin Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42018 }; --Relentless Gladiator's Felweave Handguards
		[30] = { itemID = 42006 }; --Relentless Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[02] = { itemID = 48163 }; --Stormrage's Gloves of Triumph
		[03] = { itemID = 48165 }; --Stormrage's Trousers of Triumph
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[06] = { itemID = 48212 }; --Stormrage's Handgrips of Triumph
		[07] = { itemID = 48210 }; --Stormrage's Legguards of Triumph
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 48133 }; --Stormrage's Handguards of Triumph
		[11] = { itemID = 48135 }; --Stormrage's Leggings of Triumph
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 48224 }; --VanCleef's Gauntlets of Triumph
		[15] = { itemID = 48226 }; --VanCleef's Legplates of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41294 }; --Relentless Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41305 }; --Relentless Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41774 }; --Relentless Gladiator's Dragonhide Gloves
		[22] = { itemID = 41668 }; --Relentless Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41288 }; --Relentless Gladiator's Kodohide Gloves
		[26] = { itemID = 41299 }; --Relentless Gladiator's Kodohide Legguards
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41768 }; --Relentless Gladiator's Leather Gloves
		[30] = { itemID = 41656 }; --Relentless Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[02] = { itemID = 48256 }; --Windrunner's Handguards of Triumph
		[03] = { itemID = 48258 }; --Windrunner's Legguards of Triumph
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[06] = { itemID = 48317 }; --Nobundo's Gloves of Triumph
		[07] = { itemID = 48319 }; --Nobundo's Kilt of Triumph
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 48347 }; --Nobundo's Grips of Triumph
		[11] = { itemID = 48349 }; --Nobundo's War-Kilt of Triumph
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 48286 }; --Nobundo's Handguards of Triumph
		[15] = { itemID = 48288 }; --Nobundo's Legguards of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41144 }; --Relentless Gladiator's Chain Gauntlets
		[18] = { itemID = 41206 }; --Relentless Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41008 }; --Relentless Gladiator's Mail Gauntlets
		[22] = { itemID = 41034 }; --Relentless Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41138 }; --Relentless Gladiator's Linked Gauntlets
		[26] = { itemID = 41200 }; --Relentless Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41002 }; --Relentless Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41028 }; --Relentless Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[02] = { itemID = 48482 }; --Thassarian's Gauntlets of Triumph
		[03] = { itemID = 48484 }; --Thassarian's Legplates of Triumph
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[06] = { itemID = 48539 }; --Thassarian's Handguards of Triumph
		[07] = { itemID = 48541 }; --Thassarian's Legguards of Triumph
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 48576 }; --Turalyon's Gloves of Triumph
		[11] = { itemID = 48578 }; --Turalyon's Greaves of Triumph
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 48608 }; --Turalyon's Gauntlets of Triumph
		[15] = { itemID = 48610 }; --Turalyon's Legplates of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40811 }; --Relentless Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40851 }; --Relentless Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40928 }; --Relentless Gladiator's Ornamented Gloves
		[26] = { itemID = 40940 }; --Relentless Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40812 }; --Relentless Gladiator's Scaled Gauntlets
		[30] = { itemID = 40852 }; --Relentless Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[02] = { itemID = 48640 }; --Turalyon's Handguards of Triumph
		[03] = { itemID = 48638 }; --Turalyon's Legguards of Triumph
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[06] = { itemID = 48377 }; --Wrynn's Gauntlets of Triumph
		[07] = { itemID = 48379 }; --Wrynn's Legplates of Triumph
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 48452 }; --Wrynn's Handguards of Triumph
		[11] = { itemID = 48446 }; --Wrynn's Legguards of Triumph
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40810 }; --Relentless Gladiator's Plate Gauntlets
		[22] = { itemID = 40850 }; --Relentless Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[02] = { itemID = 41910 }; --Relentless Gladiator's Cuffs of Dominance
		[03] = { itemID = 41899 }; --Relentless Gladiator's Cord of Dominance
		[04] = { itemID = 41904 }; --Relentless Gladiator's Treads of Dominance
		[06] = { itemID = 41894 }; --Relentless Gladiator's Cuffs of Salvation
		[07] = { itemID = 41882 }; --Relentless Gladiator's Cord of Salvation
		[08] = { itemID = 41886 }; --Relentless Gladiator's Treads of Salvation
		[10] = { itemID = 49181 }; --Relentless Gladiator's Cuffs of Alacrity
		[11] = { itemID = 49179 }; --Relentless Gladiator's Cord of Alacrity
		[12] = { itemID = 49183 }; --Relentless Gladiator's Treads of Alacrity
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41641 }; --Relentless Gladiator's Armwraps of Dominance
		[18] = { itemID = 41631 }; --Relentless Gladiator's Belt of Dominance
		[19] = { itemID = 41636 }; --Relentless Gladiator's Boots of Dominance
		[21] = { itemID = 41626 }; --Relentless Gladiator's Armwraps of Salvation
		[22] = { itemID = 41618 }; --Relentless Gladiator's Belt of Salvation
		[23] = { itemID = 41622 }; --Relentless Gladiator's Boots of Salvation
		[25] = { itemID = 41841 }; --Relentless Gladiator's Armwraps of Triumph
		[26] = { itemID = 41833 }; --Relentless Gladiator's Belt of Triumph
		[27] = { itemID = 41837 }; --Relentless Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[02] = { itemID = 41066 }; --Relentless Gladiator's Wristguards of Dominance
		[03] = { itemID = 41071 }; --Relentless Gladiator's Waistguard of Dominance
		[04] = { itemID = 41076 }; --Relentless Gladiator's Sabatons of Dominance
		[06] = { itemID = 41061 }; --Relentless Gladiator's Wristguards of Salvation
		[07] = { itemID = 41052 }; --Relentless Gladiator's Waistguard of Salvation
		[08] = { itemID = 41056 }; --Relentless Gladiator's Sabatons of Salvation
		[10] = { itemID = 41226 }; --Relentless Gladiator's Wristguards of Triumph
		[11] = { itemID = 41236 }; --Relentless Gladiator's Waistguard of Triumph
		[12] = { itemID = 41231 }; --Relentless Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40984 }; --Relentless Gladiator's Bracers of Salvation
		[18] = { itemID = 40978 }; --Relentless Gladiator's Girdle of Salvation
		[19] = { itemID = 40979 }; --Relentless Gladiator's Greaves of Salvation
		[21] = { itemID = 40890 }; --Relentless Gladiator's Bracers of Triumph
		[22] = { itemID = 40883 }; --Relentless Gladiator's Girdle of Triumph
		[23] = { itemID = 40884 }; --Relentless Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[02] = { itemID = 42078 }; --Relentless Gladiator's Cloak of Ascendancy
		[03] = { itemID = 42080 }; --Relentless Gladiator's Cloak of Deliverance
		[04] = { itemID = 42076 }; --Relentless Gladiator's Cloak of Dominance
		[05] = { itemID = 42079 }; --Relentless Gladiator's Cloak of Salvation
		[06] = { itemID = 42077 }; --Relentless Gladiator's Cloak of Subjugation
		[07] = { itemID = 42081 }; --Relentless Gladiator's Cloak of Triumph
		[08] = { itemID = 42082 }; --Relentless Gladiator's Cloak of Victory
		[11] = { itemID = 47241 }; --Emblem of Triumph
		[12] = { itemID = 43959 }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083 }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42044 }; --Relentless Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42046 }; --Relentless Gladiator's Pendant of Deliverance
		[19] = { itemID = 42043 }; --Relentless Gladiator's Pendant of Dominance
		[20] = { itemID = 42047 }; --Relentless Gladiator's Pendant of Salvation
		[21] = { itemID = 42045 }; --Relentless Gladiator's Pendant of Subjugation
		[22] = { itemID = 46374 }; --Relentless Gladiator's Pendant of Sundering
		[23] = { itemID = 42041 }; --Relentless Gladiator's Pendant of Triumph
		[24] = { itemID = 42042 }; --Relentless Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42118 }; --Relentless Gladiator's Band of Ascendancy
		[28] = { itemID = 42119 }; --Relentless Gladiator's Band of Victory
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[02] = { itemID = 47773 }; --Sunstrider's Gauntlets of Conquest
		[03] = { itemID = 47775 }; --Sunstrider's Leggings of Conquest
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[06] = { itemID = 48067 }; --Zabra's Gloves of Conquest
		[07] = { itemID = 48069 }; --Zabra's Leggings of Conquest
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 48097 }; --Zabra's Handwraps of Conquest
		[11] = { itemID = 48099 }; --Zabra's Pants of Conquest
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 47802 }; --Gul'dan's Gloves of Conquest
		[15] = { itemID = 47800 }; --Gul'dan's Leggings of Conquest
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41971 }; --Furious Gladiator's Silk Handguards
		[18] = { itemID = 41959 }; --Furious Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41874 }; --Furious Gladiator's Mooncloth Gloves
		[22] = { itemID = 41864 }; --Furious Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41940 }; --Furious Gladiator's Satin Gloves
		[26] = { itemID = 41927 }; --Furious Gladiator's Satin Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42017 }; --Furious Gladiator's Felweave Handguards
		[30] = { itemID = 42005 }; --Furious Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[02] = { itemID = 48183 }; --Runetotem's Gloves of Conquest
		[03] = { itemID = 48185 }; --Runetotem's Trousers of Conquest
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[06] = { itemID = 48192 }; --Runetotem's Handgrips of Conquest
		[07] = { itemID = 48190 }; --Runetotem's Legguards of Conquest
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 48153 }; --Runetotem's Handguards of Conquest
		[11] = { itemID = 48155 }; --Runetotem's Leggings of Conquest
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 48244 }; --Garona's Gauntlets of Conquest
		[15] = { itemID = 48246 }; --Garona's Legplates of Conquest
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41293 }; --Furious Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41304 }; --Furious Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41773 }; --Furious Gladiator's Dragonhide Gloves
		[22] = { itemID = 41667 }; --Furious Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41287 }; --Furious Gladiator's Kodohide Gloves
		[26] = { itemID = 41298 }; --Furious Gladiator's Kodohide Legguards
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41767 }; --Furious Gladiator's Leather Gloves
		[30] = { itemID = 41655 }; --Furious Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[02] = { itemID = 48276 }; --Windrunner's Handguards of Conquest
		[03] = { itemID = 48278 }; --Windrunner's Legguards of Conquest
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[06] = { itemID = 48337 }; --Thrall's Gloves of Conquest
		[07] = { itemID = 48339 }; --Thrall's Kilt of Conquest
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 48367 }; --Thrall's Grips of Conquest
		[11] = { itemID = 48369 }; --Thrall's War-Kilt of Conquest
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 48296 }; --Thrall's Handguards of Conquest
		[15] = { itemID = 48298 }; --Thrall's Legguards of Conquest
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41143 }; --Furious Gladiator's Chain Gauntlets
		[18] = { itemID = 41205 }; --Furious Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41007 }; --Furious Gladiator's Mail Gauntlets
		[22] = { itemID = 41033 }; --Furious Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41137 }; --Furious Gladiator's Linked Gauntlets
		[26] = { itemID = 41199 }; --Furious Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41001 }; --Furious Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41027 }; --Furious Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[02] = { itemID = 48502 }; --Koltira's Gauntlets of Conquest
		[03] = { itemID = 48504 }; --Koltira's Legplates of Conquest
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[06] = { itemID = 48559 }; --Koltira's Handguards of Conquest
		[07] = { itemID = 48561 }; --Koltira's Legguards of Conquest
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 48598 }; --Liadrin's Gloves of Conquest
		[11] = { itemID = 48596 }; --Liadrin's Greaves of Conquest
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 48630 }; --Liadrin's Gauntlets of Conquest
		[15] = { itemID = 48628 }; --Liadrin's Legplates of Conquest
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40809 }; --Furious Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40848 }; --Furious Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40927 }; --Furious Gladiator's Ornamented Gloves
		[26] = { itemID = 40939 }; --Furious Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40808 }; --Furious Gladiator's Scaled Gauntlets
		[30] = { itemID = 40849 }; --Furious Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[02] = { itemID = 48653 }; --Liadrin's Handguards of Conquest
		[03] = { itemID = 48655 }; --Liadrin's Legguards of Conquest
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[06] = { itemID = 48387 }; --Hellscream's Gauntlets of Conquest
		[07] = { itemID = 48389 }; --Hellscream's Legplates of Conquest
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 48457 }; --Hellscream's Handguards of Conquest
		[11] = { itemID = 48459 }; --Hellscream's Legguards of Conquest
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40807 }; --Furious Gladiator's Plate Gauntlets
		[22] = { itemID = 40847 }; --Furious Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[02] = { itemID = 41909 }; --Furious Gladiator's Cuffs of Dominance
		[03] = { itemID = 41898 }; --Furious Gladiator's Cord of Dominance
		[04] = { itemID = 41903 }; --Furious Gladiator's Slippers of Dominance
		[06] = { itemID = 41893 }; --Furious Gladiator's Cuffs of Salvation
		[07] = { itemID = 41881 }; --Furious Gladiator's Cord of Salvation
		[08] = { itemID = 41885 }; --Furious Gladiator's Slippers of Salvation
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41640 }; --Furious Gladiator's Armwraps of Dominance
		[18] = { itemID = 41630 }; --Furious Gladiator's Belt of Dominance
		[19] = { itemID = 41635 }; --Furious Gladiator's Boots of Dominance
		[21] = { itemID = 41625 }; --Furious Gladiator's Armwraps of Salvation
		[22] = { itemID = 41617 }; --Furious Gladiator's Belt of Salvation
		[23] = { itemID = 41621 }; --Furious Gladiator's Boots of Salvation
		[25] = { itemID = 41840 }; --Furious Gladiator's Armwraps of Triumph
		[26] = { itemID = 41832 }; --Furious Gladiator's Belt of Triumph
		[27] = { itemID = 41836 }; --Furious Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[02] = { itemID = 41065 }; --Furious Gladiator's Wristguards of Dominance
		[03] = { itemID = 41070 }; --Furious Gladiator's Waistguard of Dominance
		[04] = { itemID = 41075 }; --Furious Gladiator's Sabatons of Dominance
		[06] = { itemID = 41060 }; --Furious Gladiator's Wristguards of Salvation
		[07] = { itemID = 41051 }; --Furious Gladiator's Waistguard of Salvation
		[08] = { itemID = 41055 }; --Furious Gladiator's Sabatons of Salvation
		[10] = { itemID = 41225 }; --Furious Gladiator's Wristguards of Triumph
		[11] = { itemID = 41235 }; --Furious Gladiator's Waistguard of Triumph
		[12] = { itemID = 41230 }; --Furious Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40983 }; --Furious Gladiator's Bracers of Salvation
		[18] = { itemID = 40976 }; --Furious Gladiator's Girdle of Salvation
		[19] = { itemID = 40977 }; --Furious Gladiator's Greaves of Salvation
		[21] = { itemID = 40889 }; --Furious Gladiator's Bracers of Triumph
		[22] = { itemID = 40881 }; --Furious Gladiator's Girdle of Triumph
		[23] = { itemID = 40882 }; --Furious Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[02] = { itemID = 42071 }; --Furious Gladiator's Cloak of Ascendancy
		[03] = { itemID = 42073 }; --Furious Gladiator's Cloak of Deliverance
		[04] = { itemID = 42069 }; --Furious Gladiator's Cloak of Dominance
		[05] = { itemID = 42072 }; --Furious Gladiator's Cloak of Salvation
		[06] = { itemID = 42070 }; --Furious Gladiator's Cloak of Subjugation
		[07] = { itemID = 42074 }; --Furious Gladiator's Cloak of Triumph
		[08] = { itemID = 42075 }; --Furious Gladiator's Cloak of Victory
		[11] = { itemID = 47241 }; --Emblem of Triumph
		[12] = { itemID = 43959 }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083 }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42037 }; --Furious Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42039 }; --Furious Gladiator's Pendant of Deliverance
		[19] = { itemID = 42036 }; --Furious Gladiator's Pendant of Dominance
		[20] = { itemID = 42040 }; --Furious Gladiator's Pendant of Salvation
		[21] = { itemID = 42038 }; --Furious Gladiator's Pendant of Subjugation
		[22] = { itemID = 46373 }; --Furious Gladiator's Pendant of Sundering
		[23] = { itemID = 42034 }; --Furious Gladiator's Pendant of Triumph
		[24] = { itemID = 42035 }; --Furious Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42116 }; --Furious Gladiator's Band of Dominance
		[28] = { itemID = 42117 }; --Furious Gladiator's Band of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[02] = { itemID = 47772 }; --Sunstrider's Gauntlets of Triumph
		[03] = { itemID = 47770 }; --Sunstrider's Leggings of Triumph
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[06] = { itemID = 48066 }; --Zabra's Gloves of Triumph
		[07] = { itemID = 48064 }; --Zabra's Leggings of Triumph
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 48096 }; --Zabra's Handwraps of Triumph
		[11] = { itemID = 48094 }; --Zabra's Pants of Triumph
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 47803 }; --Gul'dan's Gloves of Triumph
		[15] = { itemID = 47805 }; --Gul'dan's Leggings of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41972 }; --Relentless Gladiator's Silk Handguards
		[18] = { itemID = 41960 }; --Relentless Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41875 }; --Relentless Gladiator's Mooncloth Gloves
		[22] = { itemID = 41865 }; --Relentless Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41941 }; --Relentless Gladiator's Satin Gloves
		[26] = { itemID = 41928 }; --Relentless Gladiator's Satin Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42018 }; --Relentless Gladiator's Felweave Handguards
		[30] = { itemID = 42006 }; --Relentless Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[02] = { itemID = 48182 }; --Runetotem's Gloves of Triumph
		[03] = { itemID = 48180 }; --Runetotem's Trousers of Triumph
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[06] = { itemID = 48193 }; --Runetotem's Handgrips of Triumph
		[07] = { itemID = 48195 }; --Runetotem's Legguards of Triumph
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 48152 }; --Runetotem's Handguards of Triumph
		[11] = { itemID = 48150 }; --Runetotem's Leggings of Triumph
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 48241 }; --Garona's Gauntlets of Triumph
		[15] = { itemID = 48239 }; --Garona's Legplates of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41294 }; --Relentless Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41305 }; --Relentless Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41774 }; --Relentless Gladiator's Dragonhide Gloves
		[22] = { itemID = 41668 }; --Relentless Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41288 }; --Relentless Gladiator's Kodohide Gloves
		[26] = { itemID = 41299 }; --Relentless Gladiator's Kodohide Legguards
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41768 }; --Relentless Gladiator's Leather Gloves
		[30] = { itemID = 41656 }; --Relentless Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[02] = { itemID = 48273 }; --Windrunner's Handguards of Triumph
		[03] = { itemID = 48271 }; --Windrunner's Legguards of Triumph
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[06] = { itemID = 48334 }; --Thrall's Gloves of Triumph
		[07] = { itemID = 48332 }; --Thrall's Kilt of Triumph
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 48364 }; --Thrall's Grips of Triumph
		[11] = { itemID = 48362 }; --Thrall's War-Kilt of Triumph
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 48301 }; --Thrall's Handguards of Triumph
		[15] = { itemID = 48303 }; --Thrall's Legguards of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41144 }; --Relentless Gladiator's Chain Gauntlets
		[18] = { itemID = 41206 }; --Relentless Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41008 }; --Relentless Gladiator's Mail Gauntlets
		[22] = { itemID = 41034 }; --Relentless Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41138 }; --Relentless Gladiator's Linked Gauntlets
		[26] = { itemID = 41200 }; --Relentless Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41002 }; --Relentless Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41028 }; --Relentless Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[02] = { itemID = 48499 }; --Koltira's Gauntlets of Triumph
		[03] = { itemID = 48497 }; --Koltira's Legplates of Triumph
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[06] = { itemID = 48556 }; --Koltira's Handguards of Triumph
		[07] = { itemID = 48554 }; --Koltira's Legguards of Triumph
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 48593 }; --Liadrin's Gloves of Triumph
		[11] = { itemID = 48591 }; --Liadrin's Greaves of Triumph
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 48625 }; --Liadrin's Gauntlets of Triumph
		[15] = { itemID = 48623 }; --Liadrin's Legplates of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40811 }; --Relentless Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40851 }; --Relentless Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40928 }; --Relentless Gladiator's Ornamented Gloves
		[26] = { itemID = 40940 }; --Relentless Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40812 }; --Relentless Gladiator's Scaled Gauntlets
		[30] = { itemID = 40852 }; --Relentless Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[02] = { itemID = 48658 }; --Liadrin's Handguards of Triumph
		[03] = { itemID = 48660 }; --Liadrin's Legguards of Triumph
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[06] = { itemID = 48392 }; --Hellscream's Gauntlets of Triumph
		[07] = { itemID = 48394 }; --Hellscream's Legplates of Triumph
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 48462 }; --Hellscream's Handguards of Triumph
		[11] = { itemID = 48464 }; --Hellscream's Legguards of Triumph
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40810 }; --Relentless Gladiator's Plate Gauntlets
		[22] = { itemID = 40850 }; --Relentless Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[02] = { itemID = 41910 }; --Relentless Gladiator's Cuffs of Dominance
		[03] = { itemID = 41899, "=ds=#s19#" }; --Relentless Gladiator's Cord of Dominance
		[04] = { itemID = 41904 }; --Relentless Gladiator's Treads of Dominance
		[06] = { itemID = 41894 }; --Relentless Gladiator's Cuffs of Salvation
		[07] = { itemID = 41882 }; --Relentless Gladiator's Cord of Salvation
		[08] = { itemID = 41886 }; --Relentless Gladiator's Treads of Salvation
		[10] = { itemID = 49181 }; --Relentless Gladiator's Cuffs of Alacrity
		[11] = { itemID = 49179 }; --Relentless Gladiator's Cord of Alacrity
		[12] = { itemID = 49183 }; --Relentless Gladiator's Treads of Alacrity
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41641 }; --Relentless Gladiator's Armwraps of Dominance
		[18] = { itemID = 41631 }; --Relentless Gladiator's Belt of Dominance
		[19] = { itemID = 41636 }; --Relentless Gladiator's Boots of Dominance
		[21] = { itemID = 41626 }; --Relentless Gladiator's Armwraps of Salvation
		[22] = { itemID = 41618 }; --Relentless Gladiator's Belt of Salvation
		[23] = { itemID = 41622 }; --Relentless Gladiator's Boots of Salvation
		[25] = { itemID = 41841 }; --Relentless Gladiator's Armwraps of Triumph
		[26] = { itemID = 41833 }; --Relentless Gladiator's Belt of Triumph
		[27] = { itemID = 41837 }; --Relentless Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[02] = { itemID = 41066 }; --Relentless Gladiator's Wristguards of Dominance
		[03] = { itemID = 41071 }; --Relentless Gladiator's Waistguard of Dominance
		[04] = { itemID = 41076 }; --Relentless Gladiator's Sabatons of Dominance
		[06] = { itemID = 41061 }; --Relentless Gladiator's Wristguards of Salvation
		[07] = { itemID = 41052 }; --Relentless Gladiator's Waistguard of Salvation
		[08] = { itemID = 41056 }; --Relentless Gladiator's Sabatons of Salvation
		[10] = { itemID = 41226 }; --Relentless Gladiator's Wristguards of Triumph
		[11] = { itemID = 41236 }; --Relentless Gladiator's Waistguard of Triumph
		[12] = { itemID = 41231 }; --Relentless Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40984 }; --Relentless Gladiator's Bracers of Salvation
		[18] = { itemID = 40978 }; --Relentless Gladiator's Girdle of Salvation
		[19] = { itemID = 40979 }; --Relentless Gladiator's Greaves of Salvation
		[21] = { itemID = 40890 }; --Relentless Gladiator's Bracers of Triumph
		[22] = { itemID = 40883 }; --Relentless Gladiator's Girdle of Triumph
		[23] = { itemID = 40884 }; --Relentless Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Koralon the Flame Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[02] = { itemID = 42078 }; --Relentless Gladiator's Cloak of Ascendancy
		[03] = { itemID = 42080 }; --Relentless Gladiator's Cloak of Deliverance
		[04] = { itemID = 42076 }; --Relentless Gladiator's Cloak of Dominance
		[05] = { itemID = 42079 }; --Relentless Gladiator's Cloak of Salvation
		[06] = { itemID = 42077 }; --Relentless Gladiator's Cloak of Subjugation
		[07] = { itemID = 42081 }; --Relentless Gladiator's Cloak of Triumph
		[08] = { itemID = 42082 }; --Relentless Gladiator's Cloak of Victory
		[11] = { itemID = 47241 }; --Emblem of Triumph
		[12] = { itemID = 43959 }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083 }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42044 }; --Relentless Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42046 }; --Relentless Gladiator's Pendant of Deliverance
		[19] = { itemID = 42043 }; --Relentless Gladiator's Pendant of Dominance
		[20] = { itemID = 42047 }; --Relentless Gladiator's Pendant of Salvation
		[21] = { itemID = 42045 }; --Relentless Gladiator's Pendant of Subjugation
		[22] = { itemID = 46374 }; --Relentless Gladiator's Pendant of Sundering
		[23] = { itemID = 42041 }; --Relentless Gladiator's Pendant of Triumph
		[24] = { itemID = 42042 }; --Relentless Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42118 }; --Relentless Gladiator's Band of Ascendancy
		[28] = { itemID = 42119 }; --Relentless Gladiator's Band of Victory
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[02] = { itemID = 50275 }; --Bloodmage Gloves
		[03] = { itemID = 50277 }; --Bloodmage Leggings
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[06] = { itemID = 50766 }; --Crimson Acolyte Gloves
		[07] = { itemID = 50769 }; --Crimson Acolyte Leggings
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 50391 }; --Crimson Acolyte Handwraps
		[11] = { itemID = 50393 }; --Crimson Acolyte Pants
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 50240 }; --Dark Coven Gloves
		[15] = { itemID = 50242 }; --Dark Coven Leggings
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 41972 }; --Relentless Gladiator's Silk Handguards
		[18] = { itemID = 41960 }; --Relentless Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 41875 }; --Relentless Gladiator's Mooncloth Gloves
		[22] = { itemID = 41865 }; --Relentless Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 41941 }; --Relentless Gladiator's Satin Gloves
		[26] = { itemID = 41928 }; --Relentless Gladiator's Satin Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 42018 }; --Relentless Gladiator's Felweave Handguards
		[30] = { itemID = 42006 }; --Relentless Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[02] = { itemID = 50822 }; --Lasherweave's Gloves
		[03] = { itemID = 50820 }; --Lasherweave's Trousers
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[06] = { itemID = 50827 }; --Lasherweave's Handgrips
		[07] = { itemID = 50825 }; --Lasherweave's Legguards
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 50107 }; --Lasherweave's Gauntlets
		[11] = { itemID = 50109 }; --Lasherweave's Legplates
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 50088 }; --Shadowblade Gauntlets
		[15] = { itemID = 50090 }; --Shadowblade Legplates
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 41294 }; --Relentless Gladiator's Wyrmhide Gloves
		[18] = { itemID = 41305 }; --Relentless Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 41774 }; --Relentless Gladiator's Dragonhide Gloves
		[22] = { itemID = 41668 }; --Relentless Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 41288 }; --Relentless Gladiator's Kodohide Gloves
		[26] = { itemID = 41299 }; --Relentless Gladiator's Kodohide Legguards
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 41768 }; --Relentless Gladiator's Leather Gloves
		[30] = { itemID = 41656 }; --Relentless Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[02] = { itemID = 50114 }; --Ahn'Kahar Blood Hunter's Handguards
		[03] = { itemID = 50116 }; --Ahn'Kahar Blood Hunter's Legguards
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[06] = { itemID = 50842 }; --Frost Witch's Gloves
		[07] = { itemID = 50844 }; --Frost Witch's Kilt
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 50831 }; --Frost Witch's Grips
		[11] = { itemID = 50833 }; --Frost Witch's War-Kilt
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 50836 }; --Frost Witch's Handguards
		[15] = { itemID = 50838 }; --Frost Witch's Legguards
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 41144 }; --Relentless Gladiator's Chain Gauntlets
		[18] = { itemID = 41206 }; --Relentless Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 41008 }; --Relentless Gladiator's Mail Gauntlets
		[22] = { itemID = 41034 }; --Relentless Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 41138 }; --Relentless Gladiator's Linked Gauntlets
		[26] = { itemID = 41200 }; --Relentless Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 41002 }; --Relentless Gladiator's Ringmail Gauntlets
		[30] = { itemID = 41028 }; --Relentless Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[02] = { itemID = 50095 }; --Scourgelord Gauntlets
		[03] = { itemID = 50097 }; --Scourgelord Legplates
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[06] = { itemID = 50856 }; --Scourgelord Handguards
		[07] = { itemID = 50854 }; --Scourgelord Legguards
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 50868 }; --Lightsworn Gloves
		[11] = { itemID = 50866 }; --Lightsworn Greaves
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 50327 }; --Lightsworn Gauntlets
		[15] = { itemID = 50325 }; --Lightsworn Legplates
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 40811 }; --Relentless Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 40851 }; --Relentless Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 40928 }; --Relentless Gladiator's Ornamented Gloves
		[26] = { itemID = 40940 }; --Relentless Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 40812 }; --Relentless Gladiator's Scaled Gauntlets
		[30] = { itemID = 40852 }; --Relentless Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[02] = { itemID = 50863 }; --Lightsworn Handguards
		[03] = { itemID = 50861 }; --Lightsworn Legguards
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[06] = { itemID = 50079 }; --Ymirjar Lord's Gauntlets
		[07] = { itemID = 50081 }; --Ymirjar Lord's Legplates
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 50849 }; --Ymirjar Lord's Handguards
		[11] = { itemID = 50847 }; --Ymirjar Lord's Legguards
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 40810 }; --Relentless Gladiator's Plate Gauntlets
		[22] = { itemID = 40850 }; --Relentless Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[02] = { itemID = 41910 }; --Relentless Gladiator's Cuffs of Dominance
		[03] = { itemID = 41899 }; --Relentless Gladiator's Cord of Dominance
		[04] = { itemID = 41904 }; --Relentless Gladiator's Treads of Dominance
		[06] = { itemID = 41894 }; --Relentless Gladiator's Cuffs of Salvation
		[07] = { itemID = 41882 }; --Relentless Gladiator's Cord of Salvation
		[08] = { itemID = 41886 }; --Relentless Gladiator's Treads of Salvation
		[10] = { itemID = 49181 }; --Relentless Gladiator's Cuffs of Alacrity
		[11] = { itemID = 49179 }; --Relentless Gladiator's Cord of Alacrity
		[12] = { itemID = 49183 }; --Relentless Gladiator's Treads of Alacrity
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 41641 }; --Relentless Gladiator's Armwraps of Dominance
		[18] = { itemID = 41631 }; --Relentless Gladiator's Belt of Dominance
		[19] = { itemID = 41636 }; --Relentless Gladiator's Boots of Dominance
		[21] = { itemID = 41626 }; --Relentless Gladiator's Armwraps of Salvation
		[22] = { itemID = 41618 }; --Relentless Gladiator's Belt of Salvation
		[23] = { itemID = 41622 }; --Relentless Gladiator's Boots of Salvation
		[25] = { itemID = 41841 }; --Relentless Gladiator's Armwraps of Triumph
		[26] = { itemID = 41833 }; --Relentless Gladiator's Belt of Triumph
		[27] = { itemID = 41837 }; --Relentless Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[02] = { itemID = 41066 }; --Relentless Gladiator's Wristguards of Dominance
		[03] = { itemID = 41071 }; --Relentless Gladiator's Waistguard of Dominance
		[04] = { itemID = 41076 }; --Relentless Gladiator's Sabatons of Dominance
		[06] = { itemID = 41061 }; --Relentless Gladiator's Wristguards of Salvation
		[07] = { itemID = 41052 }; --Relentless Gladiator's Waistguard of Salvation
		[08] = { itemID = 41056 }; --Relentless Gladiator's Sabatons of Salvation
		[10] = { itemID = 41226 }; --Relentless Gladiator's Wristguards of Triumph
		[11] = { itemID = 41236 }; --Relentless Gladiator's Waistguard of Triumph
		[12] = { itemID = 41231 }; --Relentless Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 40984 }; --Relentless Gladiator's Bracers of Salvation
		[18] = { itemID = 40978 }; --Relentless Gladiator's Girdle of Salvation
		[19] = { itemID = 40979 }; --Relentless Gladiator's Greaves of Salvation
		[21] = { itemID = 40890 }; --Relentless Gladiator's Bracers of Triumph
		[22] = { itemID = 40883 }; --Relentless Gladiator's Girdle of Triumph
		[23] = { itemID = 40884 }; --Relentless Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[02] = { itemID = 42078 }; --Relentless Gladiator's Cloak of Ascendancy
		[03] = { itemID = 42080 }; --Relentless Gladiator's Cloak of Deliverance
		[04] = { itemID = 42076 }; --Relentless Gladiator's Cloak of Dominance
		[05] = { itemID = 42079 }; --Relentless Gladiator's Cloak of Salvation
		[06] = { itemID = 42077 }; --Relentless Gladiator's Cloak of Subjugation
		[07] = { itemID = 42081 }; --Relentless Gladiator's Cloak of Triumph
		[08] = { itemID = 42082 }; --Relentless Gladiator's Cloak of Victory
		[11] = { itemID = 49426 }; --Emblem of Frost
		[12] = { itemID = 43959 }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083 }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 42044 }; --Relentless Gladiator's Pendant of Ascendancy
		[18] = { itemID = 42046 }; --Relentless Gladiator's Pendant of Deliverance
		[19] = { itemID = 42043 }; --Relentless Gladiator's Pendant of Dominance
		[20] = { itemID = 42047 }; --Relentless Gladiator's Pendant of Salvation
		[21] = { itemID = 42045 }; --Relentless Gladiator's Pendant of Subjugation
		[22] = { itemID = 46374 }; --Relentless Gladiator's Pendant of Sundering
		[23] = { itemID = 42041 }; --Relentless Gladiator's Pendant of Triumph
		[24] = { itemID = 42042 }; --Relentless Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 42118 }; --Relentless Gladiator's Band of Ascendancy
		[28] = { itemID = 42119 }; --Relentless Gladiator's Band of Victory
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[02] = { itemID = 51159 }; --Sanctified Bloodmage Gloves
		[03] = { itemID = 51157 }; --Sanctified Bloodmage Leggings
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[06] = { itemID = 51179 }; --Sanctified Crimson Acolyte Gloves
		[07] = { itemID = 51177 }; --Sanctified Crimson Acolyte Leggings
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[10] = { itemID = 51183 }; --Sanctified Crimson Acolyte Handwraps
		[11] = { itemID = 51181 }; --Sanctified Crimson Acolyte Pants
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[14] = { itemID = 51209 }; --Sanctified Dark Coven Gloves
		[15] = { itemID = 51207 }; --Sanctified Dark Coven Leggings
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["MAGE"] };
		[17] = { itemID = 51464 }; --Wrathful Gladiator's Silk Handguards
		[18] = { itemID = 51466 }; --Wrathful Gladiator's Silk Trousers
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Holy"] };
		[21] = { itemID = 51483 }; --Wrathful Gladiator's Mooncloth Gloves
		[22] = { itemID = 51485 }; --Wrathful Gladiator's Mooncloth Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PRIEST"], desc = "=q5=" .. AL["Shadow"] };
		[25] = { itemID = 51488 }; --Wrathful Gladiator's Satin Gloves
		[26] = { itemID = 51490 }; --Wrathful Gladiator's Satin Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARLOCK"] };
		[29] = { itemID = 51537 }; --Wrathful Gladiator's Felweave Handguards
		[30] = { itemID = 51539 }; --Wrathful Gladiator's Felweave Trousers
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[02] = { itemID = 51148 }; --Sanctified Lasherweave's Gloves
		[03] = { itemID = 51146 }; --Sanctified Lasherweave's Trousers
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[06] = { itemID = 51144 }; --Sanctified Lasherweave's Handgrips
		[07] = { itemID = 51142 }; --Sanctified Lasherweave's Legguards
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[10] = { itemID = 51138 }; --Sanctified Lasherweave's Gauntlets
		[11] = { itemID = 51136 }; --Sanctified Lasherweave's Legplates
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[14] = { itemID = 51188 }; --Sanctified Shadowblade Gauntlets
		[15] = { itemID = 51186 }; --Sanctified Shadowblade Legplates
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Balance"] };
		[17] = { itemID = 51434 }; --Wrathful Gladiator's Wyrmhide Gloves
		[18] = { itemID = 51436 }; --Wrathful Gladiator's Wyrmhide Legguards
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Feral"] };
		[21] = { itemID = 51426 }; --Wrathful Gladiator's Dragonhide Gloves
		[22] = { itemID = 51428 }; --Wrathful Gladiator's Dragonhide Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DRUID"], desc = "=q5=" .. AL["Restoration"] };
		[25] = { itemID = 51420 }; --Wrathful Gladiator's Kodohide Gloves
		[26] = { itemID = 51422 }; --Wrathful Gladiator's Kodohide Legguards
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["ROGUE"] };
		[29] = { itemID = 51493 }; --Wrathful Gladiator's Leather Gloves
		[30] = { itemID = 51495 }; --Wrathful Gladiator's Leather Legguards
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[02] = { itemID = 51154 }; --Sanctified Ahn'Kahar Blood Hunter's Handguards
		[03] = { itemID = 51152 }; --Sanctified Ahn'Kahar Blood Hunter's Legguards
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[06] = { itemID = 51201 }; --Sanctified Frost Witch's Gloves
		[07] = { itemID = 51203 }; --Sanctified Frost Witch's Kilt
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[10] = { itemID = 51196 }; --Sanctified Frost Witch's Grips
		[11] = { itemID = 51198 }; --Sanctified Frost Witch's War-Kilt
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[14] = { itemID = 51191 }; --Sanctified Frost Witch's Handguards
		[15] = { itemID = 51193 }; --Sanctified Frost Witch's Legguards
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["HUNTER"] };
		[17] = { itemID = 51459 }; --Wrathful Gladiator's Chain Gauntlets
		[18] = { itemID = 51461 }; --Wrathful Gladiator's Chain Leggings
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Elemental"] };
		[21] = { itemID = 51510 }; --Wrathful Gladiator's Mail Gauntlets
		[22] = { itemID = 51512 }; --Wrathful Gladiator's Mail Leggings
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Enhancement"] };
		[25] = { itemID = 51504 }; --Wrathful Gladiator's Linked Gauntlets
		[26] = { itemID = 51506 }; --Wrathful Gladiator's Linked Leggings
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["SHAMAN"], desc = "=q5=" .. AL["Restoration"] };
		[29] = { itemID = 51498 }; --Wrathful Gladiator's Ringmail Gauntlets
		[30] = { itemID = 51500 }; --Wrathful Gladiator's Ringmail Leggings
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[02] = { itemID = 51128 }; --Sanctified Scourgelord Gauntlets
		[03] = { itemID = 51126 }; --Sanctified Scourgelord Legplates
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["Tanking"] };
		[06] = { itemID = 51132 }; --Sanctified Scourgelord Handguards
		[07] = { itemID = 51131 }; --Sanctified Scourgelord Legguards
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[10] = { itemID = 51169 }; --Sanctified Lightsworn Gloves
		[11] = { itemID = 51168 }; --Sanctified Lightsworn Greaves
		[13] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[14] = { itemID = 51163 }; --Sanctified Lightsworn Gauntlets
		[15] = { itemID = 51161 }; --Sanctified Lightsworn Legplates
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"], desc = "=q5=" .. AL["DPS"] };
		[17] = { itemID = 51414 }; --Wrathful Gladiator's Dreadplate Gauntlets
		[18] = { itemID = 51416 }; --Wrathful Gladiator's Dreadplate Legguards
		[24] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Holy"] };
		[25] = { itemID = 51469 }; --Wrathful Gladiator's Ornamented Gloves
		[26] = { itemID = 51471 }; --Wrathful Gladiator's Ornamented Legplates
		[28] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Retribution"] };
		[29] = { itemID = 51475 }; --Wrathful Gladiator's Scaled Gauntlets
		[30] = { itemID = 51477 }; --Wrathful Gladiator's Scaled Legguards
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["PALADIN"], desc = "=q5=" .. AL["Protection"] };
		[02] = { itemID = 51172 }; --Sanctified Lightsworn Handguards
		[03] = { itemID = 51171 }; --Sanctified Lightsworn Legguards
		[05] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[06] = { itemID = 51213 }; --Ymirjar Lord's Gauntlets
		[07] = { itemID = 51211 }; --Ymirjar Lord's Legplates
		[09] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["Protection"] };
		[10] = { itemID = 51217 }; --Ymirjar Lord's Handguards
		[11] = { itemID = 51216 }; --Ymirjar Lord's Legguards
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. LOCALIZED_CLASS_NAMES_MALE["WARRIOR"], desc = "=q5=" .. AL["DPS"] };
		[21] = { itemID = 51542 }; --Wrathful Gladiator's Plate Gauntlets
		[22] = { itemID = 51544 }; --Wrathful Gladiator's Plate Legguards
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Cloth"] };
		[02] = { itemID = 51329 }; --Wrathful Gladiator's Cuffs of Dominance
		[03] = { itemID = 51327 }; --Wrathful Gladiator's Cord of Dominance
		[04] = { itemID = 51328 }; --Wrathful Gladiator's Treads of Dominance
		[06] = { itemID = 51367 }; --Wrathful Gladiator's Cuffs of Salvation
		[07] = { itemID = 51365 }; --Wrathful Gladiator's Cord of Salvation
		[08] = { itemID = 51366 }; --Wrathful Gladiator's Treads of Salvation
		[10] = { itemID = 51339 }; --Wrathful Gladiator's Cuffs of Alacrity
		[11] = { itemID = 51337 }; --Wrathful Gladiator's Cord of Alacrity
		[12] = { itemID = 51338 }; --Wrathful Gladiator's Treads of Alacrity
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Leather"] };
		[17] = { itemID = 51345 }; --Wrathful Gladiator's Armwraps of Dominance
		[18] = { itemID = 51343 }; --Wrathful Gladiator's Belt of Dominance
		[19] = { itemID = 51344 }; --Wrathful Gladiator's Boots of Dominance
		[21] = { itemID = 51342 }; --Wrathful Gladiator's Armwraps of Salvation
		[22] = { itemID = 51340 }; --Wrathful Gladiator's Belt of Salvation
		[23] = { itemID = 51341 }; --Wrathful Gladiator's Boots of Salvation
		[25] = { itemID = 51370 }; --Wrathful Gladiator's Armwraps of Triumph
		[26] = { itemID = 51368 }; --Wrathful Gladiator's Belt of Triumph
		[27] = { itemID = 51369 }; --Wrathful Gladiator's Boots of Triumph
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Mail"] };
		[02] = { itemID = 51376 }; --Wrathful Gladiator's Wristguards of Dominance
		[03] = { itemID = 51374 }; --Wrathful Gladiator's Waistguard of Dominance
		[04] = { itemID = 51375 }; --Wrathful Gladiator's Sabatons of Dominance
		[06] = { itemID = 51373 }; --Wrathful Gladiator's Wristguards of Salvation
		[07] = { itemID = 51371 }; --Wrathful Gladiator's Waistguard of Salvation
		[08] = { itemID = 51372 }; --Wrathful Gladiator's Sabatons of Salvation
		[10] = { itemID = 51352 }; --Wrathful Gladiator's Wristguards of Triumph
		[11] = { itemID = 51350 }; --Wrathful Gladiator's Waistguard of Triumph
		[12] = { itemID = 51351 }; --Wrathful Gladiator's Sabatons of Triumph
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Plate"] };
		[17] = { itemID = 51361 }; --Wrathful Gladiator's Bracers of Salvation
		[18] = { itemID = 51359 }; --Wrathful Gladiator's Girdle of Salvation
		[19] = { itemID = 51360 }; --Wrathful Gladiator's Greaves of Salvation
		[21] = { itemID = 51364 }; --Wrathful Gladiator's Bracers of Triumph
		[22] = { itemID = 51362 }; --Wrathful Gladiator's Girdle of Triumph
		[23] = { itemID = 51363 }; --Wrathful Gladiator's Greaves of Triumph
	};
	{
		Name = BabbleBoss["Toravon the Ice Watcher"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Back"] };
		[02] = { itemID = 51334 }; --Wrathful Gladiator's Cloak of Ascendancy
		[03] = { itemID = 51348 }; --Wrathful Gladiator's Cloak of Deliverance
		[04] = { itemID = 51330 }; --Wrathful Gladiator's Cloak of Dominance
		[05] = { itemID = 51346 }; --Wrathful Gladiator's Cloak of Salvation
		[06] = { itemID = 51332 }; --Wrathful Gladiator's Cloak of Subjugation
		[07] = { itemID = 51354 }; --Wrathful Gladiator's Cloak of Triumph
		[08] = { itemID = 51356 }; --Wrathful Gladiator's Cloak of Victory
		[11] = { itemID = 49426 }; --Emblem of Frost
		[12] = { itemID = 43959 }; --Reins of the Grand Black War Mammoth
		[13] = { itemID = 44083 }; --Reins of the Grand Black War Mammoth
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Neck"] };
		[17] = { itemID = 51335 }; --Wrathful Gladiator's Pendant of Ascendancy
		[18] = { itemID = 51349 }; --Wrathful Gladiator's Pendant of Deliverance
		[19] = { itemID = 51331 }; --Wrathful Gladiator's Pendant of Dominance
		[20] = { itemID = 51347 }; --Wrathful Gladiator's Pendant of Salvation
		[21] = { itemID = 51333 }; --Wrathful Gladiator's Pendant of Subjugation
		[22] = { itemID = 51353 }; --Wrathful Gladiator's Pendant of Sundering
		[23] = { itemID = 51355 }; --Wrathful Gladiator's Pendant of Triumph
		[24] = { itemID = 51357 }; --Wrathful Gladiator's Pendant of Victory
		[26] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["PvP Non-Set Epics"], desc = "=q5=" .. BabbleInventory["Ring"] };
		[27] = { itemID = 51336 }; --Wrathful Gladiator's Band of Dominance
		[28] = { itemID = 51358 }; --Wrathful Gladiator's Band of Triumph
	};
};

-----------------
--- Naxxramas ---
-----------------

-------------------------
--- Construct Quarter ---
-------------------------

AtlasLoot_Data["Naxxramas80"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Naxxramas"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Patchwerk"];
		[01] = { itemID = 39272 }; --Drape of Surgery
		[02] = { itemID = 39273 }; --Sullen Cloth Boots
		[03] = { itemID = 39275 }; --Contagion Gloves
		[04] = { itemID = 39274 }; --Retcher's Shoulderpads
		[05] = { itemID = 39267 }; --Abomination Shoulderblades
		[06] = { itemID = 39262 }; --Gauntlets of Combined Strength
		[07] = { itemID = 39261 }; --Tainted Girdle of Mending
		[08] = { itemID = 39271 }; --Blade of Dormant Memories
		[09] = { itemID = 39270 }; --Hatestrike
	};
	{
		Name = BabbleBoss["Patchwerk"];
		[01] = { itemID = 40271 }; --Sash of Solitude
		[02] = { itemID = 40269 }; --Boots of Persuasion
		[03] = { itemID = 40260 }; --Belt of the Tortured
		[04] = { itemID = 40270 }; --Boots of Septic Wounds
		[05] = { itemID = 40262 }; --Gloves of Calculated Risk
		[06] = { itemID = 40272 }; --Girdle of the Gambit
		[07] = { itemID = 40261 }; --Crude Discolored Battlegrips
		[08] = { itemID = 40263 }; --Fleshless Girdle
		[09] = { itemID = 40259 }; --Waistguard of Divine Grace
		[10] = { itemID = 40071 }; --Chains of Adoration
		[11] = { itemID = 40065 }; --Fool's Trial
		[12] = { itemID = 40069 }; --Heritage
		[13] = { itemID = 40064 }; --Thunderstorm Amulet
		[14] = { itemID = 40080 }; --Lost Jewel
		[15] = { itemID = 40075 }; --Ruthlessness
		[16] = { itemID = 40107 }; --Sand-Worn Band
		[17] = { itemID = 40074 }; --Strong-Handed Ring
		[18] = { itemID = 40273 }; --Surplus Limb
		[19] = { itemID = 40267 }; --Totem of Hex
		[20] = { itemID = 40268 }; --Libram of Tolerance
		[21] = { itemID = 40264 }; --Split Greathammer
		[22] = { itemID = 40266 }; --Hero's Surrender
		[23] = { itemID = 40265 }; --Arrowsong
	};
	{
		Name = BabbleBoss["Grobbulus"];
		[01] = { itemID = 39284 }; --Miasma Mantle
		[02] = { itemID = 39285 }; --Handgrips of Turmoil
		[03] = { itemID = 39283 }; --Putrescent Bands
		[04] = { itemID = 39279 }; --Blistered Belt of Decay
		[05] = { itemID = 39278 }; --Bands of Anxiety
		[06] = { itemID = 39280 }; --Leggings of Innumerable Barbs
		[07] = { itemID = 39282 }; --Bone-Linked Amulet
		[08] = { itemID = 39277 }; --Sealing Ring of Grobbulus
		[09] = { itemID = 39281 }; --Infection Repulser
		[10] = { itemID = 39276 }; --The Skull of Ruin
	};
	{
		Name = BabbleBoss["Grobbulus"];
		[01] = { itemID = 40250 }; --Aged Winter Cloak
		[02] = { itemID = 40254 }; --Cloak of Averted Crisis
		[03] = { itemID = 40252 }; --Cloak of the Shadowed Sun
		[04] = { itemID = 40253 }; --Shawl of the Old Maid
		[05] = { itemID = 40251 }; --Shroud of Luminosity
		[06] = { itemID = 40287 }; --Cowl of Vanity
		[07] = { itemID = 40286 }; --Mantle of the Corrupted
		[08] = { itemID = 40351 }; --Mantle of the Fatigued Sage
		[09] = { itemID = 40289 }; --Sympathetic Amice
		[10] = { itemID = 40277 }; --Tunic of Indulgence
		[11] = { itemID = 40285 }; --Desecrated Past
		[12] = { itemID = 40288 }; --Spaulders of Incoherence
		[13] = { itemID = 40283 }; --Fallout Impervious Tunic
		[14] = { itemID = 40282 }; --Slime Stream Bands
		[15] = { itemID = 40275 }; --Depraved Linked Belt
		[16] = { itemID = 40279 }; --Chestguard of the Exhausted
		[17] = { itemID = 40274 }; --Bracers of Liberation
		[18] = { itemID = 40278 }; --Girdle of Chivalry
		[19] = { itemID = 40257 }; --Defender's Code
		[20] = { itemID = 40255 }; --Dying Curse
		[21] = { itemID = 40258 }; --Forethought Talisman
		[22] = { itemID = 40256 }; --Grim Toll
		[23] = { itemID = 40281 }; --Twilight Mist
		[24] = { itemID = 40280 }; --Origin of Nightmares
		[25] = { itemID = 40284 }; --Plague Igniter
	};
	{
		Name = BabbleBoss["Gluth"];
		[01] = { itemID = 39272 }; --Drape of Surgery
		[02] = { itemID = 39284 }; --Miasma Mantle
		[03] = { itemID = 39396 }; --Gown of Blaumeux
		[04] = { itemID = 39309 }; --Leggings of the Instructor
		[05] = { itemID = 39237 }; --Spaulders of Resumed Battle
		[06] = { itemID = 39279 }; --Blistered Belt of Decay
		[07] = { itemID = 39191 }; --Splint-Bound Leggings
		[08] = { itemID = 39215 }; --Boots of the Follower
		[09] = { itemID = 39294 }; --Arc-Scorched Helmet
		[10] = { itemID = 39248 }; --Tunic of the Lost Pack
		[11] = { itemID = 39194 }; --Rusted-Link Spiked Gauntlets
		[12] = { itemID = 39251 }; --Necrogenic Belt
		[13] = { itemID = 39379 }; --Spectral Rider's Girdle
		[14] = { itemID = 39188 }; --Chivalric Chestguard
		[15] = { itemID = 39345 }; --Girdle of the Ascended Phantom
		[16] = { itemID = 39146 }; --Collar of Dissolution
		[17] = { itemID = 39232 }; --Pendant of Lost Vocations
		[18] = { itemID = 39193 }; --Band of Neglected Pleas
		[19] = { itemID = 39388 }; --Spirit-World Glass
		[20] = { itemID = 39200 }; --Grieving Spellblade
		[21] = { itemID = 39344 }; --Slayer of the Lifeless
		[22] = { itemID = 39281 }; --Infection Repulser
		[23] = { itemID = 39394 }; --Charmed Cierge
	};
	{
		Name = BabbleBoss["Gluth"];
		[01] = { itemID = 40622 }; --Spaulders of the Lost Conqueror
		[02] = { itemID = 40623 }; --Spaulders of the Lost Protector
		[03] = { itemID = 40624 }; --Spaulders of the Lost Vanquisher
		[04] = { itemID = 40610 }; --Chestguard of the Lost Conqueror
		[05] = { itemID = 40611 }; --Chestguard of the Lost Protector
		[06] = { itemID = 40612 }; --Chestguard of the Lost Vanquisher
		[07] = { itemID = 40619 }; --Leggings of the Lost Conqueror
		[08] = { itemID = 40620 }; --Leggings of the Lost Protector
		[09] = { itemID = 40621 }; --Leggings of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Gluth"];
		[01] = { itemID = 40247 }; --Cowl of Innocent Delight
		[02] = { itemID = 40289 }; --Sympathetic Amice
		[03] = { itemID = 40602 }; --Robes of Mutation
		[04] = { itemID = 39733 }; --Gloves of Token Respect
		[05] = { itemID = 40303 }; --Wraps of the Persecuted
		[06] = { itemID = 40326 }; --Boots of Forlorn Wishes
		[07] = { itemID = 40296 }; --Cover of Silence
		[08] = { itemID = 39768 }; --Cowl of the Perished
		[09] = { itemID = 40319 }; --Chestpiece of Suspicion
		[10] = { itemID = 40260 }; --Belt of the Tortured
		[11] = { itemID = 40205 }; --Stalk-Skin Belt
		[12] = { itemID = 40270 }; --Boots of Septic Wounds
		[13] = { itemID = 40193 }; --Tunic of Masked Suffering
		[14] = { itemID = 40209 }; --Bindings of the Decrepit
		[15] = { itemID = 40302 }; --Benefactor's Gauntlets
		[16] = { itemID = 39718 }; --Corpse Scarab Handguards
		[17] = { itemID = 40242 }; --Grotesque Handgrips
		[18] = { itemID = 39760 }; --Helm of Diminished Pride
		[19] = { itemID = 40185 }; --Shoulderguards of Opportunity
		[20] = { itemID = 40203 }; --Breastplate of Tormented Rage
		[21] = { itemID = 40332 }; --Abetment Bracers
		[22] = { itemID = 40188 }; --Gauntlets of the Disobediant
		[23] = { itemID = 40259 }; --Waistguard of Divine Grace
		[24] = { itemID = 40204 }; --Legguards of the Apostle
		[25] = { itemID = 39717 }; --Inexorable Sabatons
		[26] = { itemID = 40206 }; --Iron-Spring Jumpers
		[27] = { itemID = 40297 }; --Sabatons of Endurance
		[28] = { itemID = 40350 }; --Urn of Lost Memories
		[29] = { itemID = 40191 }; --Libram of Radiance
	};
	{
		Name = BabbleBoss["Gluth"];
		[01] = { itemID = 40281 }; --Twilight Mist
		[02] = { itemID = 39714 }; --Webbed Death
		[03] = { itemID = 39730 }; --Widow's Fury
		[04] = { itemID = 40343 }; --Armageddon
		[05] = { itemID = 40239 }; --The Hand of Nerub
		[06] = { itemID = 40280 }; --Origin of Nightmares
		[07] = { itemID = 39716 }; --Shield of Assimilation
		[08] = { itemID = 40265 }; --Arrowsong
		[09] = { itemID = 40346 }; --Final Voyage
		[16] = { itemID = 40637 }; --Mantle of the Lost Conqueror
		[17] = { itemID = 40638 }; --Mantle of the Lost Protector
		[18] = { itemID = 40639 }; --Mantle of the Lost Vanquisher
		[19] = { itemID = 40625 }; --Breastplate of the Lost Conqueror
		[20] = { itemID = 40626 }; --Breastplate of the Lost Protector
		[21] = { itemID = 40627 }; --Breastplate of the Lost Vanquisher
		[22] = { itemID = 40634 }; --Legplates of the Lost Conqueror
		[23] = { itemID = 40635 }; --Legplates of the Lost Protector
		[24] = { itemID = 40636 }; --Legplates of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Thaddius"];
		[01] = { itemID = 39295 }; --Cowl of Sheet Lightning
		[02] = { itemID = 39294 }; --Arc-Scorched Helmet
		[03] = { itemID = 39293 }; --Blackened Legplates of Feugen
		[04] = { itemID = 39292 }; --Repelling Charge
		[05] = { itemID = 39291 }; --Torment of the Banished
		[16] = { itemID = 40619 }; --Leggings of the Lost Conqueror
		[17] = { itemID = 40620 }; --Leggings of the Lost Protector
		[18] = { itemID = 40621 }; --Leggings of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Thaddius"];
		[01] = { itemID = 40303 }; --Wraps of the Persecuted
		[02] = { itemID = 40301 }; --Cincture of Polarity
		[03] = { itemID = 40296 }; --Cover of Silence
		[04] = { itemID = 40304 }; --Headpiece of Fungal Bloom
		[05] = { itemID = 40299 }; --Pauldrons of the Abandoned
		[06] = { itemID = 40302 }; --Benefactor's Gauntlets
		[07] = { itemID = 40298 }; --Faceguard of the Succumbed
		[08] = { itemID = 40294 }; --Riveted Abomination Leggings
		[09] = { itemID = 40297 }; --Sabatons of Endurance
		[10] = { itemID = 40300 }; --Spire of Sunset
		[16] = { itemID = 40634 }; --Legplates of the Lost Conqueror
		[17] = { itemID = 40635 }; --Legplates of the Lost Protector
		[18] = { itemID = 40636 }; --Legplates of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Anub'Rekhan"];
		[01] = { itemID = 39192 }; --Gloves of Dark Gestures
		[02] = { itemID = 39190 }; --Agonal Sash
		[03] = { itemID = 39191 }; --Splint-Bound Leggings
		[04] = { itemID = 39189 }; --Boots of Persistence
		[05] = { itemID = 39188 }; --Chivalric Chestguard
		[06] = { itemID = 39139 }; --Ravaging Sabatons
		[07] = { itemID = 39146 }; --Collar of Dissolution
		[08] = { itemID = 39193 }; --Band of Neglected Pleas
		[09] = { itemID = 39141 }; --Deflection Band
		[10] = { itemID = 39140 }; --Knife of Incision
	};
	{
		Name = BabbleBoss["Anub'Rekhan"];
		[01] = { itemID = 39719 }; --Mantle of the Locusts
		[02] = { itemID = 39721 }; --Sash of the Parlor
		[03] = { itemID = 39720 }; --Leggings of Atrophy
		[04] = { itemID = 39722 }; --Swarm Bindings
		[05] = { itemID = 39701 }; --Dawnwalkers
		[06] = { itemID = 39702 }; --Arachnoid Gold Band
		[07] = { itemID = 39718 }; --Corpse Scarab Handguards
		[08] = { itemID = 39704 }; --Pauldrons of Unnatural Death
		[09] = { itemID = 39703 }; --Rescinding Grips
		[10] = { itemID = 39717 }; --Inexorable Sabatons
		[11] = { itemID = 39706 }; --Sabatons of Sudden Reprisal
		[12] = { itemID = 40071 }; --Chains of Adoration
		[13] = { itemID = 40065 }; --Fool's Trial
		[14] = { itemID = 40069 }; --Heritage
		[15] = { itemID = 40064 }; --Thunderstorm Amulet
		[16] = { itemID = 40080 }; --Lost Jewel
		[17] = { itemID = 40075 }; --Ruthlessness
		[18] = { itemID = 40107 }; --Sand-Worn Band
		[19] = { itemID = 40074 }; --Strong-Handed Ring
		[20] = { itemID = 39714 }; --Webbed Death
		[21] = { itemID = 40208 }; --Cryptfiend's Bite
		[22] = { itemID = 39716 }; --Shield of Assimilation
		[23] = { itemID = 39712 }; --Gemmed Wand of the Nerubians
	};
	{
		Name = BabbleBoss["Grand Widow Faerlina"];
		[01] = { itemID = 39216 }; --Sash of Mortal Desire
		[02] = { itemID = 39215 }; --Boots of the Follower
		[03] = { itemID = 39196 }; --Boots of the Worshiper
		[04] = { itemID = 39217 }; --Avenging Combat Leggings
		[05] = { itemID = 39194 }; --Rusted-Link Spiked Gauntlets
		[06] = { itemID = 39198 }; --Frostblight Pauldrons
		[07] = { itemID = 39195 }; --Bracers of Lost Sentiments
		[08] = { itemID = 39197 }; --Gauntlets of the Master
		[09] = { itemID = 39199 }; --Watchful Eye
		[10] = { itemID = 39200 }; --Grieving Spellblade
	};
	{
		Name = BabbleBoss["Grand Widow Faerlina"];
		[01] = { itemID = 39732 }; --Faerlina's Madness
		[02] = { itemID = 39731 }; --Punctilious Bindings
		[03] = { itemID = 39733 }; --Gloves of Token Respect
		[04] = { itemID = 39735 }; --Belt of False Dignity
		[05] = { itemID = 39756 }; --Tunic of Prejudice
		[06] = { itemID = 39727 }; --Dislocating Handguards
		[07] = { itemID = 39724 }; --Cult's Chestguard
		[08] = { itemID = 39734 }; --Atonement Greaves
		[09] = { itemID = 39723 }; --Fire-Scorched Greathelm
		[10] = { itemID = 39725 }; --Epaulets of the Grieving Servant
		[11] = { itemID = 39729 }; --Bracers of the Tyrant
		[12] = { itemID = 39726 }; --Callous-Hearted Gauntlets
		[13] = { itemID = 40071 }; --Chains of Adoration
		[14] = { itemID = 40065 }; --Fool's Trial
		[15] = { itemID = 40069 }; --Heritage
		[16] = { itemID = 40064 }; --Thunderstorm Amulet
		[17] = { itemID = 40080 }; --Lost Jewel
		[18] = { itemID = 40075 }; --Ruthlessness
		[19] = { itemID = 40107 }; --Sand-Worn Band
		[20] = { itemID = 40108 }; --Seized Beauty
		[21] = { itemID = 40074 }; --Strong-Handed Ring
		[22] = { itemID = 39757 }; --Idol of Worship
		[23] = { itemID = 39728 }; --Totem of Misery
		[24] = { itemID = 39730 }; --Widow's Fury
	};
	{
		Name = BabbleBoss["Maexxna"];
		[01] = { itemID = 39225 }; --Cloak of Armed Strife
		[02] = { itemID = 39230 }; --Spaulders of the Monstrosity
		[03] = { itemID = 39224 }; --Leggings of Discord
		[04] = { itemID = 39228 }; --Web Cocoon Grips
		[05] = { itemID = 39232 }; --Pendant of Lost Vocations
		[06] = { itemID = 39231 }; --Timeworn Silken Band
		[07] = { itemID = 39229 }; --Embrace of the Spider
		[08] = { itemID = 39226 }; --Maexxna's Femur
		[09] = { itemID = 39221 }; --Wraith Spear
		[10] = { itemID = 39233 }; --Aegis of Damnation
	};
	{
		Name = BabbleBoss["Maexxna"];
		[01] = { itemID = 40250, desc = "-q4-Aged Winter Cloak" };
		[02] = { itemID = 40254 }; --Cloak of Averted Crisis
		[03] = { itemID = 40252 }; --Cloak of the Shadowed Sun
		[04] = { itemID = 40253 }; --Shawl of the Old Maid
		[05] = { itemID = 40251 }; --Shroud of Luminosity
		[06] = { itemID = 40062 }; --Digested Silken Robes
		[07] = { itemID = 40060 }; --Distorted Limbs
		[08] = { itemID = 39768 }; --Cowl of the Perished
		[09] = { itemID = 40063 }; --Mantle of Shattered Kinship
		[10] = { itemID = 39765 }; --Sinner's Bindings
		[11] = { itemID = 39761 }; --Infectious Skitterer Leggings
		[12] = { itemID = 40061 }; --Quivering Tunic
		[13] = { itemID = 39762 }; --Torn Web Wrapping
		[14] = { itemID = 39760 }; --Helm of Diminished Pride
		[15] = { itemID = 39767 }; --Undiminished Battleplate
		[16] = { itemID = 39764 }; --Bindings of the Hapless Prey
		[17] = { itemID = 39759 }; --Ablative Chitin Girdle
		[18] = { itemID = 40257 }; --Defender's Code
		[19] = { itemID = 40255 }; --Dying Curse
		[20] = { itemID = 40258 }; --Forethought Talisman
		[21] = { itemID = 40256 }; --Grim Toll
		[22] = { itemID = 39766 }; --Matriarch's Spawn
		[23] = { itemID = 39763 }; --Wraith Strike
		[24] = { itemID = 39758 }; --The Jawbone
	};
	{
		Name = BabbleBoss["Instructor Razuvious"];
		[01] = { itemID = 39297 }; --Cloak of Darkening
		[02] = { itemID = 39310 }; --Mantle of the Extensive Mind
		[03] = { itemID = 39309 }; --Leggings of the Instructor
		[04] = { itemID = 39299 }; --Rapid Attack Gloves
		[05] = { itemID = 39308 }; --Girdle of Lenience
		[06] = { itemID = 39307 }; --Iron Rings of Endurance
		[07] = { itemID = 39306 }; --Plated Gloves of Relief
		[08] = { itemID = 39298 }; --Waistguard of the Tutor
		[09] = { itemID = 39311 }; --Scepter of Murmuring Spirits
		[10] = { itemID = 39296 }; --Accursed Bow of the Elite
	};
	{
		Name = BabbleBoss["Instructor Razuvious"];
		[01] = { itemID = 40325 }; --Bindings of the Expansive Mind
		[02] = { itemID = 40326 }; --Boots of Forlorn Wishes
		[03] = { itemID = 40305 }; --Spaulders of Egotism
		[04] = { itemID = 40319 }; --Chestpiece of Suspicion
		[05] = { itemID = 40323 }; --Esteemed Bindings
		[06] = { itemID = 40315 }; --Shoulderpads of Secret Arts
		[07] = { itemID = 40324 }; --Bands of Mutual Respect
		[08] = { itemID = 40327 }; --Girdle of Recuperation
		[09] = { itemID = 40306 }; --Bracers of the Unholy Knight
		[10] = { itemID = 40316 }; --Gauntlets of Guiding Touch
		[11] = { itemID = 40317 }; --Girdle of Razuvious
		[12] = { itemID = 40318 }; --Legplates of Double Strikes
		[13] = { itemID = 40320 }; --Faithful Steel Sabatons
		[14] = { itemID = 40071 }; --Chains of Adoration
		[15] = { itemID = 40065 }; --Fool's Trial
		[16] = { itemID = 40069 }; --Heritage
		[17] = { itemID = 40064 }; --Thunderstorm Amulet
		[18] = { itemID = 40080 }; --Lost Jewel
		[19] = { itemID = 40075 }; --Ruthlessness
		[20] = { itemID = 40107 }; --Sand-Worn Band
		[21] = { itemID = 40074 }; --Strong-Handed Ring
		[22] = { itemID = 40321 }; --Idol of the Shooting Star
		[23] = { itemID = 40322 }; --Totem of Dueling
	};
	{
		Name = BabbleBoss["Gothik the Harvester"];
		[01] = { itemID = 39390 }; --Resurgent Phantom Bindings
		[02] = { itemID = 39386 }; --Tunic of Dislocation
		[03] = { itemID = 39391 }; --Heinous Mail Chestguard
		[04] = { itemID = 39379 }; --Spectral Rider's Girdle
		[05] = { itemID = 39345 }; --Girdle of the Ascended Phantom
		[06] = { itemID = 39369 }; --Sabatons of Deathlike Gloom
		[07] = { itemID = 39392 }; --Veiled Amulet of Life
		[08] = { itemID = 39389 }; --Signet of the Malevolent
		[09] = { itemID = 39388 }; --Spirit-World Glass
		[10] = { itemID = 39344 }; --Slayer of the Lifeless
	};
	{
		Name = BabbleBoss["Gothik the Harvester"];
		[01] = { itemID = 40250, desc = "-q4-Aged Winter Cloak" };
		[02] = { itemID = 40254 }; --Cloak of Averted Crisis
		[03] = { itemID = 40252 }; --Cloak of the Shadowed Sun
		[04] = { itemID = 40253 }; --Shawl of the Old Maid
		[05] = { itemID = 40251 }; --Shroud of Luminosity
		[06] = { itemID = 40339 }; --Gothik's Cowl
		[07] = { itemID = 40338 }; --Bindings of Yearning
		[08] = { itemID = 40329 }; --Hood of the Exodus
		[09] = { itemID = 40341 }; --Shackled Cinch
		[10] = { itemID = 40333 }; --Leggings of Fleeting Moments
		[11] = { itemID = 40340 }; --Helm of Unleashed Energy
		[12] = { itemID = 40331 }; --Leggings of Failed Escape
		[13] = { itemID = 40328 }; --Helm of Vital Protection
		[14] = { itemID = 40334 }; --Burdened Shoulderplates
		[15] = { itemID = 40332 }; --Abetment Bracers
		[16] = { itemID = 40330 }; --Bracers of Unrelenting Attack
		[17] = { itemID = 40257 }; --Defender's Code
		[18] = { itemID = 40255 }; --Dying Curse
		[19] = { itemID = 40258 }; --Forethought Talisman
		[20] = { itemID = 40256 }; --Grim Toll
		[21] = { itemID = 40342 }; --Idol of Awakening
		[22] = { itemID = 40337 }; --Libram of Resurgence
		[23] = { itemID = 40336 }; --Life and Death
		[24] = { itemID = 40335 }; --Touch of Horror
	};
	{
		Name = BabbleBoss["The Four Horsemen"];
		[01] = { itemID = 39396 }; --Gown of Blaumeux
		[02] = { itemID = 39397 }; --Pauldrons of Havoc
		[03] = { itemID = 39395 }; --Thane's Tainted Greathelm
		[04] = { itemID = 39393 }; --Claymore of Ancient Power
		[05] = { itemID = 39394 }; --Charmed Cierge
		[16] = { itemID = 40610 }; --Chestguard of the Lost Conqueror
		[17] = { itemID = 40611 }; --Chestguard of the Lost Protector
		[18] = { itemID = 40612 }; --Chestguard of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["The Four Horsemen"];
		[01] = { itemID = 40349 }; --Gloves of Peaceful Death
		[02] = { itemID = 40344 }; --Helm of the Grave
		[03] = { itemID = 40352 }; --Leggings of Voracious Shadows
		[04] = { itemID = 40347 }; --Zeliek's Gauntlets
		[05] = { itemID = 40350 }; --Urn of Lost Memories
		[06] = { itemID = 40345 }; --Broken Promise
		[08] = { itemID = 40343 }; --Armageddon
		[07] = { itemID = 40348 }; --Damnation
		[09] = { itemID = 40346 }; --Final Voyage
		[16] = { itemID = 40625 }; --Breastplate of the Lost Conqueror
		[17] = { itemID = 40626 }; --Breastplate of the Lost Protector
		[18] = { itemID = 40627 }; --Breastplate of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Noth the Plaguebringer"];
		[01] = { itemID = 39241 }; --Dark Shroud of the Scourge
		[02] = { itemID = 39242 }; --Robes of Hoarse Breaths
		[03] = { itemID = 39240 }; --Noth's Curse
		[04] = { itemID = 39237 }; --Spaulders of Resumed Battle
		[05] = { itemID = 39243 }; --Handgrips of the Foredoomed
		[06] = { itemID = 39236 }; --Trespasser's Boots
		[07] = { itemID = 39239 }; --Chestplate of the Risen Soldier
		[08] = { itemID = 39235 }; --Bone-Framed Bracers
		[09] = { itemID = 39234 }; --Plague-Impervious Boots
		[10] = { itemID = 39244 }; --Ring of the Fated
	};
	{
		Name = BabbleBoss["Noth the Plaguebringer"];
		[01] = { itemID = 40602 }; --Robes of Mutation
		[02] = { itemID = 40198 }; --Bands of Impurity
		[03] = { itemID = 40197 }; --Gloves of the Fallen Wizard
		[04] = { itemID = 40186 }; --Thrusting Bands
		[05] = { itemID = 40200 }; --Belt of Potent Chanting
		[06] = { itemID = 40193 }; --Tunic of Masked Suffering
		[07] = { itemID = 40196 }; --Legguards of the Undisturbed
		[08] = { itemID = 40184 }; --Crippled Treads
		[09] = { itemID = 40185 }; --Shoulderguards of Opportunity
		[10] = { itemID = 40188 }; --Gauntlets of the Disobediant
		[11] = { itemID = 40187 }; --Poignant Sabatons
		[12] = { itemID = 40071 }; --Chains of Adoration
		[13] = { itemID = 40065 }; --Fool's Trial
		[14] = { itemID = 40069 }; --Heritage
		[15] = { itemID = 40064 }; --Thunderstorm Amulet
		[16] = { itemID = 40080 }; --Lost Jewel
		[17] = { itemID = 40075 }; --Ruthlessness
		[18] = { itemID = 40107 }; --Sand-Worn Band
		[29] = { itemID = 40074 }; --Strong-Handed Ring
		[20] = { itemID = 40192 }; --Accursed Spine
		[21] = { itemID = 40191 }; --Libram of Radiance
		[22] = { itemID = 40189 }; --Angry Dread
		[23] = { itemID = 40190 }; --Spinning Fate
	};
	{
		Name = BabbleBoss["Heigan the Unclean"];
		[01] = { itemID = 39252 }; --Preceptor's Bindings
		[02] = { itemID = 39254 }; --Saltarello Shoes
		[03] = { itemID = 39247 }; --Cuffs of Dark Shadows
		[04] = { itemID = 39248 }; --Tunic of the Lost Pack
		[05] = { itemID = 39251 }; --Necrogenic Belt
		[06] = { itemID = 39249 }; --Shoulderplates of Bloodshed
		[07] = { itemID = 39246 }; --Amulet of Autopsy
		[08] = { itemID = 39250 }; --Ring of Holy Cleansing
		[09] = { itemID = 39245 }; --Demise
		[10] = { itemID = 39255 }; --Staff of the Plague Beast
	};
	{
		Name = BabbleBoss["Heigan the Unclean"];
		[01] = { itemID = 40250 }; --Aged Winter Cloak
		[02] = { itemID = 40254 }; --Cloak of Averted Crisis
		[03] = { itemID = 40252 }; --Cloak of the Shadowed Sun
		[04] = { itemID = 40253 }; --Shawl of the Old Maid
		[05] = { itemID = 40251 }; --Shroud of Luminosity
		[06] = { itemID = 40234 }; --Heigan's Putrid Vestments
		[07] = { itemID = 40236 }; --Serene Echoes
		[08] = { itemID = 40238 }; --Gloves of the Dancing Bear
		[09] = { itemID = 40205 }; --Stalk-Skin Belt
		[10] = { itemID = 40235 }; --Helm of Pilgrimage
		[11] = { itemID = 40209 }; --Bindings of the Decrepit
		[12] = { itemID = 40201 }; --Leggings of Colossal Strides
		[13] = { itemID = 40237 }; --Eruption-Scared Boots
		[14] = { itemID = 40203 }; --Breastplate of Tormented Rage
		[15] = { itemID = 40210 }; --Chestguard of Bitter Charms
		[16] = { itemID = 40204 }; --Legguards of the Apostle
		[17] = { itemID = 40206 }; --Iron-Spring Jumpers
		[18] = { itemID = 40257 }; --Defender's Code
		[19] = { itemID = 40255 }; --Dying Curse
		[20] = { itemID = 40258 }; --Forethought Talisman
		[21] = { itemID = 40256 }; --Grim Toll
		[22] = { itemID = 40207 }; --Sigil of Awareness
		[23] = { itemID = 40208 }; --Cryptfiend's Bite
		[24] = { itemID = 40233 }; --The Undeath Carrier
	};
	{
		Name = BabbleBoss["Loatheb"];
		[01] = { itemID = 39259 }; --Fungi-Stained Coverings
		[02] = { itemID = 39260 }; --Helm of the Corrupted Mind
		[03] = { itemID = 39258 }; --Legplates of Inescapable Death
		[04] = { itemID = 39257 }; --Loatheb's Shadow
		[05] = { itemID = 39256 }; --Sulfur Stave
		[16] = { itemID = 40622 }; --Spaulders of the Lost Conqueror
		[17] = { itemID = 40623 }; --Spaulders of the Lost Protector
		[18] = { itemID = 40624 }; --Spaulders of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Loatheb"];
		[01] = { itemID = 40247 }; --Cowl of Innocent Delight
		[02] = { itemID = 40246 }; --Boots of Impetuous Ideals
		[03] = { itemID = 40249 }; --Vest of Vitality
		[04] = { itemID = 40243 }; --Footwraps of Vile Deceit
		[05] = { itemID = 40242 }; --Grotesque Handgrips
		[06] = { itemID = 40241 }; --Girdle of Unity
		[07] = { itemID = 40240 }; --Greaves of Turbulence
		[08] = { itemID = 40244 }; --The Impossible Dream
		[09] = { itemID = 40239 }; --The Hand of Nerub
		[10] = { itemID = 40245 }; --Fading Glow
		[16] = { itemID = 40637 }; --Mantle of the Lost Conqueror
		[17] = { itemID = 40638 }; --Mantle of the Lost Protector
		[18] = { itemID = 40639 }; --Mantle of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Sapphiron"];
		[01] = { itemID = 39415 }; --Shroud of the Citadel
		[02] = { itemID = 39404 }; --Cloak of Mastery
		[03] = { itemID = 39409 }; --Cowl of Winged Fear
		[04] = { itemID = 39408 }; --Leggings of Sapphiron
		[05] = { itemID = 39399 }; --Helm of the Vast Legions
		[06] = { itemID = 39405 }; --Helmet of the Inner Sanctum
		[07] = { itemID = 39403 }; --Helm of the Unsubmissive
		[08] = { itemID = 39398 }; --Massive Skeletal Ribcage
		[09] = { itemID = 39401 }; --Circle of Death
		[10] = { itemID = 39407 }; --Circle of Life
		[11] = { itemID = 44569 }; --Key to the Focusing Iris
		[12] = { itemID = 44582 }; --Key to the Focusing Iris
	};
	{
		Name = BabbleBoss["Sapphiron"];
		[01] = { itemID = 40381 }; --Sympathy
		[02] = { itemID = 40380 }; --Gloves of Grandeur
		[03] = { itemID = 40376 }; --Legwraps of the Defeated Dragon
		[04] = { itemID = 40362 }; --Gloves of Fast Reactions
		[05] = { itemID = 40379 }; --Legguards of the Boneyard
		[06] = { itemID = 40367 }; --Boots of the Great Construct
		[07] = { itemID = 40366 }; --Platehelm of the Great Wyrm
		[08] = { itemID = 40377 }; --Noble Birthright Pauldrons
		[09] = { itemID = 40365 }; --Breastplate of Frozen Pain
		[10] = { itemID = 40363 }; -- Bone-Inlaid Legguards
		[11] = { itemID = 40378 }; --Ceaseless Pity
		[12] = { itemID = 40374 }; --Cosmic Lights
		[13] = { itemID = 40369 }; --Icy Blast Amulet
		[14] = { itemID = 40370 }; --Gatekeeper
		[15] = { itemID = 40375 }; --Ring of Decaying Beauty
		[16] = { itemID = 40371 }; --Bandit's Insignia
		[17] = { itemID = 40373 }; --Extract of Necromatic Power
		[18] = { itemID = 40372 }; --Rune of Repulsion
		[19] = { itemID = 40382 }; --Soul of the Dead
		[20] = { itemID = 40368 }; --Murder
		[22] = { itemID = 44577 }; --Heroic Key to the Focusing Iris
		[23] = { itemID = 44581 }; --Heroic Key to the Focusing Iris
	};
	{
		Name = BabbleBoss["Kel'Thuzad"];
		[01] = { itemID = 39425 }; --Cloak of the Dying
		[02] = { itemID = 39421 }; --Gem of Imprisoned Vassals
		[03] = { itemID = 39416 }; --Kel'Thuzad's Reach
		[04] = { itemID = 39424 }; --The Soulblade
		[05] = { itemID = 39420 }; --Anarchy
		[06] = { itemID = 39417 }; --Death's Bite
		[07] = { itemID = 39423 }; --Hammer of the Astral Plane
		[08] = { itemID = 39422 }; --Staff of the Plaguehound
		[09] = { itemID = 39426 }; --Wand of the Archlich
		[10] = { itemID = 39419 }; --Nerubian Conquerer
		[16] = { itemID = 40616 }; --Helm of the Lost Conqueror
		[17] = { itemID = 40617 }; --Helm of the Lost Protector
		[18] = { itemID = 40618 }; --Helm of the Lost Vanquisher
	};
	{
		Name = BabbleBoss["Kel'Thuzad"];
		[01] = { itemID = 40405 }; --Cape of the Unworthy Wizard
		[02] = { itemID = 40403 }; --Drape of the Deadly Foe
		[03] = { itemID = 40398 }; --Leggings of Mortal Arrogance
		[04] = { itemID = 40387 }; --Boundless Ambition
		[05] = { itemID = 40399 }; --Signet of Manifested Pain
		[06] = { itemID = 40383 }; --Calamity's Grasp
		[07] = { itemID = 40386 }; --Sinister Revenge
		[08] = { itemID = 40396 }; --The Turning Tide
		[09] = { itemID = 40402 }; --Last Laugh
		[10] = { itemID = 40384 }; --Betrayer of Humanity
		[11] = { itemID = 40395 }; --Torch of Holy Fire
		[12] = { itemID = 40388 }; --Journey's End
		[13] = { itemID = 40401 }; --Voice of Reason
		[14] = { itemID = 40400 }; --Wall of Terror
		[15] = { itemID = 40385 }; --Envoy of Mortality
		[16] = { itemID = 40631 }; --Crown of the Lost Conqueror
		[17] = { itemID = 40632 }; --Crown of the Lost Protector
		[18] = { itemID = 40633 }; --Crown of the Lost Vanquisher
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { itemID = 39467 }; --Minion Bracers
		[02] = { itemID = 39472 }; --Chain of Latent Energies
		[03] = { itemID = 39470 }; --Medallion of the Disgraced
		[04] = { itemID = 39427 }; --Omen of Ruin
		[05] = { itemID = 39468 }; --The Stray
		[06] = { itemID = 39473 }; --Contortion
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { itemID = 40410 }; --Shadow of the Ghoul
		[02] = { itemID = 40409 }; --Boots of the Escaped Captive
		[03] = { itemID = 40414 }; --Shoulderguards of the Undaunted
		[04] = { itemID = 40412 }; --Ousted Bead Necklace
		[05] = { itemID = 40408 }; --Haunting Call
		[06] = { itemID = 40407 }; --Silent Crusader
		[07] = { itemID = 40406 }; --Inevitable Defeat
	};
};

------------------------
--- Obsidian Sanctum ---
------------------------

AtlasLoot_Data["Sartharion"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["The Obsidian Sanctum"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Sartharion"];
		[01] = { itemID = 40428 }; --Titan's Outlook
		[02] = { itemID = 40427 }; --Circle of Arcane Streams
		[03] = { itemID = 40426 }; --Signet of the Accord
		[04] = { itemID = 40433 }; --Wyrmrest Band
		[05] = { itemID = 40430 }; --Majestic Dragon Figurine
		[06] = { itemID = 40429 }; --Crimson Steel
		[07] = { itemID = 43345 }; --Dragon Hide Bag
		[08] = { itemID = 43347 }; --Satchel of Spoils
		[10] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Bonus Loot"], desc = "=q5=" .. AL["One Drake Left"] };
		[11] = { itemID = 43988 }; --Gale-Proof Cloak
		[12] = { itemID = 43990 }; --Blade-Scarred Tunic
		[13] = { itemID = 43991 }; --Legguards of Composure
		[14] = { itemID = 43989 }; --Remembrance Girdle
		[15] = { itemID = 43992 }; --Volitant Amulet
		[16] = { itemID = 40613 }; --Gloves of the Lost Conqueror
		[17] = { itemID = 40614 }; --Gloves of the Lost Protector
		[18] = { itemID = 40615 }; --Gloves of the Lost Vanquisher
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Bonus Loot"], desc = "=q5=" .. AL["Two Drakes Left"] };
		[21] = { itemID = 43995 }; --Enamored Cowl
		[22] = { itemID = 43998 }; --Chestguard of Flagrant Prowess
		[23] = { itemID = 43996 }; --Sabatons of Firmament
		[24] = { itemID = 43994 }; --Belabored Legplates
		[25] = { itemID = 43993 }; --Greatring of Collision
		[27] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Bonus Loot"], desc = "=q5=" .. AL["Three Drakes Left"] };
		[28] = { itemID = 43986 }; --Reins of the Black Drake
	};
	{
		Name = BabbleBoss["Sartharion"];
		[01] = { itemID = 40437 }; --Concealment Shoulderpads
		[02] = { itemID = 40439 }; --Mantle of the Eternal Sentinel
		[03] = { itemID = 40451 }; --Hyaline Helm of the Sniper
		[04] = { itemID = 40438 }; --Council Chamber Epaulets
		[05] = { itemID = 40453 }; --Chestplate of the Great Aspects
		[06] = { itemID = 40446 }; --Dragon Brood Legguards
		[07] = { itemID = 40433 }; --Wyrmrest Band
		[08] = { itemID = 40431 }; --Fury of the Five Flights
		[09] = { itemID = 40432 }; --Illustration of the Dragon Soul
		[10] = { itemID = 40455 }; --Staff of Restraint
		[11] = { itemID = 43345 }; --Dragon Hide Bag
		[12] = { itemID = 43346 }; --Large Satchel of Spoils
		[13] = { itemID = 40628 }; --Gauntlets of the Lost Conqueror
		[14] = { itemID = 40629 }; --Gauntlets of the Lost Protector
		[15] = { itemID = 40630 }; --Gauntlets of the Lost Vanquisher
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Bonus Loot"], desc = "=q5=" .. AL["One Drake Left"] };
		[17] = { itemID = 44002 }; --The Sanctum's Flowing Vestments
		[18] = { itemID = 44003 }; --Upstanding Spaulders
		[19] = { itemID = 44004 }; --Bountiful Gauntlets
		[20] = { itemID = 44000 }; --Dragonstorm Breastplate
		[22] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Bonus Loot"], desc = "=q5=" .. AL["Two Drakes Left"] };
		[23] = { itemID = 44005 }; --Pennant Cloak
		[24] = { itemID = 44008 }; --Unsullied Cuffs
		[25] = { itemID = 44007 }; --Headpiece of Reconciliation
		[26] = { itemID = 44011 }; --Leggings of the Honored
		[27] = { itemID = 44006 }; --Obsidian Greathelm
		[29] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Bonus Loot"], desc = "=q5=" .. AL["Three Drakes Left"] };
		[30] = { itemID = 43954 }; --Reins of the Twilight Drake
	};
};
---------------------------
--- The Eye of Eternity ---
---------------------------

AtlasLoot_Data["Malygos"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["The Eye of Eternity"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Malygos"];
		[01] = { itemID = 40526 }; --Gown of the Spell-Weaver
		[02] = { itemID = 40519 }; --Footsteps of Malygos
		[03] = { itemID = 40511 }; --Focusing Energy Epaulets
		[04] = { itemID = 40486 }; --Necklace of the Glittering Chamber
		[05] = { itemID = 40474 }; --Surge Needle Ring
		[06] = { itemID = 40491 }; --Hailstorm
		[07] = { itemID = 40488 }; --Ice Spire Scepter
		[08] = { itemID = 40489 }; --Greatstaff of the Nexus
		[09] = { itemID = 40497 }; --Black Ice
		[10] = { itemID = 40475 }; --Barricade of Eternity
		[11] = { itemID = 43952 }; --Reins of the Azure Drake
		[13] = { itemID = 44569 }; --Key to the Focusing Iris
		[16] = { itemID = 44650 }; --Heart of Magic
		[17] = { itemID = 44658 }; --Chain of the Ancient Wyrm
		[18] = { itemID = 44660 }; --Drakescale Collar
		[19] = { itemID = 44659 }; --Pendant of the Dragonsworn
		[20] = { itemID = 44657 }; --Torque of the AtlasLoot.Colors.RED Dragonflight
	};
	{
		Name = BabbleBoss["Malygos"];
		[01] = { itemID = 40562 }; --Hood of Rationality
		[02] = { itemID = 40555 }; --Mantle of Dissemination
		[03] = { itemID = 40194 }; --Blanketing Robes of Snow
		[04] = { itemID = 40561 }; --Leash of Heedless Magic
		[05] = { itemID = 40560 }; --Leggings of the Wanton Spellcaster
		[06] = { itemID = 40558 }; --Arcanic Tramplers
		[07] = { itemID = 40594 }; --Spaulders of Catatonia
		[08] = { itemID = 40539 }; --Chestguard of the Recluse
		[09] = { itemID = 40541 }; --Frosted Adroit Handguards
		[10] = { itemID = 40566 }; --Unravelling Strands of Sanity
		[11] = { itemID = 40543 }; --AtlasLoot.Colors.BLUE Aspect Helm
		[12] = { itemID = 40588 }; --Tunic of the Artifact Guardian
		[13] = { itemID = 40564 }; --Winter Spectacle Gloves
		[14] = { itemID = 40549 }; --Boots of the Renewed Flight
		[15] = { itemID = 40590 }; --Elevated Lair Pauldrons
		[16] = { itemID = 40589 }; --Legplates of Sovereignty
		[17] = { itemID = 40592 }; --Boots of Healing Energies
		[18] = { itemID = 40591 }; --Melancholy Sabatons
		[19] = { itemID = 40532 }; --Living Ice Crystals
		[20] = { itemID = 40531 }; --Mark of Norgannon
		[21] = { itemID = 43952 }; --Reins of the Azure Drake
		[23] = { itemID = 44577 }; --Heroic Key to the Focusing Iris
		[25] = { itemID = 44650 }; --Heart of Magic
		[26] = { itemID = 44664 }; --Favor of the Dragon Queen
		[27] = { itemID = 44662 }; --Life-Binder's Locket
		[28] = { itemID = 44665 }; --Nexus War Champion Beads
		[29] = { itemID = 44661 }; --Wyrmrest Necklace of Power
	};
};
--------------
--- Ulduar ---
--------------

AtlasLoot_Data["Ulduar"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Ulduar"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Flame Leviathan"];
		[01] = { itemID = 45289 }; --Lifespark Visage
		[02] = { itemID = 45291 }; --Combustion Bracers
		[03] = { itemID = 45288 }; --Firestrider Chestguard
		[04] = { itemID = 45283 }; --Flamewatch Armguards
		[05] = { itemID = 45285 }; --Might of the Leviathan
		[06] = { itemID = 45292 }; --Energy Siphon
		[07] = { itemID = 45286 }; --Pyrite Infuser
		[08] = { itemID = 45284 }; --Kinetic Ripper
		[09] = { itemID = 45287 }; --Firesoul
		[10] = { itemID = 45282 }; --Ironsoul
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[17] = { itemID = 45293 }; --Handguards of Potent Cures
		[18] = { itemID = 45300 }; --Mantle of Fiery Vengeance
		[19] = { itemID = 45295 }; --Gilded Steel Legplates
		[20] = { itemID = 45297 }; --Shimmering Seal
		[21] = { itemID = 45296 }; --Twirling Blades
	};
	{
		Name = BabbleBoss["Flame Leviathan"];
		[01] = { itemID = 45038 }; --Fragment of Val'anyr
		[02] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
		[04] = { itemID = 45117 }; --Constructor's Handwraps
		[05] = { itemID = 45119 }; --Embrace of the Leviathan
		[06] = { itemID = 45108 }; --Mechanist's Bindings
		[07] = { itemID = 45118 }; --Steamworker's Goggles
		[08] = { itemID = 45109 }; --Gloves of the Fiery Behemoth
		[09] = { itemID = 45107 }; --Iron Riveted War Helm
		[10] = { itemID = 45111 }; --Mimiron's Inferno Couplings
		[11] = { itemID = 45116 }; --Freya's Choker of Warding
		[12] = { itemID = 45113 }; --Glowing Ring of Reclamation
		[13] = { itemID = 45106 }; --Strength of the Automaton
		[14] = { itemID = 45112 }; --The Leviathan's Coil
		[15] = { itemID = 45115 }; --Overcharged Fuel Rod
		[16] = { itemID = 45114 }; --Steamcaller's Totem
		[17] = { itemID = 45110 }; --Titanguard
		[18] = { itemID = 45086 }; --Rising Sun
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[21] = { itemID = 45135 }; --Boots of Fiery Resolution
		[22] = { itemID = 45136 }; --Shoulderpads of Dormant Energies
		[23] = { itemID = 45134 }; --Plated Leggings of Ruination
		[24] = { itemID = 45133 }; --Pendant of Fiery Havoc
		[25] = { itemID = 45132 }; --Golden Saronite Dragon
	};
	{
		Name = BabbleBoss["Razorscale"];
		[01] = { itemID = 45306 }; --Binding of the Dragon Matriarch
		[02] = { itemID = 45302 }; --Treads of the Invader
		[03] = { itemID = 45301 }; --Bracers of the Smothering Inferno
		[04] = { itemID = 45307 }; --Ironscale Leggings
		[05] = { itemID = 45299 }; --Dragonsteel Faceplate
		[06] = { itemID = 45305 }; --Breastplate of the Afterlife
		[07] = { itemID = 45304 }; --Stormtempered Girdle
		[08] = { itemID = 45303 }; --Band of Draconic Guile
		[09] = { itemID = 45308 }; --Eye of the Broodmother
		[10] = { itemID = 45298 }; --Razorscale Talon
	};
	{
		Name = BabbleBoss["Razorscale"];
		[01] = { itemID = 45038 }; --Fragment of Val'anyr
		[02] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
		[04] = { itemID = 45138 }; --Drape of the Drakerider
		[05] = { itemID = 45150 }; --Collar of the Wyrmhunter
		[06] = { itemID = 45146 }; --Shackles of the Odalisque
		[07] = { itemID = 45149 }; --Bracers of the Broodmother
		[08] = { itemID = 45141 }; --Proto-hide Leggings
		[09] = { itemID = 45151 }; --Belt of the Fallen Wyrm
		[10] = { itemID = 45143 }; --Saronite Mesh Legguards
		[11] = { itemID = 45140 }; --Razorscale Shoulderguards
		[12] = { itemID = 45139 }; --Dragonslayer's Brace
		[13] = { itemID = 45148 }; --Living Flame
		[14] = { itemID = 45510 }; --Libram of Discord
		[15] = { itemID = 45144 }; --Sigil of Deflection
		[16] = { itemID = 45142 }; --Remorse
		[17] = { itemID = 45147 }; --Guiding Star
		[18] = { itemID = 45137 }; --Veranus' Bane
	};
	{
		Name = BabbleBoss["Ignis the Furnace Master"];
		[01] = { itemID = 45317 }; --Shawl of the Caretaker
		[02] = { itemID = 45318 }; --Drape of Fuming Anger
		[03] = { itemID = 45312 }; --Gloves of Smoldering Touch
		[04] = { itemID = 45316 }; --Armbraces of the Vibrant Flame
		[05] = { itemID = 45321 }; --Pauldrons of Tempered Will
		[06] = { itemID = 45310 }; --Gauntlets of the Iron Furnace
		[07] = { itemID = 45313 }; --Furnace Stone
		[08] = { itemID = 45314 }; --Igniter Rod
		[09] = { itemID = 45311 }; --Relentless Edge
		[10] = { itemID = 45309 }; --Rifle of the Platinum Guard
	};
	{
		Name = BabbleBoss["Ignis the Furnace Master"];
		[01] = { itemID = 45038 }; --Fragment of Val'anyr
		[02] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
		[04] = { itemID = 45186 }; --Soot-Covered Mantle
		[05] = { itemID = 45185 }; --Flamewrought Cinch
		[06] = { itemID = 45162 }; --Flamestalker Boots
		[07] = { itemID = 45164 }; --Helm of the Furnace Master
		[08] = { itemID = 45187 }; --Wristguards of the Firetender
		[09] = { itemID = 45167 }; --Lifeforge Breastplate
		[10] = { itemID = 45161 }; --Girdle of Embers
		[11] = { itemID = 45166 }; --Charred Saronite Greaves
		[12] = { itemID = 45157 }; --Cindershard Ring
		[13] = { itemID = 45168 }; --Pyrelight Circle
		[14] = { itemID = 45158 }; --Heart of Iron
		[15] = { itemID = 45169 }; --Totem of the Dancing Flame
		[16] = { itemID = 45165 }; --Worldcarver
		[17] = { itemID = 45171 }; --Intensity
		[18] = { itemID = 45170 }; --Scepter of Creation
	};
	{
		Name = BabbleBoss["XT-002 Deconstructor"];
		[01] = { itemID = 45694 }; --Conductive Cord
		[02] = { itemID = 45677 }; --Treacherous Shoulderpads
		[03] = { itemID = 45686 }; --Vest of the Glowing Crescent
		[04] = { itemID = 45687 }; --Helm of Veiled Energies
		[05] = { itemID = 45679 }; --Gloves of Taut Grip
		[06] = { itemID = 45676 }; --Chestplate of Vicious Potency
		[07] = { itemID = 45680 }; --Armbands of the Construct
		[08] = { itemID = 45675 }; --Power Enhancing Loop
		[09] = { itemID = 45685 }; --Plasma Foil
		[10] = { itemID = 45682 }; --Pulsing Spellshield
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[17] = { itemID = 45869 }; --Fluxing Energy Coils
		[18] = { itemID = 45867 }; --Breastplate of the Stoneshaper
		[19] = { itemID = 45871 }; --Seal of Ulduar
		[20] = { itemID = 45868 }; --Aesir's Edge
		[21] = { itemID = 45870 }; --Magnetized Projectile Emitter
	};
	{
		Name = BabbleBoss["XT-002 Deconstructor"];
		[01] = { itemID = 45038 }; --Fragment of Val'anyr
		[02] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
		[04] = { itemID = 45253 }; --Mantle of Wavering Calm
		[05] = { itemID = 45258 }; --Sandals of Rash Temperament
		[06] = { itemID = 45260 }; --Boots of Hasty Revival
		[07] = { itemID = 45259 }; --Quartz-studded Harness
		[08] = { itemID = 45249 }; --Brass-lined Boots
		[09] = { itemID = 45251 }; --Shoulderplates of the Deconstructor
		[10] = { itemID = 45252 }; --Horologist's Wristguards
		[11] = { itemID = 45248 }; --Clockwork Legplates
		[12] = { itemID = 45250 }; --Crazed Construct Ring
		[13] = { itemID = 45247 }; --Signet of the Earthshaker
		[14] = { itemID = 45254 }; --Sigil of the Vengeful Heart
		[15] = { itemID = 45255 }; --Thunderfall Totem
		[16] = { itemID = 45246 }; --Golem-Shard Sticker
		[17] = { itemID = 45256 }; --Twisted Visage
		[18] = { itemID = 45257 }; --Quartz Crystal Wand
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[21] = { itemID = 45446 }; --Grasps of Reason
		[22] = { itemID = 45444 }; --Gloves of the Steady Hand
		[23] = { itemID = 45445 }; --Breastplate of the Devoted
		[24] = { itemID = 45443 }; --Charm of Meticulous Timing
		[25] = { itemID = 45442 }; --Sorthalis, Hammer of the Watchers
	};
	{
		Name = BabbleBoss["The Iron Council"];
		[01] = { itemID = 45322 }; --Cloak of the Iron Council
		[02] = { itemID = 45423 }; --Runetouch Handwraps
		[03] = { itemID = 45324 }; --Leggings of Swift Reflexes
		[04] = { itemID = 45378 }; --Boots of the Petrified Forest
		[05] = { itemID = 45329 }; --Circlet of True Sight
		[06] = { itemID = 45333 }; --Belt of the Iron Servant
		[07] = { itemID = 45330 }; --Greaves of Iron Intensity
		[08] = { itemID = 45418 }; --Lady Maye's Sapphire Ring
		[09] = { itemID = 45332 }; --Stormtip
		[10] = { itemID = 45331 }; --Rune-Etched Nightblade
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[17] = { itemID = 45455 }; --Belt of the Crystal Tree
		[18] = { itemID = 45447 }; --Watchful Eye
		[19] = { itemID = 45456 }; --Loop of the Agile
		[20] = { itemID = 45449 }; --The Masticator
		[21] = { itemID = 45448 }; --Perilous Bite
		[22] = { itemID = 45506 }; --Archivum Data Disc
	};
	{
		Name = BabbleBoss["The Iron Council"];
		[01] = { itemID = 45038 }; --Fragment of Val'anyr
		[02] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
		[04] = { itemID = 45224 }; --Drape of the Lithe
		[05] = { itemID = 45240 }; --Raiments of the Iron Council
		[06] = { itemID = 45238 }; --Overload Legwraps
		[07] = { itemID = 45237 }; --Phaelia's Vestments of the Sprouting Seed
		[08] = { itemID = 45232 }; --Runed Ironhide Boots
		[09] = { itemID = 45227 }; --Iron-studded Mantle
		[10] = { itemID = 45239 }; --Runeshaper's Gloves
		[11] = { itemID = 45226 }; --Ancient Iron Heaume
		[12] = { itemID = 45225 }; --Steelbreaker's Embrace
		[13] = { itemID = 45228 }; --Handguards of the Enclave
		[14] = { itemID = 45193 }; --Insurmountable Fervor
		[15] = { itemID = 45236 }; --Unblinking Eye
		[16] = { itemID = 45235 }; --Radiant Seal
		[17] = { itemID = 45233 }; --Rune Edge
		[18] = { itemID = 45234 }; --Rapture
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[21] = { itemID = 45242 }; --Drape of Mortal Downfall
		[22] = { itemID = 45245 }; --Shoulderpads of the Intruder
		[23] = { itemID = 45244 }; --Greaves of Swift Vengeance
		[24] = { itemID = 45241 }; --Belt of Colossal Rage
		[25] = { itemID = 45243 }; --Sapphire Amulet of Renewal
		[26] = { itemID = 45607 }; --Fang of Oblivion
		[27] = { itemID = 45857 }; --Archivum Data Disc
	};
	{
		Name = BabbleBoss["Kologarn"];
		[01] = { itemID = 45704 }; --Shawl of the Shattered Giant
		[02] = { itemID = 45701 }; --Greaves of the Earthbinder
		[03] = { itemID = 45697 }; --Shoulderguards of the Solemn Watch
		[04] = { itemID = 45698 }; --Sabatons of the Iron Watcher
		[05] = { itemID = 45696 }; --Mark of the Unyielding
		[06] = { itemID = 45699 }; --Pendant of the Piercing Glare
		[07] = { itemID = 45702 }; --Emerald Signet Ring
		[08] = { itemID = 45703 }; --Spark of Hope
		[09] = { itemID = 45700 }; --Stoneguard
		[10] = { itemID = 45695 }; --Spire of Withering Dreams
	};
	{
		Name = BabbleBoss["Kologarn"];
		[01] = { itemID = 45038 }; --Fragment of Val'anyr
		[02] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
		[04] = { itemID = 45272 }; --Robes of the Umbral Brute
		[05] = { itemID = 45275 }; --Bracers of Unleashed Magic
		[06] = { itemID = 45273 }; --Handwraps of Plentiful Recovery
		[07] = { itemID = 45265 }; --Shoulderpads of the Monolith
		[08] = { itemID = 45274 }; --Leggings of the Stoneweaver
		[09] = { itemID = 45264 }; --Decimator's Armguards
		[10] = { itemID = 45269 }; --Unfaltering Armguards
		[11] = { itemID = 45268 }; --Gloves of the Pythonic Guardian
		[12] = { itemID = 45267 }; --Saronite Plated Legguards
		[13] = { itemID = 45262 }; --Necklace of Unerring Mettle
		[14] = { itemID = 45263 }; --Wrathstone
		[15] = { itemID = 45271 }; --Ironmender
		[16] = { itemID = 45270 }; --Idol of the Crying Wind
		[17] = { itemID = 45266 }; --Malice
		[18] = { itemID = 45261 }; --Giant's Bane
	};
	{
		Name = BabbleBoss["Algalon the Observer"];
		[01] = { itemID = 46042 }; --Drape of the Messenger
		[02] = { itemID = 46045 }; --Pulsar Gloves
		[03] = { itemID = 46050 }; --Starlight Treads
		[04] = { itemID = 46043 }; --Gloves of the Endless Dark
		[05] = { itemID = 46049 }; --Zodiac Leggings
		[06] = { itemID = 46044 }; --Observer's Mantle
		[07] = { itemID = 46037 }; --Shoulderplates of the Celestial Watch
		[08] = { itemID = 46039 }; --Breastplate of the Timeless
		[09] = { itemID = 46041 }; --Starfall Girdle
		[10] = { itemID = 46047 }; --Pendant of the Somber Witness
		[11] = { itemID = 46040 }; --Strength of the Heavens
		[12] = { itemID = 46048 }; --Band of Lights
		[13] = { itemID = 46046 }; --Nebula Band
		[14] = { itemID = 46038 }; --Dark Matter
		[15] = { itemID = 46051 }; --Meteorite Crystal
		[16] = { itemID = 46052 }; --Reply-Code Alpha
		[17] = { itemID = 46320 }; --Drape of the Skyherald
		[18] = { itemID = 46321 }; --Sunglimmer Drape
		[19] = { itemID = 46322 }; --Brann's Sealing Ring
		[20] = { itemID = 46323 }; --Starshine Signet
	};
	{
		Name = BabbleBoss["Algalon the Observer"];
		[01] = { itemID = 45665 }; --Pharos Gloves
		[02] = { itemID = 45619 }; --Starwatcher's Binding
		[03] = { itemID = 45611 }; --Solar Bindings
		[04] = { itemID = 45616 }; --Star-beaded Clutch
		[05] = { itemID = 45610 }; --Boundless Gaze
		[06] = { itemID = 45615 }; --Planewalker Treads
		[07] = { itemID = 45594 }; --Legplates of the Endless Void
		[08] = { itemID = 45599 }; --Sabatons of Lifeless Night
		[09] = { itemID = 45617 }; --Cosmos
		[10] = { itemID = 45620 }; --Starshard Edge
		[11] = { itemID = 45607 }; --Fang of Oblivion
		[12] = { itemID = 45612 }; --Constellus
		[13] = { itemID = 45613 }; --Dreambinder
		[14] = { itemID = 45587 }; --Bulwark of Algalon
		[15] = { itemID = 45570 }; --Skyforge Crossbow
		[16] = { itemID = 45609 }; --Comet's Trail
		[18] = { itemID = 46053 }; --Reply-Code Alpha
		[19] = { itemID = 45588 }; --Drape of the Skyborn
		[20] = { itemID = 45618 }; --Sunglimmer Cloak
		[21] = { itemID = 45608 }; --Brann's Signet Ring
		[22] = { itemID = 45614 }; --Starshine Circle
	};
	{
		Name = BabbleBoss["Auriaya"];
		[01] = { itemID = 45832 }; --Mantle of the Preserver
		[02] = { itemID = 45865 }; --Raiments of the Corrupted
		[03] = { itemID = 45864 }; --Cover of the Keepers
		[04] = { itemID = 45709 }; --Nimble Climber's Belt
		[05] = { itemID = 45711 }; --Ironaya's Discarded Mantle
		[06] = { itemID = 45712 }; --Chestplate of Titanic Fury
		[07] = { itemID = 45708 }; --Archaedas' Lost Legplates
		[08] = { itemID = 45866 }; --Elemental Focus Stone
		[09] = { itemID = 45707 }; --Shieldwall of the Breaker
		[10] = { itemID = 45713 }; --Nurturing Touch
	};
	{
		Name = BabbleBoss["Auriaya"];
		[01] = { itemID = 45038 }; --Fragment of Val'anyr
		[02] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
		[04] = { itemID = 45319 }; --Cloak of the Makers
		[05] = { itemID = 45435 }; --Cowl of the Absolute
		[06] = { itemID = 45441 }; --Sandals of the Ancient Keeper
		[07] = { itemID = 45439 }; --Unwavering Stare
		[08] = { itemID = 45325 }; --Gloves of the Stonereaper
		[09] = { itemID = 45440 }; --Amice of the Stoic Watch
		[10] = { itemID = 45320 }; --Shoulderplates of the Eternal
		[11] = { itemID = 45334 }; --Unbreakable Chestguard
		[12] = { itemID = 45434 }; --Greaves of the Rockmender
		[13] = { itemID = 45326 }; --Platinum Band of the Aesir
		[14] = { itemID = 45438 }; --Ring of the Faithful Servant
		[15] = { itemID = 45436 }; --Libram of the Resolute
		[16] = { itemID = 45437 }; --Runescribed Blade
		[17] = { itemID = 45315 }; --Stonerender
		[18] = { itemID = 45327 }; --Siren's Cry
	};
	{
		Name = BabbleBoss["Hodir"];
		[01] = { itemID = 45873 }; --Winter's Frigid Embrace
		[02] = { itemID = 45464 }; --Cowl of Icy Breaths
		[03] = { itemID = 45874 }; --Signet of Winter
		[04] = { itemID = 45458 }; --Stormedge
		[05] = { itemID = 45872 }; --Avalanche
		[07] = { itemID = 45650 }; --Leggings of the Wayward Conqueror
		[08] = { itemID = 45651 }; --Leggings of the Wayward Protector
		[09] = { itemID = 45652 }; --Leggings of the Wayward Vanquisher
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[17] = { itemID = 45888 }; --Bitter Cold Armguards
		[18] = { itemID = 45876 }; --Shiver
		[19] = { itemID = 45886 }; --Icecore Staff
		[20] = { itemID = 45887 }; --Ice Layered Barrier
		[21] = { itemID = 45877 }; --The Boreal Guard
		[23] = { itemID = 45786 }; --Hodir's Sigil
	};
	{
		Name = BabbleBoss["Hodir"];
		[01] = { itemID = 45038 }; --Fragment of Val'anyr
		[02] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
		[04] = { itemID = 45453 }; --Winter's Icy Embrace
		[05] = { itemID = 45454 }; --Frost-bound Chain Bracers
		[06] = { itemID = 45452 }; --Frostplate Greaves
		[07] = { itemID = 45451 }; --Frozen Loop
		[08] = { itemID = 45450 }; --Northern Barrier
		[10] = { itemID = 45632 }; --Breastplate of the Wayward Conqueror
		[11] = { itemID = 45633 }; --Breastplate of the Wayward Protector
		[12] = { itemID = 45634 }; --Breastplate of the Wayward Vanquisher
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[17] = { itemID = 45461 }; --Drape of Icy Intent
		[18] = { itemID = 45462 }; --Gloves of the Frozen Glade
		[19] = { itemID = 45460 }; --Bindings of Winter Gale
		[20] = { itemID = 45459 }; --Frigid Strength of Hodir
		[21] = { itemID = 45612 }; --Constellus
		[22] = { itemID = 45457 }; --Staff of Endless Winter
		[24] = { itemID = 45815 }; --Hodir's Sigil
	};
	{
		Name = BabbleBoss["Thorim"];
		[01] = { itemID = 45893 }; --Guise of the Midgard Serpent
		[02] = { itemID = 45927 }; --Handwraps of Resonance
		[03] = { itemID = 45894 }; --Leggings of Unstable Discharge
		[04] = { itemID = 45895 }; --Belt of the Blood Pit
		[05] = { itemID = 45892 }; --Legacy of Thunder
		[07] = { itemID = 45659 }; --Spaulders of the Wayward Conqueror
		[08] = { itemID = 45660 }; --Spaulders of the Wayward Protector
		[09] = { itemID = 45661 }; --Spaulders of the Wayward Vanquisher
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[17] = { itemID = 45928 }; --Gauntlets of the Thunder God
		[18] = { itemID = 45933 }; --Pendant of the Shallow Grave
		[19] = { itemID = 45931 }; --Mjolnir Runestone
		[20] = { itemID = 45929 }; --Sif's Remembrance
		[21] = { itemID = 45930 }; --Combatant's Bootblade
		[23] = { itemID = 45784 }; --Thorim's Sigil
	};
	{
		Name = BabbleBoss["Thorim"];
		[01] = { itemID = 45038 }; --Fragment of Val'anyr
		[02] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
		[04] = { itemID = 45468 }; --Leggings of Lost Love
		[05] = { itemID = 45467 }; --Belt of the Betrayed
		[06] = { itemID = 45469 }; --Sif's Promise
		[07] = { itemID = 45466 }; --Scale of Fates
		[08] = { itemID = 45463 }; --Vulmir, the Northern Tempest
		[10] = { itemID = 45638 }; --Crown of the Wayward Conqueror
		[11] = { itemID = 45639 }; --Crown of the Wayward Protector
		[12] = { itemID = 45640 }; --Crown of the Wayward Vanquisher
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[17] = { itemID = 45473 }; --Embrace of the Gladiator
		[18] = { itemID = 45474 }; --Pauldrons of the Combatant
		[19] = { itemID = 45472 }; --Warhelm of the Champion
		[20] = { itemID = 45471 }; --Fate's Clutch
		[21] = { itemID = 45570 }; --Skyforge Crossbow
		[22] = { itemID = 45470 }; --Wisdom's Hold
		[24] = { itemID = 45817 }; --Thorim's Sigil
	};
	{
		Name = BabbleBoss["Freya"];
		[01] = { itemID = 45940 }; --Tunic of the Limber Stalker
		[02] = { itemID = 45941 }; --Chestguard of the Lasher
		[03] = { itemID = 45935 }; --Ironbark Faceguard
		[04] = { itemID = 45936 }; --Legplates of Flourishing Resolve
		[05] = { itemID = 45934 }; --Unraveling Reach
		[07] = { itemID = 45644 }; --Gloves of the Wayward Conqueror
		[08] = { itemID = 45645 }; --Gloves of the Wayward Protector
		[09] = { itemID = 45646 }; --Gloves of the Wayward Vanquisher
		[11] = { itemID = 46110 }; --Alchemist's Cache
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[17] = { itemID = 45943 }; --Gloves of Whispering Winds
		[18] = { itemID = 45945 }; --Seed of Budding Carnage
		[19] = { itemID = 45946 }; --Fire Orchid Signet
		[20] = { itemID = 45947 }; --Serilas, Blood Blade of Invar One-Arm
		[21] = { itemID = 45294 }; --Petrified Ivy Sprig
		[23] = { itemID = 45788 }; --Freya's Sigil
	};
	{
		Name = BabbleBoss["Freya"];
		[01] = { itemID = 45038 }; --Fragment of Val'anyr
		[02] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
		[04] = { itemID = 45483 }; --Boots of the Servant
		[05] = { itemID = 45482 }; --Leggings of the Lifetender
		[06] = { itemID = 45481 }; --Gauntlets of Ruthless Reprisal
		[07] = { itemID = 45480 }; --Nymph Heart Charm
		[08] = { itemID = 45479 }; --The Lifebinder
		[10] = { itemID = 45653 }; --Legplates of the Wayward Conqueror
		[11] = { itemID = 45654 }; --Legplates of the Wayward Protector
		[12] = { itemID = 45655 }; --Legplates of the Wayward Vanquisher
		[14] = { itemID = 46110 }; --Alchemist's Cache
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[17] = { itemID = 45486 }; --Drape of the Sullen Goddess
		[18] = { itemID = 45488 }; --Leggings of the Enslaved Idol
		[19] = { itemID = 45487 }; --Handguards of Revitalization
		[20] = { itemID = 45485 }; --Bronze Pendant of the Vanir
		[21] = { itemID = 45484 }; --Bladetwister
		[22] = { itemID = 45613 }; --Dreambinder
		[24] = { itemID = 45814 }; --Freya's Sigil
	};
	{
		Name = BabbleBoss["Mimiron"];
		[01] = { itemID = 45973 }; --Stylish Power Cape
		[02] = { itemID = 45976 }; --Static Charge Handwraps
		[03] = { itemID = 45974 }; --Shoulderguards of Assimilation
		[04] = { itemID = 45975 }; --Cable of the Metrognome
		[05] = { itemID = 45972 }; --Pulse Baton
		[07] = { itemID = 45647 }; --Helm of the Wayward Conqueror
		[08] = { itemID = 45648 }; --Helm of the Wayward Protector
		[09] = { itemID = 45649 }; --Helm of the Wayward Vanquisher
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[17] = { itemID = 45993 }; --Mimiron's Flight Goggles
		[18] = { itemID = 45989 }; --Tempered Mercury Greaves
		[19] = { itemID = 45982 }; --Fused Alloy Legplates
		[20] = { itemID = 45988 }; --Greaves of the Iron Army
		[21] = { itemID = 45990 }; --Fusion Blade
		[23] = { itemID = 45787 }; --Mimiron's Sigil
	};
	{
		Name = BabbleBoss["Mimiron"];
		[01] = { itemID = 45038 }; --Fragment of Val'anyr
		[02] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
		[04] = { itemID = 45493 }; --Asimov's Drape
		[05] = { itemID = 45492 }; --Malleable Steelweave Mantle
		[06] = { itemID = 45491 }; --Waistguard of the Creator
		[07] = { itemID = 45490 }; --Pandora's Plea
		[08] = { itemID = 45489 }; --Insanity's Grip
		[10] = { itemID = 45641 }; --Gauntlets of the Wayward Conqueror
		[11] = { itemID = 45642 }; --Gauntlets of the Wayward Protector
		[12] = { itemID = 45643 }; --Gauntlets of the Wayward Vanquisher
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[17] = { itemID = 45496 }; --Titanskin Cloak
		[18] = { itemID = 45497 }; --Crown of Luminescence
		[19] = { itemID = 45663 }; --Armbands of Bedlam
		[20] = { itemID = 45495 }; --Conductive Seal
		[21] = { itemID = 45494 }; --Delirium's Touch
		[22] = { itemID = 45620 }; --Starshard Edge
		[24] = { itemID = 45816 }; --Mimiron's Sigil
	};
	{
		Name = BabbleBoss["General Vezax"];
		[01] = { itemID = 46014 }; --Saronite Animus Cloak
		[02] = { itemID = 46013 }; --Underworld Mantle
		[03] = { itemID = 46012 }; --Vestments of the Piercing Light
		[04] = { itemID = 46009 }; --Bindings of the Depths
		[05] = { itemID = 46346 }; --Boots of Unsettled Prey
		[06] = { itemID = 45997 }; --Gauntlets of the Wretched
		[07] = { itemID = 46008 }; --Choker of the Abyss
		[08] = { itemID = 46015 }; --Pendant of Endless Despair
		[09] = { itemID = 46010 }; --Darkstone Ring
		[10] = { itemID = 46011 }; --Shadowbite
		[11] = { itemID = 45996 }; --Hoperender
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[17] = { itemID = 46032 }; --Drape of the Faceless General
		[18] = { itemID = 46034 }; --Leggings of Profound Darkness
		[19] = { itemID = 46036 }; --Void Sabre
		[20] = { itemID = 46035 }; --Aesuga, Hand of the Ardent Champion
		[21] = { itemID = 46033 }; --Tortured Earth
	};
	{
		Name = BabbleBoss["General Vezax"];
		[01] = { itemID = 45038 }; --Fragment of Val'anyr
		[02] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
		[04] = { itemID = 45514 }; --Mantle of the Unknowing
		[05] = { itemID = 45508 }; --Belt of the Darkspeaker
		[06] = { itemID = 45512 }; --Grips of the Unbroken
		[07] = { itemID = 45504 }; --Darkcore Leggings
		[08] = { itemID = 45513 }; --Boots of the Forgotten Depths
		[09] = { itemID = 45502 }; --Helm of the Faceless
		[10] = { itemID = 45505 }; --Belt of Clinging Hope
		[11] = { itemID = 45501 }; --Boots of the Underdweller
		[12] = { itemID = 45503 }; --Metallic Loop of the Sufferer
		[13] = { itemID = 45515 }; --Ring of the Vacant Eye
		[14] = { itemID = 45507 }; --The General's Heart
		[15] = { itemID = 45509 }; --Idol of the Corruptor
		[16] = { itemID = 45145 }; --Libram of the Sacred Shield
		[17] = { itemID = 45498 }; --Lotrafen, Spear of the Damned
		[18] = { itemID = 45511 }; --Scepter of Lost Souls
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[21] = { itemID = 45520 }; --Handwraps of the Vigilant
		[22] = { itemID = 45519 }; --Vestments of the Blind Denizen
		[23] = { itemID = 45517 }; --Pendulum of Infinity
		[24] = { itemID = 45518 }; --Flare of the Heavens
		[25] = { itemID = 45516 }; --Voldrethar, Dark Blade of Oblivion
	};
	{
		Name = BabbleBoss["Yogg-Saron"];
		[01] = { itemID = 46030 }; --Treads of the Dragon Council
		[02] = { itemID = 46019 }; --Leggings of the Insatiable
		[03] = { itemID = 46028 }; --Faceguard of the Eyeless Horror
		[04] = { itemID = 46022 }; --Pendant of a Thousand Maws
		[05] = { itemID = 46021 }; --Royal Seal of King Llane
		[06] = { itemID = 46024 }; --Kingsbane
		[07] = { itemID = 46016 }; --Abaddon
		[08] = { itemID = 46031 }; --Touch of Madness
		[09] = { itemID = 46025 }; --Devotion
		[10] = { itemID = 46018 }; --Deliverance
		[12] = { itemID = 45635 }; --Chestguard of the Wayward Conqueror
		[13] = { itemID = 45636 }; --Chestguard of the Wayward Protector
		[14] = { itemID = 45637 }; --Chestguard of the Wayward Vanquisher
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[17] = { itemID = 46068 }; --Amice of Inconceivable Horror
		[18] = { itemID = 46095 }; --Soul-Devouring Cinch
		[19] = { itemID = 46096 }; --Signet of Soft Lament
		[20] = { itemID = 46097 }; --Caress of Insanity
		[21] = { itemID = 46067 }; --Hammer of Crushing Whispers
		[23] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Bonus Loot"], desc = "=q5=" .. AL["Alone in the Darkness"] };
		[24] = { itemID = 46312 }; --Vanquished Clutches of Yogg-Saron
	};
	{
		Name = BabbleBoss["Yogg-Saron"];
		[01] = { itemID = 45038 }; --Fragment of Val'anyr
		[02] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
		[04] = { itemID = 45529 }; --Shawl of Haunted Memories
		[05] = { itemID = 45532 }; --Cowl of Dark Whispers
		[06] = { itemID = 45523 }; --Garona's Guise
		[07] = { itemID = 45524 }; --Chestguard of Insidious Intent
		[08] = { itemID = 45531 }; --Chestguard of the Fallen God
		[09] = { itemID = 45525 }; --Godbane Signet
		[10] = { itemID = 45530 }; --Sanity's Bond
		[11] = { itemID = 45522 }; --Blood of the Old God
		[12] = { itemID = 45527 }; --Soulscribe
		[13] = { itemID = 45521 }; --Earthshaper
		[16] = { itemID = 45656 }; --Mantle of the Wayward Conqueror
		[17] = { itemID = 45657 }; --Mantle of the Wayward Protector
		[18] = { itemID = 45658 }; --Mantle of the Wayward Vanquisher
		[20] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE..AL["Hard Mode"] };
		[21] = { itemID = 45537 }; --Treads of the False Oracle
		[22] = { itemID = 45536 }; --Legguards of Cunning Deception
		[23] = { itemID = 45534 }; --Seal of the Betrayed King
		[24] = { itemID = 45535 }; --Show of Faith
		[25] = { itemID = 45533 }; --Dark Edge of Depravity
		[27] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Bonus Loot"], desc = "=q5=" .. AL["Alone in the Darkness"] };
		[28] = { itemID = 45693 }; --Mimiron's Head
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { itemID = 46341 }; --Drape of the Spellweaver
		[02] = { itemID = 46347 }; --Cloak of the Dormant Blaze
		[03] = { itemID = 46344 }; --Iceshear Mantle
		[04] = { itemID = 46346 }; --Boots of Unsettled Prey
		[05] = { itemID = 46345 }; --Bracers of Righteous Reformation
		[06] = { itemID = 46340 }; --Adamant Handguards
		[07] = { itemID = 46343 }; --Fervor of the Protectorate
		[08] = { itemID = 46339 }; --Mimiron's Repeater
		[09] = { itemID = 46351 }; --Bloodcrush Cudgel
		[10] = { itemID = 46350 }; --Pillar of Fortitude
		[11] = { itemID = 46342 }; --Golemheart Longbow
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { itemID = 45541 }; --Shroud of Alteration
		[02] = { itemID = 45549 }; --Grips of Chaos
		[03] = { itemID = 45547 }; --Relic Hunter's Cord
		[04] = { itemID = 45548 }; --Belt of the Sleeper
		[05] = { itemID = 45543 }; --Shoulders of Misfortune
		[06] = { itemID = 45544 }; --Leggings of the Tortured Earth
		[07] = { itemID = 45542 }; --Greaves of the Stonewarder
		[08] = { itemID = 45540 }; --Bladebearer's Signet
		[09] = { itemID = 45539 }; --Pendant of Focused Energies
		[10] = { itemID = 45538 }; --Titanstone Pendant
		[11] = { itemID = 46138 }; --Idol of the Flourishing Life
		[12] = { itemID = 45605 }; --Daschal's Bite
	};
	{
		Name = AL["Ulduar Formula/Patterns/Plans"];
		[01] = { itemID = 45089 }; --Plans: Battlelord's Plate Boots
		[02] = { itemID = 45088 }; --Plans: Belt of the Titans
		[03] = { itemID = 45092 }; --Plans: Indestructible Plate Girdle
		[04] = { itemID = 45090 }; --Plans: Plate Girdle of Righteousness
		[05] = { itemID = 45093 }; --Plans: Spiked Deathdealers
		[06] = { itemID = 46027 }; --Formula: Enchant Weapon - Blade Ward
		[07] = { itemID = 46348 }; --Formula: Enchant Weapon - Blood Draining
		[08] = { itemID = 45100 }; --Pattern: Belt of Arctic Life
		[09] = { itemID = 45094 }; --Pattern: Belt of Dragons
		[10] = { itemID = 45096 }; --Pattern: AtlasLoot.Colors.BLUE Belt of Chaos
		[11] = { itemID = 45095 }; --Pattern: Boots of Living Scale
		[12] = { itemID = 45101 }; --Pattern: Boots of Wintry Endurance
		[13] = { itemID = 45098 }; --Pattern: Death-warmed Belt
		[14] = { itemID = 45099 }; --Pattern: Footpads of Silence
		[15] = { itemID = 45097 }; --Pattern: Lightning Grounded Boots
		[16] = { itemID = 45104 }; --Pattern: Cord of the AtlasLoot.Colors.WHITE Dawn
		[17] = { itemID = 45102 }; --Pattern: Sash of Ancient Power
		[18] = { itemID = 45105 }; --Pattern: Savior's Slippers
		[19] = { itemID = 45103 }; --Pattern: Spellslinger's Slippers
		[30] = { itemID = 45087 }; --Runed Orb
	};
};
-----------------------------
--- Trial of the Crusader ---
-----------------------------

AtlasLoot_Data["TrialoftheCrusader"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Trial of the Crusader"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["The Beasts of Northrend"];
		[01] = { itemID = 47617 }; --Icehowl Cinch
		[02] = { itemID = 47613 }; --Shoulderpads of the Glacial Wilds
		[03] = { itemID = 47608 }; --Acidmaw Boots
		[04] = { itemID = 47616 }; --Shoulderguards of the Spirit Walker
		[05] = { itemID = 47610 }; --Armbands of the Northern Stalker
		[06] = { itemID = 47611 }; --Dreadscale Armguards
		[07] = { itemID = 47609 }; --Gauntlets of Rising Anger
		[08] = { itemID = 47615 }; --Belt of the Frozen Reach
		[09] = { itemID = 47614 }; --Girdle of the Impaler
		[16] = { itemID = 47607 }; --Collar of Ceaseless Torment
		[17] = { itemID = 47578 }; --Carnivorous Band
		[19] = { itemID = 47612 }; --Rod of Imprisoned Souls
	};
	{
		Name = BabbleBoss["The Beasts of Northrend"];
		[01] = { itemID = 47855 }; --Icehowl Binding
		[02] = { itemID = 47857 }; --Pauldrons of the Glacial Wilds
		[03] = { itemID = 47853 }; --Acidmaw Treads
		[04] = { itemID = 47860 }; --Pauldrons of the Spirit Walker
		[05] = { itemID = 47850 }; --Bracers of the Northern Stalker
		[06] = { itemID = 47852 }; --Dreadscale Bracers
		[07] = { itemID = 47851 }; --Gauntlets of Mounting Anger
		[08] = { itemID = 47859 }; --Belt of the Impaler
		[09] = { itemID = 47858 }; --Girdle of the Frozen Reach
		[16] = { itemID = 47849 }; --Collar of Unending Torment
		[17] = { itemID = 47854 }; --Gormok's Band
		[19] = { itemID = 47856 }; --Scepter of Imprisoned Souls
	};
	{
		Name = BabbleBoss["The Beasts of Northrend"];
		[01] = { itemID = 46970 }; --Drape of the Untamed Predator
		[02] = { itemID = 46976 }; --Shawl of the Refreshing Winds
		[03] = { itemID = 46992 }; --Flowing Vestments of Ascent
		[04] = { itemID = 46972 }; --Cord of the Tenebrous Mist
		[05] = { itemID = 46974 }; --Leggings of the Broken Beast
		[06] = { itemID = 46988 }; --Boots of the Unrelenting Storm
		[07] = { itemID = 46960 }; --Breastplate of Cruel Intent
		[08] = { itemID = 46990 }; --Belt of the Ice Burrower
		[09] = { itemID = 46962 }; --Chestplate of the Towering Monstrosity
		[10] = { itemID = 46961 }; --Boneshatter Armplates
		[11] = { itemID = 46985 }; --Boots of the Courageous
		[16] = { itemID = 47242 }; --Trophy of the Crusade
		[18] = { itemID = 46959 }; --Band of the Violent Temperment
		[20] = { itemID = 46979 }; --Blade of Tarasque
		[21] = { itemID = 46958 }; --Steel Bladebreaker
		[22] = { itemID = 46963 }; --Crystal Plated Vanguard
	};
	{
		Name = BabbleBoss["The Beasts of Northrend"];
		[01] = { itemID = 47257 }; --Cloak of the Untamed Predator
		[02] = { itemID = 47256 }; --Drape of the Refreshing Winds
		[03] = { itemID = 47264 }; --Flowing Robes of Ascent
		[04] = { itemID = 47258 }; --Belt of the Tenebrous Mist
		[05] = { itemID = 47259 }; --Legwraps of the Broken Beast
		[06] = { itemID = 47262 }; --Boots of the Harsh Winter
		[07] = { itemID = 47251 }; --Cuirass of Cruel Intent
		[08] = { itemID = 47265 }; --Binding of the Ice Burrower
		[09] = { itemID = 47254 }; --Hauberk of the Towering Monstrosity
		[10] = { itemID = 47253 }; --Boneshatter Vambraces
		[11] = { itemID = 47263 }; --Sabatons of the Courageous
		[16] = { itemID = 47242 }; --Trophy of the Crusade
		[18] = { itemID = 47252 }; --Ring of the Violent Temperament
		[20] = { itemID = 47261 }; --Barb of Tarasque
		[21] = { itemID = 47255 }; --Stygian Bladebreaker
		[22] = { itemID = 47260 }; --Forlorn Barrier
	};
	{
		Name = BabbleBoss["Lord Jaraxxus"];
		[01] = { itemID = 47663 }; --Felspark Bindings
		[02] = { itemID = 47620 }; --Leggings of the Demonic Messenger
		[03] = { itemID = 47669 }; --Belt of the Winter Solstice
		[04] = { itemID = 47621 }; --Girdle of the Farseer
		[05] = { itemID = 49235 }; --Boots of Tortured Space
		[06] = { itemID = 47683 }; --Sentinel Scouting Greaves
		[07] = { itemID = 47680 }; --Armguards of the Nether Lord
		[08] = { itemID = 47711 }; --Girdle of the Nether Champion
		[16] = { itemID = 47619 }; --Amulet of Binding Elements
		[17] = { itemID = 47679 }; --Endurance of the Infernal
		[18] = { itemID = 47618 }; --Firestorm Ring
		[19] = { itemID = 47703 }; --Planestalker Signet
		[21] = { itemID = 47676 }; --Dirk of the Night Watch
	};
	{
		Name = BabbleBoss["Lord Jaraxxus"];
		[01] = { itemID = 47861 }; --Felspark Bracers
		[02] = { itemID = 47865 }; --Legwraps of the Demonic Messenger
		[03] = { itemID = 47863 }; --Belt of the Bloodhoof Emissary
		[04] = { itemID = 47866 }; --Darkspear Ritual Binding
		[05] = { itemID = 49236 }; --Sabatons of Tortured Space
		[06] = { itemID = 47867 }; --Warsong Poacher's Greaves
		[07] = { itemID = 47869 }; --Armplates of the Nether Lord
		[08] = { itemID = 47870 }; --Belt of the Nether Champion
		[16] = { itemID = 47872 }; --Fortitude of the Infernal
		[17] = { itemID = 47864 }; --Pendant of Binding Elements
		[18] = { itemID = 47862 }; --Firestorm Band
		[19] = { itemID = 47868 }; --Planestalker Band
		[21] = { itemID = 47871 }; --Orcish Deathblade
	};
	{
		Name = BabbleBoss["Lord Jaraxxus"];
		[01] = { itemID = 47042 }; --Pride of the Eredar
		[02] = { itemID = 47051 }; --Leggings of the Soothing Touch
		[03] = { itemID = 47000 }; --Cuirass of Calamitous Fate
		[04] = { itemID = 47055 }; --Bracers of the Autumn Willow
		[05] = { itemID = 47056 }; --Bracers of Cloudy Omen
		[06] = { itemID = 46999 }; --Bloodbath Belt
		[07] = { itemID = 47057 }; --Legplates of Failing Light
		[08] = { itemID = 47052 }; --Legguards of Feverish Dedication
		[09] = { itemID = 46997 }; --Dawnbreaker Greaves
		[16] = { itemID = 47242 }; --Trophy of the Crusade
		[18] = { itemID = 47043 }; --Charge of the Demon Lord
		[19] = { itemID = 47223 }; --Ring of the Darkmender
		[20] = { itemID = 47041 }; --Solace of the Defeated
		[21] = { itemID = 47053 }; --Symbol of Transgression
		[23] = { itemID = 46996 }; --Lionhead Slasher
		[24] = { itemID = 46994 }; --Talonstrike
	};
	{
		Name = BabbleBoss["Lord Jaraxxus"];
		[01] = { itemID = 47275 }; --Pride of the Demon Lord
		[02] = { itemID = 47274 }; --Pants of the Soothing Touch
		[03] = { itemID = 47270 }; --Vest of Calamitous Fate
		[04] = { itemID = 47277 }; --Bindings of the Autumn Willow
		[05] = { itemID = 47280 }; --Wristwraps of Cloudy Omen
		[06] = { itemID = 47268 }; --Bloodbath Girdle
		[07] = { itemID = 47279 }; --Leggings of Failing Light
		[08] = { itemID = 47273 }; --Legplates of Feverish Dedication
		[09] = { itemID = 47269 }; --Dawnbreaker Sabatons
		[16] = { itemID = 47242 }; --Trophy of the Crusade
		[18] = { itemID = 47272 }; --Charge of the Eredar
		[19] = { itemID = 47278 }; --Circle of the Darkmender
		[20] = { itemID = 47271 }; --Solace of the Fallen
		[21] = { itemID = 47276 }; --Talisman of Heedless Sins
		[23] = { itemID = 47266 }; --Blood Fury
		[24] = { itemID = 47267 }; --Death's Head Crossbow
	};
	{
		Name = AL["Faction Champions"];
		[01] = { itemID = 47721 }; --Sandals of the Silver Magus
		[02] = { itemID = 47719 }; --Gloves of the Silver Assassin
		[03] = { itemID = 47718 }; --Helm of the Silver Ranger
		[04] = { itemID = 47717 }; --Faceplate of the Silver Champion
		[05] = { itemID = 47720 }; --Pauldrons of the Silver Defender
		[07] = { itemID = 47728 }; --Binding Light
		[08] = { itemID = 47727 }; --Fervor of the Frostborn
		[09] = { itemID = 47726 }; --Talisman of Volatile Power
		[10] = { itemID = 47725 }; --Victor's Call
		[16] = { itemID = 47724 }; --Blade of the Silver Disciple
	};
	{
		Name = AL["Faction Champions"];
		[01] = { itemID = 47873 }; --Sunreaver Magus' Sandals
		[02] = { itemID = 47878 }; --Sunreaver Assassin's Gloves
		[03] = { itemID = 47875 }; --Sunreaver Ranger's Helm
		[04] = { itemID = 47876 }; --Sunreaver Champion's Faceplate
		[05] = { itemID = 47877 }; --Sunreaver Defender's Pauldrons
		[07] = { itemID = 47880 }; --Binding Stone
		[08] = { itemID = 47882 }; --Eitrigg's Oath
		[09] = { itemID = 47879 }; --Fetish of Volatile Power
		[10] = { itemID = 47881 }; --Vengeance of the Forsaken
		[16] = { itemID = 47874 }; --Sunreaver Disciple's Blade
	};
	{
		Name = AL["Faction Champions"];
		[01] = { itemID = 47089 }; --Cloak of Displacement
		[02] = { itemID = 47081 }; --Cord of Biting Cold
		[03] = { itemID = 47092 }; --Boots of the Mourning Widow
		[04] = { itemID = 47094 }; --Vestments of the Shattered Fellowship
		[05] = { itemID = 47071 }; --Treads of the Icewalker
		[06] = { itemID = 47073 }; --Bracers of the Untold Massacre
		[07] = { itemID = 47083 }; --Legguards of Concealed Hatred
		[08] = { itemID = 47090 }; --Boots of Tremoring Earth
		[09] = { itemID = 47082 }; --Chestplate of the Frostborn Hero
		[10] = { itemID = 47093 }; --Vambraces of the Broken Bond
		[11] = { itemID = 47072 }; --Girdle of Bloodied Scars
		[16] = { itemID = 47242 }; --Trophy of the Crusade
		[18] = { itemID = 47070 }; --Ring of Callous Aggression
		[19] = { itemID = 47080 }; --Satrina's Impeding Scarab
		[21] = { itemID = 47069 }; --Justicebringer
		[22] = { itemID = 47079 }; --Bastion of Purity
	};
	{
		Name = AL["Faction Champions"];
		[01] = { itemID = 47291 }; --Shroud of Displacement
		[02] = { itemID = 47286 }; --Belt of Biting Cold
		[03] = { itemID = 47293 }; --Sandals of the Mourning Widow
		[04] = { itemID = 47292 }; --Robes of the Shattered Fellowship
		[05] = { itemID = 47284 }; --Icewalker Treads
		[06] = { itemID = 47281 }; --Bracers of the Silent Massacre
		[07] = { itemID = 47289 }; --Leggings of Concealed Hatred
		[08] = { itemID = 47295 }; --Sabatons of Tremoring Earth
		[09] = { itemID = 47288 }; --Chestplate of the Frostwolf Hero
		[10] = { itemID = 47294 }; --Bracers of the Broken Bond
		[11] = { itemID = 47283 }; --Belt of Bloodied Scars
		[16] = { itemID = 47242 }; --Trophy of the Crusade
		[18] = { itemID = 47282 }; --Band of Callous Aggression
		[19] = { itemID = 47290 }; --Juggernaut's Vitality
		[21] = { itemID = 47285 }; --Dual-blade Butcher
		[22] = { itemID = 47287 }; --Bastion of Resolve
	};
	{
		Name = BabbleBoss["The Twin Val'kyr"];
		[01] = { itemID = 47745 }; --Gloves of Looming Shadow
		[02] = { itemID = 49231 }; --Boots of the Grieving Soul
		[03] = { itemID = 47746 }; --Helm of the Snowy Grotto
		[04] = { itemID = 47739 }; --Armor of Shifting Shadows
		[05] = { itemID = 47744 }; --Gloves of the Azure Prophet
		[06] = { itemID = 47738 }; --Sabatons of the Lingering Vortex
		[08] = { itemID = 47747 }; --Darkbane Pendant
		[09] = { itemID = 47700 }; --Loop of the Twin Val'kyr
		[10] = { itemID = 47742 }; --Chalice of Benedictus
		[16] = { itemID = 47736 }; --Icefall Blade
		[17] = { itemID = 47737 }; --Reckoning
		[18] = { itemID = 47743 }; --Enlightenment
		[19] = { itemID = 47740 }; --The Diplomat
	};
	{
		Name = BabbleBoss["The Twin Val'kyr"];
		[01] = { itemID = 47889 }; --Looming Shadow Wraps
		[02] = { itemID = 49232 }; --Sandals of the Grieving Soul
		[03] = { itemID = 47891 }; --Helm of the High Mesa
		[04] = { itemID = 47887 }; --Vest of Shifting Shadows
		[05] = { itemID = 47893 }; --Sen'jin Ritualist Gloves
		[06] = { itemID = 47885 }; --Greaves of the Lingering Vortex
		[08] = { itemID = 47890 }; --Darkbane Amulet
		[09] = { itemID = 47888 }; --Band of the Twin Val'kyr
		[10] = { itemID = 47913 }; --Lightbane Focus
		[16] = { itemID = 47886 }; --Nemesis Blade
		[17] = { itemID = 47884 }; --Edge of Agony
		[18] = { itemID = 47892 }; --Illumination
		[19] = { itemID = 47883 }; --Widebarrel Flintlock
	};
	{
		Name = BabbleBoss["The Twin Val'kyr"];
		[01] = { itemID = 47126 }; --Skyweaver Robes
		[02] = { itemID = 47141 }; --Bindings of Dark Essence
		[03] = { itemID = 47107 }; --Belt of the Merciless Killer
		[04] = { itemID = 47140 }; --Cord of Pale Thorns
		[05] = { itemID = 47106 }; --Sabatons of Ruthless Judgment
		[06] = { itemID = 47142 }; --Breastplate of the Frozen Lake
		[07] = { itemID = 47108 }; --Bracers of the Shieldmaiden
		[08] = { itemID = 47121 }; --Legguards of Ascension
		[10] = { itemID = 47116 }; --The Arbiter's Muse
		[11] = { itemID = 47105 }; --The Executioner's Malice
		[12] = { itemID = 47139 }; --Wail of the Val'kyr
		[13] = { itemID = 47115 }; --Death's Verdict
		[14] = { itemID = 47138 }; --Chalice of Searing Light
		[16] = { itemID = 47242 }; --Trophy of the Crusade
		[18] = { itemID = 47104 }; --Twin Spike
		[19] = { itemID = 47114 }; --Lupine Longstaff
	};
	{
		Name = BabbleBoss["The Twin Val'kyr"];
		[01] = { itemID = 47301 }; --Skyweaver Vestments
		[02] = { itemID = 47306 }; --Dark Essence Bindings
		[03] = { itemID = 47308 }; --Belt of Pale Thorns
		[04] = { itemID = 47299 }; --Belt of the Pitiless Killer
		[05] = { itemID = 47296 }; --Greaves of Ruthless Judgment
		[06] = { itemID = 47310 }; --Chestplate of the Frozen Lake
		[07] = { itemID = 47298 }; --Armguards of the Shieldmaiden
		[08] = { itemID = 47304 }; --Legplates of Ascension
		[10] = { itemID = 47307 }; --Cry of the Val'kyr
		[11] = { itemID = 47305 }; --Legionnaire's Gorget
		[12] = { itemID = 47297 }; --The Executioner's Vice
		[13] = { itemID = 47303 }; --Death's Choice
		[14] = { itemID = 47309 }; --Mystifying Charm
		[16] = { itemID = 47242 }; --Trophy of the Crusade
		[18] = { itemID = 47300 }; --Gouge of the Frigid Heart
		[19] = { itemID = 47302 }; --Twin's Pact
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[01] = { itemID = 47838 }; --Vestments of the Sleepless
		[02] = { itemID = 47837 }; --Cinch of the Undying
		[03] = { itemID = 47832 }; --Spaulders of the Snow Bandit
		[04] = { itemID = 47813 }; --Helmet of the Crypt Lord
		[05] = { itemID = 47829 }; --Pauldrons of the Timeless Hunter
		[06] = { itemID = 47811 }; --Chestguard of the Warden
		[07] = { itemID = 47836 }; --Legplates of the Immortal Spider
		[08] = { itemID = 47830 }; --Legplates of the Silver Hand
		[10] = { itemID = 47810 }; --Crusader's Glory
		[11] = { itemID = 47814 }; --Westfall Saber
		[12] = { itemID = 47808 }; --The Lion's Maw
		[13] = { itemID = 47809 }; --Argent Resolve
		[14] = { itemID = 47816 }; --The Grinder
		[16] = { itemID = 47834 }; --Fordragon Blades
		[17] = { itemID = 47815 }; --Cold Convergence
		[18] = { itemID = 47835 }; --Bulwark of the Royal Guard
		[19] = { itemID = 47812 }; --Vigilant Ward
		[20] = { itemID = 47741 }; --Baelgun's Heavy Crossbow
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[01] = { itemID = 47906 }; --Robes of the Sleepless
		[02] = { itemID = 47909 }; --Belt of the Eternal
		[03] = { itemID = 47904 }; --Shoulderpads of the Snow Bandit
		[04] = { itemID = 47897 }; --Helm of the Crypt Lord
		[05] = { itemID = 47901 }; --Pauldrons of the Shadow Hunter
		[06] = { itemID = 47896 }; --Stoneskin Chestplate
		[07] = { itemID = 47902 }; --Legplates of Redeemed Blood
		[08] = { itemID = 47908 }; --Sunwalker Legguards
		[10] = { itemID = 47899 }; --Ardent Guard
		[11] = { itemID = 47903 }; --Forsaken Bonecarver
		[12] = { itemID = 47898 }; --Frostblade Hatchet
		[13] = { itemID = 47894 }; --Mace of the Earthborn Chieftain
		[14] = { itemID = 47905 }; --Blackhorn Bludgeon
		[16] = { itemID = 47911 }; --Anguish
		[17] = { itemID = 47900 }; --Perdition
		[18] = { itemID = 47910 }; --Aegis of the Coliseum
		[19] = { itemID = 47895 }; --Pride of the Kor'kron
		[20] = { itemID = 47907 }; --Darkmaw Crossbow
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[01] = { itemID = 47225 }; --Maiden's Favor
		[02] = { itemID = 47183 }; --Strength of the Nerub
		[03] = { itemID = 47203 }; --Armbands of the Ashen Saint
		[04] = { itemID = 47235 }; --Gloves of the Lifeless Touch
		[05] = { itemID = 47187 }; --Leggings of the Deepening Void
		[06] = { itemID = 47194 }; --Footpads of the Icy Floe
		[07] = { itemID = 47151 }; --Bracers of Dark Determination
		[08] = { itemID = 47186 }; --Legwraps of the Awakening
		[09] = { itemID = 47204 }; --Chestguard of Flowing Elements
		[10] = { itemID = 47152 }; --Belt of Deathly Dominion
		[11] = { itemID = 47184 }; --Legguards of the Lurking Threat
		[12] = { itemID = 47234 }; --Gloves of Bitter Reprisal
		[13] = { itemID = 47195 }; --Belt of the Forgotten Martyr
		[14] = { itemID = 47150 }; --Greaves of the 7th Legion
		[16] = { itemID = 47242 }; --Trophy of the Crusade
		[18] = { itemID = 47054 }; --Band of Deplorable Violence
		[19] = { itemID = 47149 }; --Signet of the Traitor King
		[20] = { itemID = 47182 }; --Reign of the Unliving
		[22] = { itemID = 47148 }; --Stormpike Cleaver
		[23] = { itemID = 47193 }; --Misery's End
		[24] = { itemID = 47233 }; --Archon Glaive
	};
	{
		Name = BabbleBoss["Anub'arak"];
		[01] = { itemID = 47328 }; --Maiden's Adoration
		[02] = { itemID = 47320 }; --Might of the Nerub
		[03] = { itemID = 47324 }; --Bindings of the Ashen Saint
		[04] = { itemID = 47326 }; --Handwraps of the Lifeless Touch
		[05] = { itemID = 47317 }; --Breeches of the Deepening Void
		[06] = { itemID = 47321 }; --Boots of the Icy Floe
		[07] = { itemID = 47313 }; --Armbands of Dark Determination
		[08] = { itemID = 47318 }; --Leggings of the Awakening
		[09] = { itemID = 47325 }; --Cuirass of Flowing Elements
		[10] = { itemID = 47311 }; --Waistguard of Deathly Dominion
		[11] = { itemID = 47319 }; --Leggings of the Lurking Threat
		[12] = { itemID = 47330 }; --Gauntlets of Bitter Reprisal
		[13] = { itemID = 47323 }; --Girdle of the Forgotten Martyr
		[14] = { itemID = 47312 }; --Greaves of the Saronite Citadel
		[16] = { itemID = 47242 }; --Trophy of the Crusade
		[18] = { itemID = 47315 }; --Band of the Traitor King
		[19] = { itemID = 47327 }; --Lurid Manifestation
		[20] = { itemID = 47316 }; --Reign of the Dead
		[22] = { itemID = 47314 }; --Hellscream Slicer
		[23] = { itemID = 47322 }; --Suffering's End
		[24] = { itemID = 47329 }; --Hellion Glaive
	};
	{
		Name = AL["Trial of the Crusader Patterns/Plans"];
		[01] = { itemID = 47622 }; --Plans: Breastplate of the AtlasLoot.Colors.WHITE Knight
		[02] = { itemID = 47623 }; --Plans: Saronite Swordbreakers
		[03] = { itemID = 47627 }; --Plans: Sunforged Bracers
		[04] = { itemID = 47626 }; --Plans: Sunforged Breastplate
		[05] = { itemID = 47624 }; --Plans: Titanium Razorplate
		[06] = { itemID = 47625 }; --Plans: Titanium Spikeguards
		[07] = { itemID = 47629 }; --Pattern: Black Chitin Bracers
		[08] = { itemID = 47635 }; --Pattern: Bracers of Swift Death
		[09] = { itemID = 47631 }; --Pattern: Crusader's Dragonscale Bracers
		[10] = { itemID = 47630 }; --Pattern: Crusader's Dragonscale Breastplate
		[11] = { itemID = 47628 }; --Pattern: Ensorcelled Nerubian Breastplate
		[12] = { itemID = 47634 }; --Pattern: Knightbane Carapace
		[13] = { itemID = 47632 }; --Pattern: Lunar Eclipse Chestguard
		[14] = { itemID = 47633 }; --Pattern: Moonshadow Armguards
		[16] = { itemID = 47654 }; --Pattern: Bejeweled Wizard's Bracers
		[17] = { itemID = 47655 }; --Pattern: Merlin's Robe
		[18] = { itemID = 47656 }; --Pattern: Royal Moonshroud Bracers
		[19] = { itemID = 47657 }; --Pattern: Royal Moonshroud Robe
		[30] = { itemID = 47556 }; --Crusader Orb
	};
	{
		Name = AL["Trial of the Crusader Patterns/Plans"];
		[01] = { itemID = 47640 }; --Plans: Breastplate of the AtlasLoot.Colors.WHITE Knight
		[02] = { itemID = 47641 }; --Plans: Saronite Swordbreakers
		[03] = { itemID = 47642 }; --Plans: Sunforged Bracers
		[04] = { itemID = 47643 }; --Plans: Sunforged Breastplate
		[05] = { itemID = 47644 }; --Plans: Titanium Razorplate
		[06] = { itemID = 47645 }; --Plans: Titanium Spikeguards
		[07] = { itemID = 47646 }; --Pattern: Black Chitin Bracers
		[08] = { itemID = 47647 }; --Pattern: Bracers of Swift Death
		[09] = { itemID = 47648 }; --Pattern: Crusader's Dragonscale Bracers
		[10] = { itemID = 47649 }; --Pattern: Crusader's Dragonscale Breastplate
		[11] = { itemID = 47650 }; --Pattern: Ensorcelled Nerubian Breastplate
		[12] = { itemID = 47651 }; --Pattern: Knightbane Carapace
		[13] = { itemID = 47652 }; --Pattern: Lunar Eclipse Chestguard
		[14] = { itemID = 47653 }; --Pattern: Moonshadow Armguards
		[16] = { itemID = 47639 }; --Pattern: Bejeweled Wizard's Bracers
		[17] = { itemID = 47638 }; --Pattern: Merlin's Robe
		[18] = { itemID = 47637 }; --Pattern: Royal Moonshroud Bracers
		[19] = { itemID = 47636 }; --Pattern: Royal Moonshroud Robe
		[30] = { itemID = 47556 }; --Crusader Orb
	};
};

-------------------------
--- Onyxia (Level 80) ---
-------------------------

AtlasLoot_Data["Onyxia80"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Onyxia's Lair"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Onyxia"];
		[01] = { itemID = 49307 }; --Fluttering Sapphiron Drape
		[02] = { itemID = 49316 }; --Circlet of Transcendence
		[03] = { itemID = 49317 }; --Coronet of Transcendence
		[04] = { itemID = 49315 }; --Nemesis Skullcover
		[05] = { itemID = 49318 }; --Netherwind Hood
		[06] = { itemID = 49322 }; --Bloodfang Mask
		[07] = { itemID = 49327 }; --Stormrage Antlers
		[08] = { itemID = 49328 }; --Stormrage Helm
		[09] = { itemID = 49326 }; --Stormrage Hood
		[10] = { itemID = 49331 }; --Coif of Ten Storms
		[11] = { itemID = 49330 }; --Cowl of Ten Storms
		[12] = { itemID = 49329 }; --Gaze of Ten Storms
		[13] = { itemID = 49319 }; --Dragonstalker's Helmet
		[14] = { itemID = 49320 }; --Faceguard of Wrath
		[15] = { itemID = 49321 }; --Greathelm of Wrath
		[16] = { itemID = 49333 }; --Frostforged Helmet
		[17] = { itemID = 49332 }; --Frostforged Ringhelm
		[18] = { itemID = 49323 }; --Judgement Cover
		[19] = { itemID = 49325 }; --Judgement Helm
		[20] = { itemID = 49324 }; --Judgement Helmet
		[21] = { itemID = 49306 }; --Eskhandar's Choker
		[22] = { itemID = 49309 }; --Runed Ring of Binding
		[23] = { itemID = 49463 }; --Purified Shard of the Flame
		[24] = { itemID = 49310 }; --Purified Shard of the Scale
		[25] = { itemID = 49308 }; --Antique Cornerstone Grimoire
	};
	{
		Name = BabbleBoss["Onyxia"];
		[01] = { itemID = 49304 }; --Sharpened Fang of the Mystics
		[02] = { itemID = 49437 }; --Rusted Gutgore Ripper
		[03] = { itemID = 49298 }; --Glinting Azuresong Mageblade
		[04] = { itemID = 49303 }; --Gleaming Quel'Serrar
		[05] = { itemID = 49296 }; --Singed Vis'kag the Bloodletter
		[06] = { itemID = 49299 }; --Keen Obsidian Edged Blade
		[07] = { itemID = 49297 }; --Empowered Deathbringer
		[08] = { itemID = 49302 }; --Reclaimed Shadowstrike
		[09] = { itemID = 49301 }; --Reclaimed Thunderstrike
		[10] = { itemID = 49305 }; --Snub-Nose Blastershot Launcher
		[16] = { itemID = 49644 }; --Head of Onyxia
		[17] = { itemID = 49485 }; --Sparkling Onyxia Tooth Pendant
		[18] = { itemID = 49486 }; --Polished Dragonslayer's Signet
		[19] = { itemID = 49487 }; --Purified Onyxia Blood Talisman
		[21] = { itemID = 49295 }; --Enlarged Onyxia Hide Backpack
		[22] = { itemID = 49294 }; --Ashen Sack of Gems
		[24] = { itemID = 49636 }; --Reins of the Onyxian Drake
	};
	{
		Name = BabbleBoss["Onyxia"];
		[01] = { itemID = 49491 }; --Flowing Sapphiron Drape
		[02] = { itemID = 49482 }; --Aurora of Transcendence
		[03] = { itemID = 49483 }; --Halo of Transcendence
		[04] = { itemID = 49484 }; --Nemesis Skullcap
		[05] = { itemID = 49481 }; --Netherwind Crown
		[06] = { itemID = 49477 }; --Bloodfang Hood
		[07] = { itemID = 49472 }; --Stormrage Crown
		[08] = { itemID = 49473 }; --Stormrage Cover
		[09] = { itemID = 49471 }; --Stormrage Coverlet
		[10] = { itemID = 49469 }; --Crown of Ten Storms
		[11] = { itemID = 49468 }; --Helm of Ten Storms
		[12] = { itemID = 49470 }; --Helmet of Ten Storms
		[13] = { itemID = 49480 }; --Dragonstalker's Helm
		[14] = { itemID = 49479 }; --Helm of Wrath
		[15] = { itemID = 49478 }; --Helmet of Wrath
		[16] = { itemID = 49467 }; --Frostforged Greathelm
		[17] = { itemID = 49466 }; --Frostforged Helm
		[18] = { itemID = 49476 }; --Judgement Crown
		[19] = { itemID = 49475 }; --Judgement Heaume
		[20] = { itemID = 49474 }; --Judgement Hood
		[21] = { itemID = 49492 }; --Eskhandar's Links
		[22] = { itemID = 49489 }; --Signified Ring of Binding
		[23] = { itemID = 49464 }; --Shiny Shard of the Flame
		[24] = { itemID = 49488 }; --Shiny Shard of the Scale
		[25] = { itemID = 49490 }; --Antediluvian Cornerstone Grimoire
	};
	{
		Name = BabbleBoss["Onyxia"];
		[01] = { itemID = 49494 }; --Honed Fang of the Mystics
		[02] = { itemID = 49465 }; --Tarnished Gutgore Ripper
		[03] = { itemID = 49499 }; --Polished Azuresong Mageblade
		[04] = { itemID = 49495 }; --Burnished Quel'Serrar
		[05] = { itemID = 49501 }; --Tempered Vis'kag the Bloodletter
		[06] = { itemID = 49498 }; --Sharpened Obsidian Edged Blade
		[07] = { itemID = 49500 }; --Raging Deathbringer
		[08] = { itemID = 49496 }; --Reinforced Shadowstrike
		[09] = { itemID = 49497 }; --Reinforced Thunderstrike
		[10] = { itemID = 49493 }; --Rifled Blastershot Launcher
		[16] = { itemID = 49644 }; --Head of Onyxia
		[17] = { itemID = 49485, }; -- --Sparkling Onyxia Tooth Pendant
		[18] = { itemID = 49486, }; --Polished Dragonslayer's Signet
		[19] = { itemID = 49487, }; --Purified Onyxia Blood Talisman
		[21] = { itemID = 49295 }; --Enlarged Onyxia Hide Backpack
		[22] = { itemID = 49294 }; --Ashen Sack of Gems
		[24] = { itemID = 49636 }; --Reins of the Onyxian Drake
	};
};

------------------------
--- Icecrown Citadel ---
------------------------

-------------------
--- Lower Spire ---
-------------------

AtlasLoot_Data["IcecrownCitadel"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["Icecrown Citadel"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Lord Marrowgar"];
		[01] = { itemID = 50764 }; --Shawl of Nerubian Silk
		[02] = { itemID = 50773 }; --Cord of the Patronizing Practitioner
		[03] = { itemID = 50774 }; --Coldwraith Bracers
		[04] = { itemID = 50762 }; --Linked Scourge Vertebrae
		[05] = { itemID = 50775 }; --Corrupted Silverplate Leggings
		[06] = { itemID = 50772 }; --Ancient Skeletal Boots
		[08] = { itemID = 50763 }; --Marrowgar's Scratching Choker
		[09] = { itemID = 50339 }; --Sliver of Pure Ice
		[16] = { itemID = 50771 }; --Frost Needle
		[17] = { itemID = 50761 }; --Citadel Enforcer's Claymore
		[18] = { itemID = 50759 }; --Bone Warden's Splitter
		[19] = { itemID = 50760 }; --Bonebreaker Scepter
	};
	{
		Name = BabbleBoss["Lord Marrowgar"];
		[01] = { itemID = 49978 }; --Crushing Coldwraith Belt
		[02] = { itemID = 49979 }; --Handguards of Winter's Respite
		[03] = { itemID = 49950 }; --Frostbitten Fur Boots
		[04] = { itemID = 49952 }; --Snowserpent Mail Helm
		[05] = { itemID = 49980 }; --Rusted Bonespike Pauldrons
		[06] = { itemID = 49951 }; --Gendarme's Cuirass
		[07] = { itemID = 49960 }; --Bracers of Dark Reckoning
		[08] = { itemID = 49964 }; --Legguards of Lost Hope
		[10] = { itemID = 49975 }; --Bone Sentinel's Amulet
		[11] = { itemID = 49949 }; --Band of the Bone Colossus
		[12] = { itemID = 49977 }; --Loop of the Endless Labyrinth
		[13] = { itemID = 49967 }; --Marrowgar's Frigid Eye
		[16] = { itemID = 49968 }; --Frozen Bonespike
		[17] = { itemID = 50415 }; --Bryntroll, the Bone Arbiter
		[18] = { itemID = 49976 }; --Bulwark of Smouldering Steel
		[20] = { itemID = 50274 }; --Shadowfrost Shard
		[21] = { itemID = 49908 }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Lady Deathwhisper"];
		[01] = { itemID = 50785 }; --Bracers of Dark Blessings
		[02] = { itemID = 50782 }; --Sister's Handshrouds
		[03] = { itemID = 50780 }; --Chestguard of the Frigid Noose
		[04] = { itemID = 50778 }; --Soulthief's Braided Belt
		[05] = { itemID = 50783 }; --Boots of the Frozen Seed
		[06] = { itemID = 50777 }; --Handgrips of Frost and Sleet
		[07] = { itemID = 50784 }; --Deathspeaker Disciple's Belt
		[08] = { itemID = 50779 }; --Deathspeaker Zealot's Helm
		[09] = { itemID = 50786 }; --Ghoul Commander's Cuirass
		[16] = { itemID = 50342 }; --Whispering Fanged Skull
		[17] = { itemID = 50781 }; --Scourgelord's Baton
		[19] = { itemID = 50776 }; --Njordnar Bone Bow
	};
	{
		Name = BabbleBoss["Lady Deathwhisper"];
		[01] = { itemID = 49991 }; --Shoulders of Mercy Killing
		[02] = { itemID = 49994 }; --The Lady's Brittle Bracers
		[03] = { itemID = 49987 }; --Cultist's Bloodsoaked Spaulders
		[04] = { itemID = 49996 }; --Deathwhisper Chestpiece
		[05] = { itemID = 49988 }; --Leggings of Northern Lights
		[06] = { itemID = 49993 }; --Necrophotic Greaves
		[07] = { itemID = 49986 }; --Broken Ram Skull Helm
		[08] = { itemID = 49995 }; --Fallen Lord's Handguards
		[09] = { itemID = 49983 }; --Blood-Soaked Saronite Stompers
		[11] = { itemID = 49989 }; --Ahn'kahar Onyx Neckguard
		[12] = { itemID = 49985 }; --Juggernaut Band
		[13] = { itemID = 49990 }; --Ring of Maddening Whispers
		[16] = { itemID = 49982 }; --Heartpierce
		[17] = { itemID = 49992 }; --Nibelung
		[18] = { itemID = 50034 }; --Zod's Repeating Longbow
		[20] = { itemID = 50274 }; --Shadowfrost Shard
		[21] = { itemID = 49908 }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Icecrown Gunship Battle"];
		[01] = { itemID = 50791 }; --Saronite Gargoyle Cloak
		[02] = { itemID = 50795 }; --Cord of Dark Suffering
		[03] = { itemID = 50797 }; --Ice-Reinforced Vrykul Helm
		[04] = { itemID = 50792 }; --Pauldrons of Lost Hope
		[05] = { itemID = 50789 }; --Icecrown Rampart Bracers
		[06] = { itemID = 50796 }; --Bracers of Pale Illumination
		[07] = { itemID = 50788 }; --Bone Drake's Enameled Boots
		[09] = { itemID = 50790 }; --Abomination's Bloody Ring
		[10] = { itemID = 50340 }; --Muradin's Spyglass
		[16] = { itemID = 50793 }; --Midnight Sun
		[17] = { itemID = 50787 }; --Frost Giant's Cleaver
		[18] = { itemID = 50794 }; --Neverending Winter
	};
	{
		Name = BabbleBoss["Icecrown Gunship Battle"];
		[01] = { itemID = 49998 }; --Shadowvault Slayer's Cloak
		[02] = { itemID = 50006 }; --Corp'rethar Ceremonial Crown
		[03] = { itemID = 50011 }; --Gunship Captain's Mittens
		[04] = { itemID = 50001 }; --Ikfirus's Sack of Wonder
		[05] = { itemID = 50009 }; --Boots of Unnatural Growth
		[06] = { itemID = 50000 }; --Scourge Hunter's Vambraces
		[07] = { itemID = 50003 }; --Boneguard Commander's Pauldrons
		[08] = { itemID = 50002 }; --Polar Bear Claw Bracers
		[09] = { itemID = 50010 }; --Waistband of Righteous Fury
		[11] = { itemID = 50274 }; --Shadowfrost Shard
		[12] = { itemID = 49908 }; --Primordial Saronite
		[16] = { itemID = 50005 }; --Amulet of the Silent Eulogy
		[17] = { itemID = 50008 }; --Ring of Rapid Ascent
		[18] = { itemID = 49999 }; --Skeleton Lord's Circle
		[19] = { itemID = 50359 }; --Althor's Abacus
		[20] = { itemID = 50352 }; --Corpse Tongue Coin
		[22] = { itemID = 50411 }; --Scourgeborne Waraxe
	};
	{
		Name = BabbleBoss["Deathbringer Saurfang"];
		[01] = { itemID = 50807 }; --Thaumaturge's Crackling Cowl
		[02] = { itemID = 50804 }; --Icecrown Spire Sandals
		[03] = { itemID = 50799 }; --Scourge Stranglers
		[04] = { itemID = 50806 }; --Leggings of Unrelenting Blood
		[05] = { itemID = 50800 }; --Hauberk of a Thousand Cuts
		[06] = { itemID = 50801 }; --Blade-Scored Carapace
		[07] = { itemID = 50802 }; --Gargoyle Spit Bracers
		[08] = { itemID = 50808 }; --Deathforged Legplates
		[16] = { itemID = 50809 }; --Soulcleave Pendant
		[17] = { itemID = 50803 }; --Saurfang's Cold-Forged Band
		[19] = { itemID = 50798 }; --Ramaladni's Blade of Culling
		[20] = { itemID = 50805 }; --Mag'hari Chieftain's Staff
	};
	{
		Name = BabbleBoss["Deathbringer Saurfang"];
		[01] = { itemID = 50014 }; --Greatcloak of the Turned Champion
		[02] = { itemID = 50333 }; --Toskk's Maximized Wristguards
		[03] = { itemID = 50015 }; --Belt of the Blood Nova
		[04] = { itemID = 50362 }; --Deathbringer's Will
		[05] = { itemID = 50412 }; --Bloodvenom Blade
		[07] = { itemID = 50274 }; --Shadowfrost Shard
		[08] = { itemID = 49908 }; --Primordial Saronite
		[16] = { itemID = 52027 }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026 }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025 }; --Vanquisher's Mark of Sanctification
	};
	{
		Name = BabbleBoss["Festergut"];
		[01] = { itemID = 50859 }; --Cloak of Many Skins
		[02] = { itemID = 50988 }; --Bloodstained Surgeon's Shoulderguards
		[03] = { itemID = 50990 }; --Kilt of Untreated Wounds
		[04] = { itemID = 50985 }; --Wrists of Septic Shock
		[05] = { itemID = 50858 }; --Plague-Soaked Leather Leggings
		[06] = { itemID = 50812 }; --Taldron's Long Neglected Boots
		[07] = { itemID = 50967 }; --Festergut's Gaseous Gloves
		[08] = { itemID = 50811 }; --Festering Fingerguards
		[16] = { itemID = 50852 }; --Precious's Putrid Collar
		[17] = { itemID = 50986 }; --Signet of Putrefaction
		[19] = { itemID = 50810 }; --Gutbuster
		[20] = { itemID = 50966 }; --Abracadaver
	};
	{
		Name = BabbleBoss["Festergut"];
		[01] = { itemID = 50063 }; --Lingering Illness
		[02] = { itemID = 50056 }; --Plaguebringer's Stained Pants
		[03] = { itemID = 50062 }; --Plague Scientist's Boots
		[04] = { itemID = 50042 }; --Gangrenous Leggings
		[05] = { itemID = 50041 }; --Leather of Stitched Scourge Parts
		[06] = { itemID = 50059 }; --Horrific Flesh Epaulets
		[07] = { itemID = 50038 }; --Carapace of Forgotten Kings
		[08] = { itemID = 50064 }; --Unclean Surgical Gloves
		[09] = { itemID = 50413 }; --Nerub'ar Stalker's Cord
		[10] = { itemID = 50060 }; --Faceplate of the Forgotten
		[11] = { itemID = 50037 }; --Fleshrending Gauntlets
		[12] = { itemID = 50036 }; --Belt of Broken Bones
		[16] = { itemID = 50061 }; --Holiday's Grace
		[17] = { itemID = 50414 }; --Might of Blight
		[19] = { itemID = 50035 }; --Black Bruise
		[20] = { itemID = 50040 }; --Distant Land
		[22] = { itemID = 50226 }; --Festergut's Acidic Blood
		[24] = { itemID = 50274 }; --Shadowfrost Shard
		[25] = { itemID = 49908 }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Rotface"];
		[01] = { itemID = 51007 }; --Ether-Soaked Bracers
		[02] = { itemID = 51005 }; --Gloves of Broken Fingers
		[03] = { itemID = 51009 }; --Chestguard of the Failed Experiment
		[04] = { itemID = 51002 }; --Taldron's Short-Sighted Helm
		[05] = { itemID = 51006 }; --Shuffling Shoes
		[06] = { itemID = 51000 }; --Flesh-Shaper's Gurney Strap
		[08] = { itemID = 51008 }; --Choker of Filthy Diamonds
		[09] = { itemID = 51001 }; --Rotface's Rupturing Ring
		[16] = { itemID = 51003 }; --Abomination Knuckles
		[17] = { itemID = 51004 }; --Lockjaw
		[18] = { itemID = 50998 }; --Shaft of Glacial Ice
		[19] = { itemID = 50999 }; --Gluth's Fetching Knife
	};
	{
		Name = BabbleBoss["Rotface"];
		[01] = { itemID = 50019 }; --Winding Sheet
		[02] = { itemID = 50032 }; --Death Surgeon's Sleeves
		[03] = { itemID = 50026 }; --Helm of the Elder Moon
		[04] = { itemID = 50021 }; --Aldriana's Gloves of Secrecy
		[05] = { itemID = 50022 }; --Dual-Bladed Pauldrons
		[06] = { itemID = 50030 }; --Bloodsunder's Bracers
		[07] = { itemID = 50020 }; --Raging Behemoth's Shoulderplates
		[08] = { itemID = 50024 }; --Blightborne Warplate
		[09] = { itemID = 50027 }; --Rot-Resistant Breastplate
		[11] = { itemID = 50023 }; --Bile-Encrusted Medallion
		[12] = { itemID = 50025 }; --Seal of Many Mouths
		[13] = { itemID = 50353 }; --Dislodged Foreign Object
		[16] = { itemID = 50028 }; --Trauma
		[17] = { itemID = 50016 }; --Rib Spreader
		[18] = { itemID = 50033 }; --Corpse-Impaling Spike
		[20] = { itemID = 50231 }; --Rotface's Acidic Blood
		[22] = { itemID = 50274 }; --Shadowfrost Shard
		[23] = { itemID = 49908 }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Professor Putricide"];
		[01] = { itemID = 51020 }; --Shoulders of Ruinous Senility
		[02] = { itemID = 51017 }; --Cauterized Cord
		[03] = { itemID = 51013 }; --Discarded Bag of Entrails
		[04] = { itemID = 51015 }; --Shoulderpads of the Morbid Ritual
		[05] = { itemID = 51019 }; --Rippling Flesh Kilt
		[06] = { itemID = 51014 }; --Scalpel-Sharpening Shoulderguards
		[07] = { itemID = 51018 }; --Chestplate of Septic Stitches
		[16] = { itemID = 51012 }; --Infected Choker
		[17] = { itemID = 51016 }; --Pendant of Split Veins
		[18] = { itemID = 50341 }; --Unidentifiable Organ
		[20] = { itemID = 51011 }; --Flesh-Carving Scalpel
		[21] = { itemID = 51010 }; --The Facelifter
	};
	{
		Name = BabbleBoss["Professor Putricide"];
		[01] = { itemID = 50067 }; --Astrylian's Sutured Cinch
		[02] = { itemID = 50069 }; --Professor's Bloodied Smock
		[03] = { itemID = 50351 }; --Tiny Abomination in a Jar
		[04] = { itemID = 50179 }; --Last Word
		[05] = { itemID = 50068 }; --Rigormortis
		[07] = { itemID = 50274 }; --Shadowfrost Shard
		[08] = { itemID = 49908 }; --Primordial Saronite
		[16] = { itemID = 52027 }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026 }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025 }; --Vanquisher's Mark of Sanctification
	};
	{
		Name = BabbleBoss["Blood Prince Council"];
		[01] = { itemID = 51382 }; --Heartsick Mender's Cape
		[02] = { itemID = 51379 }; --Bloodsoul Raiment
		[03] = { itemID = 51380 }; --Pale Corpse Boots
		[04] = { itemID = 51023 }; --Taldaram's Soft Slippers
		[05] = { itemID = 51325 }; --Blood-Drinker's Girdle
		[06] = { itemID = 51383 }; --Spaulders of the Blood Princes
		[07] = { itemID = 51025 }; --Battle-Maiden's Legguards
		[09] = { itemID = 51381 }; --Cerise Coiled Ring
		[10] = { itemID = 51024 }; --Thrice Fanged Signet
		[16] = { itemID = 51021 }; --Soulbreaker
		[17] = { itemID = 51022 }; --Hersir's Greatspear
		[18] = { itemID = 51326 }; --Wand of Ruby Claret
	};
	{
		Name = BabbleBoss["Blood Prince Council"];
		[01] = { itemID = 50074 }; --Royal Crimson Cloak
		[02] = { itemID = 50172 }; --Sanguine Silk Robes
		[03] = { itemID = 50176 }; --San'layn Ritualist Gloves
		[04] = { itemID = 50073 }; --Geistlord's Punishment Sack
		[05] = { itemID = 50171 }; --Shoulders of Frost-Tipped Thorns
		[06] = { itemID = 50177 }; --Mail of Crimson Coins
		[07] = { itemID = 50071 }; --Treads of the Wasteland
		[08] = { itemID = 50072 }; --Landsoul's Horned Greathelm
		[09] = { itemID = 50175 }; --Crypt Keeper's Bracers
		[10] = { itemID = 50075 }; --Taldaram's Plated Fists
		[16] = { itemID = 50174 }; --Incarnadine Band of Mending
		[17] = { itemID = 50170 }; --Valanar's Other Signet Ring
		[18] = { itemID = 50173 }; --Shadow Silk Spindle
		[20] = { itemID = 50184 }; --Keleseth's Seducer
		[21] = { itemID = 49919 }; --Cryptmaker
		[23] = { itemID = 50274 }; --Shadowfrost Shard
		[24] = { itemID = 49908 }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Blood-Queen Lana'thel"];
		[01] = { itemID = 51554 }; --Cowl of Malefic Repose
		[02] = { itemID = 51552 }; --Shoulderpads of the Searing Kiss
		[03] = { itemID = 51550 }; --Ivory-Inlaid Leggings
		[04] = { itemID = 51551 }; --Chestguard of Siphoned Elements
		[05] = { itemID = 51386 }; --Throatrender Handguards
		[06] = { itemID = 51556 }; --Veincrusher Gauntlets
		[07] = { itemID = 51555 }; --Tightening Waistband
		[16] = { itemID = 51548 }; --Collar of Haughty Disdain
		[17] = { itemID = 51387 }; --Seal of the Twilight Queen
		[19] = { itemID = 51384 }; --Bloodsipper
		[20] = { itemID = 51385 }; --Stakethrower
		[21] = { itemID = 51553 }; --Lana'thel's Bloody Nail
	};
	{
		Name = BabbleBoss["Blood-Queen Lana'thel"];
		[01] = { itemID = 50182 }; --Blood Queen's Crimson Choker
		[02] = { itemID = 50180 }; --Lana'thel's Chain of Flagellation
		[03] = { itemID = 50354 }; --Bauble of True Blood
		[04] = { itemID = 50178 }; --Bloodfall
		[05] = { itemID = 50181 }; --Dying Light
		[06] = { itemID = 50065 }; --Icecrown Glacial Wall
		[08] = { itemID = 50274 }; --Shadowfrost Shard
		[09] = { itemID = 49908 }; --Primordial Saronite
		[16] = { itemID = 52027 }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026 }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025 }; --Vanquisher's Mark of Sanctification
	};
	{
		Name = BabbleBoss["Valithria Dreamwalker"];
		[01] = { itemID = 51584 }; --Lich Wrappings
		[02] = { itemID = 51777 }; --Leggings of the Refracted Mind
		[03] = { itemID = 51585 }; --Sister Svalna's Spangenhelm
		[04] = { itemID = 51565 }; --Skinned Whelp Shoulders
		[05] = { itemID = 51583 }; --Stormbringer Gloves
		[06] = { itemID = 51566 }; --Legguards of the Twisted Dream
		[07] = { itemID = 51586 }; --Emerald Saint's Spaulders
		[08] = { itemID = 51563 }; --Taiga Bindings
		[09] = { itemID = 51564 }; --Ironrope Belt of Ymirjar
		[16] = { itemID = 51562 }; --Oxheart
		[17] = { itemID = 51582 }; --Sister Svalna's Aether Staff
		[18] = { itemID = 51561 }; --Dreamhunter's Carbine
	};
	{
		Name = BabbleBoss["Valithria Dreamwalker"];
		[01] = { itemID = 50205 }; --Frostbinder's Shredded Cape
		[02] = { itemID = 50418 }; --Robe of the Waking Nightmare
		[03] = { itemID = 50417 }; --Bracers of Eternal Dreaming
		[04] = { itemID = 50202 }; --Snowstorm Helm
		[05] = { itemID = 50188 }; --Anub'ar Stalker's Gloves
		[06] = { itemID = 50187 }; --Coldwraith Links
		[07] = { itemID = 50199 }; --Leggings of Dying Candles
		[08] = { itemID = 50192 }; --Scourge Reaver's Legplates
		[09] = { itemID = 50416 }; --Boots of the Funeral March
		[10] = { itemID = 50190 }; --Grinning Skull Greatboots
		[16] = { itemID = 50195 }; --Noose of Malachite
		[17] = { itemID = 50185 }; --Devium's Eternally Cold Ring
		[18] = { itemID = 50186 }; --Frostbrood Sapphire Ring
		[20] = { itemID = 50183 }; --Lungbreaker
		[21] = { itemID = 50472 }; --Nightmare Ender
		[23] = { itemID = 50274 }; --Shadowfrost Shard
		[24] = { itemID = 49908 }; --Primordial Saronite
	};
	{
		Name = BabbleBoss["Sindragosa"];
		[01] = { itemID = 51790 }; --Robes of Azure Downfall
		[02] = { itemID = 51783 }; --Vambraces of the Frost Wyrm Queen
		[03] = { itemID = 51789 }; --Icicle Shapers
		[04] = { itemID = 51792 }; --Shoulderguards of Crystalline Bone
		[05] = { itemID = 51785 }; --Wyrmwing Treads
		[06] = { itemID = 51782 }; --Etched Dragonbone Girdle
		[07] = { itemID = 51786 }; --Legplates of Aetheric Strife
		[08] = { itemID = 51787 }; --Scourge Fanged Stompers
		[10] = { itemID = 51026 }; --Crystalline Essence of Sindragosa
		[16] = { itemID = 51779 }; --Rimetooth Pendant
		[18] = { itemID = 51784 }; --Splintershard
		[19] = { itemID = 51788 }; --Bleak Coldarra Carver
		[20] = { itemID = 51791 }; --Lost Pavise of the AtlasLoot.Colors.BLUE Flight
	};
	{
		Name = BabbleBoss["Sindragosa"];
		[01] = { itemID = 50421 }; --Sindragosa's Cruel Claw
		[02] = { itemID = 50424 }; --Memory of Malygos
		[03] = { itemID = 50360 }; --Phylactery of the Nameless Lich
		[04] = { itemID = 50361 }; --Sindragosa's Flawless Fang
		[05] = { itemID = 50423 }; --Sundial of Eternal Dusk
		[07] = { itemID = 50274 }; --Shadowfrost Shard
		[08] = { itemID = 49908 }; --Primordial Saronite
		[09] = { itemID = 51026 }; --Crystalline Essence of Sindragosa
		[16] = { itemID = 52027 }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026 }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025 }; --Vanquisher's Mark of Sanctification
	};
	{
		Name = BabbleBoss["The Lich King"];
		[01] = { itemID = 51801 }; --Pugius, Fist of Defiance
		[02] = { itemID = 51803 }; --Tel'thas, Dagger of the Blood King
		[03] = { itemID = 51800 }; --Stormfury, Black Blade of the Betrayer
		[04] = { itemID = 51795 }; --Troggbane, Axe of the Frostborne King
		[05] = { itemID = 51798 }; --Valius, Gavel of the Lightbringer
		[06] = { itemID = 51796 }; --Warmace of Menethil
		[07] = { itemID = 51799 }; --Halion, Staff of Forgotten Love
		[08] = { itemID = 51797 }; --Tainted Twig of Nordrassil
		[09] = { itemID = 51802 }; --Windrunner's Heartseeker
	};
	{
		Name = BabbleBoss["The Lich King"];
		[01] = { itemID = 50426 }; --Heaven's Fall, Kryss of a Thousand Lies
		[02] = { itemID = 50427 }; --Bloodsurge, Kel'Thuzad's Blade of Agony
		[03] = { itemID = 50070 }; --Glorenzelg, High-Blade of the Silver Hand
		[04] = { itemID = 50012 }; --Havoc's Call, Blade of Lordaeron Kings
		[05] = { itemID = 50428 }; --Royal Scepter of Terenas II
		[06] = { itemID = 49997 }; --Mithrios, Bronzebeard's Legacy
		[07] = { itemID = 50425 }; --Oathbinder, Charge of the Ranger-General
		[08] = { itemID = 50429 }; --Archus, Greatstaff of Antonidas
		[09] = { itemID = 49981 }; --Fal'inrush, Defender of Quel'thalas
		[16] = { itemID = 52027 }; --Conqueror's Mark of Sanctification
		[17] = { itemID = 52026 }; --Protector's Mark of Sanctification
		[18] = { itemID = 52025 }; --Vanquisher's Mark of Sanctification
		[20] = { itemID = 50274 }; --Shadowfrost Shard
		[21] = { itemID = 49908 }; --Primordial Saronite
	};
	{
		Name = AL["Trash Mobs"];
		[01] = { itemID = 50449 }; --Stiffened Corpse Shoulderpads
		[02] = { itemID = 50450 }; --Leggings of Dubious Charms
		[03] = { itemID = 50451 }; --Belt of the Lonely Noble
		[04] = { itemID = 50452 }; --Wodin's Lucky Necklace
		[05] = { itemID = 50447 }; --Harbinger's Bone Band
		[06] = { itemID = 50453 }; --Ring of Rotting Sinew
		[07] = { itemID = 50444 }; --Rowan's Rifle of Silver Bullets
	};
	
};

--------------------
--- Ruby Sanctum ---
--------------------

AtlasLoot_Data["Halion"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleZone["The Ruby Sanctum"];
	Type = "WrathRaid";
	{
		Name = BabbleBoss["Halion"];
		[01] = { itemID = 53115 }; --Abduction's Cover
		[02] = { itemID = 53118 }; --Misbegotten Belt
		[03] = { itemID = 53114 }; --Gloaming Sark
		[04] = { itemID = 53117 }; --Changeling Gloves
		[05] = { itemID = 53113 }; --Twilight Scale Shoulders
		[06] = { itemID = 53119 }; --Boots of Divided Being
		[07] = { itemID = 53112 }; --Bracers of the Heir
		[08] = { itemID = 53121 }; --Surrogate Belt
		[09] = { itemID = 53111 }; --Scion's Treads
		[16] = { itemID = 53103 }; --Baltharus' Gift
		[17] = { itemID = 53116 }; --Saviana's Tribute
		[18] = { itemID = 53110 }; --Zarithrian's Offering
	};
	{
		Name = BabbleBoss["Halion"];
		[01] = { itemID = 53489 }; --Cloak of Burning Dusk
		[02] = { itemID = 53486 }; --Bracers of Fiery Night
		[03] = { itemID = 53134 }; --Phaseshifter's Bracers
		[04] = { itemID = 53126 }; --Umbrage Armbands
		[05] = { itemID = 53488 }; --Split Shape Belt
		[06] = { itemID = 53127 }; --Returning Footfalls
		[07] = { itemID = 53125 }; --Apocalypse's Advance
		[08] = { itemID = 53487 }; --Foreshadow Steps
		[09] = { itemID = 53129 }; --Treads of Impending Resurrection
		[16] = { itemID = 53132 }; --Penumbra Pendant
		[17] = { itemID = 53490 }; --Ring of Phased Regeneration
		[18] = { itemID = 53133 }; --Signet of Twilight
		[19] = { itemID = 54572 }; --Charred Twilight Scale
		[20] = { itemID = 54573 }; --Glowing Twilight Scale
		[21] = { itemID = 54571 }; --Petrified Twilight Scale
		[22] = { itemID = 54569 }; --Sharpened Twilight Scale
	};
	{
		Name = BabbleBoss["Halion"];
		[01] = { itemID = 54556 }; --Abduction's Cover
		[02] = { itemID = 54562 }; --Misbegotten Belt
		[03] = { itemID = 54561 }; --Gloaming Sark
		[04] = { itemID = 54560 }; --Changeling Gloves
		[05] = { itemID = 54566 }; --Twilight Scale Shoulders
		[06] = { itemID = 54558 }; --Boots of Divided Being
		[07] = { itemID = 54559 }; --Bracers of the Heir
		[08] = { itemID = 54565 }; --Surrogate Belt
		[09] = { itemID = 54564 }; --Scion's Treads
		[16] = { itemID = 54557 }; --Baltharus' Gift
		[17] = { itemID = 54563 }; --Saviana's Tribute
		[18] = { itemID = 54567 }; --Zarithrian's Offering
	};
	{
		Name = BabbleBoss["Halion"];
		[01] = { itemID = 54583 }; --Cloak of Burning Dusk
		[02] = { itemID = 54582 }; --Bracers of Fiery Night
		[03] = { itemID = 54584 }; --Phaseshifter's Bracers
		[04] = { itemID = 54580 }; --Umbrage Armbands
		[05] = { itemID = 54587 }; --Split Shape Belt
		[06] = { itemID = 54577 }; --Returning Footfalls
		[07] = { itemID = 54578 }; --Apocalypse's Advance
		[08] = { itemID = 54586 }; --Foreshadow Steps
		[09] = { itemID = 54579 }; --Treads of Impending Resurrection
		[16] = { itemID = 54581 }; --Penumbra Pendant
		[17] = { itemID = 54585 }; --Ring of Phased Regeneration
		[18] = { itemID = 54576 }; --Signet of Twilight
		[19] = { itemID = 54588 }; --Charred Twilight Scale
		[20] = { itemID = 54589 }; --Glowing Twilight Scale
		[21] = { itemID = 54591 }; --Petrified Twilight Scale
		[22] = { itemID = 54590 }; --Sharpened Twilight Scale
	};
};
----------------
--- Factions ---
----------------

-------------------------
--- Alliance Vanguard ---
-------------------------

AtlasLoot_Data["AllianceVanguard"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleFaction["Alliance Vanguard"];
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 38459 }; --Orb of the Eastern Kingdoms
		[02] = { itemID = 38465 }; --Vanguard Soldier's Dagger
		[03] = { itemID = 38455 }; --Hammer of the Alliance Vanguard
		[04] = { itemID = 38463 }; --Lordaeron's Resolve
		[05] = { itemID = 38453 }; --Shield of the Lion-hearted
		[06] = { itemID = 38457 }; --Sawed-off Hand Cannon
		[07] = { itemID = 38464 }; --Gnomish Magician's Quill
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 44503 }; --Schematic: Mekgineer's Chopper
		[02] = { itemID = 44937 }; --Plans: Titanium Plating
		[03] = { itemID = 44701 };
	};
};
----------------------
--- Argent Crusade ---
----------------------

AtlasLoot_Data["ArgentCrusade"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleFaction["Argent Crusade"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 43154 }; --Tabard of the Argent Crusade
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 44216 }; --Cloak of Holy Extermination
		[02] = { itemID = 44240 }; --Special Issue Legplates
		[03] = { itemID = 44239 }; --Standard Issue Legguards
		[04] = { itemID = 44139 };
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 44248 }; --Battle Mender's Helm
		[02] = { itemID = 44247 }; --Fang-Deflecting Faceguard
		[03] = { itemID = 44244 }; --Argent Skeleton Crusher
		[04] = { itemID = 44245 }; --Zombie Sweeper Shotgun
		[05] = { itemID = 44214 }; --Purifying Torch
		[06] = { itemID = 41726 }; --Design: Guardian's Twilight Opal
		[07] = { itemID = 44150 }; --Arcanum of the Stalwart Protector
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 44297 }; --Boots of the Neverending Path
		[02] = { itemID = 44295 }; --Polished Regimental Hauberk
		[03] = { itemID = 44296 }; --Helm of Purified Thoughts
		[04] = { itemID = 44283 }; --Signet of Hopeful Light
		[05] = { itemID = 42187 }; --Pattern: Brilliant Spellthread
	};
};

-------------------------
--- Frenzyheart Tribe ---
-------------------------

AtlasLoot_Data["FrenzyheartTribe"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleFaction["Frenzyheart Tribe"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 41561 }; --Design: Reckless Huge Citrine
		[02] = { itemID = 44064 }; --Nepeta Leaf
		[03] = { itemID = 44072 }; --Roasted Mystery Beast
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 44719 }; --Frenzyheart Brew
		[02] = { itemID = 39671 }; --Resurgent Healing Potion
		[03] = { itemID = 40067 }; --Icy Mana Potion
		[04] = { itemID = 40087 }; --Powerful Rejuvenation Potion
		[05] = { itemID = 44716 }; --Mysterious Fermented Liquid
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 44116 }; --Muddied Crimson Gloves
		[02] = { itemID = 44117 }; --Azure Strappy Pants
		[03] = { itemID = 44122 }; --Scavenged Feathery Leggings
		[04] = { itemID = 44120 }; --Giant-Sized Gauntlets
		[05] = { itemID = 44121 }; --Sparkly Shiny Gloves
		[06] = { itemID = 44123 }; --Discarded Titanium Legplates
		[07] = { itemID = 44118 }; --Stolen Vrykul Harpoon
		[08] = { itemID = 41723 }; --Design: Jagged Forest Emerald
		[09] = { itemID = 44717 }; --Disgusting Jar
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 44073 }; --Frenzyheart Insignia of Fury
	};
};

----------------------------
--- The Horde Expedition ---
----------------------------

AtlasLoot_Data["HordeExpedition"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleFaction["Horde Expedition"];
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 38458 }; --Darkspear Orb
		[02] = { itemID = 38461 }; --Warsong Shanker
		[03] = { itemID = 38454 }; --Warsong Punisher
		[04] = { itemID = 38452 }; --Bulwark of the Warchief
		[05] = { itemID = 38462 }; --Warsong Stormshield
		[06] = { itemID = 38456 }; --Sin'dorei Recurve Bow
		[07] = { itemID = 38460 }; --Charged Wand of the Cleft
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 44502 }; --Schematic: Mechano-hog
		[02] = { itemID = 44938 }; --Plans: Titanium Plating
		[03] = { itemID = 44702, desc = "=q7=Arcanum of the Savage Gladiator" };
	};
};

-----------------
--- Kirin Tor ---
-----------------

AtlasLoot_Data["KirinTor"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleFaction["Kirin Tor"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 43157 }; --Tabard of the Kirin Tor
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 44167 }; --Shroud of Dedicated Research
		[02] = { itemID = 44170 }; --Helm of the Majestic Stag
		[03] = { itemID = 44171 }; --Spaulders of Grounded Lightning
		[04] = { itemID = 44166 }; --Lightblade Rivener
		[05] = { itemID = 44141 }; --Arcanum of the Flame's Soul
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 44179 }; --Mind-Expanding Leggings
		[02] = { itemID = 44176 }; --Girdle of the Warrior Magi
		[03] = { itemID = 44173 }; --Flameheart Spell Scalpel
		[04] = { itemID = 44174 }; --Stave of Shrouded Mysteries
		[05] = { itemID = 44159, desc = "=q7=Arcanum of Burning Mysteries" };
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 44180 }; --Robes of Crackling Flame
		[02] = { itemID = 44181 }; --Ghostflicker Waistband
		[03] = { itemID = 44182 }; --Boots of Twinkling Stars
		[04] = { itemID = 44183 }; --Fireproven Gauntlets
		[05] = { itemID = 41718 }; --Design: Runed Scarlet Ruby
		[06] = { itemID = 42188 }; --Pattern: Sapphire Spellthread
	};
};

---------------------------------
--- Knights of the Ebon Blade ---
---------------------------------

AtlasLoot_Data["KnightsoftheEbonBlade"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleFaction["Knights of the Ebon Blade"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 41562 }; --Design: Deadly Huge Citrine
		[02] = { itemID = 43155 }; --Tabard of the Ebon Blade
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 44242 }; --Dark Soldier Cape
		[02] = { itemID = 44243 }; --Toxin-Tempered Sabatons
		[03] = { itemID = 44241 }; --Unholy Persuader
		[04] = { itemID = 44512 }; --Pattern: Nerubian Reinforced Quiver
		[05] = { itemID = 44138 }; --Arcanum of Toxic Warding
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 44256 }; --Sterile Flesh-Handling Gloves
		[02] = { itemID = 44258 }; --Wound-Binder's Wristguards
		[03] = { itemID = 44257 }; --Spaulders of the Black Arrow
		[04] = { itemID = 44250 }; --Reaper of Dark Souls
		[05] = { itemID = 44249 }; --Runeblade of Demonstrable Power
		[06] = { itemID = 41721 }; --Design: Wicked Monarch Topaz
		[07] = { itemID = 44149 }; --Arcanum of Torment
		[08] = { itemID = 42183 }; --Pattern: Abyssal Bag
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 44302 }; --Belt of Dark Mending
		[02] = { itemID = 44303 }; --Darkheart Chestguard
		[03] = { itemID = 44305 }; --Kilt of Dark Mercy
		[04] = { itemID = 44306 }; --Death-Inured Sabatons
		[05] = { itemID = 41725 }; --Design: Glowing Twilight Opal
	};
};

-------------------
--- The Kalu'ak ---
-------------------

AtlasLoot_Data["TheKaluak"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleFaction["The Kalu'ak"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 41568 }; --Design: Seer's Dark Jade
		[02] = { itemID = 44049 }; --Freshly-Speared Emperor Salmon
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 44061 }; --Pigment-Stained Robes
		[02] = { itemID = 44062 }; --Turtle-Minders Robe
		[03] = { itemID = 44054 }; --Whale-Skin Breastplate
		[04] = { itemID = 44055 }; --Whale-Skin Vest
		[05] = { itemID = 44059 }; --Cuttlefish Scale Breastplate
		[06] = { itemID = 44060 }; --Cuttlefish Tooth Ringmail
		[07] = { itemID = 44057 }; --Ivory-Reinforced Chestguard
		[08] = { itemID = 44058 }; --Whalebone Carapace
		[09] = { itemID = 44511 }; --Pattern: Dragonscale Ammo Pouch
		[10] = { itemID = 41574 }; --Design: Defender's Shadow Crystal
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 44051 }; --Traditional Flensing Knife
		[02] = { itemID = 44052 }; --Totemic Purification Rod
		[03] = { itemID = 44053 }; --Whale-Stick Harpoon
		[04] = { itemID = 44509 }; --Pattern: Trapper's Traveling Pack
		[05] = { itemID = 45774 }; --Pattern: Emerald Bag
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 44050 }; --Mastercraft Kalu'ak Fishing Pole
		[02] = { itemID = 44723 }; --Nurtured Penguin Egg
	};
};

-------------------
--- The Oracles ---
-------------------

AtlasLoot_Data["TheOracles"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleFaction["The Oracles"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 41567 }; --Design: Vivid Dark Jade
		[02] = { itemID = 44065 }; --Oracle Secret Solution
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 44071 }; --Slow-Roasted Eel
		[02] = { icon = "INV_Egg_02", name = AtlasLoot.Colors.WHITE.. AL["Cracked Egg"] };
		[03] = { itemID = 44707 }; --Reins of the AtlasLoot.Colors.GREEN Proto-Drake
		[04] = { itemID = 39898 }; --Cobra Hatchling
		[05] = { itemID = 44721 }; --Proto-Drake Whelp
		[06] = { itemID = 39896 }; --Tickbird Hatchling
		[07] = { itemID = 39899 }; --AtlasLoot.Colors.WHITE Tickbird Hatchling
		[08] = { itemID = 44722 }; --Aged Yolk
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 44104 }; --Fishy Cinch
		[02] = { itemID = 44106 }; --Glitterscale Wrap
		[03] = { itemID = 44110 }; --Sharkjaw Cap
		[04] = { itemID = 44109 }; --Toothslice Helm
		[05] = { itemID = 44112 }; --Glimmershell Shoulder Protectors
		[06] = { itemID = 44111 }; --Gold Star Spaulders
		[07] = { itemID = 44108 }; --Shinygem Rod
		[08] = { itemID = 41724 }; --Design: Sundered Forest Emerald
		[09] = { itemID = 39878 }; --Mysterious Egg
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 44074 }; --Oracle Talisman of Ablution

	};
};

-------------------------
--- The Sons of Hodir ---
-------------------------

AtlasLoot_Data["TheSonsofHodir"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleFaction["The Sons of Hodir"];
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 44190 }; --Spaulders of Frozen Knives
		[02] = { itemID = 44189 }; --Giant Ring Belt
		[03] = { itemID = 44510 }; --Pattern: Mammoth Mining Bag
		[04] = { itemID = 44137 }; --Arcanum of the Frosty Soul
		[05] = { itemID = 44131 }; --Lesser Inscription of the Axe
		[06] = { itemID = 44130 }; --Lesser Inscription of the Crag
		[07] = { itemID = 44132 }; --Lesser Inscription of the Pinnacle
		[08] = { itemID = 44129 }; --Lesser Inscription of the Storm 
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 43958 }; --Reins of the Ice Mammoth
		[02] = { itemID = 44080 }; --Reins of the Ice Mammoth
		[03] = { itemID = 44194 }; --Giant-Friend Kilt
		[04] = { itemID = 44195 }; --Spaulders of the Giant Lords
		[05] = { itemID = 44193 }; --Broken Stalactite
		[06] = { itemID = 44192 }; --Stalactite Chopper
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 43961 }; --Reins of the Grand Ice Mammoth
		[02] = { itemID = 44086 }; --Reins of the Grand Ice Mammoth
		[03] = { itemID = 44133 }; --Greater Inscription of the Axe
		[04] = { itemID = 44134 }; --Greater Inscription of the Crag
		[05] = { itemID = 44136 }; --Greater Inscription of the Pinnacle
		[06] = { itemID = 44135 }; --Greater Inscription of the Storm
		[07] = { itemID = 41720 }; --Design: Smooth Autumn's Glow
		[08] = { itemID = 42184 }; --Pattern: Glacial Bag
	};
};

-------------------------
--- Winterfin Retreat ---
-------------------------

AtlasLoot_Data["WinterfinRetreat"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleFaction["Winterfin Retreat"];
	{
		Name = BabbleFaction["Winterfin Retreat"];
		[01] = { itemID = 36784, "100 #winterfinclam#" }; --Siren's Tear
		[02] = { itemID = 37462, "30 #winterfinclam#" }; --Sea King's Crown
		[03] = { itemID = 37463, "30 #winterfinclam#" }; --Winterfin Patch of Honor
		[04] = { itemID = 37461, "50 #winterfinclam#" }; --Tidebreaker Trident
		[05] = { itemID = 36783, "30 #winterfinclam#" }; --Northsea Pearl
		[06] = { itemID = 37464, "5 #winterfinclam#" }; --Winterfin Horn of Distress
		[07] = { itemID = 37449, "5 #winterfinclam#" }; --Breath of Murloc
		[08] = { itemID = 38351, "2 #winterfinclam#" }; --Murliver Oil
		[09] = { itemID = 38350, "1 #winterfinclam#" }; --Winterfin \"Depth Charge\"
		[10] = { itemID = 34597 }; --Winterfin Clam
	};
};

---------------------------
--- The Wyrmrest Accord ---
---------------------------

AtlasLoot_Data["TheWyrmrestAccord"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleFaction["The Wyrmrest Accord"];
	{
		Name = BabbleFaction["Friendly"];
		[01] = { itemID = 43156 }; --Tabard of the Wyrmrest Accord
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 44188 }; --Cloak of Peaceful Resolutions
		[02] = { itemID = 44196 }; --Sash of the Wizened Wyrm
		[03] = { itemID = 44197 }; --Bracers of Accorded Courtesy
		[04] = { itemID = 44187 }; --Fang of Truth
		[05] = { itemID = 44140 }; --Arcanum of the Eclipsed Moon
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 44200 }; --Ancestral Sinew Wristguards
		[02] = { itemID = 44198 }; --Breastplate of the Solemn Council
		[03] = { itemID = 44201 }; --Sabatons of Draconic Vigor
		[04] = { itemID = 44199 }; --Gavel of the Brewing Storm
		[05] = { itemID = 44152 }; --Arcanum of Blissful Mending
		[06] = { itemID = 42185 }; --Pattern: Mysterious Bag
	};
	{
		Name = BabbleFaction["Exalted"];
		[01] = { itemID = 44202 }; --Sandals of Crimson Fury
		[02] = { itemID = 44203 }; --Dragonfriend Bracers
		[03] = { itemID = 44204 }; --Grips of Fierce Pronouncements
		[04] = { itemID = 44205 }; --Legplates of Bloody Reprisal
		[05] = { itemID = 43955 }; --Reins of the AtlasLoot.Colors.RED Drake
		[06] = { itemID = 41722 }; --Design: Glimmering Monarch Topaz
	};
};

-------------------------
--- The Ashen Verdict ---
-------------------------

AtlasLoot_Data["AshenVerdict"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = BabbleFaction["The Ashen Verdict"];
	{
		Name = "Rings";
		[01] = { itemID = 50375 }; --Ashen Band of Courage
		[02] = { itemID = 50388 }; --Ashen Band of Greater Courage
		[03] = { itemID = 50403 }; --Ashen Band of Unmatched Courage
		[04] = { itemID = 50404 }; --Ashen Band of Endless Courage
		[06] = { itemID = 50377 }; --Ashen Band of Destruction
		[07] = { itemID = 50384 }; --Ashen Band of Greater Destruction
		[08] = { itemID = 50397 }; --Ashen Band of Unmatched Destruction
		[09] = { itemID = 50398 }; --Ashen Band of Endless Destruction
		[11] = { itemID = 52569 }; --Ashen Band of Might
		[12] = { itemID = 52570 }; --Ashen Band of Greater Might
		[13] = { itemID = 52571 }; --Ashen Band of Unmatched Might
		[14] = { itemID = 52572 }; --Ashen Band of Endless Might
		[16] = { itemID = 50376 }; --Ashen Band of Vengeance
		[17] = { itemID = 50387 }; --Ashen Band of Greater Vengeance
		[18] = { itemID = 50401 }; --Ashen Band of Unmatched Vengeance
		[19] = { itemID = 50402 }; --Ashen Band of Endless Vengeance
		[21] = { itemID = 50378 }; --Ashen Band of Wisdom
		[22] = { itemID = 50386 }; --Ashen Band of Greater Wisdom
		[23] = { itemID = 50399 }; --Ashen Band of Unmatched Wisdom
		[24] = { itemID = 50400 }; --Ashen Band of Endless Wisdom
	};
	{
		Name = BabbleFaction["Honored"];
		[01] = { itemID = 49974 }; --Plans: Boots of Kingly Upheaval
		[02] = { itemID = 49972 }; --Plans: Hellfrozen Bonegrinders
		[03] = { itemID = 49970 }; --Plans: Protectors of Life
		[04] = { itemID = 49958 }; --Pattern: Blessed Cenarion Boots
		[05] = { itemID = 49963 }; --Pattern: Earthsoul Boots
		[06] = { itemID = 49961 }; --Pattern: Footpads of Impending Death
		[07] = { itemID = 49966 }; --Pattern: Rock-Steady Treads
		[08] = { itemID = 49954 }; --Pattern: Deathfrost Boots
		[09] = { itemID = 49956 }; --Pattern: Sandals of Consecration
		[10] = { itemID = 52023 }; --Plans: Evil Arrow
		[11] = { itemID = 52022 }; --Plans: Shatter Rounds
	};
	{
		Name = BabbleFaction["Revered"];
		[01] = { itemID = 49971 }; --Plans: Legplates of Painful Death
		[02] = { itemID = 49973 }; --Plans: Pillars of Might
		[03] = { itemID = 49969 }; --Plans: Puresteel Legplates
		[04] = { itemID = 49959 }; --Pattern: Bladeborn Leggings
		[05] = { itemID = 49965 }; --Pattern: Draconic Bonesplinter Legguards
		[06] = { itemID = 49957 }; --Pattern: Legwraps of Unleashed Nature
		[07] = { itemID = 49962 }; --Pattern: Lightning-Infused Leggings
		[08] = { itemID = 49953 }; --Pattern: Leggings of Woven Death
		[09] = { itemID = 49955 }; --Pattern: Lightweave Leggings
	};
};

-----------
--- PvP ---
-----------

------------------
--- Armor Sets ---
------------------

AtlasLoot_Data["ArenaDeathKnightWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"];
	{
		Name = AL["Page 1"];
		[01] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Gladiator's Desecration"] };
		[02] = { itemID = 51415, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Dreadplate Helm
		[03] = { itemID = 51418, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Dreadplate Shoulders
		[04] = { itemID = 51413, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Dreadplate Chestpiece
		[05] = { itemID = 51414, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Dreadplate Gauntlets
		[06] = { itemID = 51416, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Dreadplate Legguards
		[08] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Gladiator's Desecration"] };
		[09] = { itemID = 40830, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Dreadplate Helm
		[10] = { itemID = 40871, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Dreadplate Shoulders
		[11] = { itemID = 40791, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Dreadplate Chestpiece
		[12] = { itemID = 40811, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Dreadplate Gauntlets
		[13] = { itemID = 40851, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Dreadplate Legguards
		[16] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Gladiator's Desecration"] };
		[17] = { itemID = 40827, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Dreadplate Helm
		[18] = { itemID = 40868, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Dreadplate Shoulders
		[19] = { itemID = 40787, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Dreadplate Chestpiece
		[20] = { itemID = 40809, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Dreadplate Gauntlets
		[21] = { itemID = 40848, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Dreadplate Legguards
		[23] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Gladiator's Desecration"] };
		[24] = { itemID = 40824, "58 #eofconquest#" }; --Deadly Gladiator's Dreadplate Helm
		[25] = { itemID = 40863, "46 #eofconquest#" }; --Deadly Gladiator's Dreadplate Shoulders
		[26] = { itemID = 40784, "58 #eofconquest#" }; --Deadly Gladiator's Dreadplate Chestpiece
		[27] = { itemID = 40806, "46 #eofconquest#" }; --Deadly Gladiator's Dreadplate Gauntlets
		[28] = { itemID = 40845, "58 #eofconquest#" }; --Deadly Gladiator's Dreadplate Legguards
	};
	{
		Name = AL["Page 2"];
		[01] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Gladiator's Desecration"] };
		[02] = { itemID = 40820, "45 #eofvalor#" }; --Hateful Gladiator's Dreadplate Helm
		[03] = { itemID = 40860, "30 #eofvalor#" }; --Hateful Gladiator's Dreadplate Shoulders
		[04] = { itemID = 40781, "45 #eofvalor#" }; --Hateful Gladiator's Dreadplate Chestpiece
		[05] = { itemID = 40803, "30 #eofvalor#" }; --Hateful Gladiator's Dreadplate Gauntlets
		[06] = { itemID = 40841, "45 #eofvalor#" }; --Hateful Gladiator's Dreadplate Legguards
		[08] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Gladiator's Desecration"] };
		[09] = { itemID = 40817, "45 #eofheroism#" }; --Savage Gladiator's Dreadplate Helm
		[10] = { itemID = 40857, "30 #eofheroism#" }; --Savage Gladiator's Dreadplate Shoulders
		[11] = { itemID = 40779, "45 #eofheroism#" }; --Savage Gladiator's Dreadplate Chestpiece
		[12] = { itemID = 40799, "30 #eofheroism#" }; --Savage Gladiator's Dreadplate Gauntlets
		[13] = { itemID = 40837, "45 #eofheroism#" }; --Savage Gladiator's Dreadplate Legguards
	};
};
AtlasLoot_Data["ArenaDruidWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = LOCALIZED_CLASS_NAMES_MALE["DRUID"];
	{
		Name = AL["Balance"] .. " Page 1";
		[01] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Gladiator's Wildhide"] };
		[02] = { itemID = 51435, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Wyrmhide Helm
		[03] = { itemID = 51438, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Wyrmhide Spaulders
		[04] = { itemID = 51433, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Wyrmhide Robes
		[05] = { itemID = 51434, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Wyrmhide Gloves
		[06] = { itemID = 51436, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Wyrmhide Legguards
		[08] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Gladiator's Wildhide"] };
		[09] = { itemID = 41328, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Wyrmhide Helm
		[10] = { itemID = 41282, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Wyrmhide Spaulders
		[11] = { itemID = 41317, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Wyrmhide Robes
		[12] = { itemID = 41294, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Wyrmhide Gloves
		[13] = { itemID = 41305, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Wyrmhide Legguards
		[16] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Gladiator's Wildhide"] };
		[17] = { itemID = 41327, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Wyrmhide Helm
		[18] = { itemID = 41281, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Wyrmhide Spaulders
		[19] = { itemID = 41316, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Wyrmhide Robes
		[20] = { itemID = 41293, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Wyrmhide Gloves
		[21] = { itemID = 41304, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Wyrmhide Legguards
		[23] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Gladiator's Wildhide"] };
		[24] = { itemID = 41326, "58 #eofconquest#" }; --Deadly Gladiator's Wyrmhide Helm
		[25] = { itemID = 41280, "46 #eofconquest#" }; --Deadly Gladiator's Wyrmhide Spaulders
		[26] = { itemID = 41315, "58 #eofconquest#" }; --Deadly Gladiator's Wyrmhide Robes
		[27] = { itemID = 41292, "46 #eofconquest#" }; --Deadly Gladiator's Wyrmhide Gloves
		[28] = { itemID = 41303, "58 #eofconquest#" }; --Deadly Gladiator's Wyrmhide Legguards
	};
	{
		Name = AL["Balance"] .. " Page 2";
		[01] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Gladiator's Wildhide"] };
		[02] = { itemID = 41325, "45 #eofvalor#" }; --Hateful Gladiator's Wyrmhide Helm
		[03] = { itemID = 41279, "30 #eofvalor#" }; --Hateful Gladiator's Wyrmhide Spaulders
		[04] = { itemID = 41314, "45 #eofvalor#" }; --Hateful Gladiator's Wyrmhide Robes
		[05] = { itemID = 41291, "30 #eofvalor#" }; --Hateful Gladiator's Wyrmhide Gloves
		[06] = { itemID = 41302, "45 #eofvalor#" }; --Hateful Gladiator's Wyrmhide Legguards
		[08] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Gladiator's Wildhide"] };
		[09] = { itemID = 41324, "45 #eofheroism#" }; --Savage Gladiator's Wyrmhide Helm
		[10] = { itemID = 41278, "30 #eofheroism#" }; --Savage Gladiator's Wyrmhide Spaulders
		[11] = { itemID = 41313, "45 #eofheroism#" }; --Savage Gladiator's Wyrmhide Robes
		[12] = { itemID = 41290, "30 #eofheroism#" }; --Savage Gladiator's Wyrmhide Gloves
		[13] = { itemID = 41301, "45 #eofheroism#" }; --Savage Gladiator's Wyrmhide Legguards
	};
	{
		Name = AL["Feral"] .. " Page 1";
		[01] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Gladiator's Sanctuary"] };
		[02] = { itemID = 51427, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Dragonhide Helm
		[03] = { itemID = 51430, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Dragonhide Spaulders
		[04] = { itemID = 51425, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Dragonhide Robes
		[05] = { itemID = 51426, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Dragonhide Gloves
		[06] = { itemID = 51428, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Dragonhide Legguards
		[08] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Gladiator's Sanctuary"] };
		[09] = { itemID = 41679, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Dragonhide Helm
		[10] = { itemID = 41716, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Dragonhide Spaulders
		[11] = { itemID = 41662, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Dragonhide Robes
		[12] = { itemID = 41774, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Dragonhide Gloves
		[13] = { itemID = 41668, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Dragonhide Legguards
		[16] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Gladiator's Sanctuary"] };
		[17] = { itemID = 41678, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Dragonhide Helm
		[18] = { itemID = 41715, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Dragonhide Spaulders
		[19] = { itemID = 41661, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Dragonhide Robes
		[20] = { itemID = 41773, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Dragonhide Gloves
		[21] = { itemID = 41667, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Dragonhide Legguards
		[23] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Gladiator's Sanctuary"] };
		[24] = { itemID = 41677, "58 #eofconquest#" }; --Deadly Gladiator's Dragonhide Helm
		[25] = { itemID = 41714, "46 #eofconquest#" }; --Deadly Gladiator's Dragonhide Spaulders
		[26] = { itemID = 41660, "58 #eofconquest#" }; --Deadly Gladiator's Dragonhide Robes
		[27] = { itemID = 41772, "46 #eofconquest#" }; --Deadly Gladiator's Dragonhide Gloves
		[28] = { itemID = 41666, "58 #eofconquest#" }; --Deadly Gladiator's Dragonhide Legguards
	};
	{
		Name = AL["Feral"] .. " Page 2";
		[01] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Gladiator's Sanctuary"] };
		[02] = { itemID = 41676, "45 #eofvalor#" }; --Hateful Gladiator's Dragonhide Helm
		[03] = { itemID = 41713, "30 #eofvalor#" }; --Hateful Gladiator's Dragonhide Spaulders
		[04] = { itemID = 41659, "45 #eofvalor#" }; --Hateful Gladiator's Dragonhide Robes
		[05] = { itemID = 41771, "30 #eofvalor#" }; --Hateful Gladiator's Dragonhide Gloves
		[06] = { itemID = 41665, "45 #eofvalor#" }; --Hateful Gladiator's Dragonhide Legguards
		[08] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Gladiator's Sanctuary"] };
		[09] = { itemID = 41675, "45 #eofheroism#" }; --Savage Gladiator's Dragonhide Helm
		[10] = { itemID = 41712, "30 #eofheroism#" }; --Savage Gladiator's Dragonhide Spaulders
		[11] = { itemID = 41658, "45 #eofheroism#" }; --Savage Gladiator's Dragonhide Robes
		[12] = { itemID = 41770, "30 #eofheroism#" }; --Savage Gladiator's Dragonhide Gloves
		[13] = { itemID = 41664, "45 #eofheroism#" }; --Savage Gladiator's Dragonhide Legguards
	};
	{
		Name = AL["Restoration"] .. " Page 1";
		[01] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Gladiator's Refuge"] };
		[02] = { itemID = 51421, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Kodohide Helm
		[03] = { itemID = 51424, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Kodohide Spaulders
		[04] = { itemID = 51419, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Kodohide Robes
		[05] = { itemID = 51420, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Kodohide Gloves
		[06] = { itemID = 51422, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Kodohide Legguards
		[08] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Gladiator's Refuge"] };
		[09] = { itemID = 41322, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Kodohide Helm
		[10] = { itemID = 41276, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Kodohide Spaulders
		[11] = { itemID = 41311, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Kodohide Robes
		[12] = { itemID = 41288, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Kodohide Gloves
		[13] = { itemID = 41299, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Kodohide Legguards
		[16] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Gladiator's Refuge"] };
		[17] = { itemID = 41321, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Kodohide Helm
		[18] = { itemID = 41275, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Kodohide Spaulders
		[19] = { itemID = 41310, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Kodohide Robes
		[20] = { itemID = 41287, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Kodohide Gloves
		[21] = { itemID = 41298, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Kodohide Legguards
		[23] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Gladiator's Refuge"] };
		[24] = { itemID = 41320, "58 #eofconquest#" }; --Deadly Gladiator's Kodohide Helm
		[25] = { itemID = 41274, "46 #eofconquest#" }; --Deadly Gladiator's Kodohide Spaulders
		[26] = { itemID = 41309, "58 #eofconquest#" }; --Deadly Gladiator's Kodohide Robes
		[27] = { itemID = 41286, "46 #eofconquest#" }; --Deadly Gladiator's Kodohide Gloves
		[28] = { itemID = 41297, "58 #eofconquest#" }; --Deadly Gladiator's Kodohide Legguards
	};
	{
		Name = AL["Restoration"] .. " Page 2";
		[01] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Gladiator's Refuge"] };
		[02] = { itemID = 41319, "45 #eofvalor#" }; --Hateful Gladiator's Kodohide Helm
		[03] = { itemID = 41273, "30 #eofvalor#" }; --Hateful Gladiator's Kodohide Spaulders
		[04] = { itemID = 41308, "45 #eofvalor#" }; --Hateful Gladiator's Kodohide Robes
		[05] = { itemID = 41284, "30 #eofvalor#" }; --Hateful Gladiator's Kodohide Gloves
		[06] = { itemID = 41296, "45 #eofvalor#" }; --Hateful Gladiator's Kodohide Legguards
		[08] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Gladiator's Refuge"] };
		[09] = { itemID = 41269, "45 #eofheroism#" }; --Savage Gladiator's Kodohide Helm
		[10] = { itemID = 41271, "30 #eofheroism#" }; --Savage Gladiator's Kodohide Spaulders
		[11] = { itemID = 41272, "45 #eofheroism#" }; --Savage Gladiator's Kodohide Robes
		[12] = { itemID = 41268, "30 #eofheroism#" }; --Savage Gladiator's Kodohide Gloves
		[13] = { itemID = 41270, "45 #eofheroism#" }; --Savage Gladiator's Kodohide Legguards
	};
};

AtlasLoot_Data["ArenaHunterWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
	{
		Name = AL["Page 1"];
		[01] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Gladiator's Pursuit"] };
		[02] = { itemID = 51460, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Chain Helm
		[03] = { itemID = 51462, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Chain Spaulders
		[04] = { itemID = 51458, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Chain Armor
		[05] = { itemID = 51459, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Chain Gauntlets
		[06] = { itemID = 51461, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Chain Leggings
		[08] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Gladiator's Pursuit"] };
		[09] = { itemID = 41158, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Chain Helm
		[10] = { itemID = 41218, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Chain Spaulders
		[11] = { itemID = 41088, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Chain Armor
		[12] = { itemID = 41144, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Chain Gauntlets
		[13] = { itemID = 41206, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Chain Leggings
		[16] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Gladiator's Pursuit"] };
		[17] = { itemID = 41157, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Chain Helm
		[18] = { itemID = 41217, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Chain Spaulders
		[19] = { itemID = 41087, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Chain Armor
		[20] = { itemID = 41143, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Chain Gauntlets
		[21] = { itemID = 41205, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Chain Leggings
		[23] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Gladiator's Pursuit"] };
		[24] = { itemID = 41156, "58 #eofconquest#" }; --Deadly Gladiator's Chain Helm
		[25] = { itemID = 41216, "46 #eofconquest#" }; --Deadly Gladiator's Chain Spaulders
		[26] = { itemID = 41086, "58 #eofconquest#" }; --Deadly Gladiator's Chain Armor
		[27] = { itemID = 41142, "46 #eofconquest#" }; --Deadly Gladiator's Chain Gauntlets
		[28] = { itemID = 41204, "58 #eofconquest#" }; --Deadly Gladiator's Chain Leggings
	};
	{
		Name = AL["Page 2"];
		[01] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Gladiator's Pursuit"] };
		[02] = { itemID = 41155, "45 #eofvalor#" }; --Hateful Gladiator's Chain Helm
		[03] = { itemID = 41215, "30 #eofvalor#" }; --Hateful Gladiator's Chain Spaulders
		[04] = { itemID = 41085, "45 #eofvalor#" }; --Hateful Gladiator's Chain Armor
		[05] = { itemID = 41141, "30 #eofvalor#" }; --Hateful Gladiator's Chain Gauntlets
		[06] = { itemID = 41203, "45 #eofvalor#" }; --Hateful Gladiator's Chain Leggings
		[08] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Gladiator's Pursuit"] };
		[09] = { itemID = 41154, "45 #eofheroism#" }; --Savage Gladiator's Chain Helm
		[10] = { itemID = 41214, "30 #eofheroism#" }; --Savage Gladiator's Chain Spaulders
		[11] = { itemID = 41084, "45 #eofheroism#" }; --Savage Gladiator's Chain Armor
		[12] = { itemID = 41140, "30 #eofheroism#" }; --Savage Gladiator's Chain Gauntlets
		[13] = { itemID = 41202, "45 #eofheroism#" }; --Savage Gladiator's Chain Leggings
	};
};

AtlasLoot_Data["ArenaMageWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
	{
		Name = AL["Page 1"];
		[01] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Gladiator's Regalia"] };
		[02] = { itemID = 51465, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Silk Cowl
		[03] = { itemID = 51467, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Silk Amice
		[04] = { itemID = 51463, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Silk Raiment
		[05] = { itemID = 51464, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Silk Handguards
		[06] = { itemID = 51466, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Silk Trousers
		[08] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Gladiator's Regalia"] };
		[09] = { itemID = 41947, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Silk Cowl
		[10] = { itemID = 41966, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Silk Amice
		[11] = { itemID = 41954, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Silk Raiment
		[12] = { itemID = 41972, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Silk Handguards
		[13] = { itemID = 41960, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Silk Trousers
		[16] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Gladiator's Regalia"] };
		[17] = { itemID = 41946, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Silk Cowl
		[18] = { itemID = 41965, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Silk Amice
		[19] = { itemID = 41953, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Silk Raiment
		[20] = { itemID = 41971, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Silk Handguards
		[21] = { itemID = 41959, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Silk Trousers
		[23] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Gladiator's Regalia"] };
		[24] = { itemID = 41945, "58 #eofconquest#" }; --Deadly Gladiator's Silk Cowl
		[25] = { itemID = 41964, "46 #eofconquest#" }; --Deadly Gladiator's Silk Amice
		[26] = { itemID = 41951, "58 #eofconquest#" }; --Deadly Gladiator's Silk Raiment
		[27] = { itemID = 41970, "46 #eofconquest#" }; --Deadly Gladiator's Silk Handguards
		[28] = { itemID = 41958, "58 #eofconquest#" }; --Deadly Gladiator's Silk Trousers
	};
	{
		Name = AL["Page 2"];
		[01] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Gladiator's Regalia"] };
		[02] = { itemID = 41944, "45 #eofvalor#" }; --Hateful Gladiator's Silk Cowl
		[03] = { itemID = 41963, "30 #eofvalor#" }; --Hateful Gladiator's Silk Amice
		[04] = { itemID = 41950, "45 #eofvalor#" }; --Hateful Gladiator's Silk Raiment
		[05] = { itemID = 41969, "30 #eofvalor#" }; --Hateful Gladiator's Silk Handguards
		[06] = { itemID = 41957, "45 #eofvalor#" }; --Hateful Gladiator's Silk Trousers
		[08] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Gladiator's Regalia"] };
		[09] = { itemID = 41943, "45 #eofheroism#" }; --Savage Gladiator's Silk Cowl
		[10] = { itemID = 41962, "30 #eofheroism#" }; --Savage Gladiator's Silk Amice
		[11] = { itemID = 41949, "45 #eofheroism#" }; --Savage Gladiator's Silk Raiment
		[12] = { itemID = 41968, "30 #eofheroism#" }; --Savage Gladiator's Silk Handguards
		[13] = { itemID = 41956, "45 #eofheroism#" }; --Savage Gladiator's Silk
	};
};

AtlasLoot_Data["ArenaPaladinWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"];
	{
		Name = AL["Retribution"] .. AL["Page 1"];
		[01] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Gladiator's Vindication"] };
		[02] = { itemID = 51476, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Scaled Helm
		[03] = { itemID = 51479, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Scaled Shoulders
		[04] = { itemID = 51474, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Scaled Chestpiece
		[05] = { itemID = 51475, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Scaled Gauntlets
		[06] = { itemID = 51477, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Scaled Legguards
		[08] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Gladiator's Vindication"] };
		[09] = { itemID = 40831, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Scaled Helm
		[10] = { itemID = 40872, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Scaled Shoulders
		[11] = { itemID = 40792, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Scaled Chestpiece
		[12] = { itemID = 40812, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Scaled Gauntlets
		[13] = { itemID = 40852, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Scaled Legguards
		[16] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Gladiator's Vindication"] };
		[17] = { itemID = 40828, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Scaled Helm
		[18] = { itemID = 40869, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Scaled Shoulders
		[19] = { itemID = 40788, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Scaled Chestpiece
		[20] = { itemID = 40808, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Scaled Gauntlets
		[21] = { itemID = 40849, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Scaled Legguards
		[23] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Gladiator's Vindication"] };
		[24] = { itemID = 40825, "58 #eofconquest#" }; --Deadly Gladiator's Scaled Helm
		[25] = { itemID = 40864, "46 #eofconquest#" }; --Deadly Gladiator's Scaled Shoulders
		[26] = { itemID = 40785, "58 #eofconquest#" }; --Deadly Gladiator's Scaled Chestpiece
		[27] = { itemID = 40805, "46 #eofconquest#" }; --Deadly Gladiator's Scaled Gauntlets
		[28] = { itemID = 40846, "58 #eofconquest#" }; --Deadly Gladiator's Scaled Legguards
	};
	{
		Name = AL["Retribution"] .. AL["Page 2"];
		[01] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Gladiator's Vindication"] };
		[02] = { itemID = 40821, "45 #eofvalor#" }; --Hateful Gladiator's Scaled Helm
		[03] = { itemID = 40861, "30 #eofvalor#" }; --Hateful Gladiator's Scaled Shoulders
		[04] = { itemID = 40782, "45 #eofvalor#" }; --Hateful Gladiator's Scaled Chestpiece
		[05] = { itemID = 40802, "30 #eofvalor#" }; --Hateful Gladiator's Scaled Gauntlets
		[06] = { itemID = 40842, "45 #eofvalor#" }; --Hateful Gladiator's Scaled Legguards
		[08] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Gladiator's Vindication"] };
		[09] = { itemID = 40818, "45 #eofheroism#" }; --Savage Gladiator's Scaled Helm
		[10] = { itemID = 40858, "30 #eofheroism#" }; --Savage Gladiator's Scaled Shoulders
		[11] = { itemID = 40780, "45 #eofheroism#" }; --Savage Gladiator's Scaled Chestpiece
		[12] = { itemID = 40798, "30 #eofheroism#" }; --Savage Gladiator's Scaled Gauntlets
		[13] = { itemID = 40838, "45 #eofheroism#" }; --Savage Gladiator's Scaled Legguards
	};
	{
		Name = AL["Holy"] .. AL["Page 1"];
		[01] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Gladiator's Redemption"] };
		[02] = { itemID = 51470, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Ornamented Headcover
		[03] = { itemID = 51473, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Ornamented Spaulders
		[04] = { itemID = 51468, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Ornamented Chestguard
		[05] = { itemID = 51469, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Ornamented Gloves
		[06] = { itemID = 51471, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Ornamented Legplates
		[08] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Gladiator's Redemption"] };
		[09] = { itemID = 40934, --Relentless Gladiator's Ornamented Headcover
			"13200 #faction# 770 #arena# / 95 #eoffrost#" };
		[10] = { itemID = 40964, --Relentless Gladiator's Ornamented Spaulders
			"10550 #faction# 600 #arena# / 60 #eoffrost#" };
		[11] = { itemID = 40910, --Relentless Gladiator's Ornamented Chestguard
			"13200 #faction# 770 #arena# / 95 #eoffrost#" };
		[12] = { itemID = 40928, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Ornamented Gloves
		[13] = { itemID = 40940, --Relentless Gladiator's Ornamented Legplates
			"13200 #faction# 770 #arena# / 95 #eoffrost#" };
		[16] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Gladiator's Redemption"] };
		[17] = { itemID = 40933, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Ornamented Headcover
		[18] = { itemID = 40963, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Ornamented Spaulders
		[19] = { itemID = 40907, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Ornamented Chestguard
		[20] = { itemID = 40927, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Ornamented Gloves
		[21] = { itemID = 40939, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Ornamented Legplates
		[23] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Gladiator's Redemption"] };
		[24] = { itemID = 40932, "58 #eofconquest#" }; --Deadly Gladiator's Ornamented Headcover
		[25] = { itemID = 40962, "46 #eofconquest#" }; --Deadly Gladiator's Ornamented Spaulders
		[26] = { itemID = 40905, "58 #eofconquest#" }; --Deadly Gladiator's Ornamented Chestguard
		[27] = { itemID = 40926, "46 #eofconquest#" }; --Deadly Gladiator's Ornamented Gloves
		[28] = { itemID = 40938, "58 #eofconquest#" }; --Deadly Gladiator's Ornamented Legplates
	};
	{
		Name = AL["Holy"] .. AL["Page 2"];
		[01] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Gladiator's Redemption"] };
		[02] = { itemID = 40931, "45 #eofvalor#" }; --Hateful Gladiator's Ornamented Headcover
		[03] = { itemID = 40961, "30 #eofvalor#" }; --Hateful Gladiator's Ornamented Spaulders
		[04] = { itemID = 40904, "45 #eofvalor#" }; --Hateful Gladiator's Ornamented Gloves
		[05] = { itemID = 40925, "30 #eofvalor#" }; --Hateful Gladiator's Ornamented Chestguard
		[06] = { itemID = 40937, "45 #eofvalor#" }; --Hateful Gladiator's Ornamented Legplates
		[08] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Gladiator's Redemption"] };
		[09] = { itemID = 40930, "45 #eofheroism#" }; --Savage Gladiator's Ornamented Headcover
		[10] = { itemID = 40960, "30 #eofheroism#" }; --Savage Gladiator's Ornamented Spaulders
		[11] = { itemID = 40898, "45 #eofheroism#" }; --Savage Gladiator's Ornamented Chestguard
		[12] = { itemID = 40918, "30 #eofheroism#" }; --Savage Gladiator's Ornamented Gloves
		[13] = { itemID = 40936, "45 #eofheroism#" }; --Savage Gladiator's Ornamented Legplates
	};
};

AtlasLoot_Data["ArenaPriestWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"];
	{
		Name = AL["Shadow"] .. AL["Page 1"];
		[01] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Gladiator's Raiment"] };
		[02] = { itemID = 51489, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Satin Hood
		[03] = { itemID = 51491, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Satin Mantle
		[04] = { itemID = 51487, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Satin Robe
		[05] = { itemID = 51488, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Satin Gloves
		[06] = { itemID = 51490, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Satin Leggings
		[08] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Gladiator's Raiment"] };
		[09] = { itemID = 41916, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Satin Hood
		[10] = { itemID = 41935, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Satin Mantle
		[11] = { itemID = 41922, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Satin Robe
		[12] = { itemID = 41941, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Satin Gloves
		[13] = { itemID = 41928, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Satin Leggings
		[16] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Gladiator's Raiment"] };
		[17] = { itemID = 41915, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Satin Hood
		[18] = { itemID = 41934, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Satin Mantle
		[19] = { itemID = 41921, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Satin Robe
		[20] = { itemID = 41940, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Satin Gloves
		[21] = { itemID = 41927, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Satin Leggings
		[23] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Gladiator's Raiment"] };
		[24] = { itemID = 41914, "58 #eofconquest#" }; --Deadly Gladiator's Satin Hood
		[25] = { itemID = 41933, "46 #eofconquest#" }; --Deadly Gladiator's Satin Mantle
		[26] = { itemID = 41920, "58 #eofconquest#" }; --Deadly Gladiator's Satin Robe
		[27] = { itemID = 41939, "46 #eofconquest#" }; --Deadly Gladiator's Satin Gloves
		[28] = { itemID = 41926, "58 #eofconquest#" }; --Deadly Gladiator's Satin Leggings
	};
	{
		Name = AL["Shadow"] .. AL["Page 2"];
		[01] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Gladiator's Raiment"] };
		[02] = { itemID = 41913, "45 #eofvalor#" }; --Hateful Gladiator's Satin Hood
		[03] = { itemID = 41931, "30 #eofvalor#" }; --Hateful Gladiator's Satin Mantle
		[04] = { itemID = 41919, "45 #eofvalor#" }; --Hateful Gladiator's Satin Robe
		[05] = { itemID = 41938, "30 #eofvalor#" }; --Hateful Gladiator's Satin Gloves
		[06] = { itemID = 41925, "45 #eofvalor#" }; --Hateful Gladiator's Satin Leggings
		[08] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Gladiator's Raiment"] };
		[09] = { itemID = 41912, "45 #eofheroism#" }; --Savage Gladiator's Satin Hood
		[10] = { itemID = 41930, "30 #eofheroism#" }; --Savage Gladiator's Satin Mantle
		[11] = { itemID = 41918, "45 #eofheroism#" }; --Savage Gladiator's Satin Robe
		[12] = { itemID = 41937, "30 #eofheroism#" }; --Savage Gladiator's Satin Gloves
		[13] = { itemID = 41924, "45 #eofheroism#" }; --Savage Gladiator's Satin Leggings
	};
	{
		Name = AL["Holy"] .. AL["Page 1"];
		[01] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Gladiator's Investiture"] };
		[02] = { itemID = 51484, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Mooncloth Hood
		[03] = { itemID = 51486, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Mooncloth Mantle
		[04] = { itemID = 51482, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Mooncloth Robe
		[05] = { itemID = 51483, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Mooncloth Gloves
		[06] = { itemID = 51485, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Mooncloth Leggings
		[08] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Gladiator's Investiture"] };
		[09] = { itemID = 41855, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Mooncloth Hood
		[10] = { itemID = 41870, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Mooncloth Mantle
		[11] = { itemID = 41860, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Mooncloth Robe
		[12] = { itemID = 41875, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Mooncloth Gloves
		[13] = { itemID = 41865, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Mooncloth Leggings
		[16] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Gladiator's Investiture"] };
		[17] = { itemID = 41854, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Mooncloth Hood
		[18] = { itemID = 41869, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Mooncloth Mantle
		[19] = { itemID = 41859, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Mooncloth Robe
		[20] = { itemID = 41874, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Mooncloth Gloves
		[21] = { itemID = 41864, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Mooncloth Leggings
		[23] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Gladiator's Investiture"] };
		[24] = { itemID = 41853, "58 #eofconquest#" }; --Deadly Gladiator's Mooncloth Hood
		[25] = { itemID = 41868, "46 #eofconquest#" }; --Deadly Gladiator's Mooncloth Mantle
		[26] = { itemID = 41858, "58 #eofconquest#" }; --Deadly Gladiator's Mooncloth Robe
		[27] = { itemID = 41873, "46 #eofconquest#" }; --Deadly Gladiator's Mooncloth Gloves
		[28] = { itemID = 41863, "58 #eofconquest#" }; --Deadly Gladiator's Mooncloth Leggings
	};
	{
		Name = AL["Holy"] .. AL["Page 2"];
		[01] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Gladiator's Investiture"] };
		[02] = { itemID = 41852, "45 #eofvalor#" }; --Hateful Gladiator's Mooncloth Hood
		[03] = { itemID = 41867, "30 #eofvalor#" }; --Hateful Gladiator's Mooncloth Mantle
		[04] = { itemID = 41857, "45 #eofvalor#" }; --Hateful Gladiator's Mooncloth Robe
		[05] = { itemID = 41872, "30 #eofvalor#" }; --Hateful Gladiator's Mooncloth Gloves
		[06] = { itemID = 41862, "45 #eofvalor#" }; --Hateful Gladiator's Mooncloth Leggings
		[08] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Gladiator's Investiture"] };
		[09] = { itemID = 41848, "45 #eofheroism#" }; --Savage Gladiator's Mooncloth Hood
		[10] = { itemID = 41850, "30 #eofheroism#" }; --Savage Gladiator's Mooncloth Mantle
		[11] = { itemID = 41851, "45 #eofheroism#" }; --Savage Gladiator's Mooncloth Robe
		[12] = { itemID = 41847, "30 #eofheroism#" }; --Savage Gladiator's Mooncloth Gloves
		[13] = { itemID = 41849, "45 #eofheroism#" }; --Savage Gladiator's Mooncloth Leggings
	};
};


AtlasLoot_Data["ArenaRogueWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
	{
		Name = AL["Page 1"];
		[01] = { icon = "Ability_BackStab", name = "=q6="..AL["Gladiator's Vestments"] };
		[02] = { itemID = 51494, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Leather Helm
		[03] = { itemID = 51496, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Leather Spaulders
		[04] = { itemID = 51492, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Leather Tunic
		[05] = { itemID = 51493, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Leather Gloves
		[06] = { itemID = 51495, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Leather Legguards
		[08] = { icon = "Ability_BackStab", name = "=q6="..AL["Gladiator's Vestments"] };
		[09] = { itemID = 41673, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Leather Helm
		[10] = { itemID = 41684, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Leather Spaulders
		[11] = { itemID = 41651, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Leather Tunic
		[12] = { itemID = 41768, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Leather Gloves
		[13] = { itemID = 41656, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Leather Legguards
		[16] = { icon = "Ability_BackStab", name = "=q6="..AL["Gladiator's Vestments"] };
		[17] = { itemID = 41672, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Leather Helm
		[18] = { itemID = 41683, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Leather Spaulders
		[19] = { itemID = 41650, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Leather Tunic
		[20] = { itemID = 41767, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Leather Gloves
		[21] = { itemID = 41655, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Leather Legguards
		[23] = { icon = "Ability_BackStab", name = "=q6="..AL["Gladiator's Vestments"] };
		[24] = { itemID = 41671, "58 #eofconquest#" }; --Deadly Gladiator's Leather Helm
		[25] = { itemID = 41682, "46 #eofconquest#" }; --Deadly Gladiator's Leather Spaulders
		[26] = { itemID = 41649, "58 #eofconquest#" }; --Deadly Gladiator's Leather Tunic
		[27] = { itemID = 41766, "46 #eofconquest#" }; --Deadly Gladiator's Leather Gloves
		[28] = { itemID = 41654, "58 #eofconquest#" }; --Deadly Gladiator's Leather Legguards
	};
	{
		Name = AL["Page 2"];
		[01] = { icon = "Ability_BackStab", name = "=q6="..AL["Gladiator's Vestments"] };
		[02] = { itemID = 41670, "45 #eofvalor#" }; --Hateful Gladiator's Leather Helm
		[03] = { itemID = 41681, "30 #eofvalor#" }; --Hateful Gladiator's Leather Spaulders
		[04] = { itemID = 41648, "45 #eofvalor#" }; --Hateful Gladiator's Leather Tunic
		[05] = { itemID = 41765, "30 #eofvalor#" }; --Hateful Gladiator's Leather Gloves
		[06] = { itemID = 41653, "45 #eofvalor#" }; --Hateful Gladiator's Leather Legguards
		[08] = { icon = "Ability_BackStab", name = "=q6="..AL["Gladiator's Vestments"] };
		[09] = { itemID = 41644, "45 #eofheroism#" }; --Savage Gladiator's Leather Helm
		[10] = { itemID = 41646, "30 #eofheroism#" }; --Savage Gladiator's Leather Spaulders
		[11] = { itemID = 41647, "45 #eofheroism#" }; --Savage Gladiator's Leather Tunic
		[12] = { itemID = 41643, "30 #eofheroism#" }; --Savage Gladiator's Leather Gloves
		[13] = { itemID = 41645, "45 #eofheroism#" }; --Savage Gladiator's Leather Legguards
	};
};

AtlasLoot_Data["ArenaShamanWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"];
	{
		Name = AL["Elemental"] .. AL["Page 1"];
		[01] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Gladiator's Thunderfist"] };
		[02] = { itemID = 51511, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Mail Helm
		[03] = { itemID = 51514, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Mail Spaulders
		[04] = { itemID = 51509, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Mail Armor
		[05] = { itemID = 51510, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Mail Gauntlets
		[06] = { itemID = 51512, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Mail Leggings
		[08] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Gladiator's Thunderfist"] };
		[09] = { itemID = 41020, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Mail Helm
		[10] = { itemID = 41045, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Mail Spaulders
		[11] = { itemID = 40995, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Mail Armor
		[12] = { itemID = 41008, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Mail Gauntlets
		[13] = { itemID = 41034, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Mail Leggings
		[16] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Gladiator's Thunderfist"] };
		[17] = { itemID = 41019, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Mail Helm
		[18] = { itemID = 41044, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Mail Spaulders
		[19] = { itemID = 40993, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Mail Armor
		[20] = { itemID = 41007, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Mail Gauntlets
		[21] = { itemID = 41033, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Mail Leggings
		[23] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Gladiator's Thunderfist"] };
		[24] = { itemID = 41018, "58 #eofconquest#" }; --Deadly Gladiator's Mail Helm
		[25] = { itemID = 41043, "46 #eofconquest#" }; --Deadly Gladiator's Mail Spaulders
		[26] = { itemID = 40991, "58 #eofconquest#" }; --Deadly Gladiator's Mail Armor
		[27] = { itemID = 41006, "46 #eofconquest#" }; --Deadly Gladiator's Mail Gauntlets
		[28] = { itemID = 41032, "58 #eofconquest#" }; --Deadly Gladiator's Mail Leggings
	};
	{
		Name = AL["Elemental"] .. AL["Page 2"];
		[01] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Gladiator's Thunderfist"] };
		[02] = { itemID = 41017, "45 #eofvalor#" }; --Hateful Gladiator's Mail Helm
		[03] = { itemID = 41042, "30 #eofvalor#" }; --Hateful Gladiator's Mail Spaulders
		[04] = { itemID = 40989, "45 #eofvalor#" }; --Hateful Gladiator's Mail Armor
		[05] = { itemID = 41005, "30 #eofvalor#" }; --Hateful Gladiator's Mail Gauntlets
		[06] = { itemID = 41031, "45 #eofvalor#" }; --Hateful Gladiator's Mail Leggings
		[08] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Gladiator's Thunderfist"] };
		[09] = { itemID = 41016, "45 #eofheroism#" }; --Savage Gladiator's Mail Helm
		[10] = { itemID = 41041, "30 #eofheroism#" }; --Savage Gladiator's Mail Spaulders
		[11] = { itemID = 40987, "45 #eofheroism#" }; --Savage Gladiator's Mail Armor
		[12] = { itemID = 41004, "30 #eofheroism#" }; --Savage Gladiator's Mail Gauntlets
		[13] = { itemID = 41030, "45 #eofheroism#" }; --Savage Gladiator's Mail Leggings
	};
	{
		Name = AL["Enhancement"] .. AL["Page 1"];
		[01] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Gladiator's Earthshaker"] };
		[02] = { itemID = 51505, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Linked Helm
		[03] = { itemID = 51508, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Linked Spaulders
		[04] = { itemID = 51503, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Linked Armor
		[05] = { itemID = 51504, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Linked Gauntlets
		[06] = { itemID = 51506, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Linked Leggings
		[08] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Gladiator's Earthshaker"] };
		[09] = { itemID = 41152, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Linked Helm
		[10] = { itemID = 41212, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Linked Spaulders
		[11] = { itemID = 41082, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Linked Armor
		[12] = { itemID = 41138, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Linked Gauntlets
		[13] = { itemID = 41200, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Linked Leggings
		[16] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Gladiator's Earthshaker"] };
		[17] = { itemID = 41151, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Linked Helm
		[18] = { itemID = 41211, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Linked Spaulders
		[19] = { itemID = 41081, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Linked Armor
		[20] = { itemID = 41137, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Linked Gauntlets
		[21] = { itemID = 41199, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Linked Leggings
		[23] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Gladiator's Earthshaker"] };
		[24] = { itemID = 41150, "58 #eofconquest#" }; --Deadly Gladiator's Linked Helm
		[25] = { itemID = 41210, "46 #eofconquest#" }; --Deadly Gladiator's Linked Spaulders
		[26] = { itemID = 41080, "58 #eofconquest#" }; --Deadly Gladiator's Linked Armor
		[27] = { itemID = 41136, "46 #eofconquest#" }; --Deadly Gladiator's Linked Gauntlets
		[28] = { itemID = 41198, "58 #eofconquest#" }; --Deadly Gladiator's Linked Leggings
	};
	{
		Name = AL["Enhancement"] .. AL["Page 2"];
		[01] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Gladiator's Earthshaker"] };
		[02] = { itemID = 41149, "45 #eofvalor#" }; --Hateful Gladiator's Linked Helm
		[03] = { itemID = 41209, "30 #eofvalor#" }; --Hateful Gladiator's Linked Spaulders
		[04] = { itemID = 41079, "45 #eofvalor#" }; --Hateful Gladiator's Linked Armor
		[05] = { itemID = 41135, "30 #eofvalor#" }; --Hateful Gladiator's Linked Gauntlets
		[06] = { itemID = 41162, "45 #eofvalor#" }; --Hateful Gladiator's Linked Leggings
		[08] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Gladiator's Earthshaker"] };
		[09] = { itemID = 41148, "45 #eofheroism#" }; --Savage Gladiator's Linked Helm
		[10] = { itemID = 41208, "30 #eofheroism#" }; --Savage Gladiator's Linked Spaulders
		[11] = { itemID = 41078, "45 #eofheroism#" }; --Savage Gladiator's Linked Armor
		[12] = { itemID = 41134, "30 #eofheroism#" }; --Savage Gladiator's Linked Gauntlets
		[13] = { itemID = 41160, "45 #eofheroism#" }; --Savage Gladiator's Linked Leggings
	};
	{
		Name = AL["Restoration"] .. AL["Page 1"];
		[01] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Gladiator's Wartide"] };
		[02] = { itemID = 51499, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Ringmail Helm
		[03] = { itemID = 51502, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Ringmail Spaulders
		[04] = { itemID = 51497, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Ringmail Armor
		[05] = { itemID = 51498, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Ringmail Gauntlets
		[06] = { itemID = 51500, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Ringmail Leggings
		[08] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Gladiator's Wartide"] };
		[09] = { itemID = 41014, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Ringmail Helm
		[10] = { itemID = 41039, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Ringmail Spaulders
		[11] = { itemID = 40994, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Ringmail Armor
		[12] = { itemID = 41002, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Ringmail Gauntlets
		[13] = { itemID = 41028, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Ringmail Leggings
		[16] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Gladiator's Wartide"] };
		[17] = { itemID = 41013, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Ringmail Helm
		[18] = { itemID = 41038, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Ringmail Spaulders
		[19] = { itemID = 40992, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Ringmail Armor
		[20] = { itemID = 41001, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Ringmail Gauntlets
		[21] = { itemID = 41027, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Ringmail Leggings
		[23] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Gladiator's Wartide"] };
		[24] = { itemID = 41012, "58 #eofconquest#" }; --Deadly Gladiator's Ringmail Helm
		[25] = { itemID = 41037, "46 #eofconquest#" }; --Deadly Gladiator's Ringmail Spaulders
		[26] = { itemID = 40990, "58 #eofconquest#" }; --Deadly Gladiator's Ringmail Armor
		[27] = { itemID = 41000, "46 #eofconquest#" }; --Deadly Gladiator's Ringmail Gauntlets
		[28] = { itemID = 41026, "58 #eofconquest#" }; --Deadly Gladiator's Ringmail Leggings
	};
	{
		Name = AL["Restoration"] .. AL["Page 2"];
		[01] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Gladiator's Wartide"] };
		[02] = { itemID = 41011, "45 #eofvalor#" }; --Hateful Gladiator's Ringmail Helm
		[03] = { itemID = 41036, "30 #eofvalor#" }; --Hateful Gladiator's Ringmail Spaulders
		[04] = { itemID = 40988, "45 #eofvalor#" }; --Hateful Gladiator's Ringmail Armor
		[05] = { itemID = 40999, "30 #eofvalor#" }; --Hateful Gladiator's Ringmail Gauntlets
		[06] = { itemID = 41025, "45 #eofvalor#" }; --Hateful Gladiator's Ringmail Leggings
		[08] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Gladiator's Wartide"] };
		[09] = { itemID = 41010, "45 #eofheroism#" }; --Savage Gladiator's Ringmail Helm
		[10] = { itemID = 41024, "30 #eofheroism#" }; --Savage Gladiator's Ringmail Spaulders
		[11] = { itemID = 40986, "45 #eofheroism#" }; --Savage Gladiator's Ringmail Armor
		[12] = { itemID = 40998, "30 #eofheroism#" }; --Savage Gladiator's Ringmail Gauntlets
		[13] = { itemID = 41023, "45 #eofheroism#" }; --Savage Gladiator's Ringmail Leggings
	};
};


AtlasLoot_Data["ArenaWarlockWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
	{
		Name = AL["Page 1"];
		[01] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Felshroud"] };
		[02] = { itemID = 51538, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Felweave Cowl
		[03] = { itemID = 51540, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Felweave Amice
		[04] = { itemID = 51536, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Felweave Raiment
		[05] = { itemID = 51537, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Felweave Handguards
		[06] = { itemID = 51539, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Felweave Trousers
		[08] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Felshroud"] };
		[09] = { itemID = 41994, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Felweave Cowl
		[10] = { itemID = 42012, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Felweave Amice
		[11] = { itemID = 41999, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Felweave Raiment
		[12] = { itemID = 42018, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Felweave Handguards
		[13] = { itemID = 42006, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Felweave Trousers
		[16] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Felshroud"] };
		[17] = { itemID = 41993, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Felweave Cowl
		[18] = { itemID = 42011, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Felweave Amice
		[19] = { itemID = 41998, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Felweave Raiment
		[20] = { itemID = 42017, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Felweave Handguards
		[21] = { itemID = 42005, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Felweave Trousers
		[23] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Felshroud"] };
		[24] = { itemID = 41992, "58 #eofconquest#" }; --Deadly Gladiator's Felweave Cowl
		[25] = { itemID = 42010, "46 #eofconquest#" }; --Deadly Gladiator's Felweave Amice
		[26] = { itemID = 41997, "58 #eofconquest#" }; --Deadly Gladiator's Felweave Raiment
		[27] = { itemID = 42016, "46 #eofconquest#" }; --Deadly Gladiator's Felweave Handguards
		[28] = { itemID = 42004, "58 #eofconquest#" }; --Deadly Gladiator's Felweave Trousers

	};
	{
		Name = AL["Page 2"];
		[01] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Felshroud"] };
		[02] = { itemID = 41991, "45 #eofvalor#" }; --Hateful Gladiator's Felweave Cowl
		[03] = { itemID = 42009, "30 #eofvalor#" }; --Hateful Gladiator's Felweave Amice
		[04] = { itemID = 42001, "45 #eofvalor#" }; --Hateful Gladiator's Felweave Raiment
		[05] = { itemID = 42015, "30 #eofvalor#" }; --Hateful Gladiator's Felweave Handguards
		[06] = { itemID = 42003, "45 #eofvalor#" }; --Hateful Gladiator's Felweave Trousers
		[08] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gladiator's Felshroud"] };
		[09] = { itemID = 41990, "45 #eofheroism#" }; --Savage Gladiator's Felweave Cowl
		[10] = { itemID = 42008, "30 #eofheroism#" }; --Savage Gladiator's Felweave Amice
		[11] = { itemID = 41996, "45 #eofheroism#" }; --Savage Gladiator's Felweave Raiment
		[12] = { itemID = 42014, "30 #eofheroism#" }; --Savage Gladiator's Felweave Handguards
		[13] = { itemID = 42002, "45 #eofheroism#" }; --Savage Gladiator's Felweave Trousers
	};
};

AtlasLoot_Data["ArenaWarriorWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"];
	{
		Name = AL["Page 1"];
		[01] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Gladiator's Battlegear"] };
		[02] = { itemID = 51543, "2370 #arena# "..AL["Rating:"].." 1950" }; --Wrathful Gladiator's Plate Helm
		[03] = { itemID = 51545, "1930 #arena# "..AL["Rating:"].." 2000" }; --Wrathful Gladiator's Plate Shoulders
		[04] = { itemID = 51541, "2370 #arena# "..AL["Rating:"].." 1600" }; --Wrathful Gladiator's Plate Chestpiece
		[05] = { itemID = 51542, "1430 #arena# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Plate Gauntlets
		[06] = { itemID = 51544, "2370 #arena# "..AL["Rating:"].." 1500" }; --Wrathful Gladiator's Plate Legguards
		[08] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Gladiator's Battlegear"] };
		[09] = { itemID = 40829, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Plate Helm
		[10] = { itemID = 40870, "10550 #faction# 600 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Plate Shoulders
		[11] = { itemID = 40790, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Plate Chestpiece
		[12] = { itemID = 40810, "8000 #faction# 440 #arena# / 60 #eoffrost#" }; --Relentless Gladiator's Plate Gauntlets
		[13] = { itemID = 40850, "13200 #faction# 770 #arena# / 95 #eoffrost#" }; --Relentless Gladiator's Plate Legguards
		[16] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Gladiator's Battlegear"] };
		[17] = { itemID = 40826, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Plate Helm
		[18] = { itemID = 40866, "34700 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Plate Shoulders
		[19] = { itemID = 40789, "54500 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Plate Chestpiece
		[20] = { itemID = 40807, "43400 #faction# / 50 #eoftriumph#" }; --Furious Gladiator's Plate Gauntlets
		[21] = { itemID = 40847, "34700 #faction# / 75 #eoftriumph#" }; --Furious Gladiator's Plate Legguards
		[23] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Gladiator's Battlegear"] };
		[24] = { itemID = 40823, "58 #eofconquest#" }; --Deadly Gladiator's Plate Helm
		[25] = { itemID = 40862, "46 #eofconquest#" }; --Deadly Gladiator's Plate Shoulders
		[26] = { itemID = 40786, "58 #eofconquest#" }; --Deadly Gladiator's Plate Chestpiece
		[27] = { itemID = 40804, "46 #eofconquest#" }; --Deadly Gladiator's Plate Gauntlets
		[28] = { itemID = 40844, "58 #eofconquest#" }; --Deadly Gladiator's Plate Legguards
	};
	{
		Name = AL["Page 2"];
		[01] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Gladiator's Battlegear"] };
		[02] = { itemID = 40819, "45 #eofvalor#" }; --Hateful Gladiator's Plate Helm
		[03] = { itemID = 40859, "30 #eofvalor#" }; --Hateful Gladiator's Plate Shoulders
		[04] = { itemID = 40783, "45 #eofvalor#" }; --Hateful Gladiator's Plate Chestpiece
		[05] = { itemID = 40801, "30 #eofvalor#" }; --Hateful Gladiator's Plate Gauntlets
		[06] = { itemID = 40840, "45 #eofvalor#" }; --Hateful Gladiator's Plate Legguards
		[08] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Gladiator's Battlegear"] };
		[09] = { itemID = 40816, "45 #eofheroism#" }; --Savage Gladiator's Plate Helm
		[10] = { itemID = 40856, "30 #eofheroism#" }; --Savage Gladiator's Plate Shoulders
		[11] = { itemID = 40778, "45 #eofheroism#" }; --Savage Gladiator's Plate Chestpiece
		[12] = { itemID = 40797, "30 #eofheroism#" }; --Savage Gladiator's Plate Gauntlets
		[13] = { itemID = 40836, "45 #eofheroism#" }; --Savage Gladiator's Plate Legguards
	};
};
------------------------------
--- Level 80 Epic Non-Sets ---
------------------------------

AtlasLoot_Data["PvP80NonSet"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = AL["PvP Non-Set Epics"];
	{
		Name = AL["Page 1"];
	[01] = { itemID = 51334, "52200 #faction#" }; --Wrathful Gladiator's Cloak of Ascendancy
	[02] = { itemID = 51348, "52200 #faction#" }; --Wrathful Gladiator's Cloak of Deliverance
	[03] = { itemID = 51330, "52200 #faction#" }; --Wrathful Gladiator's Cloak of Dominance
	[04] = { itemID = 51346, "52200 #faction#" }; --Wrathful Gladiator's Cloak of Salvation
	[05] = { itemID = 51332, "52200 #faction#" }; --Wrathful Gladiator's Cloak of Subjugation
	[06] = { itemID = 51354, "52200 #faction#" }; --Wrathful Gladiator's Cloak of Triumph
	[07] = { itemID = 51356, "52200 #faction#" }; --Wrathful Gladiator's Cloak of Victory
	[09] = { itemID = 51336, "52200 #faction#" }; --Wrathful Gladiator's Band of Dominance
	[10] = { itemID = 51358, "52200 #faction#" }; --Wrathful Gladiator's Band of Triumph
	[12] = { itemID = 51377, "68200 #faction#" }; --Medallion of the Alliance
	[13] = { itemID = 51378, "68200 #faction#" }; --Medallion of the Horde
	[16] = { itemID = 51335, "52200 #faction#" }; --Wrathful Gladiator's Pendant of Ascendancy
	[17] = { itemID = 51349, "52200 #faction#" }; --Wrathful Gladiator's Pendant of Deliverance
	[18] = { itemID = 51331, "52200 #faction#" }; --Wrathful Gladiator's Pendant of Dominance
	[19] = { itemID = 51347, "52200 #faction#" }; --Wrathful Gladiator's Pendant of Salvation
	[20] = { itemID = 51333, "52200 #faction#" }; --Wrathful Gladiator's Pendant of Subjugation
	[21] = { itemID = 51353, "52200 #faction#" }; --Wrathful Gladiator's Pendant of Sundering
	[22] = { itemID = 51355, "52200 #faction#" }; --Wrathful Gladiator's Pendant of Triumph
	[23] = { itemID = 51357, "52200 #faction#" }; --Wrathful Gladiator's Pendant of Victory
	[25] = { itemID = 42133, "34100 #faction#" }; --Battlemaster's Fury
	[26] = { itemID = 42134, "34100 #faction#" }; --Battlemaster's Precision
	[27] = { itemID = 42136, "34100 #faction#" }; --Battlemaster's Rage
	[28] = { itemID = 42137, "34100 #faction#" }; --Battlemaster's Ruination
	[29] = { itemID = 42135, "34100 #faction#" }; --Battlemaster's Vivacity
};
{
	Name = AL["Page 2"];
	[01] = { itemID = 42078, "26100 #faction#" }; --Relentless Gladiator's Cloak of Ascendancy
	[02] = { itemID = 42080, "26100 #faction#" }; --Relentless Gladiator's Cloak of Deliverance
	[03] = { itemID = 42076, "26100 #faction#" }; --Relentless Gladiator's Cloak of Dominance
	[04] = { itemID = 42079, "26100 #faction#" }; --Relentless Gladiator's Cloak of Salvation
	[05] = { itemID = 42077, "26100 #faction#" }; --Relentless Gladiator's Cloak of Subjugation
	[06] = { itemID = 42081, "26100 #faction#" }; --Relentless Gladiator's Cloak of Triumph
	[07] = { itemID = 42082, "26100 #faction#" }; --Relentless Gladiator's Cloak of Victory
	[09] = { itemID = 42118, "26100 #faction#" }; --Relentless Gladiator's Band of Ascendancy
	[10] = { itemID = 42119, "26100 #faction#" }; --Relentless Gladiator's Band of Victory
	[16] = { itemID = 42044, "26100 #faction#" }; --Relentless Gladiator's Pendant of Ascendancy
	[17] = { itemID = 42046, "26100 #faction#" }; --Relentless Gladiator's Pendant of Deliverance
	[18] = { itemID = 42043, "26100 #faction#" }; --Relentless Gladiator's Pendant of Dominance
	[19] = { itemID = 42047, "26100 #faction#" }; --Relentless Gladiator's Pendant of Salvation
	[20] = { itemID = 42045, "26100 #faction#" }; --Relentless Gladiator's Pendant of Subjugation
	[21] = { itemID = 46374, "26100 #faction#" }; --Relentless Gladiator's Pendant of Sundering
	[22] = { itemID = 42041, "26100 #faction#" }; --Relentless Gladiator's Pendant of Triumph
	[23] = { itemID = 42042, "26100 #faction#" }; --Relentless Gladiator's Pendant of Victory
};
{
	Name = "Cloth";
	[01] = { itemID = 51329, "43400 #faction#" }; --Wrathful Gladiator's Cuffs of Dominance
	[02] = { itemID = 51327, "68200 #faction# "..AL["Rating:"].." 1300" }; --Wrathful Gladiator's Cord of Dominance
	[03] = { itemID = 51328, "68200 #faction# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Treads of Dominance
	[05] = { itemID = 51367, "43400 #faction#" }; --Wrathful Gladiator's Cuffs of Salvation
	[06] = { itemID = 51365, "68200 #faction# "..AL["Rating:"].." 1300" }; --Wrathful Gladiator's Cord of Salvation
	[07] = { itemID = 51366, "68200 #faction# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Treads of Salvation
	[09] = { itemID = 51339, "43400 #faction#" }; --Wrathful Gladiator's Cuffs of Alacrity
	[10] = { itemID = 51337, "68200 #faction# "..AL["Rating:"].." 1300" }; --Wrathful Gladiator's Cord of Alacrity
	[11] = { itemID = 51338, "68200 #faction# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Treads of Alacrity
	[16] = { itemID = 41910, "21700 #faction#" }; --Relentless Gladiator's Cuffs of Dominance
	[17] = { itemID = 41899, "34100 #faction#" }; --Relentless Gladiator's Cord of Dominance
	[18] = { itemID = 41904, "34100 #faction#" }; --Relentless Gladiator's Treads of Dominance
	[20] = { itemID = 41894, "21700 #faction#" }; --Relentless Gladiator's Cuffs of Salvation
	[21] = { itemID = 41882, "34100 #faction#" }; --Relentless Gladiator's Cord of Salvation
	[22] = { itemID = 41886, "34100 #faction#" }; --Relentless Gladiator's Treads of Salvation
	[24] = { itemID = 49181, "21700 #faction#" }; --Relentless Gladiator's Cuffs of Alacrity
	[25] = { itemID = 49179, "34100 #faction#" }; --Relentless Gladiator's Cord of Alacrity
	[26] = { itemID = 49183, "34100 #faction#" }; --Relentless Gladiator's Treads of Alacrity
};
{
	Name = "Leather";
	[01] = { itemID = 51345, "43400 #faction#" }; --Wrathful Gladiator's Armwraps of Dominance
	[02] = { itemID = 51343, "68200 #faction# "..AL["Rating:"].." 1300" }; --Wrathful Gladiator's Belt of Dominance
	[03] = { itemID = 51344, "68200 #faction# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Boots of Dominance
	[05] = { itemID = 51342, "43400 #faction#" }; --Wrathful Gladiator's Armwraps of Salvation
	[06] = { itemID = 51340, "68200 #faction# "..AL["Rating:"].." 1300" }; --Wrathful Gladiator's Belt of Salvation
	[07] = { itemID = 51341, "68200 #faction# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Boots of Salvation
	[09] = { itemID = 51370, "43400 #faction#" }; --Wrathful Gladiator's Armwraps of Triumph
	[10] = { itemID = 51368, "68200 #faction# "..AL["Rating:"].." 1300" }; --Wrathful Gladiator's Belt of Triumph
	[11] = { itemID = 51369, "68200 #faction# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Boots of Triumph
	[16] = { itemID = 41641, "21700 #faction#" }; --Relentless Gladiator's Armwraps of Dominance
	[17] = { itemID = 41631, "34100 #faction#" }; --Relentless Gladiator's Belt of Dominance
	[18] = { itemID = 41636, "34100 #faction#" }; --Relentless Gladiator's Boots of Dominance
	[20] = { itemID = 41626, "21700 #faction#" }; --Relentless Gladiator's Armwraps of Salvation
	[21] = { itemID = 41618, "34100 #faction#" }; --Relentless Gladiator's Belt of Salvation
	[22] = { itemID = 41622, "34100 #faction#" }; --Relentless Gladiator's Boots of Salvation
	[24] = { itemID = 41841, "21700 #faction#" }; --Relentless Gladiator's Armwraps of Triumph
	[25] = { itemID = 41833, "34100 #faction#" }; --Relentless Gladiator's Belt of Triumph
	[26] = { itemID = 41837, "34100 #faction#" }; --Relentless Gladiator's Boots of Triumph
};
{
	Name = "Mail";
	[01] = { itemID = 51376, "43400 #faction#" }; --Wrathful Gladiator's Wristguards of Dominance
	[02] = { itemID = 51374, "68200 #faction# "..AL["Rating:"].." 1300" }; --Wrathful Gladiator's Waistguard of Dominance
	[03] = { itemID = 51375, "68200 #faction# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Sabatons of Dominance
	[05] = { itemID = 51373, "43400 #faction#" }; --Wrathful Gladiator's Wristguards of Salvation
	[06] = { itemID = 51371, "68200 #faction# "..AL["Rating:"].." 1300" }; --Wrathful Gladiator's Waistguard of Salvation
	[07] = { itemID = 51372, "68200 #faction# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Sabatons of Salvation
	[09] = { itemID = 51352, "43400 #faction#" }; --Wrathful Gladiator's Wristguards of Triumph
	[10] = { itemID = 51350, "68200 #faction# "..AL["Rating:"].." 1300" }; --Wrathful Gladiator's Waistguard of Triumph
	[11] = { itemID = 51351, "68200 #faction# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Sabatons of Triumph
	[16] = { itemID = 41066, "21700 #faction#" }; --Relentless Gladiator's Wristguards of Dominance
	[17] = { itemID = 41071, "34100 #faction#" }; --Relentless Gladiator's Waistguard of Dominance
	[18] = { itemID = 41076, "34100 #faction#" }; --Relentless Gladiator's Sabatons of Dominance
	[20] = { itemID = 41061, "21700 #faction#" }; --Relentless Gladiator's Wristguards of Salvation
	[21] = { itemID = 41052, "34100 #faction#" }; --Relentless Gladiator's Waistguard of Salvation
	[22] = { itemID = 41056, "34100 #faction#" }; --Relentless Gladiator's Sabatons of Salvation
	[24] = { itemID = 41226, "21700 #faction#" }; --Relentless Gladiator's Wristguards of Triumph
	[25] = { itemID = 41236, "34100 #faction#" }; --Relentless Gladiator's Waistguard of Triumph
	[26] = { itemID = 41231, "34100 #faction#" }; --Relentless Gladiator's Sabatons of Triumph
};
{
	Name = "Plate";
	[01] = { itemID = 51361, "43400 #faction#" }; --Wrathful Gladiator's Bracers of Salvation
	[02] = { itemID = 51359, "68200 #faction# "..AL["Rating:"].." 1300" }; --Wrathful Gladiator's Girdle of Salvation
	[03] = { itemID = 51360, "68200 #faction# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Greaves of Salvation
	[05] = { itemID = 51364, "43400 #faction#" }; --Wrathful Gladiator's Bracers of Triumph
	[06] = { itemID = 51362, "68200 #faction# "..AL["Rating:"].." 1300" }; --Wrathful Gladiator's Girdle of Triumph
	[07] = { itemID = 51363, "68200 #faction# "..AL["Rating:"].." 1400" }; --Wrathful Gladiator's Greaves of Triumph
	[16] = { itemID = 40984, "21700 #faction#" }; --Relentless Gladiator's Bracers of Salvation
	[17] = { itemID = 40978, "34100 #faction#" }; --Relentless Gladiator's Girdle of Salvation
	[18] = { itemID = 40979, "34100 #faction#" }; --Relentless Gladiator's Greaves of Salvation
	[20] = { itemID = 40890, "21700 #faction#" }; --Relentless Gladiator's Bracers of Triumph
	[21] = { itemID = 40883, "34100 #faction#" }; --Relentless Gladiator's Girdle of Triumph
	[22] = { itemID = 40884, "34100 #faction#" }; --Relentless Gladiator's Greaves of Triumph
};
};

------------------------------------
--- Wrathful Gladiator Weapons ---
------------------------------------
AtlasLoot_Data["WeaponsWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = "Arena " .. AL["Weapons"];
	{
		Name = AL["Page 1"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Low Level"] };
		[02] = { itemID = 51523,"38500 #faction# 1090 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Right Ripper
		[03] = { itemID = 51530,"16500 #faction# 450 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Left Render
		[04] = { itemID = 51443,"15000 #faction# 1100 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Left Ripper
		[05] = { itemID = 51406,"38500 #faction# 1300 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Blade of Alacrity
		[06] = { itemID = 51397,"38500 #faction# 1300 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Spellblade
		[07] = { itemID = 51517, "38500 #faction# 1090 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Shanker
		[08] = { itemID = 51527, "16500 #faction# 450 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Mutilator
		[09] = { itemID = 51441, "16500 #faction# 450 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Shiv
		[10] = { itemID = 51521, "38500 #faction# 1090 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Slicer
		[11] = { itemID = 51447,"16500 #faction# 450 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Quickblade
		[12] = { itemID = 51392,"55000 #faction# 1540 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Greatsword
		[13] = { itemID = 51515, "38500 #faction# 1090 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Cleaver
		[14] = { itemID = 51525, "16500 #faction# 450 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Chopper
		[15] = { itemID = 51439, "16500 #faction# 450 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Hacker
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["High Level"] };
		[17] = { itemID = 51524, "3300 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Grasp
		[18] = { itemID = 51529, "1370 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Left Claw
		[19] = { itemID = 51444, "1370 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Left Razor
		[20] = { itemID = 51398, "3950 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Blade of Celerity
		[21] = { itemID = 51399, "3950 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Mageblade
		[22] = { itemID = 51518, "3300 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Spike
		[23] = { itemID = 51442, "1370 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Dirk
		[24] = { itemID = 51528, "1370 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Eviscerator
		[25] = { itemID = 51522, "3300 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Longblade
		[26] = { itemID = 51448, "1370 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Swiftblade
		[27] = { itemID = 51393, "4670 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Claymore
		[28] = { itemID = 51516, "3300 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Handaxe
		[29] = { itemID = 51440, "1370 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Dicer
		[30] = { itemID = 51526, "1370 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Splitter
	};
	{
		Name = AL["Page 2"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["Low Level"] };
		[02] = { itemID = 51388, "55000 #faction# 1540 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Decapitator
		[03] = { itemID = 51453, "38500 #faction# 1300 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Gavel
		[04] = { itemID = 51519, "38500 #faction# 1090 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Pummeler
		[05] = { itemID = 51445, "16500 #faction# 450 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Bonecracker
		[06] = { itemID = 51390, "55000 #faction# 1540 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Bonegrinder
		[07] = { itemID = 51480, "55000 #faction# 1540 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Pike
		[08] = { itemID = 51404, "55000 #faction# 1540 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Battle Staff
		[09] = { itemID = 51456, "55000 #faction# 1540 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Energy Staff
		[10] = { itemID = 51402, "55000 #faction# 1540 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Focus Staff
		[11] = { itemID = 51431, "55000 #faction# 1540 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Staff
		[12] = { itemID = 51400, "55000 #faction# 1540 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's War Staff
		[13] = { itemID = 51394, "55000 #faction# 1540 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Longbow
		[14] = { itemID = 51411, "55000 #faction# 1540 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Heavy Crossbow
		[15] = { itemID = 51449, "55000 #faction# 1540 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Rifle
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. AL["High Level"] };
		[17] = { itemID = 51389, "4670 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Sunderer
		[18] = { itemID = 51454, "3950 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Salvation
		[19] = { itemID = 51520, "3300 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Truncheon
		[20] = { itemID = 51446, "1370 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Punisher
		[21] = { itemID = 51391, "4670 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Crusher
		[22] = { itemID = 51481, "4670 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Halberd
		[23] = { itemID = 51403, "4670 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Acute Staff
		[24] = { itemID = 51401, "4670 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Combat Staff
		[25] = { itemID = 51432, "4670 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Greatstaff
		[26] = { itemID = 51457, "4670 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Light Staff
		[27] = { itemID = 51405, "4670 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Skirmish Staff
		[28] = { itemID = 51395, "4670 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Recurve
		[29] = { itemID = 51412, "4670 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Repeater
		[30] = { itemID = 51450, "4670 #arena# "..AL["Rating:"].." 2200" }; --Wrathful Gladiator's Shotgun
	};
	{
		Name = AL["Page 3"];
		[01] = { itemID = 51452, "350 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Barrier
		[02] = { itemID = 51455, "350 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Redoubt
		[03] = { itemID = 51533, "350 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Shield Wall
		[04] = { itemID = 51535, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's War Edge
		[05] = { itemID = 51532, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's Baton of Light
		[06] = { itemID = 51531, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's Piercing Touch
		[07] = { itemID = 51410, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's Touch of Defeat
		[08] = { itemID = 51451, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's Wand of Alacrity
		[09] = { itemID = 51407, "350 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Compendium
		[10] = { itemID = 51396, "350 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Endgame
		[11] = { itemID = 51408, "350 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Grimoire
		[12] = { itemID = 51409, "350 #arena# "..AL["Rating:"].." 1800" }; --Wrathful Gladiator's Reprieve
	};
};

-----------------------
--- PvP Class Items ---
-----------------------

AtlasLoot_Data["PVPidolWRATH"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = "Idols/Librams/Sigils/Totems";
	{
		Name = AL["Page 1"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleInventory["Idols"] };
		[02] = { itemID = 51429, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's Idol of Resolve
		[03] = { itemID = 51437, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's Idol of Steadfastness
		[04] = { itemID = 51423, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's Idol of Tenacity
		[06] = { itemID = 42591, "6400 #faction# 350 #arena# "..AL["Rating:"].." 700" }; --Relentless Gladiator's Idol of Resolve
		[07] = { itemID = 42585, "6400 #faction# 350 #arena# "..AL["Rating:"].." 700" }; --Relentless Gladiator's Idol of Steadfastness
		[08] = { itemID = 42580, "6400 #faction# 350 #arena# "..AL["Rating:"].." 700" }; --Relentless Gladiator's Idol of Tenacity
		[10] = { itemID = 42589, "12000 #faction#" }; --Furious Gladiator's Idol of Resolve
		[11] = { itemID = 42584, "12000 #faction#" }; --Furious Gladiator's Idol of Steadfastness
		[12] = { itemID = 42579, "12000 #faction#" }; --Furious Gladiator's Idol of Tenacity
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleInventory["Librams"] };
		[17] = { itemID = 51478, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's Libram of Fortitude
		[18] = { itemID = 51472, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's Libram of Justice
		[20] = { itemID = 42854, "6400 #faction# 350 #arena# "..AL["Rating:"].." 700" }; --Relentless Gladiator's Libram of Fortitude
		[21] = { itemID = 42616, "6400 #faction# 350 #arena# "..AL["Rating:"].." 700" }; --Relentless Gladiator's Libram of Justice
		[23] = { itemID = 42853, "12000 #faction#" }; --Furious Gladiator's Libram of Fortitude
		[24] = { itemID = 42615, "12000 #faction#" }; --Furious Gladiator's Libram of Justice
	};
	{
		Name = AL["Page 2"];
		[01] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleInventory["Sigils"] };
		[02] = { itemID = 51417, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's Sigil of Strife
		[04] = { itemID = 42622, "6400 #faction# 350 #arena# "..AL["Rating:"].." 700" }; --Relentless Gladiator's Sigil of Strife
		[06] = { itemID = 42621, "12000 #faction#" }; --Furious Gladiator's Sigil of Strife
		[16] = { icon = "INV_Box_01", name = AtlasLoot.Colors.WHITE.. BabbleInventory["Totems"] };
		[17] = { itemID = 51507, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's Totem of Indomitability
		[18] = { itemID = 51513, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's Totem of Survival
		[19] = { itemID = 51501, "1260 #arena# "..AL["Rating:"].." 1700" }; --Wrathful Gladiator's Totem of the Third Wind
		[21] = { itemID = 42609, "6400 #faction# 350 #arena# "..AL["Rating:"].." 700" }; --Relentless Gladiator's Totem of Indomitability
		[22] = { itemID = 42604, "6400 #faction# 350 #arena# "..AL["Rating:"].." 700" }; --Relentless Gladiator's Totem of Survival
		[23] = { itemID = 42599, "6400 #faction# 350 #arena# "..AL["Rating:"].." 700" }; --Relentless Gladiator's Totem of the Third Wind
		[25] = { itemID = 42608, "12000 #faction#" }; --Furious Gladiator's Totem of Indomitability
		[26] = { itemID = 42603, "12000 #faction#" }; --Furious Gladiator's Totem of Survival
	};
};
-------------------------
--- PvP Miscellaneous ---
-------------------------

AtlasLoot_Data["PvP80Misc"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = AL["PvP Misc"];
	{
		Name = AL["PvP Misc"];
		[01] = { itemID = 51534, "550 #arena# "..AL["Rating:"].." 2300" }; --Wrathful Gladiator's Tabard
		[02] = { itemID = 44957, price = "10000 #faction#" }; --Greater Inscription of the Gladiator
		[03] = { itemID = 45706, "100 #arena#" }; --Commendation of Bravery
		[05] = { itemID = 36931, "10000 #faction#" }; --Ametrine
		[06] = { itemID = 36919, "10000 #faction#" }; --Cardinal Ruby
		[07] = { itemID = 36928, "10000 #faction#" }; --Dreadstone
		[08] = { itemID = 36934, "10000 #faction#" }; --Eye of Zul
		[09] = { itemID = 36922, "10000 #faction#" }; --King's Amber
		[10] = { itemID = 36925, "10000 #faction#" }; --Majestic Zircon
		[16] = { itemID = 41563, "1250 #faction#" }; --Design: Durable Huge Citrine
		[17] = { itemID = 41564, "1250 #faction#" }; --Design: Empowered Huge Citrine
		[18] = { itemID = 41565, "1250 #faction#" }; --Design: Lucent Huge Citrine
		[19] = { itemID = 41575, "1250 #faction#" }; --Design: Mysterious Shadow Crystal
		[20] = { itemID = 41559, "1250 #faction#" }; --Design: Mystic Sun Crystal
		[21] = { itemID = 41573, "1250 #faction#" }; --Design: Opaque Dark Jade
		[22] = { itemID = 41566, "1250 #faction#" }; --Design: Resplendent Huge Citrine
		[23] = { itemID = 41569, "1250 #faction#" }; --Design: Shattered Dark Jade
		[24] = { itemID = 41572, "1250 #faction#" }; --Design: Steady Dark Jade
		[25] = { itemID = 41560, "1250 #faction#" }; --Design: Stormy Chalcedony
		[26] = { itemID = 41570, "1250 #faction#" }; --Design: Tense Dark Jade
		[27] = { itemID = 41571, "1250 #faction#" }; --Design: Turbid Dark Jade
	};
};

--------------------------------
--- World PvP - Wintergrasp  ---
--------------------------------

AtlasLoot_Data["LakeWintergrasp"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = "Wintergrasp";
	{
		Name = AL["Page 1"];
		[01] = { itemID = 51570, "25 #wintergraspmark#" }; --Titan-Forged Cloak of Ascendancy
		[02] = { itemID = 51571, "25 #wintergraspmark#" }; --Titan-Forged Cloak of Victory
		[04] = { itemID = 46083, "25 #wintergraspmark#" }; --Titan-Forged Rune of Accuracy
		[05] = { itemID = 46085, "25 #wintergraspmark#" }; --Titan-Forged Rune of Alacrity
		[06] = { itemID = 46081, "25 #wintergraspmark#" }; --Titan-Forged Rune of Audacity
		[07] = { itemID = 46084, "25 #wintergraspmark#" }; --Titan-Forged Rune of Cruelty
		[09] = { itemID = 46082, "25 #wintergraspmark#" }; --Titan-Forged Rune of Determination
		[10] = { itemID = 43956, "300 #wintergrasp#" }; --Reins of the Black War Mammoth
		[11] = { itemID = 44077, "300 #wintergrasp#" }; --Reins of the Black War Mammoth
		[16] = { itemID = 51568, "25 #wintergraspmark#" }; --Titan-Forged Pendant of Ascendancy
		[17] = { itemID = 51569, "25 #wintergraspmark#" }; --Titan-Forged Pendant of Victory
		[19] = { itemID = 44914, "25 #wintergraspmark#" }; --Anvil of Titans
		[20] = { itemID = 44912, "25 #wintergraspmark#" }; --Flow of Knowledge
		[21] = { itemID = 46086, "25 #wintergraspmark#" }; --Platinum Disks of Battle
		[22] = { itemID = 46088, "25 #wintergraspmark#" }; --Platinum Disks of Swiftness
		[23] = { itemID = 46087, "25 #wintergraspmark#" }; --Platinum Disks of Sorcery
		[25] = { itemID = 48999, "15 #wintergraspmark#" }; --Titan-Forged Band of Ascendancy
		[26] = { itemID = 49000, "15 #wintergraspmark#" }; --Titan-Forged Band of Victory
	};
	{
		Name = AL["Page 2"];
		[02] = { itemID = 44910, "40 #wintergraspmark#" }; --Titan-Forged Hood of Dominance
		[03] = { itemID = 51573, "40 #wintergraspmark#" }; --Titan-Forged Shoulderpads of Domination
		[04] = { itemID = 46065, "40 #wintergraspmark#" }; --Titan-Forged Raiment of Dominance
		[06] = { itemID = 46079, "15 #wintergraspmark#" }; --Titan-Forged Cord of Dominance
		[07] = { itemID = 48997, "40 #wintergraspmark#" }; --Titan-Forged Cloth Trousers of Domination
		[08] = { itemID = 44899, "15 #wintergraspmark#" }; --Titan-Forged Slippers of Dominance
		[17] = { itemID = 44909, "40 #wintergraspmark#" }; --Titan-Forged Hood of Salvation
		[18] = { itemID = 51572, "40 #wintergraspmark#" }; --Titan-Forged Shoulderpads of Salvation
		[19] = { itemID = 46066, "40 #wintergraspmark#" }; --Titan-Forged Raiment of Salvation
		[20] = { itemID = 48979, "15 #wintergraspmark#" }; --Titan-Forged Cuffs of Salvation
		[21] = { itemID = 46080, "15 #wintergraspmark#" }; --Titan-Forged Cord of Salvation
		[22] = { itemID = 48991, "40 #wintergraspmark#" }; --Titan-Forged Cloth Leggings of Salvation
		[23] = { itemID = 44900, "15 #wintergraspmark#" }; --Titan-Forged Slippers of Salvation
	};
	{
		Name = AL["Page 3"];
		[01] = { itemID = 44907, "40 #wintergraspmark#" }; --Titan-Forged Leather Helm of Dominance
		[02] = { itemID = 51574, "40 #wintergraspmark#" }; --Titan-Forged Leather Spaulders of Dominance
		[03] = { itemID = 46064, "40 #wintergraspmark#" }; --Titan-Forged Leather Chestguard of Dominance
		[04] = { itemID = 48974, "15 #wintergraspmark#" }; --Titan-Forged Armwraps of Dominance
		[05] = { itemID = 46076, "15 #wintergraspmark#" }; --Titan-Forged Belt of Dominance
		[06] = { itemID = 48998, "40 #wintergraspmark#" }; --Titan-Forged Leather Legguards of Dominance
		[07] = { itemID = 44891, "15 #wintergraspmark#" }; --Titan-Forged Boots of Dominance
		[09] = { itemID = 44906, "40 #wintergraspmark#" }; --Titan-Forged Leather Helm of Salvation
		[10] = { itemID = 51575, "40 #wintergraspmark#" }; --Titan-Forged Leather Spaulders of Salvation
		[11] = { itemID = 46063, "40 #wintergraspmark#" }; --Titan-Forged Leather Chestguard of Salvation
		[12] = { itemID = 48975, "15 #wintergraspmark#" }; --Titan-Forged Armwraps of Salvation
		[13] = { itemID = 46077, "15 #wintergraspmark#" }; --Titan-Forged Belt of Salvation
		[14] = { itemID = 48987, "40 #wintergraspmark#" }; --Titan-Forged Leather Legguards of Salvation
		[15] = { itemID = 44892, "15 #wintergraspmark#" }; --Titan-Forged Boots of Salvation
		[16] = { itemID = 44908, "40 #wintergraspmark#" }; --Titan-Forged Leather Helm of Triumph
		[17] = { itemID = 51576, "40 #wintergraspmark#" }; --Titan-Forged Leather Spaulders of Triumph
		[18] = { itemID = 46062, "40 #wintergraspmark#" }; --Titan-Forged Leather Tunic of Triumph
		[19] = { itemID = 48976, "15 #wintergraspmark#" }; --Titan-Forged Armwraps of Triumph
		[20] = { itemID = 46078, "15 #wintergraspmark#" }; --Titan-Forged Belt of Triumph
		[21] = { itemID = 48988, "40 #wintergraspmark#" }; --Titan-Forged Leather Legguards of Triumph
		[22] = { itemID = 44893, "15 #wintergraspmark#" }; --Titan-Forged Boots of Triumph
	};
	{
		Name = AL["Page 4"];
		[01] = { itemID = 44904, "40 #wintergraspmark#" }; --Titan-Forged Mail Helm of Dominance
		[02] = { itemID = 51578, "40 #wintergraspmark#" }; --Titan-Forged Shoulders of Dominance
		[03] = { itemID = 46061, "40 #wintergraspmark#" }; --Titan-Forged Mail Armor of Domination
		[04] = { itemID = 48980, "15 #wintergraspmark#" }; --Titan-Forged Wristguards of Dominance
		[05] = { itemID = 46073, "15 #wintergraspmark#" }; --Titan-Forged Waistguard of Dominance
		[06] = { itemID = 48990, "40 #wintergraspmark#" }; --Titan-Forged Mail Leggings of Dominance
		[07] = { itemID = 44896, "15 #wintergraspmark#" }; --Titan-Forged Sabatons of Dominance
		[09] = { itemID = 44905, "40 #wintergraspmark#" }; --Titan-Forged Ringmail Helm of Salvation
		[10] = { itemID = 51579, "40 #wintergraspmark#" }; --Titan-Forged Shoulders of Salvation
		[11] = { itemID = 46060, "40 #wintergraspmark#" }; --Titan-Forged Ringmail of Salvation
		[12] = { itemID = 48981, "15 #wintergraspmark#" }; --Titan-Forged Wristguards of Salvation
		[13] = { itemID = 46074, "15 #wintergraspmark#" }; --Titan-Forged Waistguard of Salvation
		[14] = { itemID = 48994, "40 #wintergraspmark#" }; --Titan-Forged Mail Leggings of Salvation
		[15] = { itemID = 44897, "15 #wintergraspmark#" }; --Titan-Forged Sabatons of Salvation
		[16] = { itemID = 44903, "40 #wintergraspmark#" }; --Titan-Forged Chain Helm of Triumph
		[17] = { itemID = 51577, "40 #wintergraspmark#" }; --Titan-Forged Shoulders of Triumph
		[18] = { itemID = 46059, "40 #wintergraspmark#" }; --Titan-Forged Chain Armor of Triumph
		[19] = { itemID = 48982, "15 #wintergraspmark#" }; --Titan-Forged Wristguards of Triumph
		[20] = { itemID = 46075, "15 #wintergraspmark#" }; --Titan-Forged Waistguard of Triumph
		[21] = { itemID = 48983, "40 #wintergraspmark#" }; --Titan-Forged Mail Leggings of Triumph
		[22] = { itemID = 44898, "15 #wintergraspmark#" }; --Titan-Forged Sabatons of Triumph
	};
	{
		Name = AL["Page 5"];
		[02] = { itemID = 44901, "40 #wintergraspmark#" }; --Titan-Forged Plate Headcover of Salvation
		[03] = { itemID = 51581, "40 #wintergraspmark#" }; --Titan-Forged Shoulderplates of Salvation
		[04] = { itemID = 46057, "40 #wintergraspmark#" }; --Titan-Forged Chestguard of Salvation
		[05] = { itemID = 48977, "15 #wintergraspmark#" }; --Titan-Forged Bracers of Salvation
		[06] = { itemID = 46071, "15 #wintergraspmark#" }; --Titan-Forged Girdle of Salvation
		[07] = { itemID = 48992, "40 #wintergraspmark#" }; --Titan-Forged Plate Legplates of Salvation
		[08] = { itemID = 44894, "15 #wintergraspmark#" }; --Titan-Forged Greaves of Salvation
		[17] = { itemID = 44902, "40 #wintergraspmark#" }; --Titan-Forged Plate Helm of Triumph
		[18] = { itemID = 51580, "40 #wintergraspmark#" }; --Titan-Forged Plate Shoulderplates of Triumph
		[19] = { itemID = 46058, "40 #wintergraspmark#" }; --Titan-Forged Breastplate of Triumph
		[20] = { itemID = 48978, "15 #wintergraspmark#" }; --Titan-Forged Bracers of Triumph
		[21] = { itemID = 46072, "15 #wintergraspmark#" }; --Titan-Forged Girdle of Triumph
		[22] = { itemID = 48993, "40 #wintergraspmark#" }; --Titan-Forged Plate Legguards of Triumph
		[23] = { itemID = 44895, "15 #wintergraspmark#" }; --Titan-Forged Greaves of Triumph
	};
	{
		Name = AL["Page 6"];
		[01] = { itemID = 44066, "20 #wintergrasp#" }; --Kharmaa's Grace
		[02] = { itemID = 44081, "15 #wintergrasp#" }; --Enigmatic Starflare Diamond
		[03] = { itemID = 44084, "15 #wintergrasp#" }; --Forlorn Starflare Diamond
		[04] = { itemID = 44082, "15 #wintergrasp#" }; --Impassive Starflare Diamond
		[05] = { itemID = 44076, "15 #wintergrasp#" }; --Swift Starflare Diamond
		[06] = { itemID = 44078, "15 #wintergrasp#" }; --Swift Starflare Diamond
		[07] = { itemID = 44087, "15 #wintergrasp#" }; --Persistent Earthshatter Diamond
		[08] = { itemID = 44088, "15 #wintergrasp#" }; --Powerful Earthshatter Diamond
		[09] = { itemID = 44089, "15 #wintergrasp#" }; --Trenchant Earthshatter Diamond
		[11] = { itemID = 44075, "40 #wintergrasp#" }; --Arcanum of Dominance
		[12] = { itemID = 44069, "40 #wintergrasp#" }; --Arcanum of Triumph
		[13] = { itemID = 44068, price = "30 #wintergrasp#" }; --Inscription of Dominance
		[14] = { itemID = 44067, price = "30 #wintergrasp#" }; --Inscription of Triumph
		[16] = { itemID = 41730, price = "12 #wintergrasp#" }; --Design: Durable Monarch Topaz
		[17] = { itemID = 41732, price = "12 #wintergrasp#" }; --Design: Empowered Monarch Topaz
		[18] = { itemID = 41733, price = "12 #wintergrasp#" }; --Design: Lucent Monarch Topaz
		[19] = { itemID = 41735, price = "12 #wintergrasp#" }; --Design: Shattered Forest Emerald
		[20] = { itemID = 41739, price = "12 #wintergrasp#" }; --Design: Opaque Forest Emerald
		[21] = { itemID = 41736, price = "12 #wintergrasp#" }; --Design: Tense Forest Emerald
		[22] = { itemID = 41737, price = "12 #wintergrasp#" }; --Design: Turbid Forest Emerald
		[23] = { itemID = 41738, price = "12 #wintergrasp#" }; --Design: Steady Forest Emerald
		[24] = { itemID = 41734, price = "12 #wintergrasp#" }; --Design: Resplendent Monarch Topaz
		[25] = { itemID = 41727, price = "12 #wintergrasp#" }; --Design: Mystic Autumn's Glow
		[26] = { itemID = 41740, price = "12 #wintergrasp#" }; --Design: Mysterious Twilight Opal
		[27] = { itemID = 41728, price = "12 #wintergrasp#" }; --Design: Stormy Sky Sapphire
		[28] = { itemID = 41742, price = "24 #wintergrasp#" }; --Design: Enigmatic Skyflare Diamond
		[29] = { itemID = 41743, price = "24 #wintergrasp#" }; --Design: Forlorn Skyflare Diamond
		[30] = { itemID = 41744, price = "24 #wintergrasp#" }; --Design: Impassive Skyflare Diamond
	};
	{
		Name = AL["Page 7"];
		[01] = { itemID = 44107, price = "200 #wintergrasp#" }; --Exquisite Sunderseer Mantle
		[02] = { itemID = 44103, price = "200 #wintergrasp#" }; --Exceptional Stormshroud Shoulders
		[03] = { itemID = 44105, price = "200 #wintergrasp#" }; --Lasting Feralheart Spaulders
		[04] = { itemID = 44102, price = "200 #wintergrasp#" }; --Aged Pauldrons of The Five Thunders
		[05] = { itemID = 44101, price = "200 #wintergrasp#" }; --Prized Beastmaster's Mantle
		[06] = { itemID = 44100, price = "200 #wintergrasp#" }; --Pristine Lightforge Spaulders
		[07] = { itemID = 44099, price = "200 #wintergrasp#" }; --Strengthened Stockade Pauldrons
		[09] = { itemID = 44098, price = "250 #wintergrasp#" }; --Inherited Insignia of the Alliance
		[10] = { itemID = 44097, price = "250 #wintergrasp#" }; --Inherited Insignia of the Horde
		[12] = { itemID = 44115, price = "30 #wintergrasp# / 9 #wintergraspmark#" }; --Wintergrasp Commendation
		[16] = { itemID = 44091, price = "200 #wintergrasp#" }; --Sharpened Scarlet Kris
		[17] = { itemID = 44096, price = "200 #wintergrasp#" }; --Battleworn Thrash Blade
		[18] = { itemID = 44092, price = "325 #wintergrasp#" }; --Reforged Truesilver Champion
		[19] = { itemID = 44094, price = "250 #wintergrasp#" }; --The Blessed Hammer of Grace
		[20] = { itemID = 44095, price = "325 #wintergrasp#" }; --Grand Staff of Jordan
		[21] = { itemID = 44093, price = "325 #wintergrasp#" }; --Upgraded Dwarven Hand Cannon
	};
};

-----------------------------------------------
--- World PvP - Grizzly Hills: Venture Bay  ---
-----------------------------------------------

AtlasLoot_Data["VentureBay"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = "Venture Bay";
	{
		Name = "Venture Bay";
		[01] = { itemID = 38354, price = "50 #venturecoin#" }; --Oil-Stained Tarp
		[02] = { itemID = 38355, price = "50 #venturecoin#" }; --Thick Goblin Back Protector 
		[03] = { itemID = 38353, price = "50 #venturecoin#" }; --Venture Bay Buccaneer's Cape
		[04] = { itemID = 38358, price = "70 #venturecoin#" }; --Arcane Revitalizer
		[05] = { itemID = 38359, price = "70 #venturecoin#" }; --Goblin Repetition Reducer
		[06] = { itemID = 38357, price = "30 #venturecoin#" }; --Sharpened Throwing Gizmo
		[07] = { itemID = 38356, price = "30 #venturecoin#" }; --Venture Battle Wand
		[08] = { itemID = 38360, price = "30 #venturecoin#" }; --Idol of Arcane Terror
		[09] = { itemID = 38365, price = "30 #venturecoin#" }; --Idol of Perspicacious Attacks
		[10] = { itemID = 38366, price = "30 #venturecoin#" }; --Idol of Pure Thoughts
		[11] = { itemID = 38364, price = "30 #venturecoin#" }; --Venture Co. Libram of Mostly Holy Deeds
		[12] = { itemID = 38363, price = "30 #venturecoin#" }; --Venture Co. Libram of Protection
		[13] = { itemID = 38362, price = "30 #venturecoin#" }; --Venture Co. Libram of Retribution
		[16] = { itemID = 38368, price = "30 #venturecoin#" }; --Totem of the Bay
		[17] = { itemID = 38367, price = "30 #venturecoin#" }; --Venture Co. Flame Slicer
		[18] = { itemID = 38361, price = "30 #venturecoin#" }; --Venture Co. Lightning Rod
		[19] = { itemID = 40875, price = "30 #venturecoin#" }; --Sigil of Arthritic Binding
		[20] = { itemID = 40822, price = "30 #venturecoin#" }; --Sigil of the Frozen Conscience
		[21] = { itemID = 40867, price = "30 #venturecoin#" }; --Sigil of the Wild Buck
		[23] = { itemID = 37836 }; --Venture Coin
	};
};

--------------------------
--- Sets & Collections ---
--------------------------

---------------------------------------
---------- Naxx Sets (T7) -------------
---------------------------------------

AtlasLoot_Data["T7"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = "Tier 7";
	Type = "WrathRaid";
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS";
		[01] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Scourgeborne Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39619, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Scourgeborne Helmet
		[03] = { itemID = 39621, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Scourgeborne Shoulderplates
		[04] = { itemID = 39617, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Scourgeborne Battleplate
		[05] = { itemID = 39618, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Scourgeborne Gauntlets
		[06] = { itemID = 39620, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Scourgeborne Legplates
		[08] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Scourgeborne Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40554, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Scourgeborne Helmet
		[10] = { itemID = 40557, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Scourgeborne Shoulderplates
		[11] = { itemID = 40550, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Scourgeborne Battleplate
		[12] = { itemID = 40552, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Scourgeborne Gauntlets
		[13] = { itemID = 40556, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Scourgeborne Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK";
		[01] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Scourgeborne Plate"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39625, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Scourgeborne Faceguard
		[03] = { itemID = 39627, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Scourgeborne Pauldrons
		[04] = { itemID = 39623, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Scourgeborne Chestguard
		[05] = { itemID = 39624, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Scourgeborne Handguards
		[06] = { itemID = 39626, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Scourgeborne Legguards
		[08] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Scourgeborne Plate"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40565, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Scourgeborne Faceguard
		[10] = { itemID = 40568, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Scourgeborne Pauldrons
		[11] = { itemID = 40559, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Scourgeborne Chestguard
		[12] = { itemID = 40563, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Scourgeborne Handguards
		[13] = { itemID = 40567, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Scourgeborne Legguards
	};
	{
		Name = "Druid" .. " - " .. AL["Feral"];
		[01] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Dreamwalker Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39553, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Dreamwalker Headguard
		[03] = { itemID = 39556, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Dreamwalker Shoulderpads
		[04] = { itemID = 39554, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Dreamwalker Raiments
		[05] = { itemID = 39557, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Dreamwalker Handgrips
		[06] = { itemID = 39555, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Dreamwalker Legguards
		[08] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Dreamwalker Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40473, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Dreamwalker Headguard
		[10] = { itemID = 40494, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Dreamwalker Shoulderpads
		[11] = { itemID = 40471, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Dreamwalker Raiments
		[12] = { itemID = 40472, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Dreamwalker Handgrips
		[13] = { itemID = 40493, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Dreamwalker Legguards
	};
	{
		Name = "Druid" .. " - " .. AL["Restoration"];
		[01] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Dreamwalker Regalia"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39531, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Dreamwalker Headpiece
		[03] = { itemID = 39542, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Dreamwalker Spaulders
		[04] = { itemID = 39538, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Dreamwalker Robe
		[05] = { itemID = 39543, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Dreamwalker Handguards
		[06] = { itemID = 39539, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Dreamwalker Leggings
		[08] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Dreamwalker Regalia"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40461, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Dreamwalker Headpiece
		[10] = { itemID = 40465, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Dreamwalker Spaulders
		[11] = { itemID = 40463, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Dreamwalker Robe
		[12] = { itemID = 40460, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Dreamwalker Handguards
		[13] = { itemID = 40462, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Dreamwalker Leggings
	};
	{
		Name = "Druid" .. " - " .. AL["Balance"];
		[01] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Dreamwalker Garb"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39545, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Dreamwalker Cover
		[03] = { itemID = 39548, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Dreamwalker Mantle
		[04] = { itemID = 39547, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Dreamwalker Vestments
		[05] = { itemID = 39544, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Dreamwalker Gloves
		[06] = { itemID = 39546, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Dreamwalker Trousers
		[08] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Dreamwalker Garb"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40467, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Dreamwalker Cover
		[10] = { itemID = 40470, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Dreamwalker Mantle
		[11] = { itemID = 40469, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Dreamwalker Vestments
		[12] = { itemID = 40466, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Dreamwalker Gloves
		[13] = { itemID = 40468, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Dreamwalker Trousers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[01] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Cryptstalker Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39578, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Cryptstalker Headpiece
		[03] = { itemID = 39581, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Cryptstalker Spaulders
		[04] = { itemID = 39579, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Cryptstalker Tunic
		[05] = { itemID = 39582, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Cryptstalker Handguards
		[06] = { itemID = 39580, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Cryptstalker Legguards
		[08] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Cryptstalker Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40505, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Crypstalker Headpiece
		[10] = { itemID = 40507, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Crypstalker Spaulders
		[11] = { itemID = 40503, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Crypstalker Tunic
		[12] = { itemID = 40504, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Crypstalker Handguards
		[13] = { itemID = 40506, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Crypstalker Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[01] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Frostfire Garb"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39491, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Frostfire Circlet
		[03] = { itemID = 39494, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Frostfire Shoulderpads
		[04] = { itemID = 39492, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Frostfire Robe
		[05] = { itemID = 39495, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Frostfire Gloves
		[06] = { itemID = 39493, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Frostfire Leggings
		[08] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Frostfire Garb"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40416, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Frostfire Circlet
		[10] = { itemID = 40419, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Frostfire Shoulderpads
		[11] = { itemID = 40418, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Frostfire Robe
		[12] = { itemID = 40415, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Frostfire Gloves
		[13] = { itemID = 40417, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Frostfire Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Holy"];
		[01] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Redemption Regalia"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39628, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Redemption Headpiece
		[03] = { itemID = 39631, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Redemption Spaulders
		[04] = { itemID = 39629, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Redemption Tunic
		[05] = { itemID = 39632, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Redemption Gloves
		[06] = { itemID = 39630, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Redemption Greaves
		[08] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Redemption Regalia"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40571, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Redemption Headpiece
		[10] = { itemID = 40573, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Redemption Spaulders
		[11] = { itemID = 40569, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Redemption Tunic
		[12] = { itemID = 40570, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Redemption Gloves
		[13] = { itemID = 40572, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Redemption Greaves
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Retribution"];
		[01] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Redemption Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39635, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Redemption Helm
		[03] = { itemID = 39637, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Redemption Shoulderplates
		[04] = { itemID = 39633, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Redemption Chestpiece
		[05] = { itemID = 39634, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Redemption Gauntlets
		[06] = { itemID = 39636, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Redemption Legplates
		[08] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Redemption Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40576, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Redemption Helm
		[10] = { itemID = 40578, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Redemption Shoulderplates
		[11] = { itemID = 40574, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Redemption Chestpiece
		[12] = { itemID = 40575, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Redemption Gauntlets
		[13] = { itemID = 40577, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Redemption Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Protection"];
		[01] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Redemption Plate"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39640, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Redemption Faceguard
		[03] = { itemID = 39642, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Redemption Shouldergards
		[04] = { itemID = 39638, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Redemption Breastplate
		[05] = { itemID = 39639, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Redemption Handguards
		[06] = { itemID = 39641, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Redemption Legguards
		[08] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Redemption Plate"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40581, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Redemption Faceguard
		[10] = { itemID = 40584, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Redemption Shouldergards
		[11] = { itemID = 40579, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Redemption Breastplate
		[12] = { itemID = 40580, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Redemption Handguards
		[13] = { itemID = 40583, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Redemption Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Shadow"];
		[01] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Garb of Faith"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39521, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Circlet of Faith
		[03] = { itemID = 39529, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Mantle of Faith
		[04] = { itemID = 39523, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Raiments of Faith
		[05] = { itemID = 39530, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Handwraps of Faith
		[06] = { itemID = 39528, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Pants of Faith
		[08] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Garb of Faith"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40456, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Circlet of Faith
		[10] = { itemID = 40459, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Mantle of Faith
		[11] = { itemID = 40458, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Raiments of Faith
		[12] = { itemID = 40454, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Handwraps of Faith
		[13] = { itemID = 40457, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Pants of Faith
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Holy"];
		[01] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Regalia of Faith"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39514, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Crown of Faith
		[03] = { itemID = 39518, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Shoulderpads of Faith
		[04] = { itemID = 39515, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Robe of Faith
		[05] = { itemID = 39519, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Gloves of Faith
		[06] = { itemID = 39517, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Leggings of Faith
		[08] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Regalia of Faith"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40447, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Crown of Faith
		[10] = { itemID = 40450, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Shoulderpads of Faith
		[11] = { itemID = 40449, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Robe of Faith
		[12] = { itemID = 40445, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Gloves of Faith
		[13] = { itemID = 40448, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Leggings of Faith
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[01] = { icon = "Ability_BackStab", name = "=q6="..AL["Bonescythe Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39561, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Bonescythe Helmet
		[03] = { itemID = 39565, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Bonescythe Pauldrons
		[04] = { itemID = 39558, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Bonescythe Breastplate
		[05] = { itemID = 39560, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Bonescythe Gauntlets
		[06] = { itemID = 39564, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Bonescythe Legplates
		[08] = { icon = "Ability_BackStab", name = "=q6="..AL["Bonescythe Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40499, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Bonescythe Helmet
		[10] = { itemID = 40502, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Bonescythe Pauldrons
		[11] = { itemID = 40495, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Bonescythe Breastplate
		[12] = { itemID = 40496, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Bonescythe Gauntlets
		[13] = { itemID = 40500, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Bonescythe Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Restoration"];
		[01] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Earthshatter Regalia"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39583, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Earthshatter Headpiece
		[03] = { itemID = 39590, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Earthshatter Spaulders
		[04] = { itemID = 39588, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Earthshatter Tunic
		[05] = { itemID = 39591, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Earthshatter Handguards
		[06] = { itemID = 39589, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Earthshatter Legguards
		[08] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Earthshatter Regalia"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40510, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Earthshatter Headpiece
		[10] = { itemID = 40513, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Earthshatter Spaulders
		[11] = { itemID = 40508, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Earthshatter Tunic
		[12] = { itemID = 40509, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Earthshatter Handguards
		[13] = { itemID = 40512, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Earthshatter Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Enhancement"];
		[01] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Earthshatter Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39602, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Earthshatter Faceguard
		[03] = { itemID = 39604, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Earthshatter Shoulderguards
		[04] = { itemID = 39597, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Earthshatter Chestguard
		[05] = { itemID = 39601, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Earthshatter Grips
		[06] = { itemID = 39603, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Earthshatter War-Kilt
		[08] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Earthshatter Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40521, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Earthshatter Faceguard
		[10] = { itemID = 40524, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Earthshatter Shoulderguards
		[11] = { itemID = 40523, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Earthshatter Chestguard
		[12] = { itemID = 40520, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Earthshatter Grips
		[13] = { itemID = 40522, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Earthshatter War-Kilt
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Elemental"];
		[01] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Earthshatter Garb"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39594, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Earthshatter Helm
		[03] = { itemID = 39596, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Earthshatter Shoulderpads
		[04] = { itemID = 39592, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Earthshatter Hauberk
		[05] = { itemID = 39593, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Earthshatter Gloves
		[06] = { itemID = 39595, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Earthshatter Kilt
		[08] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Earthshatter Garb"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40516, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Earthshatter Helm
		[10] = { itemID = 40518, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Earthshatter Shoulderpads
		[11] = { itemID = 40514, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Earthshatter Hauberk
		[12] = { itemID = 40515, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Earthshatter Gloves
		[13] = { itemID = 40517, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Earthshatter Kilt
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[01] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Plagueheart Garb"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39496, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Plagueheart Circlet
		[03] = { itemID = 39499, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Plagueheart Shoulderpads
		[04] = { itemID = 39497, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Plagueheart Robe
		[05] = { itemID = 39500, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Plagueheart Gloves
		[06] = { itemID = 39498, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Plagueheart Leggings
		[08] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Plagueheart Garb"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40421, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Plagueheart Circlet
		[10] = { itemID = 40424, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Plagueheart Shoulderpads
		[11] = { itemID = 40423, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Plagueheart Robe
		[12] = { itemID = 40420, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Plagueheart Gloves
		[13] = { itemID = 40422, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Plagueheart Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Fury"];
		[01] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Dreadnaught Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39605, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Dreadnaught Helmet
		[03] = { itemID = 39608, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Dreadnaught Shoulderplates
		[04] = { itemID = 39606, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Dreadnaught Battleplate
		[05] = { itemID = 39609, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Dreadnaught Gauntlets
		[06] = { itemID = 39607, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Dreadnaught Legplates
		[08] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Dreadnaught Battlegear"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40528, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Dreadnaught Helmet
		[10] = { itemID = 40530, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Dreadnaught Shoulderplates
		[11] = { itemID = 40525, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Dreadnaught Battleplate
		[12] = { itemID = 40527, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Dreadnaught Gauntlets
		[13] = { itemID = 40529, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Dreadnaught Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Protection"];
		[01] = { icon = "INV_Shield_05", name = "=q6="..AL["Dreadnaught Plate"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 39610, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Heroes' Dreadnaught Greathelm
		[03] = { itemID = 39613, "=ds=" .. BabbleBoss["Loatheb"] }; --Heroes' Dreadnaught Pauldrons
		[04] = { itemID = 39611, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Heroes' Dreadnaught Breastplate
		[05] = { itemID = 39622, "=ds=" .. BabbleBoss["Sartharion"] }; --Heroes' Dreadnaught Handguards
		[06] = { itemID = 39612, "=ds=" .. BabbleBoss["Thaddius"] }; --Heroes' Dreadnaught Legguards
		[08] = { icon = "INV_Shield_05", name = "=q6="..AL["Dreadnaught Plate"], desc = "=q5=" .. AL["Tier 7"] .. " (" .. AL["25 Man"] .. ")" };
		[09] = { itemID = 40546, "=ds=" .. BabbleBoss["Kel'Thuzad"] }; --Valorous Dreadnaught Greathelm
		[10] = { itemID = 40548, "=ds=" .. BabbleBoss["Loatheb"] }; --Valorous Dreadnaught Pauldrons
		[11] = { itemID = 40544, "=ds=" .. BabbleBoss["The Four Horsemen"] }; --Valorous Dreadnaught Breastplate
		[12] = { itemID = 40545, "=ds=" .. BabbleBoss["Sartharion"] }; --Valorous Dreadnaught Handguards
		[13] = { itemID = 40547, "=ds=" .. BabbleBoss["Thaddius"] }; --Valorous Dreadnaught Legguards
	};
};


---------------------------------------
---------- Ulduar Sets (T8) -----------
---------------------------------------

AtlasLoot_Data["T8"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = "Tier 8";
	Type = "WrathRaid";
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS";
		[01] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Darkruned Battlegear"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45342, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Darkruned Helmet
		[03] = { itemID = 45344, "=ds=" .. BabbleBoss.Thorim }; --Valorous Darkruned Shoulderplates
		[04] = { itemID = 45340, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Darkruned Battleplate
		[05] = { itemID = 45341, "=ds=" .. BabbleBoss.Freya }; --Valorous Darkruned Gauntlets
		[06] = { itemID = 45343, "=ds=" .. BabbleBoss.Hodir }; --Valorous Darkruned Legplates
		[07] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Darkruned Battlegear"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46115, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Darkruned Helmet
		[09] = { itemID = 46117, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Darkruned Shoulderplates
		[10] = { itemID = 46111, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Darkruned Battleplate
		[11] = { itemID = 46113, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Darkruned Gauntlets
		[12] = { itemID = 46116, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Darkruned Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK";
		[01] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Darkruned Plate"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45336, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Darkruned Faceguard
		[03] = { itemID = 45339, "=ds=" .. BabbleBoss.Thorim }; --Valorous Darkruned Pauldrons
		[04] = { itemID = 45335, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Darkruned Chestguard
		[05] = { itemID = 45337, "=ds=" .. BabbleBoss.Freya }; --Valorous Darkruned Handguards
		[06] = { itemID = 45338, "=ds=" .. BabbleBoss.Hodir }; --Valorous Darkruned Legguards
		[07] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Darkruned Plate"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46120, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Darkruned Faceguard
		[09] = { itemID = 46122, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Darkruned Pauldrons
		[10] = { itemID = 46118, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Darkruned Chestguard
		[11] = { itemID = 46119, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Darkruned Handguards
		[12] = { itemID = 46121, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Darkruned Legguards
	};
	{
		Name = "Druid" .. " - " .. AL["Feral"];
		[01] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Nightsong Battlegear"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45356, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Nightsong Headguard
		[03] = { itemID = 45359, "=ds=" .. BabbleBoss.Thorim }; --Valorous Nightsong Shoulderpads
		[04] = { itemID = 45358, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Nightsong Raiments
		[05] = { itemID = 45355, "=ds=" .. BabbleBoss.Freya }; --Valorous Nightsong Handgrips
		[06] = { itemID = 45357, "=ds=" .. BabbleBoss.Hodir }; --Valorous Nightsong Legguards
		[07] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Nightsong Battlegear"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46161, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Nightsong Headguard
		[09] = { itemID = 46157, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Nightsong Shoulderpads
		[10] = { itemID = 46159, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Nightsong Raiments
		[11] = { itemID = 46158, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Nightsong Handgrips
		[12] = { itemID = 46160, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Nightsong Legguards
	};
	{
		Name = "Druid" .. " - " .. AL["Restoration"];
		[01] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Nightsong Regalia"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45346, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Nightsong Headpiece
		[03] = { itemID = 45349, "=ds=" .. BabbleBoss.Thorim }; --Valorous Nightsong Spaulders
		[04] = { itemID = 45348, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Nightsong Robe
		[05] = { itemID = 45345, "=ds=" .. BabbleBoss.Freya }; --Valorous Nightsong Handguards
		[06] = { itemID = 45347, "=ds=" .. BabbleBoss.Hodir }; --Valorous Nightsong Leggings
		[07] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Nightsong Regalia"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46184, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Nightsong Headpiece
		[09] = { itemID = 46187, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Nightsong Spaulders
		[10] = { itemID = 46186, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Nightsong Robe
		[11] = { itemID = 46183, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Nightsong Handguards
		[12] = { itemID = 46185, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Nightsong Leggings
	};
	{
		Name = "Druid" .. " - " .. AL["Balance"];
		[01] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Nightsong Garb"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 46313, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Nightsong Cover
		[03] = { itemID = 45352, "=ds=" .. BabbleBoss.Thorim }; --Valorous Nightsong Mantle
		[04] = { itemID = 45354, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Nightsong Vestments
		[05] = { itemID = 45351, "=ds=" .. BabbleBoss.Freya }; --Valorous Nightsong Gloves
		[06] = { itemID = 45353, "=ds=" .. BabbleBoss.Hodir }; --Valorous Nightsong Trousers
		[07] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Nightsong Garb"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46191, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Nightsong Cover
		[09] = { itemID = 46196, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Nightsong Mantle
		[10] = { itemID = 46194, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Nightsong Vestments
		[11] = { itemID = 46189, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Nightsong Gloves
		[12] = { itemID = 46192, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Nightsong Trousers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[01] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Scourgestalker Battlegear"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45361, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Scourgestalker Headpiece
		[03] = { itemID = 45363, "=ds=" .. BabbleBoss.Thorim }; --Valorous Scourgestalker Spaulders
		[04] = { itemID = 45364, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Scourgestalker Tunic
		[05] = { itemID = 45360, "=ds=" .. BabbleBoss.Freya }; --Valorous Scourgestalker Handguards
		[06] = { itemID = 45362, "=ds=" .. BabbleBoss.Hodir }; --Valorous Scourgestalker Legguards
		[07] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Scourgestalker Battlegear"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46143, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Scourgestalker Headpiece
		[09] = { itemID = 46145, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Scourgestalker Spaulders
		[10] = { itemID = 46141, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Scourgestalker Tunic
		[11] = { itemID = 46142, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Scourgestalker Handguards
		[12] = { itemID = 46144, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Scourgestalker Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[01] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Kirin Tor Garb"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45365, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Kirin Tor Hood
		[03] = { itemID = 45369, "=ds=" .. BabbleBoss.Thorim }; --Valorous Kirin Tor Shoulderpads
		[04] = { itemID = 45368, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Kirin Tor Tunic
		[05] = { itemID = 46131, "=ds=" .. BabbleBoss.Freya }; --Valorous Kirin Tor Gauntlets
		[06] = { itemID = 45367, "=ds=" .. BabbleBoss.Hodir }; --Valorous Kirin Tor Leggings
		[07] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Kirin Tor Garb"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46129, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Kirin Tor Hood
		[09] = { itemID = 46134, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Kirin Tor Shoulderpads
		[10] = { itemID = 46130, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Kirin Tor Tunic
		[11] = { itemID = 46132, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Kirin Tor Gauntlets
		[12] = { itemID = 46133, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Kirin Tor Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Holy"];
		[01] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Aegis Regalia"], desc = "=q5=(" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45372, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Aegis Headpiece
		[03] = { itemID = 45373, "=ds=" .. BabbleBoss.Thorim }; --Valorous Aegis Spaulders
		[04] = { itemID = 45374, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Aegis Tunic
		[05] = { itemID = 45370, "=ds=" .. BabbleBoss.Freya }; --Valorous Aegis Gloves
		[06] = { itemID = 45371, "=ds=" .. BabbleBoss.Hodir }; --Valorous Aegis Greaves
		[07] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Aegis Regalia"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46180, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Aegis Headpiece
		[09] = { itemID = 46182, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Aegis Spaulders
		[10] = { itemID = 46178, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Aegis Tunic
		[11] = { itemID = 46179, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Aegis Gloves
		[12] = { itemID = 46181, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Aegis Greaves
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Retribution"];
		[01] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Aegis Battlegear"], desc = "=q5=(" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45377, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Aegis Helm
		[03] = { itemID = 45380, "=ds=" .. BabbleBoss.Thorim }; --Valorous Aegis Shoulderplates
		[04] = { itemID = 45375, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Aegis Battleplate
		[05] = { itemID = 45376, "=ds=" .. BabbleBoss.Freya }; --Valorous Aegis Gauntlets
		[06] = { itemID = 45379, "=ds=" .. BabbleBoss.Hodir }; --Valorous Aegis Legplates
		[07] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Aegis Battlegear"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46156, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Aegis Helm
		[09] = { itemID = 46152, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Aegis Shoulderplates
		[10] = { itemID = 46154, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Aegis Battleplate
		[11] = { itemID = 46155, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Aegis Gauntlets
		[12] = { itemID = 46153, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Aegis Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Protection"];
		[01] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Aegis Plate"], desc = "=q5=(" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45382, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Aegis Faceguard
		[03] = { itemID = 45385, "=ds=" .. BabbleBoss.Thorim }; --Valorous Aegis Shouldergards
		[04] = { itemID = 45381, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Aegis Breastplate
		[05] = { itemID = 45383, "=ds=" .. BabbleBoss.Freya }; --Valorous Aegis Handguards
		[06] = { itemID = 45384, "=ds=" .. BabbleBoss.Hodir }; --Valorous Aegis Legguards
		[07] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Aegis Plate"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46175, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Aegis Faceguard
		[09] = { itemID = 46177, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Aegis Shouldergards
		[10] = { itemID = 46173, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Aegis Breastplate
		[11] = { itemID = 46174, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Aegis Handguards
		[12] = { itemID = 46176, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Aegis Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Shadow"];
		[01] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Sanctification Garb"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45391, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Circlet of Sanctification
		[03] = { itemID = 45393, "=ds=" .. BabbleBoss.Thorim }; --Valorous Mantle of Sanctification
		[04] = { itemID = 45395, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Raiments of Sanctification
		[05] = { itemID = 45392, "=ds=" .. BabbleBoss.Freya }; --Valorous Handwraps of Sanctification
		[06] = { itemID = 45394, "=ds=" .. BabbleBoss.Hodir }; --Valorous Pants of Sanctification
		[07] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Sanctification Garb"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46172, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Circlet of Sanctification
		[09] = { itemID = 46165, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Mantle of Sanctification
		[10] = { itemID = 46168, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Raiments of Sanctification
		[11] = { itemID = 46163, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Handwraps of Sanctification
		[12] = { itemID = 46170, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Pants of Sanctification
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Holy"];
		[01] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Sanctification Regalia"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45386, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Cowl of Sanctification
		[03] = { itemID = 45390, "=ds=" .. BabbleBoss.Thorim }; --Valorous Shoulderpads of Sanctification
		[04] = { itemID = 45389, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Robe of Sanctification
		[05] = { itemID = 45387, "=ds=" .. BabbleBoss.Freya }; --Valorous Gloves of Sanctification
		[06] = { itemID = 45388, "=ds=" .. BabbleBoss.Hodir }; --Valorous Leggings of Sanctification
		[07] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Sanctification Regalia"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46197, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Cowl of Sanctification
		[09] = { itemID = 46190, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Shoulderpads of Sanctification
		[10] = { itemID = 46193, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Robe of Sanctification
		[11] = { itemID = 46188, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Gloves of Sanctification
		[12] = { itemID = 46195, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Leggings of Sanctification
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[01] = { icon = "Ability_BackStab", name = "=q6="..AL["Terrorblade Battlegear"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45398, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Terrorblade Helmet
		[03] = { itemID = 45400, "=ds=" .. BabbleBoss.Thorim }; --Valorous Terrorblade Pauldrons
		[04] = { itemID = 45396, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Terrorblade Breastplate
		[05] = { itemID = 45397, "=ds=" .. BabbleBoss.Freya }; --Valorous Terrorblade Gauntlets
		[06] = { itemID = 45399, "=ds=" .. BabbleBoss.Hodir }; --Valorous Terrorblade Legplates
		[07] = { icon = "Ability_BackStab", name = "=q6="..AL["Terrorblade Battlegear"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46125, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Terrorblade Helmet
		[09] = { itemID = 46127, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Terrorblade Pauldrons
		[10] = { itemID = 46123, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Terrorblade Breastplate
		[11] = { itemID = 46124, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Terrorblade Gauntlets
		[12] = { itemID = 46126, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Terrorblade Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Restoration"];
		[01] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Worldbreaker Regalia"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45402, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Worldbreaker Headpiece
		[03] = { itemID = 45404, "=ds=" .. BabbleBoss.Thorim }; --Valorous Worldbreaker Spaulders
		[04] = { itemID = 45405, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Worldbreaker Tunic
		[05] = { itemID = 45401, "=ds=" .. BabbleBoss.Freya }; --Valorous Worldbreaker Handguards
		[06] = { itemID = 45403, "=ds=" .. BabbleBoss.Hodir }; --Valorous Worldbreaker Legguards
		[07] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Worldbreaker Regalia"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46201, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Worldbreaker Headpiece
		[09] = { itemID = 46204, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Worldbreaker Spaulders
		[10] = { itemID = 46198, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Worldbreaker Tunic
		[11] = { itemID = 46199, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Worldbreaker Handguards
		[12] = { itemID = 46202, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Worldbreaker Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Enhancement"];
		[01] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Worldbreaker Battlegear"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45412, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Worldbreaker Faceguard
		[03] = { itemID = 45415, "=ds=" .. BabbleBoss.Thorim }; --Valorous Worldbreaker Shoulderguards
		[04] = { itemID = 45413, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Worldbreaker Chestguard
		[05] = { itemID = 45414, "=ds=" .. BabbleBoss.Freya }; --Valorous Worldbreaker Grips
		[06] = { itemID = 45416, "=ds=" .. BabbleBoss.Hodir }; --Valorous Worldbreaker War-Kilt
		[07] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Worldbreaker Battlegear"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46212, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Worldbreaker Faceguard
		[09] = { itemID = 46203, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Worldbreaker Shoulderguards
		[10] = { itemID = 46205, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Worldbreaker Chestguard
		[11] = { itemID = 46200, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Worldbreaker Grips
		[12] = { itemID = 46208, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Worldbreaker War-Kilt
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Elemental"];
		[01] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Worldbreaker Garb"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45408, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Worldbreaker Helm
		[03] = { itemID = 45410, "=ds=" .. BabbleBoss.Thorim }; --Valorous Worldbreaker Shoulderpads
		[04] = { itemID = 45411, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Worldbreaker Hauberk
		[05] = { itemID = 45406, "=ds=" .. BabbleBoss.Freya }; --Valorous Worldbreaker Gloves
		[06] = { itemID = 45409, "=ds=" .. BabbleBoss.Hodir }; --Valorous Worldbreaker Kilt
		[07] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Worldbreaker Garb"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46209, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Worldbreaker Helm
		[09] = { itemID = 46211, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Worldbreaker Shoulderpads
		[10] = { itemID = 46206, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Worldbreaker Hauberk
		[11] = { itemID = 46207, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Worldbreaker Gloves
		[12] = { itemID = 46210, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Worldbreaker Kilt
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[01] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Deathbringer Garb"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45417, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Deathbringer Hood
		[03] = { itemID = 45422, "=ds=" .. BabbleBoss.Thorim }; --Valorous Deathbringer Shoulderpads
		[04] = { itemID = 45421, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Deathbringer Robe
		[05] = { itemID = 45419, "=ds=" .. BabbleBoss.Freya }; --Valorous Deathbringer Gloves
		[06] = { itemID = 45420, "=ds=" .. BabbleBoss.Hodir }; --Valorous Deathbringer Leggings
		[07] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Deathbringer Garb"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46140, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Deathbringer Hood
		[09] = { itemID = 46136, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Deathbringer Shoulderpads
		[10] = { itemID = 46137, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Deathbringer Robe
		[11] = { itemID = 46135, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Deathbringer Gloves
		[12] = { itemID = 46139, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Deathbringer Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Fury"];
		[01] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Siegebreaker Battlegear"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45431, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Siegebreaker Helmet
		[03] = { itemID = 45433, "=ds=" .. BabbleBoss.Thorim }; --Valorous Siegebreaker Shoulderplates
		[04] = { itemID = 45429, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Siegebreaker Battleplate
		[05] = { itemID = 45430, "=ds=" .. BabbleBoss.Freya }; --Valorous Siegebreaker Gauntlets
		[06] = { itemID = 45432, "=ds=" .. BabbleBoss.Hodir }; --Valorous Siegebreaker Legplates
		[07] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Siegebreaker Battlegear"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46151, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Siegebreaker Helmet
		[09] = { itemID = 46149, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Siegebreaker Shoulderplates
		[10] = { itemID = 46146, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Siegebreaker Battleplate
		[11] = { itemID = 46148, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Siegebreaker Gauntlets
		[12] = { itemID = 46150, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Siegebreaker Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Protection"];
		[01] = { icon = "INV_Shield_05", name = "=q6="..AL["Siegebreaker Plate"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["10 Man"] .. ")" };
		[02] = { itemID = 45425, "=ds=" .. BabbleBoss["Mimiron"] }; --Valorous Siegebreaker Greathelm
		[03] = { itemID = 45428, "=ds=" .. BabbleBoss.Thorim }; --Valorous Siegebreaker Pauldrons
		[04] = { itemID = 45424, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Valorous Siegebreaker Breastplate
		[05] = { itemID = 45426, "=ds=" .. BabbleBoss.Freya }; --Valorous Siegebreaker Handguards
		[06] = { itemID = 45427, "=ds=" .. BabbleBoss.Hodir }; --Valorous Siegebreaker Legguards
		[07] = { icon = "INV_Shield_05", name = "=q6="..AL["Siegebreaker Plate"], desc = "=q5=" .. AL["Tier 8"] .. " (" .. AL["25 Man"] .. ")" };
		[08] = { itemID = 46166, "=ds=" .. BabbleBoss.Thorim }; --Conqueror's Siegebreaker Greathelm
		[09] = { itemID = 46167, "=ds=" .. BabbleBoss["Yogg-Saron"] }; --Conqueror's Siegebreaker Pauldrons
		[10] = { itemID = 46162, "=ds=" .. BabbleBoss.Hodir }; --Conqueror's Siegebreaker Breastplate
		[11] = { itemID = 46164, "=ds=" .. BabbleBoss["Mimiron"] }; --Conqueror's Siegebreaker Handguards
		[12] = { itemID = 46169, "=ds=" .. BabbleBoss.Freya }; --Conqueror's Siegebreaker Legguards
	};
};
------------------------
--- Tier 9 Sets (T9) ---
------------------------
AtlasLoot_Data["T9"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = "Tier 9";
	Type = "WrathRaid";
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS";
		[01] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Thassarian's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48472, price = "50 #eoftriumph#" }; --Thassarian's Helmet of Conquest
		[03] = { itemID = 48478, price = "30 #eoftriumph#" }; --Thassarian's Shoulderplates of Conquest
		[04] = { itemID = 48474, price = "50 #eoftriumph#" }; --Thassarian's Battleplate of Conquest
		[05] = { itemID = 48480, price = "30 #eoftriumph#" }; --Thassarian's Gauntlets of Conquest
		[06] = { itemID = 48476, price = "50 #eoftriumph#" }; --Thassarian's Legplates of Conquest
		[08] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Thassarian's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48483, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Helmet of Triumph
		[10] = { itemID = 48485, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Shoulderplates of Triumph
		[11] = { itemID = 48481, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Battleplate of Triumph
		[12] = { itemID = 48482, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Gauntlets of Triumph
		[13] = { itemID = 48484, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Legplates of Triumph
		[16] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Thassarian's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48488 }; --Thassarian's Helmet of Triumph
		[18] = { itemID = 48486 }; --Thassarian's Shoulderplates of Triumph
		[19] = { itemID = 48490 }; --Thassarian's Battleplate of Triumph
		[20] = { itemID = 48489 }; --Thassarian's Gauntlets of Triumph
		[21] = { itemID = 48487 }; --Thassarian's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS";
		[01] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Koltira's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48503, price = "50 #eoftriumph#" }; --Koltira's Helmet of Conquest
		[03] = { itemID = 48505, price = "30 #eoftriumph#" }; --Koltira's Shoulderplates of Conquest
		[04] = { itemID = 48501, price = "50 #eoftriumph#" }; --Koltira's Battleplate of Conquest
		[05] = { itemID = 48502, price = "30 #eoftriumph#" }; --Koltira's Gauntlets of Conquest
		[06] = { itemID = 48504, price = "50 #eoftriumph#" }; --Koltira's Legplates of Conquest
		[08] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Koltira's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48498, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Helmet of Triumph
		[10] = { itemID = 48496, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Shoulderplates of Triumph
		[11] = { itemID = 48500, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Battleplate of Triumph
		[12] = { itemID = 48499, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Gauntlets of Triumph
		[13] = { itemID = 48497, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Legplates of Triumph
		[16] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Koltira's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48493 }; --Koltira's Helmet of Triumph
		[18] = { itemID = 48495 }; --Koltira's Shoulderplates of Triumph
		[19] = { itemID = 48491 }; --Koltira's Battleplate of Triumph
		[20] = { itemID = 48492 }; --Koltira's Gauntlets of Triumph
		[21] = { itemID = 48494 }; --Koltira's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK";
		[01] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Thassarian's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48529, price = "50 #eoftriumph#" }; --Thassarian's Faceguard of Conquest
		[03] = { itemID = 48535, price = "30 #eoftriumph#" }; --Thassarian's Pauldrons of Conquest
		[04] = { itemID = 48531, price = "50 #eoftriumph#" }; --Thassarian's Chestguard of Conquest
		[05] = { itemID = 48537, price = "30 #eoftriumph#" }; --Thassarian's Handguards of Conquest
		[06] = { itemID = 48533, price = "50 #eoftriumph#" }; --Thassarian's Legguards of Conquest
		[08] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Thassarian's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48540, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Faceguard of Triumph
		[10] = { itemID = 48542, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Pauldrons of Triumph
		[11] = { itemID = 48538, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Chestguard of Triumph
		[12] = { itemID = 48539, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Handguards of Triumph
		[13] = { itemID = 48541, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thassarian's Legguards of Triumph
		[16] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Thassarian's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48545 }; --Thassarian's Faceguard of Triumph
		[18] = { itemID = 48543 }; --Thassarian's Pauldrons of Triumph
		[19] = { itemID = 48547 }; --Thassarian's Chestguard of Triumph
		[20] = { itemID = 48546 }; --Thassarian's Handguards of Triumph
		[21] = { itemID = 48544 }; --Thassarian's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK";
		[01] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Koltira's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48560, price = "50 #eoftriumph#" }; --Koltira's Faceguard of Conquest
		[03] = { itemID = 48562, price = "30 #eoftriumph#" }; --Koltira's Pauldrons of Conquest
		[04] = { itemID = 48558, price = "50 #eoftriumph#" }; --Koltira's Chestguard of Conquest
		[05] = { itemID = 48559, price = "30 #eoftriumph#" }; --Koltira's Handguards of Conquest
		[06] = { itemID = 48561, price = "50 #eoftriumph#" }; --Koltira's Legguards of Conquest
		[08] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Koltira's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48555, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Faceguard of Triumph
		[10] = { itemID = 48553, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Pauldrons of Triumph
		[11] = { itemID = 48557, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Chestguard of Triumph
		[12] = { itemID = 48556, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Handguards of Triumph
		[13] = { itemID = 48554, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Koltira's Legguards of Triumph
		[16] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Koltira's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48550 }; --Koltira's Faceguard of Triumph
		[18] = { itemID = 48552 }; --Koltira's Pauldrons of Triumph
		[19] = { itemID = 48548 }; --Koltira's Chestguard of Triumph
		[20] = { itemID = 48549 }; --Koltira's Handguards of Triumph
		[21] = { itemID = 48551 }; --Koltira's Legguards of Triumph
	};
	{
		Name = "Druid" .. " - " .. AL["Restoration"];
		[01] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Malfurion's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48102, price = "50 #eoftriumph#" }; --Malfurion's Headpiece of Conquest
		[03] = { itemID = 48131, price = "30 #eoftriumph#" }; --Malfurion's Spaulders of Conquest
		[04] = { itemID = 48129, price = "50 #eoftriumph#" }; --Malfurion's Robe of Conquest
		[05] = { itemID = 48132, price = "30 #eoftriumph#" }; --Malfurion's Handguards of Conquest
		[06] = { itemID = 48130, price = "50 #eoftriumph#" }; --Malfurion's Leggings of Conquest
		[08] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Malfurion's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48134, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Headpiece of Triumph
		[10] = { itemID = 48137, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Spaulders of Triumph
		[11] = { itemID = 48136, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Robe of Triumph
		[12] = { itemID = 48133, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Handguards of Triumph
		[13] = { itemID = 48135, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Leggings of Triumph
		[16] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Malfurion's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48141 }; --Malfurion's Headpiece of Triumph
		[18] = { itemID = 48138 }; --Malfurion's Spaulders of Triumph
		[19] = { itemID = 48139 }; --Malfurion's Robe of Triumph
		[20] = { itemID = 48142 }; --Malfurion's Handguards of Triumph
		[21] = { itemID = 48140 }; --Malfurion's Leggings of Triumph
	};
	{
		Name = "Druid" .. " - " .. AL["Restoration"];
		[01] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Runetotem's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48154, price = "50 #eoftriumph#" }; --Runetotem's Headpiece of Conquest
		[03] = { itemID = 48157, price = "30 #eoftriumph#" }; --Runetotem's Spaulders of Conquest
		[04] = { itemID = 48156, price = "50 #eoftriumph#" }; --Runetotem's Robe of Conquest
		[05] = { itemID = 48153, price = "30 #eoftriumph#" }; --Runetotem's Handguards of Conquest
		[06] = { itemID = 48155, price = "50 #eoftriumph#" }; --Runetotem's Leggings of Conquest
		[08] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Runetotem's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48151, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Headpiece of Triumph
		[10] = { itemID = 48148, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Spaulders of Triumph
		[11] = { itemID = 48149, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Robe of Triumph
		[12] = { itemID = 48152, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Handguards of Triumph
		[13] = { itemID = 48150, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Leggings of Triumph
		[16] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Runetotem's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48144 }; --Runetotem's Headpiece of Triumph
		[18] = { itemID = 48147 }; --Runetotem's Spaulders of Triumph
		[19] = { itemID = 48146 }; --Runetotem's Robe of Triumph
		[20] = { itemID = 48143 }; --Runetotem's Handguards of Triumph
		[21] = { itemID = 48145 }; --Runetotem's Leggings of Triumph
	};
	{
		Name = "Druid" .. " - " .. AL["Feral"];
		[01] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Malfurion's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48214, price = "50 #eoftriumph#" }; --Malfurion's Headguard of Conquest
		[03] = { itemID = 48217, price = "30 #eoftriumph#" }; --Malfurion's Shoulderpads of Conquest
		[04] = { itemID = 48216, price = "50 #eoftriumph#" }; --Malfurion's Raiments of Conquest
		[05] = { itemID = 48213, price = "30 #eoftriumph#" }; --Malfurion's Handgrips of Conquest
		[06] = { itemID = 48215, price = "50 #eoftriumph#" }; --Malfurion's Legguards of Conquest
		[08] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Malfurion's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48211, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Headguard of Triumph
		[10] = { itemID = 48208, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Shoulderpads of Triumph
		[11] = { itemID = 48209, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Raiments of Triumph
		[12] = { itemID = 48212, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Handgrips of Triumph
		[13] = { itemID = 48210, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Legguards of Triumph
		[16] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Malfurion's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48204 }; --Malfurion's Headguard of Triumph
		[18] = { itemID = 48207 }; --Malfurion's Shoulderpads of Triumph
		[19] = { itemID = 48206 }; --Malfurion's Raiments of Triumph
		[20] = { itemID = 48203 }; --Malfurion's Handgrips of Triumph
		[21] = { itemID = 48205 }; --Malfurion's Legguards of Triumph
	};
	{
		Name = "Druid" .. " - " .. AL["Feral"];
		[01] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Runetotem's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48188, price = "50 #eoftriumph#" }; --Runetotem's Headguard of Conquest
		[03] = { itemID = 48191, price = "30 #eoftriumph#" }; --Runetotem's Shoulderpads of Conquest
		[04] = { itemID = 48189, price = "50 #eoftriumph#" }; --Runetotem's Raiments of Conquest
		[05] = { itemID = 48192, price = "30 #eoftriumph#" }; --Runetotem's Handgrips of Conquest
		[06] = { itemID = 48190, price = "50 #eoftriumph#" }; --Runetotem's Legguards of Conquest
		[08] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Runetotem's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48194, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Headguard of Triumph
		[10] = { itemID = 48197, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Shoulderpads of Triumph
		[11] = { itemID = 48196, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Raiments of Triumph
		[12] = { itemID = 48193, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Handgrips of Triumph
		[13] = { itemID = 48195, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Legguards of Triumph
		[16] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Runetotem's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48201 }; --Runetotem's Headguard of Triumph
		[18] = { itemID = 48198 }; --Runetotem's Shoulderpads of Triumph
		[19] = { itemID = 48199 }; --Runetotem's Raiments of Triumph
		[20] = { itemID = 48202 }; --Runetotem's Handgrips of Triumph
		[21] = { itemID = 48200 }; --Runetotem's Legguards of Triumph
	};
	{
		Name = "Druid" .. " - " .. AL["Balance"];
		[01] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Malfurion's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48158, price = "50 #eoftriumph#" }; --Malfurion's Cover of Conquest
		[03] = { itemID = 48161, price = "30 #eoftriumph#" }; --Malfurion's Mantle of Conquest
		[04] = { itemID = 48159, price = "50 #eoftriumph#" }; --Malfurion's Vestments of Conquest
		[05] = { itemID = 48162, price = "30 #eoftriumph#" }; --Malfurion's Gloves of Conquest
		[06] = { itemID = 48160, price = "50 #eoftriumph#" }; --Malfurion's Trousers of Conquest
		[08] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Malfurion's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48164, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Cover of Triumph
		[10] = { itemID = 48167, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Mantle of Triumph
		[11] = { itemID = 48166, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Vestments of Triumph
		[12] = { itemID = 48163, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Gloves of Triumph
		[13] = { itemID = 48165, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Malfurion's Trousers of Triumph
		[16] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Malfurion's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48171 }; --Malfurion's Cover of Triumph
		[18] = { itemID = 48168 }; --Malfurion's Mantle of Triumph
		[19] = { itemID = 48169 }; --Malfurion's Vestments of Triumph
		[20] = { itemID = 48172 }; --Malfurion's Gloves of Triumph
		[21] = { itemID = 48170 }; --Malfurion's Trousers of Triumph
	};
	{
		Name = "Druid" .. " - " .. AL["Balance"];
		[01] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Runetotem's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48184, price = "50 #eoftriumph#" }; --Runetotem's Cover of Conquest
		[03] = { itemID = 48187, price = "30 #eoftriumph#" }; --Runetotem's Mantle of Conquest
		[04] = { itemID = 48186, price = "50 #eoftriumph#" }; --Runetotem's Vestments of Conquest
		[05] = { itemID = 48183, price = "30 #eoftriumph#" }; --Runetotem's Gloves of Conquest
		[06] = { itemID = 48185, price = "50 #eoftriumph#" }; --Runetotem's Trousers of Conquest
		[08] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Runetotem's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48181, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Cover of Triumph
		[10] = { itemID = 48178, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Mantle of Triumph
		[11] = { itemID = 48179, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Vestments of Triumph
		[12] = { itemID = 48182, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Gloves of Triumph
		[13] = { itemID = 48180, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Runetotem's Trousers of Triumph
		[16] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Runetotem's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48174 }; --Runetotem's Cover of Triumph
		[18] = { itemID = 48177 }; --Runetotem's Mantle of Triumph
		[19] = { itemID = 48176 }; --Runetotem's Vestments of Triumph
		[20] = { itemID = 48173 }; --Runetotem's Gloves of Triumph
		[21] = { itemID = 48175 }; --Runetotem's Trousers of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[01] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Windrunner's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48250, price = "50 #eoftriumph#" }; --Windrunner's Headpiece of Conquest
		[03] = { itemID = 48253, price = "30 #eoftriumph#" }; --Windrunner's Spaulders of Conquest
		[04] = { itemID = 48251, price = "50 #eoftriumph#" }; --Windrunner's Tunic of Conquest
		[05] = { itemID = 48254, price = "30 #eoftriumph#" }; --Windrunner's Handguards of Conquest
		[06] = { itemID = 48252, price = "50 #eoftriumph#" }; --Windrunner's Legguards of Conquest
		[08] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Windrunner's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48257, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Headpiece of Triumph
		[10] = { itemID = 48259, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Spaulders of Triumph
		[11] = { itemID = 48255, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Tunic of Triumph
		[12] = { itemID = 48256, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Handguards of Triumph
		[13] = { itemID = 48258, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Legguards of Triumph
		[16] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Windrunner's Pursuit"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48262 }; --Windrunner's Headpiece of Triumph
		[18] = { itemID = 48260 }; --Windrunner's Spaulders of Triumph
		[19] = { itemID = 48264 }; --Windrunner's Tunic of Triumph
		[20] = { itemID = 48263 }; --Windrunner's Handguards of Triumph
		[21] = { itemID = 48261 }; --Windrunner's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[01] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Windrunner's Pursuit"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48277, price = "50 #eoftriumph#" }; --Windrunner's Headpiece of Conquest
		[03] = { itemID = 48279, price = "30 #eoftriumph#" }; --Windrunner's Spaulders of Conquest
		[04] = { itemID = 48275, price = "50 #eoftriumph#" }; --Windrunner's Tunic of Conquest
		[05] = { itemID = 48276, price = "30 #eoftriumph#" }; --Windrunner's Handguards of Conquest
		[06] = { itemID = 48278, price = "50 #eoftriumph#" }; --Windrunner's Legguards of Conquest
		[08] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Windrunner's Pursuit"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48272, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Headpiece of Triumph
		[10] = { itemID = 48270, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Spaulders of Triumph
		[11] = { itemID = 48274, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Tunic of Triumph
		[12] = { itemID = 48273, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Handguards of Triumph
		[13] = { itemID = 48271, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Windrunner's Legguards of Triumph
		[16] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Windrunner's Pursuit"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48267 }; --Windrunner's Headpiece of Triumph
		[18] = { itemID = 48269 }; --Windrunner's Spaulders of Triumph
		[19] = { itemID = 48265 }; --Windrunner's Tunic of Triumph
		[20] = { itemID = 48266 }; --Windrunner's Handguards of Triumph
		[21] = { itemID = 48268 }; --Windrunner's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[01] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Khadgar's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 47748, price = "50 #eoftriumph#" }; --Khadgar's Hood of Conquest
		[03] = { itemID = 47751, price = "30 #eoftriumph#" }; --Khadgar's Shoulderpads of Conquest
		[04] = { itemID = 47749, price = "50 #eoftriumph#" }; --Khadgar's Robe of Conquest
		[05] = { itemID = 47752, price = "30 #eoftriumph#" }; --Khadgar's Gauntlets of Conquest
		[06] = { itemID = 47750, price = "50 #eoftriumph#" }; --Khadgar's Leggings of Conquest
		[08] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Khadgar's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 47754, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Khadgar's Hood of Triumph
		[10] = { itemID = 47757, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Khadgar's Shoulderpads of Triumph
		[11] = { itemID = 47756, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Khadgar's Robe of Triumph
		[12] = { itemID = 47753, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Khadgar's Gauntlets of Triumph
		[13] = { itemID = 47755, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Khadgar's Leggings of Triumph
		[16] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Khadgar's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 47761 }; --Khadgar's Hood of Triumph
		[18] = { itemID = 47758 }; --Khadgar's Shoulderpads of Triumph
		[19] = { itemID = 47759 }; --Khadgar's Robe of Triumph
		[20] = { itemID = 47762 }; --Khadgar's Gauntlets of Triumph
		[21] = { itemID = 47760 }; --Khadgar's Leggings of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[01] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Sunstrider's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 47774, price = "50 #eoftriumph#" }; --Sunstrider's Hood of Conquest
		[03] = { itemID = 47777, price = "30 #eoftriumph#" }; --Sunstrider's Shoulderpads of Conquest
		[04] = { itemID = 47776, price = "50 #eoftriumph#" }; --Sunstrider's Robe of Conquest
		[05] = { itemID = 47773, price = "30 #eoftriumph#" }; --Sunstrider's Gauntlets of Conquest
		[06] = { itemID = 47775, price = "50 #eoftriumph#" }; --Sunstrider's Leggings of Conquest
		[08] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Sunstrider's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 47771, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Sunstrider's Hood of Triumph
		[10] = { itemID = 47768, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Sunstrider's Shoulderpads of Triumph
		[11] = { itemID = 47769, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Sunstrider's Robe of Triumph
		[12] = { itemID = 47772, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Sunstrider's Gauntlets of Triumph
		[13] = { itemID = 47770, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Sunstrider's Leggings of Triumph
		[16] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Sunstrider's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 47764 }; --Sunstrider's Hood of Triumph
		[18] = { itemID = 47767 }; --Sunstrider's Shoulderpads of Triumph
		[19] = { itemID = 47766 }; --Sunstrider's Robe of Triumph
		[20] = { itemID = 47763 }; --Sunstrider's Gauntlets of Triumph
		[21] = { itemID = 47765 }; --Sunstrider's Leggings of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Holy"];
		[01] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Turalyon's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48564, price = "50 #eoftriumph#" }; --Turalyon's Headpiece of Conquest
		[03] = { itemID = 48572, price = "30 #eoftriumph#" }; --Turalyon's Spaulders of Conquest
		[04] = { itemID = 48566, price = "50 #eoftriumph#" }; --Turalyon's Tunic of Conquest
		[05] = { itemID = 48574, price = "30 #eoftriumph#" }; --Turalyon's Gloves of Conquest
		[06] = { itemID = 48568, price = "50 #eoftriumph#" }; --Turalyon's Greaves of Conquest
		[08] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Turalyon's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48577, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Headpiece of Triumph
		[10] = { itemID = 48579, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Spaulders of Triumph
		[11] = { itemID = 48575, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Tunic of Triumph
		[12] = { itemID = 48576, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Gloves of Triumph
		[13] = { itemID = 48578, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Greaves of Triumph
		[16] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Turalyon's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48582 }; --Turalyon's Headpiece of Triumph
		[18] = { itemID = 48580 }; --Turalyon's Spaulders of Triumph
		[19] = { itemID = 48584 }; --Turalyon's Tunic of Triumph
		[20] = { itemID = 48583 }; --Turalyon's Gloves of Triumph
		[21] = { itemID = 48581 }; --Turalyon's Greaves of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Holy"];
		[01] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Liadrin's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48597, price = "50 #eoftriumph#" }; --Liadrin's Headpiece of Conquest
		[03] = { itemID = 48595, price = "30 #eoftriumph#" }; --Liadrin's Spaulders of Conquest
		[04] = { itemID = 48599, price = "50 #eoftriumph#" }; --Liadrin's Tunic of Conquest
		[05] = { itemID = 48598, price = "30 #eoftriumph#" }; --Liadrin's Gloves of Conquest
		[06] = { itemID = 48596, price = "50 #eoftriumph#" }; --Liadrin's Greaves of Conquest
		[08] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Liadrin's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48592, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Headpiece of Triumph
		[10] = { itemID = 48590, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Spaulders of Triumph
		[11] = { itemID = 48594, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Tunic of Triumph
		[12] = { itemID = 48593, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Gloves of Triumph
		[13] = { itemID = 48591, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Greaves of Triumph
		[16] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Liadrin's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48587 }; --Liadrin's Headpiece of Triumph
		[18] = { itemID = 48585 }; --Liadrin's Spaulders of Triumph
		[19] = { itemID = 48589 }; --Liadrin's Tunic of Triumph
		[20] = { itemID = 48588 }; --Liadrin's Gloves of Triumph
		[21] = { itemID = 48586 }; --Liadrin's Greaves of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Retribution"];
		[01] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Turalyon's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48604, price = "50 #eoftriumph#" }; --Turalyon's Helm of Conquest
		[03] = { itemID = 48606, price = "30 #eoftriumph#" }; --Turalyon's Shoulderplates of Conquest
		[04] = { itemID = 48602, price = "50 #eoftriumph#" }; --Turalyon's Battleplate of Conquest
		[05] = { itemID = 48603, price = "30 #eoftriumph#" }; --Turalyon's Gauntlets of Conquest
		[06] = { itemID = 48605, price = "50 #eoftriumph#" }; --Turalyon's Legplates of Conquest
		[08] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Turalyon's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48609, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Helm of Triumph
		[10] = { itemID = 48611, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Shoulderplates of Triumph
		[11] = { itemID = 48607, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Battleplate of Triumph
		[12] = { itemID = 48608, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Gauntlets of Triumph
		[13] = { itemID = 48610, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Legplates of Triumph
		[16] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Turalyon's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48614 }; --Turalyon's Helm of Triumph
		[18] = { itemID = 48612 }; --Turalyon's Shoulderplates of Triumph
		[19] = { itemID = 48616 }; --Turalyon's Battleplate of Triumph
		[20] = { itemID = 48615 }; --Turalyon's Gauntlets of Triumph
		[21] = { itemID = 48613 }; --Turalyon's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Retribution"];
		[01] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Liadrin's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48629, price = "50 #eoftriumph#" }; --Liadrin's Helm of Conquest
		[03] = { itemID = 48627, price = "30 #eoftriumph#" }; --Liadrin's Shoulderplates of Conquest
		[04] = { itemID = 48631, price = "50 #eoftriumph#" }; --Liadrin's Battleplate of Conquest
		[05] = { itemID = 48630, price = "30 #eoftriumph#" }; --Liadrin's Gauntlets of Conquest
		[06] = { itemID = 48628, price = "50 #eoftriumph#" }; --Liadrin's Legplates of Conquest
		[08] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Liadrin's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48624, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Helm of Triumph
		[10] = { itemID = 48622, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Shoulderplates of Triumph
		[11] = { itemID = 48626, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Battleplate of Triumph
		[12] = { itemID = 48625, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Gauntlets of Triumph
		[13] = { itemID = 48623, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Legplates of Triumph
		[16] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Liadrin's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48619 }; --Liadrin's Helm of Triumph
		[18] = { itemID = 48621 }; --Liadrin's Shoulderplates of Triumph
		[19] = { itemID = 48617 }; --Liadrin's Battleplate of Triumph
		[20] = { itemID = 48618 }; --Liadrin's Gauntlets of Triumph
		[21] = { itemID = 48620 }; --Liadrin's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Protection"];
		[01] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Turalyon's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48634, price = "50 #eoftriumph#" }; --Turalyon's Faceguard of Conquest
		[03] = { itemID = 48636, price = "30 #eoftriumph#" }; --Turalyon's Shoulderguards of Conquest
		[04] = { itemID = 48632, price = "50 #eoftriumph#" }; --Turalyon's Breastplate of Conquest
		[05] = { itemID = 48633, price = "30 #eoftriumph#" }; --Turalyon's Handguards of Conquest
		[06] = { itemID = 48635, price = "50 #eoftriumph#" }; --Turalyon's Legguards of Conquest
		[08] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Turalyon's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48639, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Faceguard of Triumph
		[10] = { itemID = 48637, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Shoulderguards of Triumph
		[11] = { itemID = 48641, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Breastplate of Triumph
		[12] = { itemID = 48640, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Handguards of Triumph
		[13] = { itemID = 48638, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Turalyon's Legguards of Triumph
		[16] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Turalyon's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48644 }; --Turalyon's Faceguard of Triumph
		[18] = { itemID = 48646 }; --Turalyon's Shoulderguards of Triumph
		[19] = { itemID = 48642 }; --Turalyon's Breastplate of Triumph
		[20] = { itemID = 48643 }; --Turalyon's Handguards of Triumph
		[21] = { itemID = 48645 }; --Turalyon's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Protection"];
		[01] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Liadrin's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48654, price = "50 #eoftriumph#" }; --Liadrin's Faceguard of Conquest
		[03] = { itemID = 48656, price = "30 #eoftriumph#" }; --Liadrin's Shoulderguards of Conquest
		[04] = { itemID = 48652, price = "50 #eoftriumph#" }; --Liadrin's Breastplate of Conquest
		[05] = { itemID = 48653, price = "30 #eoftriumph#" }; --Liadrin's Handguards of Conquest
		[06] = { itemID = 48655, price = "50 #eoftriumph#" }; --Liadrin's Legguards of Conquest
		[08] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Liadrin's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48659, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Faceguard of Triumph
		[10] = { itemID = 48661, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Shoulderguards of Triumph
		[11] = { itemID = 48657, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Breastplate of Triumph
		[12] = { itemID = 48658, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Handguards of Triumph
		[13] = { itemID = 48660, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Liadrin's Legguards of Triumph
		[16] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Liadrin's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48649 }; --Liadrin's Faceguard of Triumph
		[18] = { itemID = 48647 }; --Liadrin's Shoulderguards of Triumph
		[19] = { itemID = 48651 }; --Liadrin's Breastplate of Triumph
		[20] = { itemID = 48650 }; --Liadrin's Handguards of Triumph
		[21] = { itemID = 48648 }; --Liadrin's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Shadow"];
		[01] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Velen's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48073, price = "50 #eoftriumph#" }; --Velen's Circlet of Conquest
		[03] = { itemID = 48076, price = "30 #eoftriumph#" }; --Velen's Mantle of Conquest
		[04] = { itemID = 48075, price = "50 #eoftriumph#" }; --Velen's Raiments of Conquest
		[05] = { itemID = 48072, price = "30 #eoftriumph#" }; --Velen's Handwraps of Conquest
		[06] = { itemID = 48074, price = "50 #eoftriumph#" }; --Velen's Pants of Conquest
		[08] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Velen's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48078, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Circlet of Triumph
		[10] = { itemID = 48081, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Mantle of Triumph
		[11] = { itemID = 48080, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Raiments of Triumph
		[12] = { itemID = 48077, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Handwraps of Triumph
		[13] = { itemID = 48079, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Pants of Triumph
		[16] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Velen's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48085 }; --Velen's Circlet of Triumph
		[18] = { itemID = 48082 }; --Velen's Mantle of Triumph
		[19] = { itemID = 48083 }; --Velen's Raiments of Triumph
		[20] = { itemID = 48086 }; --Velen's Handwraps of Triumph
		[21] = { itemID = 48084 }; --Velen's Pants of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Shadow"];
		[01] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Zabra's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48098, price = "50 #eoftriumph#" }; --Zabra's Circlet of Conquest
		[03] = { itemID = 48101, price = "30 #eoftriumph#" }; --Zabra's Mantle of Conquest
		[04] = { itemID = 48100, price = "50 #eoftriumph#" }; --Zabra's Raiments of Conquest
		[05] = { itemID = 48097, price = "30 #eoftriumph#" }; --Zabra's Handwraps of Conquest
		[06] = { itemID = 48099, price = "50 #eoftriumph#" }; --Zabra's Pants of Conquest
		[08] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Zabra's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48095, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Circlet of Triumph
		[10] = { itemID = 48092, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Mantle of Triumph
		[11] = { itemID = 48093, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Raiments of Triumph
		[12] = { itemID = 48096, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Handwraps of Triumph
		[13] = { itemID = 48094, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Pants of Triumph
		[16] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Zabra's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48088 }; --Zabra's Circlet of Triumph
		[18] = { itemID = 48091 }; --Zabra's Mantle of Triumph
		[19] = { itemID = 48090 }; --Zabra's Raiments of Triumph
		[20] = { itemID = 48087 }; --Zabra's Handwraps of Triumph
		[21] = { itemID = 48089 }; --Zabra's Pants of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Holy"];
		[01] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Velen's Raiment"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 47914, price = "50 #eoftriumph#" }; --Velen's Cowl of Conquest
		[03] = { itemID = 47981, price = "30 #eoftriumph#" }; --Velen's Shoulderpads of Conquest
		[04] = { itemID = 47936, price = "50 #eoftriumph#" }; --Velen's Robe of Conquest
		[05] = { itemID = 47982, price = "30 #eoftriumph#" }; --Velen's Gloves of Conquest
		[06] = { itemID = 47980, price = "50 #eoftriumph#" }; --Velen's Leggings of Conquest
		[08] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Velen's Raiment"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 47984, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Cowl of Triumph
		[10] = { itemID = 47987, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Shoulderpads of Triumph
		[11] = { itemID = 47986, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Robe of Triumph
		[12] = { itemID = 47983, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Gloves of Triumph
		[13] = { itemID = 47985, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Velen's Leggings of Triumph
		[16] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Velen's Raiment"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48035 }; --Velen's Cowl of Triumph
		[18] = { itemID = 48029 }; --Velen's Shoulderpads of Triumph
		[19] = { itemID = 48031 }; --Velen's Robe of Triumph
		[20] = { itemID = 48037 }; --Velen's Gloves of Triumph
		[21] = { itemID = 48033 }; --Velen's Leggings of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Holy"];
		[01] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Zabra's Raiment"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48068, price = "50 #eoftriumph#" }; --Zabra's Cowl of Conquest
		[03] = { itemID = 48071, price = "30 #eoftriumph#" }; --Zabra's Shoulderpads of Conquest
		[04] = { itemID = 48070, price = "50 #eoftriumph#" }; --Zabra's Robe of Conquest
		[05] = { itemID = 48067, price = "30 #eoftriumph#" }; --Zabra's Gloves of Conquest
		[06] = { itemID = 48069, price = "50 #eoftriumph#" }; --Zabra's Leggings of Conquest
		[08] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Zabra's Raiment"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48065, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Cowl of Triumph
		[10] = { itemID = 48062, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Shoulderpads of Triumph
		[11] = { itemID = 48063, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Robe of Triumph
		[12] = { itemID = 48066, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Gloves of Triumph
		[13] = { itemID = 48064, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Zabra's Leggings of Triumph
		[16] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Zabra's Raiment"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48058 }; --Zabra's Cowl of Triumph
		[18] = { itemID = 48061 }; --Zabra's Shoulderpads of Triumph
		[19] = { itemID = 48060 }; --Zabra's Robe of Triumph
		[20] = { itemID = 48057 }; --Zabra's Gloves of Triumph
		[21] = { itemID = 48059 }; --Zabra's Leggings of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[01] = { icon = "Ability_BackStab", name = "=q6="..AL["VanCleef's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48218, price = "50 #eoftriumph#" }; --VanCleef's Helmet of Conquest
		[03] = { itemID = 48221, price = "30 #eoftriumph#" }; --VanCleef's Pauldrons of Conquest
		[04] = { itemID = 48219, price = "50 #eoftriumph#" }; --VanCleef's Breastplate of Conquest
		[05] = { itemID = 48222, price = "30 #eoftriumph#" }; --VanCleef's Gauntlets of Conquest
		[06] = { itemID = 48220, price = "50 #eoftriumph#" }; --VanCleef's Legplates of Conquest
		[08] = { icon = "Ability_BackStab", name = "=q6="..AL["VanCleef's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48225, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --VanCleef's Helmet of Triumph
		[10] = { itemID = 48227, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --VanCleef's Pauldrons of Triumph
		[11] = { itemID = 48223, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --VanCleef's Breastplate of Triumph
		[12] = { itemID = 48224, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --VanCleef's Gauntlets of Triumph
		[13] = { itemID = 48226, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --VanCleef's Legplates of Triumph
		[16] = { icon = "Ability_BackStab", name = "=q6="..AL["VanCleef's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48230 }; --VanCleef's Helmet of Triumph
		[18] = { itemID = 48228 }; --VanCleef's Pauldrons of Triumph
		[19] = { itemID = 48232 }; --VanCleef's Breastplate of Triumph
		[20] = { itemID = 48231 }; --VanCleef's Gauntlets of Triumph
		[21] = { itemID = 48229 }; --VanCleef's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[01] = { icon = "Ability_BackStab", name = "=q6="..AL["Garona's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48245, price = "50 #eoftriumph#" }; --Garona's Helmet of Conquest
		[03] = { itemID = 48247, price = "30 #eoftriumph#" }; --Garona's Pauldrons of Conquest
		[04] = { itemID = 48243, price = "50 #eoftriumph#" }; --Garona's Breastplate of Conquest
		[05] = { itemID = 48244, price = "30 #eoftriumph#" }; --Garona's Gauntlets of Conquest
		[06] = { itemID = 48246, price = "50 #eoftriumph#" }; --Garona's Legplates of Conquest
		[08] = { icon = "Ability_BackStab", name = "=q6="..AL["Garona's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48240, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Garona's Helmet of Triumph
		[10] = { itemID = 48238, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Garona's Pauldrons of Triumph
		[11] = { itemID = 48242, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Garona's Breastplate of Triumph
		[12] = { itemID = 48241, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Garona's Gauntlets of Triumph
		[13] = { itemID = 48239, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Garona's Legplates of Triumph
		[16] = { icon = "Ability_BackStab", name = "=q6="..AL["Garona's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48235 }; --Garona's Helmet of Triumph
		[18] = { itemID = 48237 }; --Garona's Pauldrons of Triumph
		[19] = { itemID = 48233 }; --Garona's Breastplate of Triumph
		[20] = { itemID = 48234 }; --Garona's Gauntlets of Triumph
		[21] = { itemID = 48236 }; --Garona's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Elemental"];
		[01] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Nobundo's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48313, price = "50 #eoftriumph#" }; --Nobundo's Helm of Conquest
		[03] = { itemID = 48315, price = "30 #eoftriumph#" }; --Nobundo's Shoulderpads of Conquest
		[04] = { itemID = 48310, price = "50 #eoftriumph#" }; --Nobundo's Hauberk of Conquest
		[05] = { itemID = 48312, price = "30 #eoftriumph#" }; --Nobundo's Gloves of Conquest
		[06] = { itemID = 48314, price = "50 #eoftriumph#" }; --Nobundo's Kilt of Conquest
		[08] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Nobundo's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48318, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Helm of Triumph
		[10] = { itemID = 48320, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Shoulderpads of Triumph
		[11] = { itemID = 48316, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Hauberk of Triumph
		[12] = { itemID = 48317, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Gloves of Triumph
		[13] = { itemID = 48319, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Kilt of Triumph
		[16] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Nobundo's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48323 }; --Nobundo's Helm of Triumph
		[18] = { itemID = 48321 }; --Nobundo's Shoulderpads of Triumph
		[19] = { itemID = 48325 }; --Nobundo's Hauberk of Triumph
		[20] = { itemID = 48324 }; --Nobundo's Gloves of Triumph
		[21] = { itemID = 48322 }; --Nobundo's Kilt of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Elemental"];
		[01] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Thrall's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48338, price = "50 #eoftriumph#" }; --Thrall's Helm of Conquest
		[03] = { itemID = 48340, price = "30 #eoftriumph#" }; --Thrall's Shoulderpads of Conquest
		[04] = { itemID = 48336, price = "50 #eoftriumph#" }; --Thrall's Hauberk of Conquest
		[05] = { itemID = 48337, price = "30 #eoftriumph#" }; --Thrall's Gloves of Conquest
		[06] = { itemID = 48339, price = "50 #eoftriumph#" }; --Thrall's Kilt of Conquest
		[08] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Thrall's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48333, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Helm of Triumph
		[10] = { itemID = 48331, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Shoulderpads of Triumph
		[11] = { itemID = 48335, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Hauberk of Triumph
		[12] = { itemID = 48334, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Gloves of Triumph
		[13] = { itemID = 48332, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Kilt of Triumph
		[16] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Thrall's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48328 }; --Thrall's Helm of Triumph
		[18] = { itemID = 48330 }; --Thrall's Shoulderpads of Triumph
		[19] = { itemID = 48326 }; --Thrall's Hauberk of Triumph
		[20] = { itemID = 48327 }; --Thrall's Gloves of Triumph
		[21] = { itemID = 48329 }; --Thrall's Kilt of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Enhancement"];
		[01] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Nobundo's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48343, price = "50 #eoftriumph#" }; --Nobundo's Faceguard of Conquest
		[03] = { itemID = 48345, price = "30 #eoftriumph#" }; --Nobundo's Shoulderguards of Conquest
		[04] = { itemID = 48341, price = "50 #eoftriumph#" }; --Nobundo's Chestguard of Conquest
		[05] = { itemID = 48342, price = "30 #eoftriumph#" }; --Nobundo's Grips of Conquest
		[06] = { itemID = 48344, price = "50 #eoftriumph#" }; --Nobundo's War-Kilt of Conquest
		[08] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Nobundo's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48348, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Faceguard of Triumph
		[10] = { itemID = 48350, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Shoulderguards of Triumph
		[11] = { itemID = 48346, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Chestguard of Triumph
		[12] = { itemID = 48347, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Grips of Triumph
		[13] = { itemID = 48349, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's War-Kilt of Triumph
		[16] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Nobundo's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48353 }; --Nobundo's Faceguard of Triumph
		[18] = { itemID = 48351 }; --Nobundo's Shoulderguards of Triumph
		[19] = { itemID = 48355 }; --Nobundo's Chestguard of Triumph
		[20] = { itemID = 48354 }; --Nobundo's Grips of Triumph
		[21] = { itemID = 48352 }; --Nobundo's War-Kilt of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Enhancement"];
		[01] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Thrall's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48368, price = "50 #eoftriumph#" }; --Thrall's Faceguard of Conquest
		[03] = { itemID = 48370, price = "30 #eoftriumph#" }; --Thrall's Shoulderguards of Conquest
		[04] = { itemID = 48366, price = "50 #eoftriumph#" }; --Thrall's Chestguard of Conquest
		[05] = { itemID = 48367, price = "30 #eoftriumph#" }; --Thrall's Grips of Conquest
		[06] = { itemID = 48369, price = "50 #eoftriumph#" }; --Thrall's War-Kilt of Conquest
		[08] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Thrall's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48363, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Faceguard of Triumph
		[10] = { itemID = 48361, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Shoulderguards of Triumph
		[11] = { itemID = 48365, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Chestguard of Triumph
		[12] = { itemID = 48364, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Grips of Triumph
		[13] = { itemID = 48362, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's War-Kilt of Triumph
		[16] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Thrall's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48358 }; --Thrall's Faceguard of Triumph
		[18] = { itemID = 48360 }; --Thrall's Shoulderguards of Triumph
		[19] = { itemID = 48356 }; --Thrall's Chestguard of Triumph
		[20] = { itemID = 48357 }; --Thrall's Grips of Triumph
		[21] = { itemID = 48359 }; --Thrall's War-Kilt of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Restoration"];
		[01] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Nobundo's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48280, price = "50 #eoftriumph#" }; --Nobundo's Headpiece of Conquest
		[03] = { itemID = 48283, price = "30 #eoftriumph#" }; --Nobundo's Spaulders of Conquest
		[04] = { itemID = 48281, price = "50 #eoftriumph#" }; --Nobundo's Tunic of Conquest
		[05] = { itemID = 48284, price = "30 #eoftriumph#" }; --Nobundo's Handguards of Conquest
		[06] = { itemID = 48282, price = "50 #eoftriumph#" }; --Nobundo's Legguards of Conquest
		[08] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Nobundo's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48287, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Headpiece of Triumph
		[10] = { itemID = 48289, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Spaulders of Triumph
		[11] = { itemID = 48285, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Tunic of Triumph
		[12] = { itemID = 48286, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Handguards of Triumph
		[13] = { itemID = 48288, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Nobundo's Legguards of Triumph
		[16] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Nobundo's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48292 }; --Nobundo's Headpiece of Triumph
		[18] = { itemID = 48290 }; --Nobundo's Spaulders of Triumph
		[19] = { itemID = 48294 }; --Nobundo's Tunic of Triumph
		[20] = { itemID = 48293 }; --Nobundo's Handguards of Triumph
		[21] = { itemID = 48291 }; --Nobundo's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Restoration"];
		[01] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Thrall's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48297, price = "50 #eoftriumph#" }; --Thrall's Headpiece of Conquest
		[03] = { itemID = 48299, price = "30 #eoftriumph#" }; --Thrall's Spaulders of Conquest
		[04] = { itemID = 48295, price = "50 #eoftriumph#" }; --Thrall's Tunic of Conquest
		[05] = { itemID = 48296, price = "30 #eoftriumph#" }; --Thrall's Handguards of Conquest
		[06] = { itemID = 48298, price = "50 #eoftriumph#" }; --Thrall's Legguards of Conquest
		[08] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Thrall's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48302, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Headpiece of Triumph
		[10] = { itemID = 48304, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Spaulders of Triumph
		[11] = { itemID = 48300, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Tunic of Triumph
		[12] = { itemID = 48301, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Handguards of Triumph
		[13] = { itemID = 48303, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Thrall's Legguards of Triumph
		[16] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Thrall's Garb"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48307 }; --Thrall's Headpiece of Triumph
		[18] = { itemID = 48309 }; --Thrall's Spaulders of Triumph
		[19] = { itemID = 48305 }; --Thrall's Tunic of Triumph
		[20] = { itemID = 48306 }; --Thrall's Handguards of Triumph
		[21] = { itemID = 48308 }; --Thrall's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[01] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Kel'Thuzad's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 47784, price = "50 #eoftriumph#" }; --Kel'Thuzad's Hood of Conquest
		[03] = { itemID = 47787, price = "30 #eoftriumph#" }; --Kel'Thuzad's Shoulderpads of Conquest
		[04] = { itemID = 47786, price = "50 #eoftriumph#" }; --Kel'Thuzad's Robe of Conquest
		[05] = { itemID = 47783, price = "30 #eoftriumph#" }; --Kel'Thuzad's Gloves of Conquest
		[06] = { itemID = 47785, price = "50 #eoftriumph#" }; --Kel'Thuzad's Leggings of Conquest
		[08] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Kel'Thuzad's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 47778, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Kel'Thuzad's Hood of Triumph
		[10] = { itemID = 47781, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Kel'Thuzad's Shoulderpads of Triumph
		[11] = { itemID = 47779, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Kel'Thuzad's Robe of Triumph
		[12] = { itemID = 47782, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Kel'Thuzad's Gloves of Triumph
		[13] = { itemID = 47780, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Kel'Thuzad's Leggings of Triumph
		[16] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Kel'Thuzad's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 47789 }; --Kel'Thuzad's Hood of Triumph
		[18] = { itemID = 47792 }; --Kel'Thuzad's Shoulderpads of Triumph
		[19] = { itemID = 47791 }; --Kel'Thuzad's Robe of Triumph
		[20] = { itemID = 47788 }; --Kel'Thuzad's Gloves of Triumph
		[21] = { itemID = 47790 }; --Kel'Thuzad's Leggings of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[01] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gul'dan's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 47801, price = "50 #eoftriumph#" }; --Gul'dan's Hood of Conquest
		[03] = { itemID = 47798, price = "30 #eoftriumph#" }; --Gul'dan's Shoulderpads of Conquest
		[04] = { itemID = 47799, price = "50 #eoftriumph#" }; --Gul'dan's Robe of Conquest
		[05] = { itemID = 47802, price = "30 #eoftriumph#" }; --Gul'dan's Gloves of Conquest
		[06] = { itemID = 47800, price = "50 #eoftriumph#" }; --Gul'dan's Leggings of Conquest
		[08] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gul'dan's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 47804, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Gul'dan's Hood of Triumph
		[10] = { itemID = 47807, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Gul'dan's Shoulderpads of Triumph
		[11] = { itemID = 47806, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Gul'dan's Robe of Triumph
		[12] = { itemID = 47803, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Gul'dan's Gloves of Triumph
		[13] = { itemID = 47805, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Gul'dan's Leggings of Triumph
		[16] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Gul'dan's Regalia"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 47796 }; --Gul'dan's Hood of Triumph
		[18] = { itemID = 47793 }; --Gul'dan's Shoulderpads of Triumph
		[19] = { itemID = 47794 }; --Gul'dan's Robe of Triumph
		[20] = { itemID = 47797 }; --Gul'dan's Gloves of Triumph
		[21] = { itemID = 47795 }; --Gul'dan's Leggings of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Fury"];
		[01] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Wrynn's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48371, price = "50 #eoftriumph#" }; --Wrynn's Helmet of Conquest
		[03] = { itemID = 48374, price = "30 #eoftriumph#" }; --Wrynn's Shoulderplates of Conquest
		[04] = { itemID = 48372, price = "50 #eoftriumph#" }; --Wrynn's Battleplate of Conquest
		[05] = { itemID = 48375, price = "30 #eoftriumph#" }; --Wrynn's Gauntlets of Conquest
		[06] = { itemID = 48373, price = "50 #eoftriumph#" }; --Wrynn's Legplates of Conquest
		[08] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Wrynn's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48378, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Helmet of Triumph
		[10] = { itemID = 48380, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Shoulderplates of Triumph
		[11] = { itemID = 48376, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Battleplate of Triumph
		[12] = { itemID = 48377, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Gauntlets of Triumph
		[13] = { itemID = 48379, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Legplates of Triumph
		[16] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Wrynn's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48383 }; --Wrynn's Helmet of Triumph
		[18] = { itemID = 48381 }; --Wrynn's Shoulderplates of Triumph
		[19] = { itemID = 48385 }; --Wrynn's Battleplate of Triumph
		[20] = { itemID = 48384 }; --Wrynn's Gauntlets of Triumph
		[21] = { itemID = 48382 }; --Wrynn's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Fury"];
		[01] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Hellscream's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48388, price = "50 #eoftriumph#" }; --Hellscream's Helmet of Conquest
		[03] = { itemID = 48390, price = "30 #eoftriumph#" }; --Hellscream's Shoulderplates of Conquest
		[04] = { itemID = 48386, price = "50 #eoftriumph#" }; --Hellscream's Battleplate of Conquest
		[05] = { itemID = 48387, price = "30 #eoftriumph#" }; --Hellscream's Gauntlets of Conquest
		[06] = { itemID = 48389, price = "50 #eoftriumph#" }; --Hellscream's Legplates of Conquest
		[08] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Hellscream's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48393, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Helmet of Triumph
		[10] = { itemID = 48395, --Hellscream's Shoulderplates of Triumph
			"45 #eoftriumph# 1 #trophyofthecrusade#" };
		[11] = { itemID = 48391, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Battleplate of Triumph
		[12] = { itemID = 48392, price = "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Gauntlets of Triumph
		[13] = { itemID = 48394, price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Legplates of Triumph
		[16] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Hellscream's Battlegear"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48398 }; --Hellscream's Helmet of Triumph
		[18] = { itemID = 48400 }; --Hellscream's Shoulderplates of Triumph
		[19] = { itemID = 48396 }; --Hellscream's Battleplate of Triumph
		[20] = { itemID = 48397 }; --Hellscream's Gauntlets of Triumph
		[21] = { itemID = 48399 }; --Hellscream's Legplates of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Protection"];
		[01] = { icon = "INV_Shield_05", name = "=q6="..AL["Wrynn's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48429, price = "50 #eoftriumph#" }; --Wrynn's Greathelm of Conquest
		[03] = { itemID = 48448, price = "30 #eoftriumph#" }; --Wrynn's Pauldrons of Conquest
		[04] = { itemID = 48436, price = "50 #eoftriumph#" }; --Wrynn's Breastplate of Conquest
		[05] = { itemID = 48449, price = "30 #eoftriumph#" }; --Wrynn's Handguards of Conquest
		[06] = { itemID = 48445, price = "50 #eoftriumph#" }; --Wrynn's Legguards of Conquest
		[08] = { icon = "INV_Shield_05", name = "=q6="..AL["Wrynn's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48430,  price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Greathelm of Triumph
		[10] = { itemID = 48454, price =  "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Pauldrons of Triumph
		[11] = { itemID = 48450, price =  "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Breastplate of Triumph
		[12] = { itemID = 48452, price =  "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Handguards of Triumph
		[13] = { itemID = 48446, price =  "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Wrynn's Legguards of Triumph
		[16] = { icon = "INV_Shield_05", name = "=q6="..AL["Wrynn's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48433 }; --Wrynn's Greathelm of Triumph
		[18] = { itemID = 48455 }; --Wrynn's Pauldrons of Triumph
		[19] = { itemID = 48451 }; --Wrynn's Breastplate of Triumph
		[20] = { itemID = 48453 }; --Wrynn's Handguards of Triumph
		[21] = { itemID = 48447 }; --Wrynn's Legguards of Triumph
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Protection"];
		[01] = { icon = "INV_Shield_05", name = "=q6="..AL["Hellscream's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[02] = { itemID = 48458, price = "50 #eoftriumph#" }; --Hellscream's Greathelm of Conquest
		[03] = { itemID = 48460, price = "30 #eoftriumph#" }; --Hellscream's Pauldrons of Conquest
		[04] = { itemID = 48456, price = "50 #eoftriumph#" }; --Hellscream's Breastplate of Conquest
		[05] = { itemID = 48457, price = "30 #eoftriumph#" }; --Hellscream's Handguards of Conquest
		[06] = { itemID = 48459, price = "50 #eoftriumph#" }; --Hellscream's Legguards of Conquest
		[08] = { icon = "INV_Shield_05", name = "=q6="..AL["Hellscream's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[09] = { itemID = 48463,  price = "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Greathelm of Triumph
		[10] = { itemID = 48465, price =  "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Pauldrons of Triumph
		[11] = { itemID = 48461, price =  "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Breastplate of Triumph
		[12] = { itemID = 48462, price =  "45 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Handguards of Triumph
		[13] = { itemID = 48464, price =  "75 #eoftriumph# 1 #trophyofthecrusade#" }; --Hellscream's Legguards of Triumph
		[16] = { icon = "INV_Shield_05", name = "=q6="..AL["Hellscream's Plate"], desc = "=q5=" .. AL["Tier 9"] };
		[17] = { itemID = 48468 }; --Hellscream's Greathelm of Triumph
		[18] = { itemID = 48470 }; --Hellscream's Pauldrons of Triumph
		[19] = { itemID = 48466 }; --Hellscream's Breastplate of Triumph
		[20] = { itemID = 48467 }; --Hellscream's Handguards of Triumph
		[21] = { itemID = 48469 }; --Hellscream's Legguards of Triumph
	};
};

--------------------------
--- Tier 10 Sets (T10) ---
--------------------------
AtlasLoot_Data["T10"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = "Tier 10";
	Type = "WrathRaid";
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " DPS";
		[01] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Scourgelord's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50096, price = "95 #eoffrost#" }; --Scourgelord Helmet
		[03] = { itemID = 50098, price = "60 #eoffrost#" }; --Scourgelord Shoulderplates
		[04] = { itemID = 50094, price = "95 #eoffrost#" }; --Scourgelord Battleplate
		[05] = { itemID = 50095, price = "60 #eoffrost#" }; --Scourgelord Gauntlets
		[06] = { itemID = 50097, price = "95 #eoffrost#" }; --Scourgelord Legplates
		[08] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Scourgelord's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51127 }; --Sanctified Scourgelord Helmet
		[10] = { itemID = 51125 }; --Sanctified Scourgelord Shoulderplates
		[11] = { itemID = 51129 }; --Sanctified Scourgelord Battleplate
		[12] = { itemID = 51128 }; --Sanctified Scourgelord Gauntlets
		[13] = { itemID = 51126 }; --Sanctified Scourgelord Legplates
		[16] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Scourgelord's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51312 }; --Sanctified Scourgelord Helmet
		[18] = { itemID = 51314 }; --Sanctified Scourgelord Shoulderplates
		[19] = { itemID = 51310 }; --Sanctified Scourgelord Battleplate
		[20] = { itemID = 51311 }; --Sanctified Scourgelord Gauntlets
		[21] = { itemID = 51313 }; --Sanctified Scourgelord Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["DEATHKNIGHT"] .. " TANK";
		[01] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Scourgelord's Plate"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50855, price = "95 #eoffrost#" }; --Scourgelord Faceguard
		[03] = { itemID = 50853, price = "60 #eoffrost#" }; --Scourgelord Pauldrons
		[04] = { itemID = 50857, price = "95 #eoffrost#" }; --Scourgelord Chestguard
		[05] = { itemID = 50856, price = "60 #eoffrost#" }; --Scourgelord Handguards
		[06] = { itemID = 50854, price = "95 #eoffrost#" }; --Scourgelord Legguards
		[08] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Scourgelord's Plate"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51133 }; --Sanctified Scourgelord Faceguard
		[10] = { itemID = 51130 }; --Sanctified Scourgelord Pauldrons
		[11] = { itemID = 51134 }; --Sanctified Scourgelord Chestguard
		[12] = { itemID = 51132 }; --Sanctified Scourgelord Handguards
		[13] = { itemID = 51131 }; --Sanctified Scourgelord Legguards
		[16] = { icon = "Spell_Deathknight_DeathStrike", name = "=q6="..AL["Scourgelord's Plate"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51306 }; --Sanctified Scourgelord Faceguard
		[18] = { itemID = 51309 }; --Sanctified Scourgelord Pauldrons
		[19] = { itemID = 51305 }; --Sanctified Scourgelord Chestguard
		[20] = { itemID = 51307 }; --Sanctified Scourgelord Handguards
		[21] = { itemID = 51308 }; --Sanctified Scourgelord Legguards
	};
	{
		Name = "Druid" .. " - " .. AL["Restoration"];
		[01] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Lasherweave's Garb"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50108, price = "95 #eoffrost#" }; --Lasherweave's Helmet  
		[03] = { itemID = 50113, price = "60 #eoffrost#" }; --Lasherweave's Pauldrons
		[04] = { itemID = 50106, price = "95 #eoffrost#" }; --Lasherweave's Robes
		[05] = { itemID = 50107, price = "60 #eoffrost#" }; --Lasherweave's Gauntlets
		[06] = { itemID = 50109, price = "95 #eoffrost#" }; --Lasherweave's Legplates
		[08] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Lasherweave's Garb"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51137 }; --Sanctified Lasherweave's Helmet
		[10] = { itemID = 51135 }; --Sanctified Lasherweave's Pauldrons
		[11] = { itemID = 51139 }; --Sanctified Lasherweave's Robes
		[12] = { itemID = 51138 }; --Sanctified Lasherweave's Gauntlets
		[13] = { itemID = 51136 }; --Sanctified Lasherweave's Legplates
		[16] = { icon = "Spell_Nature_Regeneration", name = "=q6="..AL["Lasherweave's Garb"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51302 }; --Sanctified Lasherweave's Helmet
		[18] = { itemID = 51304 }; --Sanctified Lasherweave's Pauldrons
		[19] = { itemID = 51300 }; --Sanctified Lasherweave's Robes
		[20] = { itemID = 51301 }; --Sanctified Lasherweave's Gauntlets
		[21] = { itemID = 51303 }; --Sanctified Lasherweave's Legplates
	};
	{
		Name = "Druid" .. " - " .. AL["Feral"];
		[01] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Lasherweave's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50826, price = "95 #eoffrost#" }; --Lasherweave's Headguard
		[03] = { itemID = 50824, price = "60 #eoffrost#" }; --Lasherweave's Shoulderpads
		[04] = { itemID = 50828, price = "95 #eoffrost#" }; --Lasherweave's Raiment
		[05] = { itemID = 50827, price = "60 #eoffrost#" }; --Lasherweave's Handgrips
		[06] = { itemID = 50825, price = "95 #eoffrost#" }; --Lasherweave's Legguards
		[08] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Lasherweave's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51143 }; --Sanctified Lasherweave's Headguard
		[10] = { itemID = 51140 }; --Sanctified Lasherweave's Shoulderpads
		[11] = { itemID = 51141 }; --Sanctified Lasherweave's Raiment
		[12] = { itemID = 51144 }; --Sanctified Lasherweave's Handgrips
		[13] = { itemID = 51142 }; --Sanctified Lasherweave's Legguards
		[16] = { icon = "Ability_Druid_Maul", name = "=q6="..AL["Lasherweave's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51296 }; --Sanctified Lasherweave's Headguard
		[18] = { itemID = 51299 }; --Sanctified Lasherweave's Shoulderpads
		[19] = { itemID = 51298 }; --Sanctified Lasherweave's Raiment
		[20] = { itemID = 51295 }; --Sanctified Lasherweave's Handgrips
		[21] = { itemID = 51297 }; --Sanctified Lasherweave's Legguards
	};
	{
		Name = "Druid" .. " - " .. AL["Balance"];
		[01] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Lasherweave's Regalia"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50821, price = "95 #eoffrost#" }; --Lasherweave's Cover
		[03] = { itemID = 50819, price = "60 #eoffrost#" }; --Lasherweave's Mantle
		[04] = { itemID = 50823, price = "95 #eoffrost#" }; --Lasherweave's Vestment
		[05] = { itemID = 50822, price = "60 #eoffrost#" }; --Lasherweave's Gloves
		[06] = { itemID = 50820, price = "95 #eoffrost#" }; --Lasherweave's Trousers
		[08] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Lasherweave's Regalia"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51149 }; --Sanctified Lasherweave's Cover
		[10] = { itemID = 51147 }; --Sanctified Lasherweave's Mantle
		[11] = { itemID = 51145 }; --Sanctified Lasherweave's Vestment
		[12] = { itemID = 51148 }; --Sanctified Lasherweave's Gloves
		[13] = { itemID = 51146 }; --Sanctified Lasherweave's Trousers
		[16] = { icon = "Spell_Nature_InsectSwarm", name = "=q6="..AL["Lasherweave's Regalia"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51290, "=ds=" }; --Sanctified Lasherweave's Cover
		[18] = { itemID = 51292, "=ds=" }; --Sanctified Lasherweave's Mantle
		[19] = { itemID = 51294, "=ds=" }; --Sanctified Lasherweave's Vestment
		[20] = { itemID = 51291, "=ds=" }; --Sanctified Lasherweave's Gloves
		[21] = { itemID = 51293, "=ds=" }; --Sanctified Lasherweave's Trousers
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["HUNTER"];
		[01] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Ahn'Kahar Blood Hunter's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50115, price = "95 #eoffrost#" }; --Ahn'Kahar Blood Hunter's Headpiece
		[03] = { itemID = 50117, price = "60 #eoffrost#" }; --Ahn'Kahar Blood Hunter's Spaulders
		[04] = { itemID = 50118, price = "95 #eoffrost#" }; --Ahn'Kahar Blood Hunter's Tunic
		[05] = { itemID = 50114, price = "60 #eoffrost#" }; --Ahn'Kahar Blood Hunter's Handguards
		[06] = { itemID = 50116, price = "95 #eoffrost#" }; --Ahn'Kahar Blood Hunter's Legguards
		[08] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Ahn'Kahar Blood Hunter's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51153 }; --Sanctified Ahn'Kahar Blood Hunter's Headpiece
		[10] = { itemID = 51151 }; --Sanctified Ahn'Kahar Blood Hunter's Spaulders
		[11] = { itemID = 51150 }; --Sanctified Ahn'Kahar Blood Hunter's Tunic
		[12] = { itemID = 51154 }; --Sanctified Ahn'Kahar Blood Hunter's Handguards
		[13] = { itemID = 51152 }; --Sanctified Ahn'Kahar Blood Hunter's Legguards
		[16] = { icon = "Ability_Hunter_RunningShot", name = "=q6="..AL["Ahn'Kahar Blood Hunter's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51286 }; --Sanctified Ahn'Kahar Blood Hunter's Headpiece
		[18] = { itemID = 51288 }; --Sanctified Ahn'Kahar Blood Hunter's Spaulders
		[19] = { itemID = 51289 }; --Sanctified Ahn'Kahar Blood Hunter's Tunic
		[20] = { itemID = 51285 }; --Sanctified Ahn'Kahar Blood Hunter's Handguards
		[21] = { itemID = 51287 }; --Sanctified Ahn'Kahar Blood Hunter's Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["MAGE"];
		[01] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Bloodmage's Regalia"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50276, price = "95 #eoffrost#" }; --Bloodmage Hood
		[03] = { itemID = 50279, price = "60 #eoffrost#" }; --Bloodmage Shoulderpads
		[04] = { itemID = 50278, price = "95 #eoffrost#" }; --Bloodmage Robe
		[05] = { itemID = 50275, price = "60 #eoffrost#" }; --Bloodmage Gloves
		[06] = { itemID = 50277, price = "95 #eoffrost#" }; --Bloodmage Leggings
		[08] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Bloodmage's Regalia"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51158 }; --Sanctified Bloodmage Hood
		[10] = { itemID = 51155 }; --Sanctified Bloodmage Shoulderpads
		[11] = { itemID = 51156 }; --Sanctified Bloodmage Robe
		[12] = { itemID = 51159 }; --Sanctified Bloodmage Gloves
		[13] = { itemID = 51157 }; --Sanctified Bloodmage Leggings
		[16] = { icon = "Spell_Frost_IceStorm", name = "=q6="..AL["Bloodmage's Regalia"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51281 }; --Sanctified Bloodmage Hood
		[18] = { itemID = 51284 }; --Sanctified Bloodmage Shoulderpads
		[19] = { itemID = 51283 }; --Sanctified Bloodmage Robe
		[20] = { itemID = 51280 }; --Sanctified Bloodmage Gauntlets
		[21] = { itemID = 51282 }; --Sanctified Bloodmage Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Holy"];
		[01] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Lightsworn Garb"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50867, price = "95 #eoffrost#" }; --Lightsworn Headpiece
		[03] = { itemID = 50865, price = "60 #eoffrost#" }; --Lightsworn Spaulders
		[04] = { itemID = 50869, price = "95 #eoffrost#" }; --Lightsworn Tunic
		[05] = { itemID = 50868, price = "60 #eoffrost#" }; --Lightsworn Gloves
		[06] = { itemID = 50866, price = "95 #eoffrost#" }; --Lightsworn Greaves
		[08] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Lightsworn Garb"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51167 }; --Sanctified Lightsworn Headpiece
		[10] = { itemID = 51166 }; --Sanctified Lightsworn Spaulders
		[11] = { itemID = 51165 }; --Sanctified Lightsworn Tunic
		[12] = { itemID = 51169 }; --Sanctified Lightsworn Gloves
		[13] = { itemID = 51168 }; --Sanctified Lightsworn Greaves
		[16] = { icon = "Spell_Holy_HolyBolt", name = "=q6="..AL["Lightsworn Garb"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51272 }; --Sanctified Lightsworn Headpiece
		[18] = { itemID = 51273 }; --Sanctified Lightsworn Spaulders
		[19] = { itemID = 51274 }; --Sanctified Lightsworn Tunic
		[20] = { itemID = 51270 }; --Sanctified Lightsworn Gloves
		[21] = { itemID = 51271 }; --Sanctified Lightsworn Greaves
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Retribution"];
		[01] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Lightsworn Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50326, price = "95 #eoffrost#" }; --Lightsworn Helmet
		[03] = { itemID = 50324, price = "60 #eoffrost#" }; --Lightsworn Shoulderplates
		[04] = { itemID = 50328, price = "95 #eoffrost#" }; --Lightsworn Battleplate
		[05] = { itemID = 50327, price = "60 #eoffrost#" }; --Lightsworn Gauntlets
		[06] = { itemID = 50325, price = "95 #eoffrost#" }; --Lightsworn Legplates
		[08] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Lightsworn Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51162 }; --Sanctified Lightsworn Helmet
		[10] = { itemID = 51160 }; --Sanctified Lightsworn Shoulderplates
		[11] = { itemID = 51164 }; --Sanctified Lightsworn Battleplate
		[12] = { itemID = 51163 }; --Sanctified Lightsworn Gauntlets
		[13] = { itemID = 51161 }; --Sanctified Lightsworn Legplates
		[16] = { icon = "Spell_Holy_AuraOfLight", name = "=q6="..AL["Lightsworn Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51277 }; --Sanctified Lightsworn Helmet
		[18] = { itemID = 51279 }; --Sanctified Lightsworn Shoulderplates
		[19] = { itemID = 51275 }; --Sanctified Lightsworn Battleplate
		[20] = { itemID = 51276 }; --Sanctified Lightsworn Gauntlets
		[21] = { itemID = 51278 }; --Sanctified Lightsworn Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PALADIN"] .. " - " .. AL["Protection"];
		[01] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Lightsworn Plate"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50862, price = "95 #eoffrost#" }; --Lightsworn Faceguard
		[03] = { itemID = 50860, price = "60 #eoffrost#" }; --Lightsworn Shoulderguards
		[04] = { itemID = 50864, price = "95 #eoffrost#" }; --Lightsworn Chestguard
		[05] = { itemID = 50863, price = "60 #eoffrost#" }; --Lightsworn Handguards
		[06] = { itemID = 50861, price = "95 #eoffrost#" }; --Lightsworn Legguards
		[08] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Lightsworn Plate"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51173 }; --Sanctified Lightsworn Faceguard
		[10] = { itemID = 51170 }; --Sanctified Lightsworn Shoulderguards
		[11] = { itemID = 51174 }; --Sanctified Lightsworn Chestguard
		[12] = { itemID = 51172 }; --Sanctified Lightsworn Handguards
		[13] = { itemID = 51171 }; --Sanctified Lightsworn Legguards
		[16] = { icon = "Spell_Holy_SealOfMight", name = "=q6="..AL["Lightsworn Plate"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51266 }; --Sanctified Lightsworn Faceguard
		[18] = { itemID = 51269 }; --Sanctified Lightsworn Shoulderguards
		[19] = { itemID = 51265 }; --Sanctified Lightsworn Chestguard
		[20] = { itemID = 51267 }; --Sanctified Lightsworn Handguards
		[21] = { itemID = 51268 }; --Sanctified Lightsworn Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Shadow"];
		[01] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Crimson Acolyte's Regalia"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50392, price = "95 #eoffrost#" }; --Crimson Acolyte Cowl
		[03] = { itemID = 50396, price = "60 #eoffrost#" }; --Crimson Acolyte Mantle
		[04] = { itemID = 50394, price = "95 #eoffrost#" }; --Crimson Acolyte Raiments
		[05] = { itemID = 50391, price = "60 #eoffrost#" }; --Crimson Acolyte Handwraps
		[06] = { itemID = 50393, price = "95 #eoffrost#" }; --Crimson Acolyte Pants
		[08] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Crimson Acolyte's Regalia"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51184 }; --Sanctified Crimson Acolyte Cowl
		[10] = { itemID = 51182 }; --Sanctified Crimson Acolyte Mantle
		[11] = { itemID = 51180 }; --Sanctified Crimson Acolyte Raiments
		[12] = { itemID = 51183 }; --Sanctified Crimson Acolyte Handwraps
		[13] = { itemID = 51181 }; --Sanctified Crimson Acolyte Pants
		[16] = { icon = "Spell_Shadow_AntiShadow", name = "=q6="..AL["Crimson Acolyte's Regalia"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51255 }; --Sanctified Crimson Acolyte Cowl
		[18] = { itemID = 51257 }; --Sanctified Crimson Acolyte Mantle
		[19] = { itemID = 51259 }; --Sanctified Crimson Acolyte Raiments
		[20] = { itemID = 51256 }; --Sanctified Crimson Acolyte Handwraps
		[21] = { itemID = 51258 }; --Sanctified Crimson Acolyte Pants
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["PRIEST"] .. " - " .. AL["Holy"];
		[01] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Crimson Acolyte's Raiment"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50765, price = "95 #eoffrost#" }; --Crimson Acolyte Hood
		[03] = { itemID = 50767, price = "60 #eoffrost#" }; --Crimson Acolyte Shoulderpads
		[04] = { itemID = 50768, price = "95 #eoffrost#" }; --Crimson Acolyte Robe
		[05] = { itemID = 50766, price = "60 #eoffrost#" }; --Crimson Acolyte Gloves
		[06] = { itemID = 50769, price = "95 #eoffrost#" }; --Crimson Acolyte Leggings
		[08] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Crimson Acolyte's Raiment"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51178 }; --Sanctified Crimson Acolyte Hood
		[10] = { itemID = 51175 }; --Sanctified Crimson Acolyte Shoulderpads
		[11] = { itemID = 51176 }; --Sanctified Crimson Acolyte Robe
		[12] = { itemID = 51179 }; --Sanctified Crimson Acolyte Gloves
		[13] = { itemID = 51177 }; --Sanctified Crimson Acolyte Leggings
		[16] = { icon = "Spell_Holy_PowerWordShield", name = "=q6="..AL["Crimson Acolyte's Raiment"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51261 }; --Sanctified Crimson Acolyte Hood
		[18] = { itemID = 51264 }; --Sanctified Crimson Acolyte Shoulderpads
		[19] = { itemID = 51263 }; --Sanctified Crimson Acolyte Robe
		[20] = { itemID = 51260 }; --Sanctified Crimson Acolyte Gloves
		[21] = { itemID = 51262 }; --Sanctified Crimson Acolyte Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["ROGUE"];
		[01] = { icon = "Ability_BackStab", name = "=q6="..AL["Shadowblade's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50089, price = "95 #eoffrost#" }; --Shadowblade Helmet
		[03] = { itemID = 50105, price = "60 #eoffrost#" }; --Shadowblade Pauldrons
		[04] = { itemID = 50087, price = "95 #eoffrost#" }; --Shadowblade Breastplate
		[05] = { itemID = 50088, price = "60 #eoffrost#" }; --Shadowblade Gauntlets
		[06] = { itemID = 50090, price = "95 #eoffrost#" }; --Shadowblade Legplates
		[08] = { icon = "Ability_BackStab", name = "=q6="..AL["Shadowblade's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51187 }; --Sanctified Shadowblade Helmet
		[10] = { itemID = 51185 }; --Sanctified Shadowblade Pauldrons
		[11] = { itemID = 51189 }; --Sanctified Shadowblade Breastplate
		[12] = { itemID = 51188 }; --Sanctified Shadowblade Gauntlets
		[13] = { itemID = 51186 }; --Sanctified Shadowblade Legplates
		[16] = { icon = "Ability_BackStab", name = "=q6="..AL["Shadowblade's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51252 }; --Sanctified Shadowblade Helmet
		[18] = { itemID = 51254 }; --Sanctified Shadowblade Pauldrons
		[19] = { itemID = 51250 }; --Sanctified Shadowblade Breastplate
		[20] = { itemID = 51251 }; --Sanctified Shadowblade Gauntlets
		[21] = { itemID = 51253 }; --Sanctified Shadowblade Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Elemental"];
		[01] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Frost Witch's Regalia"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50843, price = "95 #eoffrost#" }; --Frost Witch's Helm
		[03] = { itemID = 50845, price = "60 #eoffrost#" }; --Frost Witch's Shoulderpads
		[04] = { itemID = 50841, price = "95 #eoffrost#" }; --Frost Witch's Hauberk
		[05] = { itemID = 50842, price = "60 #eoffrost#" }; --Frost Witch's Gloves
		[06] = { itemID = 50844, price = "95 #eoffrost#" }; --Frost Witch's Kilt
		[08] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Frost Witch's Regalia"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51202 }; --Sanctified Frost Witch's Helm
		[10] = { itemID = 51204 }; --Sanctified Frost Witch's Shoulderpads
		[11] = { itemID = 51200 }; --Sanctified Frost Witch's Hauberk
		[12] = { itemID = 51201 }; --Sanctified Frost Witch's Gloves
		[13] = { itemID = 51203 }; --Sanctified Frost Witch's Kilt
		[16] = { icon = "Spell_Nature_Lightning", name = "=q6="..AL["Frost Witch's Regalia"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51237 }; --Sanctified Frost Witch's Helm
		[18] = { itemID = 51235 }; --Sanctified Frost Witch's Shoulderpads
		[19] = { itemID = 51239 }; --Sanctified Frost Witch's Hauberk
		[20] = { itemID = 51238 }; --Sanctified Frost Witch's Gloves
		[21] = { itemID = 51236 }; --Sanctified Frost Witch's Kilt
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Enhancement"];
		[01] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Frost Witch's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50832, price = "95 #eoffrost#" }; --Frost Witch's Faceguard
		[03] = { itemID = 50834, price = "60 #eoffrost#" }; --Frost Witch's Shoulderguards
		[04] = { itemID = 50830, price = "95 #eoffrost#" }; --Frost Witch's Chestguard
		[05] = { itemID = 50831, price = "60 #eoffrost#" }; --Frost Witch's Grips
		[06] = { itemID = 50833, price = "95 #eoffrost#" }; --Frost Witch's War-Kilt
		[08] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Frost Witch's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51197 }; --Sanctified Frost Witch's Faceguard
		[10] = { itemID = 51199 }; --Sanctified Frost Witch's Shoulderguards
		[11] = { itemID = 51195 }; --Sanctified Frost Witch's Chestguard
		[12] = { itemID = 51196 }; --Sanctified Frost Witch's Grips
		[13] = { itemID = 51198 }; --Sanctified Frost Witch's War-Kilt
		[16] = { icon = "Spell_FireResistanceTotem_01", name = "=q6="..AL["Frost Witch's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51242 }; --Sanctified Frost Witch's Faceguard
		[18] = { itemID = 51240 }; --Sanctified Frost Witch's Shoulderguards
		[19] = { itemID = 51244 }; --Sanctified Frost Witch's Chestguard
		[20] = { itemID = 51243 }; --Sanctified Frost Witch's Grips
		[21] = { itemID = 51241 }; --Sanctified Frost Witch's War-Kilt
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["SHAMAN"] .. " - " .. AL["Restoration"];
		[01] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Frost Witch's Garb"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50837, price = "95 #eoffrost#" }; --Frost Witch's Headpiece
		[03] = { itemID = 50839, price = "60 #eoffrost#" }; --Frost Witch's Spaulders
		[04] = { itemID = 50835, price = "95 #eoffrost#" }; --Frost Witch's Tunic
		[05] = { itemID = 50836, price = "60 #eoffrost#" }; --Frost Witch's Handguards
		[06] = { itemID = 50838, price = "95 #eoffrost#" }; --Frost Witch's Legguards
		[08] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Frost Witch's Garb"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51192 }; --Sanctified Frost Witch's Headpiece
		[10] = { itemID = 51194 }; --Sanctified Frost Witch's Spaulders
		[11] = { itemID = 51190 }; --Sanctified Frost Witch's Tunic
		[12] = { itemID = 51191 }; --Sanctified Frost Witch's Handguards
		[13] = { itemID = 51193 }; --Sanctified Frost Witch's Legguards
		[16] = { icon = "Spell_Nature_HealingWaveGreater", name = "=q6="..AL["Frost Witch's Garb"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51247 }; --Sanctified Frost Witch's Headpiece
		[18] = { itemID = 51245 }; --Sanctified Frost Witch's Spaulders
		[19] = { itemID = 51249 }; --Sanctified Frost Witch's Tunic
		[20] = { itemID = 51248 }; --Sanctified Frost Witch's Handguards
		[21] = { itemID = 51246 }; --Sanctified Frost Witch's Legguards
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARLOCK"];
		[01] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Dark Coven's Garb"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50241, price = "95 #eoffrost#" }; --Dark Coven Hood
		[03] = { itemID = 50244, price = "60 #eoffrost#" }; --Dark Coven Shoulderpads
		[04] = { itemID = 50243, price = "95 #eoffrost#" }; --Dark Coven Robe
		[05] = { itemID = 50240, price = "60 #eoffrost#" }; --Dark Coven Gloves
		[06] = { itemID = 50242, price = "95 #eoffrost#" }; --Dark Coven Leggings
		[08] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Dark Coven's Garb"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51208 }; --Sanctified Dark Coven Hood
		[10] = { itemID = 51205 }; --Sanctified Dark Coven Shoulderpads
		[11] = { itemID = 51206 }; --Sanctified Dark Coven Robe
		[12] = { itemID = 51209 }; --Sanctified Dark Coven Gloves
		[13] = { itemID = 51207 }; --Sanctified Dark Coven Leggings
		[16] = { icon = "Spell_Shadow_CurseOfTounges", name = "=q6="..AL["Dark Coven's Garb"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51231 }; --Sanctified Dark Coven Hood
		[18] = { itemID = 51234 }; --Sanctified Dark Coven Shoulderpads
		[19] = { itemID = 51233 }; --Sanctified Dark Coven Robe
		[20] = { itemID = 51230 }; --Sanctified Dark Coven Gloves
		[21] = { itemID = 51232 }; --Sanctified Dark Coven Leggings
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Fury"];
		[01] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Ymirjar Lord's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50080, price = "95 #eoffrost#" }; --Ymirjar Lord's Helmet
		[03] = { itemID = 50082, price = "60 #eoffrost#" }; --Ymirjar Lord's Shoulderplates
		[04] = { itemID = 50078, price = "95 #eoffrost#" }; --Ymirjar Lord's Battleplate
		[05] = { itemID = 50079, price = "60 #eoffrost#" }; --Ymirjar Lord's Gauntlets
		[06] = { itemID = 50081, price = "95 #eoffrost#" }; --Ymirjar Lord's Legplates
		[08] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Ymirjar Lord's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51212 }; --Ymirjar Lord's Helmet
		[10] = { itemID = 51210 }; --Ymirjar Lord's Shoulderplates
		[11] = { itemID = 51214 }; --Ymirjar Lord's Battleplate
		[12] = { itemID = 51213 }; --Ymirjar Lord's Gauntlets
		[13] = { itemID = 51211 }; --Ymirjar Lord's Legplates
		[16] = { icon = "Ability_Warrior_BattleShout", name = "=q6="..AL["Ymirjar Lord's Battlegear"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51227 }; --Ymirjar Lord's Helmet
		[18] = { itemID = 51229 }; --Ymirjar Lord's Shoulderplates
		[19] = { itemID = 51225 }; --Ymirjar Lord's Battleplate
		[20] = { itemID = 51226 }; --Ymirjar Lord's Gauntlets
		[21] = { itemID = 51228 }; --Ymirjar Lord's Legplates
	};
	{
		Name = LOCALIZED_CLASS_NAMES_MALE["WARRIOR"] .. " - " .. AL["Protection"];
		[01] = { icon = "INV_Shield_05", name = "=q6="..AL["Ymirjar Lord's Plate"], desc = "=q5=" .. AL["Tier 10"] };
		[02] = { itemID = 50848, price = "95 #eoffrost#" }; --Ymirjar Lord's Greathelm
		[03] = { itemID = 50846, price = "60 #eoffrost#" }; --Ymirjar Lord's Pauldrons
		[04] = { itemID = 50850, price = "95 #eoffrost#" }; --Ymirjar Lord's Breastplate
		[05] = { itemID = 50849, price = "60 #eoffrost#" }; --Ymirjar Lord's Handguards
		[06] = { itemID = 50847, price = "95 #eoffrost#" }; --Ymirjar Lord's Legguards
		[08] = { icon = "INV_Shield_05", name = "=q6="..AL["Ymirjar Lord's Plate"], desc = "=q5=" .. AL["Tier 10"] };
		[09] = { itemID = 51218 }; --Ymirjar Lord's Greathelm
		[10] = { itemID = 51215 }; --Ymirjar Lord's Pauldrons
		[11] = { itemID = 51219 }; --Ymirjar Lord's Breastplate
		[12] = { itemID = 51217 }; --Ymirjar Lord's Handguards
		[13] = { itemID = 51216 }; --Ymirjar Lord's Legguards
		[16] = { icon = "INV_Shield_05", name = "=q6="..AL["Ymirjar Lord's Plate"], desc = "=q5=" .. AL["Tier 10"] };
		[17] = { itemID = 51221 }; --Ymirjar Lord's Greathelm
		[18] = { itemID = 51224 }; --Ymirjar Lord's Pauldrons
		[19] = { itemID = 51220 }; --Ymirjar Lord's Breastplate
		[20] = { itemID = 51222 }; --Ymirjar Lord's Handguards
		[21] = { itemID = 51223 }; --Ymirjar Lord's Legguards
	};
};

-------------------
--- Legendaries ---
-------------------

AtlasLoot_Data["Legendaries"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = AL["Legendary Items"];
	Type = "WrathRaid";
	{
		Name = AL["Legendary Items"];
		[01] = { itemID = 34334 }; --Thori'dal, the Stars' Fury
		[03] = { itemID = 32837 }; --Warglaive of Azzinoth
		[04] = { itemID = 32838 }; --Warglaive of Azzinoth
		[06] = { itemID = 30312 }; --Infinity Blade
		[07] = { itemID = 30311 }; --Warp Slicer
		[08] = { itemID = 30317 }; --Cosmic Infuser
		[09] = { itemID = 30316 }; --Devastation
		[10] = { itemID = 30313 }; --Staff of Disintegration
		[11] = { itemID = 30314 }; --Phaseshift Bulwark
		[12] = { itemID = 30318 }; --Netherstrand Longbow
		[13] = { itemID = 30319 }; --Nether Spike
		[16] = { itemID = 22736 }; --Andonisus, Reaper of Souls
		[17] = { itemID = 19019 }; --Thunderfury, Blessed Blade of the Windseeker
		[18] = { itemID = 17182 }; --Sulfuras, Hand of Ragnaros
		[19] = { itemID = 21176 }; --Black Qiraji Resonating Crystal
		[21] = { itemID = 22632 }, --Atiesh, Greatstaff of the Guardian
		[22] = { itemID = 22589 }, --Atiesh, Greatstaff of the Guardian
		[23] = { itemID = 22631 }, --Atiesh, Greatstaff of the Guardian
		[24] = { itemID = 22630 }, --Atiesh, Greatstaff of the Guardian
		[26] = { itemID = 49623 }; --Shadowmourne
		[27] = { itemID = 46017 }; --Val'anyr, Hammer of Ancient Kings
	};
};

-----------------------
--- BoE World Epics ---
-----------------------

AtlasLoot_Data["WorldEpicsWrath"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = "World Epics";
	Type = "WrathDungeon";
	{
		Name = "World Epics";
		[01] = { itemID = 44309 }; --Sash of Jordan
		[02] = { itemID = 44312 }; --Wapach's Spaulders of Solidarity
		[03] = { itemID = 44308 }; --Signet of Edward the Odd
		[04] = { itemID = 37835 }; --Je'Tze's Bell
		[05] = { itemID = 37254 }; --Super Simian Sphere
		[16] = { itemID = 44310 }; --Namlak's Supernumerary Sticker
		[17] = { itemID = 43613 }; --The Dusk Blade
		[18] = { itemID = 44311 }; --Avool's Sword of Jin
		[19] = { itemID = 43611 }; --Krol Cleaver
		[20] = { itemID = 44313 }; --Zom's Crackling Bulwark
		[21] = { itemID = 43612 }; --Spineslicer
	};
};


-------------------------------
--- Emblem of Heroism Items ---
-------------------------------

AtlasLoot_Data["EmblemofHeroism"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = AL["Emblem of Heroism Rewards"];
	{
		Name = AL["Page 1"];
		[01] = { itemID = 40697, price = "40 #eofheroism#" }; --Elegant Temple Gardens' Girdle
		[02] = { itemID = 40696, price = "40 #eofheroism#" }; --Plush Sash of Guzbah
		[03] = { itemID = 40694, price = "40 #eofheroism#" }; --Jorach's Crocolisk Skin Belt
		[04] = { itemID = 40695, price = "40 #eofheroism#" }; --Vine Belt of the Woodland Dryad
		[05] = { itemID = 40693, price = "40 #eofheroism#" }; --Beadwork Belt of Shamanic Vision
		[06] = { itemID = 40692, price = "40 #eofheroism#" }; --Vereesa's Silver Chain Belt
		[07] = { itemID = 40691, price = "40 #eofheroism#" }; --Magroth's Meditative Cincture
		[08] = { itemID = 40688, price = "40 #eofheroism#" }; --Verdungo's Barbarian Cord
		[09] = { itemID = 40689, price = "40 #eofheroism#" }; --Waistguard of Living Iron
		[16] = { itemID = 40704, price = "50 #eofheroism#" }; --Pride
		[17] = { itemID = 40702, price = "50 #eofheroism#" }; --Rolfsen's Ripper
		[18] = { itemID = 40703, price = "50 #eofheroism#" }; --Grasscutter
		[19] = { itemID = 40716, price = "15 #eofheroism#" }; --Lillehoff's Winged Blades
		[20] = { itemID = 40701, price = "35 #eofheroism#" }; --Crygil's Discarded Plate Panel
		[21] = { itemID = 40700, price = "35 #eofheroism#" }; --Protective Barricade of the Light
		[22] = { itemID = 40699, price = "25 #eofheroism#" }; --Handbook of Obscure Remedies
		[23] = { itemID = 40698, price = "25 #eofheroism#" }; --Ward of the Violet Citadel
	};
	{
		Name = AL["Page 2"];
		[01] = { itemID = 40711, price = "15 #eofheroism#" }; --Idol of Lush Moss
		[02] = { itemID = 40712, price = "15 #eofheroism#" }; --Idol of Steadfast Renewal
		[03] = { itemID = 40713, price = "15 #eofheroism#" }; --Idol of the Ravenous Beast
		[04] = { itemID = 40707, price = "15 #eofheroism#" }; --Libram of Obstruction
		[05] = { itemID = 40706, price = "15 #eofheroism#" }; --Libram of Reciprocation
		[06] = { itemID = 40705, price = "15 #eofheroism#" }; --Libram of Renewal
		[07] = { itemID = 40715, price = "15 #eofheroism#" }; --Sigil of Haunted Dreams
		[08] = { itemID = 40714, price = "15 #eofheroism#" }; --Sigil of the Unfaltering Knight
		[09] = { itemID = 40709, price = "15 #eofheroism#" }; --Totem of Forest Growth
		[10] = { itemID = 40710, price = "15 #eofheroism#" }; --Totem of Splintering
		[11] = { itemID = 40708, price = "15 #eofheroism#" }; --Totem of the Elemental Plane
		[16] = { itemID = 40679, price = "25 #eofheroism#" }; --Chained Military Gorget
		[17] = { itemID = 40680, price = "25 #eofheroism#" }; --Encircling Burnished Gold Chains
		[18] = { itemID = 40681, price = "25 #eofheroism#" }; --Lattice Choker of Light
		[19] = { itemID = 40678, price = "25 #eofheroism#" }; --Pendant of the Outcast Hero
		[20] = { itemID = 40684, price = "40 #eofheroism#" }; --Mirror of Truth
		[21] = { itemID = 40682, price = "40 #eofheroism#" }; --Sundial of the Exiled
		[22] = { itemID = 40685, price = "40 #eofheroism#" }; --The Egg of Mortal Essence
		[23] = { itemID = 40683, price = "40 #eofheroism#" }; --Valor Medal of the First War
	};
	{
		Name = AL["Page 3"];
		[01] = { itemID = 40610, price = "80 #eofheroism#" }; --Chestguard of the Lost Conqueror
		[02] = { itemID = 40611, price = "80 #eofheroism#" }; --Chestguard of the Lost Protector
		[03] = { itemID = 40612, price = "80 #eofheroism#" }; --Chestguard of the Lost Vanquisher
		[05] = { itemID = 40613, price = "60 #eofheroism#" }; --Gloves of the Lost Conqueror
		[06] = { itemID = 40614, price = "60 #eofheroism#" }; --Gloves of the Lost Protector
		[07] = { itemID = 40615, price = "60 #eofheroism#" }; --Gloves of the Lost Vanquisher
		[09] = { itemID = 44230, price = "200 #eofheroism#" }; --Reins of the Wooly Mammoth
		[10] = { itemID = 44231, price = "200 #eofheroism#" }; --Reins of the Wooly Mammoth
		[16] = { itemID = 36919, price = "20 #eofheroism#" }; --Cardinal Ruby
		[17] = { itemID = 36922, price = "20 #eofheroism#" }; --King's Amber
		[18] = { itemID = 36925, price = "20 #eofheroism#" }; --Majestic Zircon
		[19] = { itemID = 36931, price = "10 #eofheroism#" }; --Ametrine
		[20] = { itemID = 36928, price = "10 #eofheroism#" }; --Dreadstone
		[21] = { itemID = 36934, price = "10 #eofheroism#" }; --Eye of Zul
		[23] = { itemID = 43102, price = "10 #eofheroism#" }; --Frozen Orb
	};
};

-----------------------------
--- Emblem of Valor Items ---
-----------------------------

AtlasLoot_Data["EmblemofValor"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = AL["Emblem of Valor Rewards"];
	{
		Name = AL["Page 1"];
		[01] = { itemID = 40724, price = "25 #eofvalor#" }; --Cloak of Kea Feathers
		[02] = { itemID = 40723, price = "25 #eofvalor#" }; --Disguise of the Kumiho
		[03] = { itemID = 40722, price = "25 #eofvalor#" }; --Platinum Mesh Cloak
		[04] = { itemID = 40721, price = "25 #eofvalor#" }; --Hammerhead Sharkskin Cloak
		[06] = { itemID = 40741, price = "60 #eofvalor#" }; --Cuffs of the Shadow Ascendant
		[07] = { itemID = 40740, price = "60 #eofvalor#" }; --Wraps of the Astral Traveler
		[08] = { itemID = 40751, price = "40 #eofvalor#" }; --Slippers of the Holy Light
		[09] = { itemID = 40750, price = "40 #eofvalor#" }; --Xintor's Expeditionary Boots
		[11] = { itemID = 40739, price = "60 #eofvalor#" }; --Bands of the Great Tree
		[12] = { itemID = 40738, price = "60 #eofvalor#" }; --Wristwraps of the Cutthroat
		[13] = { itemID = 40748, price = "40 #eofvalor#" }; --Boots of Captain Ellis
		[14] = { itemID = 40749, price = "40 #eofvalor#" }; --Rainey's Chewed Boots
		[16] = { itemID = 40736, price = "60 #eofvalor#" }; --Armguard of the Tower Archer
		[17] = { itemID = 40737, price = "60 #eofvalor#" }; --Pigmented Clan Bindings
		[18] = { itemID = 40746, price = "40 #eofvalor#" }; --Pack-Ice Striders
		[19] = { itemID = 40747, price = "40 #eofvalor#" }; --Treads of Coastal Wandering
		[21] = { itemID = 40734, price = "60 #eofvalor#" }; --Bracers of Dalaran's Parapets
		[22] = { itemID = 40733, price = "60 #eofvalor#" }; --Wristbands of the Sentinel Huntress
		[23] = { itemID = 40735, price = "60 #eofvalor#" }; --Zartson's Jungle Vambraces
		[24] = { itemID = 40742, price = "40 #eofvalor#" }; --Bladed Steelboots
		[25] = { itemID = 40743, price = "40 #eofvalor#" }; --Kyzoc's Ground Stompers
		[26] = { itemID = 40745, price = "40 #eofvalor#" }; --Sabatons of Rapid Recovery
	};
	{
		Name = AL["Page 2"];
		[01] = { itemID = 40719, price = "25 #eofvalor#" }; --Band of Channeled Magic
		[02] = { itemID = 40720, price = "25 #eofvalor#" }; --Renewal of Life
		[03] = { itemID = 40717, price = "25 #eofvalor#" }; --Ring of Invincibility
		[04] = { itemID = 40718, price = "25 #eofvalor#" }; --Signet of the Impregnable Fortress
		[06] = { itemID = 40342, price = "25 #eofvalor#" }; --Idol of Awakening
		[07] = { itemID = 40321, price = "25 #eofvalor#" }; --Idol of the Shooting Star
		[08] = { itemID = 39757, price = "25 #eofvalor#" }; --Idol of Worship
		[09] = { itemID = 40191, price = "25 #eofvalor#" }; --Libram of Radiance
		[10] = { itemID = 40337, price = "25 #eofvalor#" }; --Libram of Resurgence
		[11] = { itemID = 40268, price = "25 #eofvalor#" }; --Libram of Tolerance
		[12] = { itemID = 40207, price = "25 #eofvalor#" }; --Sigil of Awareness
		[13] = { itemID = 40322, price = "25 #eofvalor#" }; --Totem of Dueling
		[14] = { itemID = 40267, price = "25 #eofvalor#" }; --Totem of Hex
		[15] = { itemID = 39728, price = "25 #eofvalor#" }; --Totem of Misery
		[16] = { itemID = 40637, price = "60 #eofvalor#" }; --Mantle of the Lost Conqueror
		[17] = { itemID = 40638, price = "60 #eofvalor#" }; --Mantle of the Lost Protector
		[18] = { itemID = 40639, price = "60 #eofvalor#" }; --Mantle of the Lost Vanquisher
		[20] = { itemID = 40634, price = "75 #eofvalor#" }; --Legplates of the Lost Conqueror
		[21] = { itemID = 40635, price = "75 #eofvalor#" }; --Legplates of the Lost Protector
		[22] = { itemID = 40636, price = "75 #eofvalor#" }; --Legplates of the Lost Vanquisher
		[24] = { itemID = 40752, price = "1 #eofvalor#" }; --Emblem of Heroism
	};
};

--------------------------------
--- Emblem of Conquest Items ---
--------------------------------

AtlasLoot_Data["EmblemofConquest"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = AL["Emblem of Conquest Rewards"];
	{
		Name = AL["Page 1"];
		[01] = { itemID = 45840, price = "28 #eofconquest#" }; --Touch of the Occult
		[02] = { itemID = 45831, price = "28 #eofconquest#" }; --Sash of Potent Incantations
		[03] = { itemID = 45848, price = "39 #eofconquest#" }; --Legwraps of the Master Conjurer
		[05] = { itemID = 45833, price = "28 #eofconquest#" }; --Bladebreaker Gauntlets
		[06] = { itemID = 45835, price = "28 #eofconquest#" }; --Gauntlets of Serene Blessing
		[07] = { itemID = 45834, price = "28 #eofconquest#" }; --Gauntlets of the Royal Watch
		[08] = { itemID = 45824, price = "28 #eofconquest#" }; --Belt of the Singing Blade
		[09] = { itemID = 45826, price = "28 #eofconquest#" }; --Girdle of Unyielding Trust
		[10] = { itemID = 45825, price = "28 #eofconquest#" }; --Shieldwarder Girdle
		[11] = { itemID = 45843, price = "39 #eofconquest#" }; --Legguards of the Peaceful Covenant
		[12] = { itemID = 45841, price = "39 #eofconquest#" }; --Legplates of the Violet Champion
		[13] = { itemID = 45842, price = "39 #eofconquest#" }; --Wyrmguard Legplates
		[16] = { itemID = 45838, price = "28 #eofconquest#" }; --Gloves of the Blind Stalker
		[17] = { itemID = 45839, price = "28 #eofconquest#" }; --Grips of the Secret Grove
		[18] = { itemID = 45830, price = "28 #eofconquest#" }; --Belt of the Living Thicket
		[19] = { itemID = 45829, price = "28 #eofconquest#" }; --Belt of the Twilight Assassin
		[20] = { itemID = 45846, price = "39 #eofconquest#" }; --Leggings of Wavering Shadow
		[21] = { itemID = 45847, price = "39 #eofconquest#" }; --Wildstrider Legguards
		[23] = { itemID = 45837, price = "28 #eofconquest#" }; --Gloves of Augury
		[24] = { itemID = 45836, price = "28 #eofconquest#" }; --Gloves of Unerring Aim
		[25] = { itemID = 45827, price = "28 #eofconquest#" }; --Belt of the Ardent Marksman
		[26] = { itemID = 45828, price = "28 #eofconquest#" }; --Windchill Binding
		[27] = { itemID = 45844, price = "39 #eofconquest#" }; --Leggings of the Tireless Sentry
		[28] = { itemID = 45845, price = "39 #eofconquest#" }; --Leggings of the Weary Mystic
	};
	{
		Name = AL["Page 2"];
		[01] = { itemID = 45820, price = "19 #eofconquest#" }; --Broach of the Wailing Night
		[02] = { itemID = 45822, price = "19 #eofconquest#" }; --Evoker's Charm
		[03] = { itemID = 45823, price = "19 #eofconquest#" }; --Frozen Tear of Elune
		[04] = { itemID = 45821, price = "19 #eofconquest#" }; --Shard of the Crystal Forest
		[05] = { itemID = 45819, price = "19 #eofconquest#" }; --Spiked Battleguard Choker
		[07] = { itemID = 45638, price = "58 #eofconquest#" }; --Crown of the Wayward Conqueror
		[08] = { itemID = 45639, price = "58 #eofconquest#" }; --Crown of the Wayward Protector
		[09] = { itemID = 45640, price = "58 #eofconquest#" }; --Crown of the Wayward Vanquisher
		[11] = { itemID = 45632, price = "58 #eofconquest#" }; --Breastplate of the Wayward Conqueror
		[12] = { itemID = 45633, price = "58 #eofconquest#" }; --Breastplate of the Wayward Protector
		[13] = { itemID = 45634, price = "58 #eofconquest#" }; --Breastplate of the Wayward Vanquisher
		[16] = { itemID = 45509, price = "19 #eofconquest#" }; --Idol of the Corruptor
		[17] = { itemID = 45270, price = "19 #eofconquest#" }; --Idol of the Crying Wind
		[18] = { itemID = 46138, price = "19 #eofconquest#" }; --Idol of the Flourishing Life
		[19] = { itemID = 45510, price = "19 #eofconquest#" }; --Libram of Discord
		[20] = { itemID = 45436, price = "19 #eofconquest#" }; --Libram of the Resolute
		[21] = { itemID = 45145, price = "19 #eofconquest#" }; --Libram of the Sacred Shield
		[22] = { itemID = 45144, price = "19 #eofconquest#" }; --Sigil of Deflection
		[23] = { itemID = 45254, price = "19 #eofconquest#" }; --Sigil of the Vengeful Heart
		[24] = { itemID = 45114, price = "19 #eofconquest#" }; --Steamcaller's Totem
		[25] = { itemID = 45255, price = "19 #eofconquest#" }; --Thunderfall Totem
		[26] = { itemID = 45169, price = "19 #eofconquest#" }; --Totem of the Dancing Flame
		[28] = { itemID = 40753, price = "1 #eofconquest#" }; --Emblem of Valor
		[29] = { itemID = 45087, price = "18 #eofconquest#" }; --Runed Orb
	};
};

-------------------------------
--- Emblem of Triumph Items ---
-------------------------------

AtlasLoot_Data["EmblemofTriumph"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = AL["Emblem of Triumph Rewards"];
	{
		Name = AL["Page 1"];
		[02] = { itemID = 47694, price = "75 #eoftriumph#" }; --Helm of Clouded Sight
		[03] = { itemID = 47693, price = "75 #eoftriumph#" }; --Hood of Fiery Aftermath
		[04] = { itemID = 47713, price = "45 #eoftriumph#" }; --Mantle of Catastrophic Emanation
		[05] = { itemID = 47715, price = "45 #eoftriumph#" }; --Pauldrons of Revered Mortality
		[07] = { itemID = 47690, price = "75 #eoftriumph#" }; --Helm of Abundant Growth
		[08] = { itemID = 47689, price = "75 #eoftriumph#" }; --Hood of Lethal Intent
		[09] = { itemID = 47708, price = "45 #eoftriumph#" }; --Duskstalker Shoulderpads
		[10] = { itemID = 47712, price = "45 #eoftriumph#" }; --Shoulders of the Fateful Accord
		[17] = { itemID = 47686, price = "75 #eoftriumph#" }; --Helm of Inner Warmth
		[18] = { itemID = 47685, price = "75 #eoftriumph#" }; --Helm of the Brooding Dragon
		[19] = { itemID = 47704, price = "45 #eoftriumph#" }; --Epaulets of the Devourer
		[20] = { itemID = 47707, price = "45 #eoftriumph#" }; --Mantle of the Groundbreaker
		[22] = { itemID = 47677, price = "75 #eoftriumph#" }; --Faceplate of the Honorbound
		[23] = { itemID = 47681, price = "75 #eoftriumph#" }; --Heaume of the Restless Watch
		[24] = { itemID = 47674, price = "75 #eoftriumph#" }; --Helm of Thunderous Rampage
		[25] = { itemID = 47702, price = "45 #eoftriumph#" }; --Pauldrons of the Cavalier
		[26] = { itemID = 47697, price = "45 #eoftriumph#" }; --Pauldrons of Trembling Rage
		[27] = { itemID = 47698, price = "45 #eoftriumph#" }; --Shoulderplates of Enduring Order
	};
	{
		Name = AL["Page 2"];
		[02] = { itemID = 47695, price = "75 #eoftriumph#" }; --Hood of Clouded Sight
		[03] = { itemID = 47692, price = "75 #eoftriumph#" }; --Hood of Smoldering Aftermath
		[04] = { itemID = 47714, price = "45 #eoftriumph#" }; --Pauldrons of Catastrophic Emanation
		[05] = { itemID = 47716, price = "45 #eoftriumph#" }; --Mantle of Revered Mortality
		[07] = { itemID = 47691, price = "75 #eoftriumph#" }; --Mask of Abundant Growth
		[08] = { itemID = 47688, price = "75 #eoftriumph#" }; --Mask of Lethal Intent
		[09] = { itemID = 47709, price = "45 #eoftriumph#" }; --Duskstalker Pauldrons
		[10] = { itemID = 47710, price = "45 #eoftriumph#" }; --Epaulets of the Fateful Accord
		[17] = { itemID = 47687, price = "75 #eoftriumph#" }; --Headguard of Inner Warmth
		[18] = { itemID = 47684, price = "75 #eoftriumph#" }; --Coif of the Brooding Dragon
		[19] = { itemID = 47705, price = "45 #eoftriumph#" }; --Pauldrons of the Devourer
		[20] = { itemID = 47706, price = "45 #eoftriumph#" }; --Shoulders of the Groundbreaker
		[22] = { itemID = 47678, price = "75 #eoftriumph#" }; --Headplate of the Honorbound
		[23] = { itemID = 47682, price = "75 #eoftriumph#" }; --Helm of the Restless Watch
		[24] = { itemID = 47675, price = "75 #eoftriumph#" }; --Faceplate of Thunderous Rampage
		[25] = { itemID = 47701, price = "45 #eoftriumph#" }; --Shoulderplates of the Cavalier
		[26] = { itemID = 47696, price = "45 #eoftriumph#" }; --Shoulderplates of Trembling Rage
		[27] = { itemID = 47699, price = "45 #eoftriumph#" }; --Shoulderguards of Enduring Order
	};
	{
		Name = AL["Page 3"];
		[01] = { itemID = 47732, price = "35 #eoftriumph#" }; --Band of the Invoker
		[02] = { itemID = 47729, price = "35 #eoftriumph#" }; --Bloodshed Band
		[03] = { itemID = 47731, price = "35 #eoftriumph#" }; --Clutch of Fortification
		[04] = { itemID = 47730, price = "35 #eoftriumph#" }; --Dexterous Brightstone Ring
		[05] = { itemID = 47733, price = "35 #eoftriumph#" }; --Heartmender Circle
		[07] = { itemID = 47735, price = "50 #eoftriumph#" }; --Glyph of Indomitability
		[08] = { itemID = 47734, price = "50 #eoftriumph#" }; --Mark of Supremacy
		[09] = { itemID = 48722, price = "50 #eoftriumph#" }; --Shard of the Crystal Heart
		[10] = { itemID = 48724, price = "50 #eoftriumph#" }; --Talisman of Resurgence
		[12] = { itemID = 47556, price = "15 #eoftriumph#" }; --Crusader Orb
		[16] = { itemID = 47671, price = "25 #eoftriumph#" }; --Idol of Flaring Growth
		[17] = { itemID = 47670, price = "25 #eoftriumph#" }; --Idol of Lunar Fury
		[18] = { itemID = 47668, price = "25 #eoftriumph#" }; --Idol of Mutilation
		[19] = { itemID = 47664, price = "25 #eoftriumph#" }; --Libram of Defiance
		[20] = { itemID = 47661, price = "25 #eoftriumph#" }; --Libram of Valiance
		[21] = { itemID = 47662, price = "25 #eoftriumph#" }; --Libram of Veracity
		[22] = { itemID = 47672, price = "25 #eoftriumph#" }; --Sigil of Insolence
		[23] = { itemID = 47673, price = "25 #eoftriumph#" }; --Sigil of Virulence
		[24] = { itemID = 47665, price = "25 #eoftriumph#" }; --Totem of Calming Tides
		[25] = { itemID = 47666, price = "25 #eoftriumph#" }; --Totem of Electrifying Wind
		[26] = { itemID = 47667, price = "25 #eoftriumph#" }; --Totem of Quaking Earth
		[28] = { itemID = 47659, price = "25 #eoftriumph#" }; --Crimson Star
		[29] = { itemID = 47660, price = "25 #eoftriumph#" }; --Blades of the Sable Cross
		[30] = { itemID = 47658, price = "25 #eoftriumph#" }; --Brimstone Igniter
	};
};

-----------------------------
--- Emblem of Frost Items ---
-----------------------------

AtlasLoot_Data["EmblemofFrost"] = {
	Module = "AtlasLoot_WrathoftheLichKing";
	Name = AL["Emblem of Frost Rewards"];
	{
		Name = AL["Page 1"];
		[01] = { itemID = 50975, price = "95 #eoffrost#" }; --Ermine Coronation Robes
		[02] = { itemID = 50974, price = "95 #eoffrost#" }; --Meteor Chaser's Raiment
		[03] = { itemID = 50984, price = "60 #eoffrost#" }; --Gloves of Ambivalence
		[04] = { itemID = 50983, price = "60 #eoffrost#" }; --Gloves of False Gestures
		[05] = { itemID = 50996, price = "60 #eoffrost#" }; --Belt of Omission
		[06] = { itemID = 50997, price = "60 #eoffrost#" }; --Circle of Ossus
		[08] = { itemID = 50972, price = "95 #eoffrost#" }; --Shadow Seeker's Tunic
		[09] = { itemID = 50973, price = "95 #eoffrost#" }; --Vestments of Spruce and Fir
		[10] = { itemID = 50982, price = "60 #eoffrost#" }; --Cat Burglar's Grips
		[11] = { itemID = 50981, price = "60 #eoffrost#" }; --Gloves of the Great Horned Owl
		[12] = { itemID = 50994, price = "60 #eoffrost#" }; --Belt of Petrified Ivy
		[13] = { itemID = 50995, price = "60 #eoffrost#" }; --Vengeful Noose
		[16] = { itemID = 50970, price = "95 #eoffrost#" }; --Longstrider's Vest
		[17] = { itemID = 50971, price = "95 #eoffrost#" }; --Mail of the Geyser
		[18] = { itemID = 50980, price = "60 #eoffrost#" }; --Blizzard Keeper's Mitts
		[19] = { itemID = 50979, price = "60 #eoffrost#" }; --Logsplitters
		[20] = { itemID = 50993, price = "60 #eoffrost#" }; --Band of the Night Raven
		[21] = { itemID = 50992, price = "60 #eoffrost#" }; --Waistband of Despair
		[22] = { itemID = 50965, price = "95 #eoffrost#" }; --Castle Breaker's Battleplate
		[23] = { itemID = 50969, price = "95 #eoffrost#" }; --Chestplate of Unspoken Truths
		[24] = { itemID = 50968, price = "95 #eoffrost#" }; --Cataclysmic Chestguard
		[25] = { itemID = 50977, price = "60 #eoffrost#" }; --Gatecrasher's Gauntlets
		[26] = { itemID = 50976, price = "60 #eoffrost#" }; --Gauntlets of Overexposure
		[27] = { itemID = 50978, price = "60 #eoffrost#" }; --Gauntlets of the Kraken
		[28] = { itemID = 50989, price = "60 #eoffrost#" }; --Lich Killer's Lanyard
		[29] = { itemID = 50987, price = "60 #eoffrost#" }; --Malevolant Girdle
		[30] = { itemID = 50991, price = "60 #eoffrost#" }; --Verdigris Chain Belt
	};
	{
		Name = AL["Page 2"];
		[01] = { itemID = 50468, price = "50 #eoffrost#" }; --Drape of the Violet Tower
		[02] = { itemID = 50467, price = "50 #eoffrost#" }; --Might of the Ocean Serpent
		[03] = { itemID = 50470, price = "50 #eoffrost#" }; --Recovered Scarlet Onslaught Cape
		[04] = { itemID = 50466, price = "50 #eoffrost#" }; --Sentinel's Winter Cloak
		[05] = { itemID = 50469, price = "50 #eoffrost#" }; --Volde's Cloak of the Night Sky
		[07] = { itemID = 50356, price = "60 #eoffrost#" }; --Corroded Skeleton Key
		[08] = { itemID = 50355, price = "60 #eoffrost#" }; --Herkuml War Token
		[09] = { itemID = 50357, price = "60 #eoffrost#" }; --Maghia's Misguided Quill
		[10] = { itemID = 50358, price = "60 #eoffrost#" }; --Purified Lunar Dust
		[12] = { itemID = 49908, price = "23 #eoffrost#" }; --Primordial Saronite
		[14] = { itemID = 47241 }; --Emblem of Triumph
		[16] = { itemID = 50456, price = "30 #eoffrost#" }; --Idol of the Crying Moon
		[17] = { itemID = 50457, price = "30 #eoffrost#" }; --Idol of the Lunar Eclipse
		[18] = { itemID = 50454, price = "30 #eoffrost#" }; --Idol of the Black Willow
		[19] = { itemID = 50460, price = "30 #eoffrost#" }; --Libram of Blinding Light
		[20] = { itemID = 50461, price = "30 #eoffrost#" }; --Libram of the Eternal Tower
		[21] = { itemID = 50455, price = "30 #eoffrost#" }; --Libram of Three Truths
		[22] = { itemID = 50462, price = "30 #eoffrost#" }; --Sigil of the Bone Gryphon
		[23] = { itemID = 50459, price = "30 #eoffrost#" }; --Sigil of the Hanged Man
		[24] = { itemID = 50458, price = "30 #eoffrost#" }; --Bizuri's Totem of Shattered Ice
		[25] = { itemID = 50463, price = "30 #eoffrost#" }; --Totem of the Avalanche
		[26] = { itemID = 50464, price = "30 #eoffrost#" }; --Totem of the Surging Sea
		[28] = { itemID = 50474, price = "30 #eoffrost#" }; --Shrapnel Star
	};
};
