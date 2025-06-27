local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

local BabbleSubZone = AtlasLoot_GetLocaleLibBabble("LibBabble-SubZone-3.0");
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local _RED = "|cffcc6666"
local PURP = "|cff9900ff"


    --************************************************
    -- Wrath of the Lich King Instances
    --************************************************

    AtlasLoot_MapData["AhnKahet"] = {
        ZoneName = { BabbleZone["Ahn'kahet: The Old Kingdom"], 4494 };
        Location = { BabbleZone["Dragonblight"], 65 };
        LevelRange = "71-78";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = AL["AK, Kahet"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["Exit"] };
        { AL["Elder Nadox"] };
        { AL["Prince Taldaram"] };
        { AL["Amanitar"].." ("..AL["Heroic"]..")" };
        { AL["Jedoga Shadowseeker"] };
        { AL["Herald Volazj"] };
        { AL["Ahn'kahet Brazier"] };
        };
    };

    AtlasLoot_MapData["AzjolNerub"] = {
        ZoneName = { BabbleZone["Azjol-Nerub"], 3477 };
        Location = { BabbleZone["Dragonblight"], 65 };
        LevelRange = "70-77";
        MinLevel = "67";
        PlayerLimit = "5";
        Acronym = AL["AN, Nerub"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["Connection"] };
        { AL["Exit"] };
        { AL["Krik'thir the Gatewatcher"] };
        { AL["Watcher Gashra"] };
        { AL["Watcher Narjil"] };
        { AL["Watcher Silthik"] };
        { AL["Hadronox"] };
        { AL["Elder Nurgen"].." ("..AL["Lunar Festival"]..")" };
        { AL["Anub'arak"] };
        };
    };

    AtlasLoot_MapData["CoTOldStratholme"] = {
        ZoneName = { BabbleZone["Caverns of Time"]..": "..BabbleZone["The Culling of Stratholme"], 4100 };
        Location = { BabbleZone["Tanaris"], 440 };
        LevelRange = "78-80";
        MinLevel = "75";
        PlayerLimit = "5";
        Acronym = AL["CoT-Strat"];
        MapName = "DireMaul";
        [1] = {
        { PURP..AL["Event"]..": "..AL["The Culling of Stratholme"] };
        { AL["Entrance"] };
        { AL["Exit"].." ("..AL["Portal"]..")" };
        { "X) "..AL["Scourge Invasion Points"] };
        { AL["Wave 5"]..": "..AL["Meathook"] };
        { AL["Wave 10"]..": "..AL["Salramm the Fleshcrafter"] };
        { AL["Chromie"] };
        { AL["Chromie"] };
        { AL["Chrono-Lord Epoch"] };
        { AL["Infinite Corruptor"].." ("..AL["Heroic"]..")" };
        { AL["Guardian of Time"] };
        { AL["Mal'Ganis"] };
        { AL["Chromie"] };
        };
    };

    AtlasLoot_MapData["DrakTharonKeep"] = {
        ZoneName = { BabbleZone["Drak'Tharon Keep"], 4196 };
        Location = { BabbleZone["Grizzly Hills"], 394 };
        LevelRange = "72-78";
        MinLevel = "69";
        PlayerLimit = "5";
        Acronym = AL["DTK"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["Connection"] };
        { AL["Connection"] };
        { AL["Trollgore"] };
        { AL["Kurzel"] };
        { AL["Novos the Summoner"] };
        { AL["Elder Kilias"].." ("..AL["Lunar Festival"]..")" };
        { AL["King Dred"] };
        { AL["The Prophet Tharon'ja"] };
        { AL["Drakuru's Brazier"] };
        };
    };

    AtlasLoot_MapData["FHHallsOfReflection"] = {
        ZoneName = { BabbleSubZone["The Frozen Halls"]..": "..BabbleZone["Halls of Reflection"], 4820 };
        Location = { BabbleZone["Icecrown Citadel"], 4812 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "5";
        Acronym = AL["HoR"]..", "..AL["FH3"];
        MapName = "DireMaul";
        [1] = {
        { AL["Attunement Required"] };
        { AL["Entrance"] };
        { AL["Portal"].." ("..BabbleZone["Dalaran"]..")" };
        { AL["Lady Jaina Proudmoore"].." ("..AL["Alliance"]..")" };
        { AL["Archmage Koreln <Kirin Tor>"].." ("..AL["Alliance"]..")" };
        { AL["Lady Sylvanas Windrunner <Banshee Queen>"].." ("..AL["Horde"]..")" };
        { AL["Dark Ranger Loralen"].." ("..AL["Horde"]..")" };
        { AL["Falric"].." ("..AL["Wave 5"]..")" };
        { AL["Marwyn"].." ("..AL["Wave 10"]..")" };
        { AL["Wrath of the Lich King"].." ("..AL["Event"]..")" };
        { AL["The Captain's Chest"] };
        };
    };

    AtlasLoot_MapData["FHPitOfSaron"] = {
        ZoneName = { BabbleSubZone["The Frozen Halls"]..": "..BabbleZone["Pit of Saron"], 4813 };
        Location = { BabbleZone["Icecrown Citadel"], 4812 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "5";
        Acronym = AL["PoS"]..", "..AL["FH2"];
        MapName = "DireMaul";
        [1] = {
        { AL["Attunement Required"] };
        { AL["Entrance"] };
        { AL["Portal"].." ("..BabbleZone["Halls of Reflection"]..")" };
        { AL["Lady Jaina Proudmoore"].." ("..AL["Alliance"]..")" };
        { AL["Archmage Koreln <Kirin Tor>"].." ("..AL["Alliance"]..")" };
        { AL["Archmage Elandra <Kirin Tor>"].." ("..AL["Alliance"]..")" };
        { AL["Lady Sylvanas Windrunner <Banshee Queen>"].." ("..AL["Horde"]..")" };
        { AL["Dark Ranger Loralen"].." ("..AL["Horde"]..")" };
        { AL["Dark Ranger Kalira"].." ("..AL["Horde"]..")" };
        { AL["Forgemaster Garfrost"] };
        { AL["Martin Victus"].." ("..AL["Alliance"]..")" };
        { AL["Gorkun Ironskull"].." ("..AL["Horde"]..")" };
        { AL["Krick and Ick"] };
        { AL["Scourgelord Tyrannus"] };
        { AL["Rimefang"] };
        };
    };

    AtlasLoot_MapData["FHTheForgeOfSouls"] = {
        ZoneName = { BabbleSubZone["The Frozen Halls"]..": "..BabbleZone["The Forge of Souls"], 4809 };
        Location = { BabbleZone["Icecrown Citadel"], 4812 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "5";
        Acronym = AL["FoS"]..", "..AL["FH1"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["Portal"].." ("..BabbleZone["Pit of Saron"]..")" };
        { AL["Lady Jaina Proudmoore"].." ("..AL["Alliance"]..")" };
        { AL["Archmage Koreln <Kirin Tor>"].." ("..AL["Alliance"]..")" };
        { AL["Archmage Elandra <Kirin Tor>"].." ("..AL["Alliance"]..")" };
        { AL["Lady Sylvanas Windrunner <Banshee Queen>"].." ("..AL["Horde"]..")" };
        { AL["Dark Ranger Loralen"].." ("..AL["Horde"]..")" };
        { AL["Dark Ranger Kalira"].." ("..AL["Horde"]..")" };
        { AL["Bronjahm <Godfather of Souls>"] };
        { AL["Devourer of Souls"] };
        };
    };

    AtlasLoot_MapData["Gundrak"] = {
        ZoneName = { BabbleZone["Gundrak"], 4375 };
        Location = { BabbleZone["Zul'Drak"], 66 };
        LevelRange = "76-80";
        MinLevel = "71";
        PlayerLimit = "5";
        Acronym = AL["Gun"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["Exit"] };
        { AL["Slad'ran <High Prophet of Sseratus>"] };
        { AL["Drakkari Colossus"] };
        { AL["Elder Ohanzee"].." ("..AL["Lunar Festival"]..")" };
        { AL["Moorabi <High Prophet of Mam'toth>"] };
        { AL["Eck the Ferocious"].." ("..AL["Heroic"]..", "..AL["Summon"]..")" };
        { AL["Gal'darah <High Prophet of Akali>"] };
        };
    };

    AtlasLoot_MapData["IcecrownCitadelA"] = {
        ZoneName = { BabbleZone["Icecrown Citadel"].." [A] ("..AL["Lower"]..")", 4812 };
        Location = { BabbleZone["Icecrown"], 210 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["IC"];
        MapName = "DireMaul";
        [1] = {
        { AL["Reputation"]..": "..AL["The Ashen Verdict"] };
        { AL["Entrance"] };
        { AL["Connection"] };
        { AL["To next map"] };
        { AL["Lord Marrowgar"] };
        { AL["Lady Deathwhisper"] };
        { AL["Gunship Battle"].." ("..AL["Alliance"]..")" };
        { AL["Gunship Battle"].." ("..AL["Horde"]..")" };
        { AL["Deathbringer Saurfang"] };
        { BabbleSubZone["Light's Hammer"].." ("..AL["Teleporter"]..")" };
        { BabbleSubZone["Oratory of the Damned"].." ("..AL["Teleporter"]..")" };
        { BabbleSubZone["Rampart of Skulls"].." ("..AL["Teleporter"]..", "..AL["Lower"]..")" };
        { BabbleSubZone["Deathbringer's Rise"].." ("..AL["Teleporter"]..", "..AL["Upper"]..")" };
        };
    };

    AtlasLoot_MapData["IcecrownCitadelB"] = {
        ZoneName = { BabbleZone["Icecrown Citadel"].." [B] ("..AL["Upper"]..")", 4812 };
        Location = { BabbleZone["Icecrown"], 210 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["IC"];
        MapName = "DireMaul";
        [1] = {
        { AL["Reputation"]..": "..AL["The Ashen Verdict"] };
        { AL["From previous map"] };
        { "D-H) "..AL["Connection"] };
        { "I) "..AL["To next map"] };
        { AL["Festergut"] };
        { AL["Rotface"] };
        { AL["Professor Putricide"] };
        { AL["Blood Prince Council"] };
        { AL["Prince Keleseth"] };
        { AL["Prince Taldaram"] };
        { AL["Prince Valanar"] };
        { AL["Blood-Queen Lana'thel"] };
        { AL["Valithria Dreamwalker"] };
        { AL["Sindragosa <Queen of the Frostbrood>"] };
        { "4') "..AL["Upper Spire"].." ("..AL["Teleporter"]..")" };
        { "5') "..AL["Sindragosa's Lair"].." ("..AL["Teleporter"]..")" };
        };
    };

    AtlasLoot_MapData["IcecrownCitadelC"] = {
        ZoneName = { BabbleZone["Icecrown Citadel"].." [C] ("..BabbleSubZone["The Frozen Throne"]..")", 4812 };
        Location = { BabbleZone["Icecrown"], 210 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["IC"];
        MapName = "DireMaul";
        [1] = {
        { AL["Reputation"]..": "..AL["The Ashen Verdict"] };
        { "I) "..AL["From previous map"] };
        { AL["The Lich King"] };
        };
    };

    AtlasLoot_MapData["Naxxramas"] = {
        ZoneName = { BabbleZone["Naxxramas"], 3456 };
        Location = { BabbleZone["Dragonblight"], 65 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["Nax"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["Mr. Bigglesworth"].." ("..AL["Wanders"]..")" };
        { BabbleSubZone["The Construct Quarter"] };
        { AL["Patchwerk"] };
        { AL["Grobbulus"] };
        { AL["Gluth"] };
        { AL["Thaddius"] };
        { BabbleSubZone["The Arachnid Quarter"] };
        { AL["Anub'Rekhan"] };
        { AL["Grand Widow Faerlina"] };
        { AL["Maexxna"] };
        { _RED..BabbleSubZone["The Military Quarter"] };
        { _RED..AL["Instructor Razuvious"] };
        { _RED..AL["Gothik the Harvester"] };
        { _RED..AL["The Four Horsemen"] };
        { _RED..AL["Thane Korth'azz"] };
        { _RED..AL["Lady Blaumeux"] };
        { _RED..AL["Baron Rivendare"] };
        { _RED..AL["Sir Zeliek"] };
        { _RED..AL["Four Horsemen Chest"] };
        { PURP..BabbleSubZone["The Plague Quarter"] };
        { PURP..AL["Noth the Plaguebringer"] };
        { PURP..AL["Heigan the Unclean"] };
        { PURP..AL["Loatheb"] };
        { AL["Frostwyrm Lair"] };
        { AL["Sapphiron"] };
        { AL["Kel'Thuzad"] };
        };
    };

    AtlasLoot_MapData["ObsidianSanctum"] = {
        ZoneName = { BabbleSubZone["Chamber of the Aspects"]..": "..BabbleZone["The Obsidian Sanctum"], 4493 };
        Location = { BabbleZone["Dragonblight"], 65 };
        LevelRange = "80";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["OS"];
        MapName = "DireMaul";
        [1] = {
        { AL["AKA"]..": "..AL["Black Dragonflight Chamber"] };
        { AL["Entrance"] };
        { AL["Tenebron"] };
        { AL["Shadron"] };
        { AL["Vesperon"] };
        { AL["Sartharion <The Onyx Guardian>"] };
        };
    };

    AtlasLoot_MapData["OnyxiasLair"] = {
        ZoneName = { BabbleZone["Onyxia's Lair"] };
        Acronym = AL["Ony"];
        MapName = "DireMaul";
        Location = { BabbleZone["Dustwallow Marsh"] };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        [1] = {
        { AL["Entrance"] };
        { AL["Onyxian Warders"] };
        { AL["Whelp Eggs"] };
        { AL["Onyxia"] };
        };
    };

    AtlasLoot_MapData["RubySanctum"] = {
        ZoneName = { BabbleSubZone["Chamber of the Aspects"]..": "..BabbleZone["The Ruby Sanctum"], 4987 };
        Location = { BabbleZone["Dragonblight"], 65 };
        LevelRange = "80";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["RS"];
        MapName = "DireMaul";
        [1] = {
        { AL["AKA"]..": "..AL["self.Colors.RED Dragonflight Chamber"] };
        { AL["Entrance"] };
        { AL["Baltharus the Warborn"] };
        { AL["Saviana Ragefire"] };
        { AL["General Zarithrian"] };
        { AL["Halion <The Twilight Destroyer>"] };
        };
    };

    AtlasLoot_MapData["TheEyeOfEternity"] = {
        ZoneName = { BabbleZone["The Nexus"]..": "..BabbleZone["The Eye of Eternity"], 4500 };
        Location = { BabbleZone["Borean Tundra"], 3537 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["TEoE"];
        MapName = "DireMaul";
        [1] = {
        { AL["Key"]..": "..AL["Key to the Focusing Iris"] };
        { AL["Malygos"] };
        };
    };

    AtlasLoot_MapData["TheNexus"] = {
        ZoneName = { BabbleZone["The Nexus"]..": "..BabbleZone["The Nexus"], 4120 };
        Location = { BabbleZone["Borean Tundra"], 3537 };
        LevelRange = "70-75";
        MinLevel = "66";
        PlayerLimit = "5";
        Acronym = AL["Nex, Nexus"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["Berinand's Research"] };
        { AL["Commander Stoutbeard"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
        { AL["Commander Kolurg"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
        { AL["Grand Magus Telestra"] };
        { AL["Anomalus"] };
        { AL["Elder Igasho"].." ("..AL["Lunar Festival"]..")" };
        { AL["Ormorok the Tree-Shaper"] };
        { AL["Keristrasza"] };
        };
    };

    AtlasLoot_MapData["TheOculus"] = {
        ZoneName = { BabbleZone["The Nexus"]..": "..BabbleZone["The Oculus"], 4228 };
        Location = { BabbleZone["The Nexus"], 4120 };
        LevelRange = "78-80";
        MinLevel = "75";
        PlayerLimit = "5";
        Acronym = AL["Ocu"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["Portal"] };
        { AL["Drakos the Interrogator"] };
        { AL["Varos Cloudstrider <Azure-Lord of the self.Colors.BLUE Dragonflight>"] };
        { AL["Mage-Lord Urom"] };
        { AL["Ley-Guardian Eregos"] };
        { AL["Cache of Eregos"] };
        { AL["Centrifuge Construct"] };
        };
    };

    AtlasLoot_MapData["TrialOfTheChampion"] = {
        ZoneName = { AL["Crusaders' Coliseum"]..": "..BabbleZone["Trial of the Champion"], 4723 };
        Location = { BabbleZone["Icecrown"], 210 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "5";
        Acronym = AL["Champ"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["Grand Champions"] };
        { AL["Champions of the Alliance"] };
        { AL["Marshal Jacob Alerius"] };
        { AL["Ambrose Boltspark"] };
        { AL["Colosos"] };
        { AL["Jaelyne Evensong"] };
        { AL["Lana Stouthammer"] };
        { AL["Champions of the Horde"] };
        { AL["Mokra the Skullcrusher"] };
        { AL["Eressea Dawnsinger"] };
        { AL["Runok Wildmane"] };
        { AL["Zul'tore"] };
        { AL["Deathstalker Visceri"] };
        { AL["Eadric the Pure <Grand Champion of the Argent Crusade>"] };
        { AL["Argent Confessor Paletress"] };
        { AL["The Black Knight"] };
        };
    };

    AtlasLoot_MapData["TrialOfTheCrusader"] = {
        ZoneName = { AL["Crusaders' Coliseum"]..": "..BabbleZone["Trial of the Crusader"], 4722 };
        Location = { BabbleZone["Icecrown"], 210 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["Crus"];
        MapName = "DireMaul";
        [1] = {
        { AL["Heroic: Trial of the Grand Crusader"] };
        { AL["Entrance"] };
        { AL["Cavern Entrance"] };
        { AL["Northrend Beasts"] };
        { AL["Gormok the Impaler"] };
        { AL["Acidmaw"] };
        { AL["Dreadscale"] };
        { AL["Icehowl"] };
        { AL["Lord Jaraxxus"] };
        { AL["Faction Champions"] };
        { AL["Twin Val'kyr"] };
        { AL["Fjola Lightbane"] };
        { AL["Eydis Darkbane"] };
        { AL["Anub'arak"] };
        };
    };

    AtlasLoot_MapData["UlduarA"] = {
        ZoneName = { BabbleZone["Ulduar"].." [A] ("..AL["The Siege"]..")", 4273 };
        Location = { BabbleZone["The Storm Peaks"], 67 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["Uldu"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { BabbleSubZone["The Antechamber"] };
        { "A') "..AL["Tower of Life"] };
        { "B') "..AL["Tower of Flame"] };
        { "C') "..AL["Tower of Frost"] };
        { "D') "..AL["Tower of Storms"] };
        { AL["Flame Leviathan"] };
        { AL["Razorscale"].." ("..AL["Optional"]..")" };
        { AL["Ignis the Furnace Master"].." ("..AL["Optional"]..")" };
        { AL["XT-002 Deconstructor"] };
        { BabbleSubZone["Expedition Base Camp"].." ("..AL["Teleporter"]..")" };
        { BabbleSubZone["Formation Grounds"].." ("..AL["Teleporter"]..")" };
        { BabbleSubZone["The Colossal Forge"].." ("..AL["Teleporter"]..")" };
        { "4') "..BabbleSubZone["The Scrapyard"].." ("..AL["Teleporter"]..")" };
        };
    };

    AtlasLoot_MapData["UlduarB"] = {
        ZoneName = { BabbleZone["Ulduar"].." [B] ("..BabbleSubZone["The Antechamber"]..")", 4273 };
        Location = { BabbleZone["The Storm Peaks"], 67 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["Uldu"];
        MapName = "DireMaul";
        [1] = {
        { AL["Key"]..": "..AL["Celestial Planetarium Key"] };
        { AL["The Siege"] };
        { AL["The Keepers"] };
        { AL["Assembly of Iron"].." ("..AL["Optional"]..")" };
        { AL["Steelbreaker"] };
        { AL["Runemaster Molgeim"] };
        { AL["Stormcaller Brundir"] };
        { AL["Prospector Doren"] };
        { AL["Archivum Console"] };
        { AL["Kologarn"] };
        { AL["Algalon the Observer"].." ("..AL["Optional"]..")" };
        { "5') "..BabbleSubZone["The Antechamber"].." ("..AL["Teleporter"]..")" };
        };
    };

    AtlasLoot_MapData["UlduarC"] = {
        ZoneName = { BabbleZone["Ulduar"].." [C] ("..AL["The Keepers"]..")", 4273 };
        Location = { BabbleZone["The Storm Peaks"], 67 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["Uldu"];
        MapName = "DireMaul";
        [1] = {
        { BabbleSubZone["The Antechamber"] };
        { "D) "..BabbleSubZone["The Spark of Imagination"] };
        { "E) "..BabbleSubZone["The Descent into Madness"] };
        { AL["Auriaya"].." ("..AL["Optional"]..")" };
        { AL["Hodir"] };
        { AL["Thorim"] };
        { AL["Freya"] };
        { "6') "..BabbleSubZone["The Shattered Walkway"].." ("..AL["Teleporter"]..")" };
        { "7') "..BabbleSubZone["The Conservatory of Life"].." ("..AL["Teleporter"]..")" };
        };
    };
    
    AtlasLoot_MapData["UlduarD"] = {
        ZoneName = { BabbleZone["Ulduar"].." [D] ("..BabbleSubZone["The Spark of Imagination"]..")", 4273 };
        Location = { BabbleZone["The Storm Peaks"], 67 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["Uldu"];
        MapName = "DireMaul";
        [1] = {
        { "D) "..AL["The Keepers"] };
        { AL["Mimiron"] };
        { "8') "..BabbleSubZone["The Spark of Imagination"].." ("..AL["Teleporter"]..")" };
        };
    };

    AtlasLoot_MapData["UlduarE"] = {
        ZoneName = { BabbleZone["Ulduar"].." [E] ("..BabbleSubZone["The Descent into Madness"]..")", 4273 };
        Location = { BabbleZone["The Storm Peaks"], 67 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["Uldu"];
        MapName = "DireMaul";
        [1] = {
        { "E) "..AL["The Keepers"] };
        { AL["General Vezax"] };
        { AL["Yogg-Saron"] };
        { "9') "..BabbleSubZone["The Prison of Yogg-Saron"].." ("..AL["Teleporter"]..")" };
        };
    };

    AtlasLoot_MapData["UlduarHallsofLightning"] = {
        ZoneName = { BabbleZone["Ulduar"]..": "..BabbleZone["Halls of Lightning"], 4272 };
        Location = { BabbleZone["The Storm Peaks"], 67 };
        LevelRange = "78-80";
        MinLevel = "75";
        PlayerLimit = "5";
        Acronym = AL["HoL"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["General Bjarngrim"].." ("..AL["Wanders"]..")" };
        { AL["Volkhan"] };
        { AL["Ionar"] };
        { AL["Loken"] };
        };
    };

    AtlasLoot_MapData["UlduarHallsofStone"] = {
        ZoneName = { BabbleZone["Ulduar"]..": "..BabbleZone["Halls of Stone"], 4264 };
        Location = { BabbleZone["The Storm Peaks"], 67 };
        LevelRange = "75-80";
        MinLevel = "72";
        PlayerLimit = "5";
        Acronym = AL["HoS"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["Elder Yurauk"].." ("..AL["Lunar Festival"]..")" };
        { AL["Krystallus"] };
        { AL["Maiden of Grief"] };
        { AL["Brann Bronzebeard"] };
        { AL["Tribunal Chest"] };
        { AL["Sjonnir the Ironshaper"] };
        };
    };

    AtlasLoot_MapData["UtgardeKeep"] = {
        ZoneName = { BabbleZone["Utgarde Keep"]..": "..BabbleZone["Utgarde Keep"], 206 };
        Location = { BabbleZone["Howling Fjord"], 495 };
        LevelRange = "68-75";
        MinLevel = "65";
        PlayerLimit = "5";
        Acronym = AL["UK, Keep"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["Dark Ranger Marrah"] };
        { "B-C) "..AL["Connection"] };
        { AL["Prince Keleseth <The San'layn>"] };
        { AL["Elder Jarten"].." ("..AL["Lunar Festival"]..", "..AL["Lower"]..")" };
        { AL["Dalronn the Controller"] };
        { AL["Skarvald the Constructor"] };
        { AL["Ingvar the Plunderer"] };
        };
    };

    AtlasLoot_MapData["UtgardePinnacle"] = {
        ZoneName = { BabbleZone["Utgarde Keep"]..": "..BabbleZone["Utgarde Pinnacle"], 1196 };
        Location = { BabbleZone["Utgarde Keep"], 206 };
        LevelRange = "78-80";
        MinLevel = "75";
        PlayerLimit = "5";
        Acronym = AL["UP, Pinn"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["Brigg Smallshanks"] };
        { AL["Svala Sorrowgrave"] };
        { AL["Gortok Palehoof"] };
        { AL["Skadi the Ruthless"] };
        { AL["Elder Chogan'gada"].." ("..AL["Lunar Festival"]..")" };
        { AL["King Ymiron"] };
        };
    };

    AtlasLoot_MapData["VaultOfArchavon"] = {
        ZoneName = { BabbleZone["Vault of Archavon"], 4603 };
        Location = { BabbleZone["Wintergrasp"], 4197 };
        LevelRange = "80+";
        MinLevel = "80";
        PlayerLimit = "10/25";
        Acronym = AL["VoA"];
        MapName = "DireMaul";
        [1] = {
        { AL["Entrance"] };
        { AL["Archavon the Stone Watcher"] };
        { AL["Emalon the Storm Watcher"] };
        { AL["Koralon the Flame Watcher"] };
        { AL["Toravon the Ice Watcher"] };
        };
    };

    AtlasLoot_MapData["VioletHold"] = {
        ZoneName = { BabbleZone["The Violet Hold"], 4415 };
        Location = { BabbleZone["Dalaran"], 4395 };
        LevelRange = "73-79";
        MinLevel = "70";
        PlayerLimit = "5";
        Acronym = AL["VH"];
        MapName = "DireMaul";
        [1] = {
        { AL["Key"]..": "..AL["The Violet Hold Key"] };
        { AL["Entrance"] };
        { AL["Erekem"].." ("..AL["Random"]..")" };
        { AL["Zuramat the Obliterator"].." ("..AL["Upper"]..", "..AL["Random"]..")" };
        { AL["Xevozz"].." ("..AL["Lower"]..", "..AL["Random"]..")" };
        { AL["Ichoron"].." ("..AL["Random"]..")" };
        { AL["Moragg"].." ("..AL["Random"]..")" };
        { AL["Lavanthor"].." ("..AL["Random"]..")" };
        { AL["Cyanigosa"].." ("..AL["Wave 18"]..")" };
        };
    };