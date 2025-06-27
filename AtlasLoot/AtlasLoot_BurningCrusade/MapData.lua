local AL = LibStub("AceLocale-3.0"):GetLocale("AtlasLoot")

local BabbleSubZone = AtlasLoot_GetLocaleLibBabble("LibBabble-SubZone-3.0");
local BabbleZone = AtlasLoot_GetLocaleLibBabble("LibBabble-Zone-3.0")
local quest = "questturnin"
local boss = "dungeonskull"


    --************************************************
    -- Burning Crusade Instances
    --************************************************

    -- Raids
    AtlasLoot_MapData.Karazhan = {
        ZoneName = { BabbleZone["Karazhan"].." [A] ("..AL["Start"]..")", 3457 };
        Location = { BabbleZone["Deadwind Pass"], 41 };
        LevelRange = "70";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = AL["Kara"];
        MapName = "Karazhan";
        Reputation = AL["The Violet Eye"];
        [1] = {
            { AL["Servant's Quarters"], SubZone = true };
            { AL["Hastings <The Caretaker>"], cords = {62,67} };
            { AL["Random Servant's Quarter Boss"], cords = {67,30}, pinType = boss};
            { AL["Hyakiss the Lurker"].." ("..AL["Rare"]..", "..AL["Random"]..")" };
            { AL["Rokad the Ravager"].." ("..AL["Rare"]..", "..AL["Random"]..")" };
            { AL["Shadikith the Glider"].." ("..AL["Rare"]..", "..AL["Random"]..")" };
            { AL["Berthold <The Doorman>"], cords = {53,64} };
            { AL["Calliard <The Nightman>"], cords = {48,89} };
            { AL["Attumen the Huntsman"], cords = {46, 83}, pinType = boss };
            { AL["Midnight"] };
            { AL["Koren <The Blacksmith>"], cords = {46, 74} };
        };
        [2] = {
            { AL["Upper Livery Stables"], SubZone = true };
            { AL["Bennett <The Sergeant at Arms>"], cords = {40,63} };
        };
        [3] = {
            { AL["The Banquet Hall"], SubZone = true };
            { AL["Moroes <Tower Steward>"], cords = {26,64}, pinType = boss };
            { AL["Baroness Dorothea Millstipe"].." ("..AL["Random"]..", "..AL["Shadow Priest"]..")" };
            { AL["Lady Catriona Von'Indi"].." ("..AL["Random"]..", "..AL["Holy Priest"]..")" };
            { AL["Lady Keira Berrybuck"].." ("..AL["Random"]..", "..AL["Holy Paladin"]..")" };
            { AL["Baron Rafe Dreuger"].." ("..AL["Random"]..", "..AL["Retribution Paladin"]..")" };
            { AL["Lord Robin Daris"].." ("..AL["Random"]..", "..AL["Arms Warrior"]..")" };
            { AL["Lord Crispin Ference"].." ("..AL["Random"]..", "..AL["Protection Warrior"]..")" };
        };
        [4] = {
            { AL["The Guest Chambers"], SubZone = true };
            { AL["Ebonlocke <The Noble>"], cords = {56,63} };
            { AL["Keanna's Log"], cords = {70,21} };
            { AL["Maiden of Virtue"], cords = {84,48}, pinType = boss };
            { AL["Sebastian <The Organist>"], cords = {26,49} };
            { AL["Barnes <The Stage Manager>"], cords = {20,27} };
            { AL["The Opera Event"], cords = {18,32}, pinType = boss };
            { AL["self.Colors.RED Riding Hood"].." ("..AL["Random"]..")" };
            { AL["The Big Bad Wolf"] };
            { AL["Wizard of Oz"].." ("..AL["Random"]..")" };
            { AL["Dorothee"] };
            { AL["Tito"] };
            { AL["Strawman"] };
            { AL["Tinhead"] };
            { AL["Roar"] };
            { AL["The Crone"] };
            { AL["Romulo and Julianne"].." ("..AL["Random"]..")" };
            { AL["Romulo"] };
            { AL["Julianne"] };
        };
        [5] = {
            { AL["Opera Hall Balcony"], SubZone = true };
        };
        [6] = {
            { AL["Master's Terrace"], SubZone = true };
            { AL["Nightbane"].." ("..AL["Summon"]..")", cords = {48,91}, pinType = boss };
        };
        [7] = {
            { AL["Lower Broken Stair"], SubZone = true };
        };
        [8] = {
            { AL["Upper Broken Stair"], SubZone = true };
        };
        [9] = {
            { AL["The Menagerie"], SubZone = true };
            { AL["The Curator"] , cords = {50,36}, pinType = boss};
            { AL["Wravien <The Mage>"], cords = {39,45} };
            { AL["Gradav <The Warlock>"], cords = {30,48} };
            { AL["Kamsis <The Conjurer>"], cords = {30,60} };
        };
        [10] = {
            { AL["Guardian's Library"], SubZone = true };
            { AL["Shade of Aran"], cords = {73,27}, pinType = boss };
        };
        [11] = {
            { AL["The Repository"], SubZone = true };
            { AL["Terestian Illhoof"], cords = {53,69}, pinType = boss };
            { AL["Kil'rek"].." ("..AL["Imp"]..")" };
        };
        [12] = {
            { AL["Upper Library"], SubZone = true };
            { AL["Ythyar"].." ("..AL["Repair"]..", "..AL["Rewards"]..")", cords = {46,26} };
        };
        [13] = {
            { AL["The Celestial Watch"], SubZone = true };
            { AL["Netherspite"], cords = {36,41}, pinType = boss };
        };
        [14] = {
            { AL["Gamesman's Hall"], SubZone = true };
            { AL["Echo of Medivh"], cords = {23,79} };
            { AL["Dust Covered Chest"].." ("..AL["Chess Event"]..")" , cords = {37,62}, pinType = boss};
        };
        [15] = {
            { AL["Medivh's Chambers"], SubZone = true };
        };
        [16] = {
            { AL["The Power Station"], SubZone = true };
        };
        [17] = {
            { AL["Netherspace"], SubZone = true };
            { AL["Prince Malchezaar"], cords = {60,38.5}, pinType = boss };
        };
    };

    AtlasLoot_MapData["HCMagtheridonsLair"] = {
        ZoneName = { BabbleZone["Magtheridon's Lair"], 3836 };
        Location = { BabbleZone["Hellfire Peninsula"], 3483 };
        LevelRange = "70";
        MinLevel = "65";
        PlayerLimit = "10-25";
        Acronym = AL["Mag"];
        MapName = "Magtheridonslair";
        [1] = {
        { BabbleZone["Magtheridon's Lair"], SubZone = true };
        { AL["Magtheridon"], cords = {69,74}, pinType = boss };
        };
    };

    AtlasLoot_MapData["GruulsLair"] = {
        ZoneName = { BabbleZone["Gruul's Lair"], 3923 };
        Location = { BabbleZone["Blade's Edge Mountains"], 3522 };
        LevelRange = "70";
        MinLevel = "65";
        PlayerLimit = "10-25";
        Acronym = AL["GL"];
        MapName = "GruulsLair";
        [1] = {
        { BabbleZone["Gruul's Lair"], SubZone = true };
        { AL["High King Maulgar <Lord of the Ogres>"], cords = {55,57}, pinType = boss };
        { AL["Kiggler the Crazed"].." ("..AL["Shaman"]..")" };
        { AL["Blindeye the Seer"].." ("..AL["Priest"]..")" };
        { AL["Olm the Summoner"].." ("..AL["Warlock"]..")" };
        { AL["Krosh Firehand"].." ("..AL["Mage"]..")" };
        { AL["Gruul the Dragonkiller"], cords = {20,29}, pinType = boss };
        };
    };

    AtlasLoot_MapData["CFRSerpentshrineCavern"] = {
        ZoneName = { BabbleZone["Serpentshrine Cavern"], 3607 };
        Location = { BabbleZone["Zangarmarsh"], 3521 };
        LevelRange = "70";
        MinLevel = "70";
        PlayerLimit = "10-25";
        Acronym = AL["SC"];
        MapName = "CoilfangReservoir";
        Reputation = AL["Cenarion Expedition"];
        [1] = {
        { BabbleZone["Serpentshrine Cavern"], SubZone = true };
        { AL["Hydross the Unstable <Duke of Currents>"], cords = {38,85}, pinType = boss };
        { AL["The Lurker Below"], cords = {37,59}, pinType = boss };
        { AL["Leotheras the Blind"], cords = {42,23}, pinType = boss };
        { AL["Fathom-Lord Karathress"], cords = {48,14}, pinType = boss };
        { AL["Seer Olum"] };
        { AL["Morogrim Tidewalker"], cords = {59,27}, pinType = boss };
        { AL["Lady Vashj <Coilfang Matron>"], cords = {73,59}, pinType = boss };
        };
    };

    AtlasLoot_MapData["TempestKeepTheEye"] = {
        ZoneName = { BabbleZone["The Eye"], 3845 };
        Location = { BabbleZone["Netherstorm"], 3523 };
        LevelRange = "70";
        MinLevel = "70";
        PlayerLimit = "10-25";
        Acronym = AL["Eye"];
        MapName = "TempestKeep";
        Reputation = AL["The Sha'tar"];
        [1] = {
        { BabbleZone["The Eye"], SubZone = true };
        { AL["Al'ar <Phoenix God>"], cords = {51,60}, pinType = boss };
        { AL["Void Reaver"], cords = {26,49}, pinType = boss };
        { AL["High Astromancer Solarian"], cords = {74,48}, pinType = boss };
        { AL["Kael'thas Sunstrider <Lord of the Blood Elves>"], cords = {50,15}, pinType = boss };
        { AL["Thaladred the Darkener <Advisor to Kael'thas>"].." ("..AL["Warrior"]..")" };
        { AL["Master Engineer Telonicus <Advisor to Kael'thas>"].." ("..AL["Hunter"]..")" };
        { AL["Grand Astromancer Capernian <Advisor to Kael'thas>"].." ("..AL["Mage"]..")" };
        { AL["Lord Sanguinar <The Blood Hammer>"].." ("..AL["Paladin"]..")" };
        };
    };

    AtlasLoot_MapData["ZulAman"] = {
        ZoneName = { BabbleZone["Zul'Aman"], 3805 };
        Location = { BabbleZone["Ghostlands"], 3433 };
        LevelRange = "70";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = AL["ZA"];
        MapName = "ZulAman";
        [1] = {
        { BabbleZone["Zul'Aman"], SubZone = true };
        { AL["Harrison Jones"], cords = {12,53} };
        { AL["Nalorakk <Bear Avatar>"], cords = {41,74}, pinType = boss };
        { AL["Tanzar"] };
        { AL["The Map of Zul'Aman"] };
        { AL["Akil'Zon <Eagle Avatar>"], cords = {35,23}, pinType = boss };
        { AL["Harkor"] };
        { AL["Jan'Alai <Dragonhawk Avatar>"], cords = {56,71}, pinType = boss };
        { AL["Kraz"] };
        { AL["Halazzi <Lynx Avatar>"], cords = {58,24}, pinType = boss };
        { AL["Ashli"] };
        { AL["Zungam"], cords = {67.4,37.6}, pinType = quest };
        { AL["Hex Lord Malacrass"], cords = {72,54}, pinType = boss };
        { AL["Thurg"].." ("..AL["Random"]..")" };
        { AL["Gazakroth"].." ("..AL["Random"]..")" };
        { AL["Lord Raadan"].." ("..AL["Random"]..")" };
        { AL["Darkheart"].." ("..AL["Random"]..")" };
        { AL["Alyson Antille"].." ("..AL["Random"]..")" };
        { AL["Slither"].." ("..AL["Random"]..")" };
        { AL["Fenstalker"].." ("..AL["Random"]..")" };
        { AL["Koragg"].." ("..AL["Random"]..")" };
        { AL["Zul'jin"], cords = {91,54}, pinType = boss };
        { AL["Forest Frogs"], cords = {45,56} };
        { AL["Kyren <Reagents>"] };
        { AL["Gunter <Food Vendor>"] };
        { AL["Adarrah"] };
        { AL["Brennan"] };
        { AL["Darwen"] };
        { AL["Deez"] };
        { AL["Galathryn"] };
        { AL["Mitzi"] };
        { AL["Mannuth"] };
        };
    };

    AtlasLoot_MapData["CoTHyjal"] = {
        ZoneName = { BabbleZone["Hyjal Summit"], 3606 };
        Location = { BabbleZone["Tanaris"], 440 };
        LevelRange = "70";
        MinLevel = "70";
        PlayerLimit = "10-25";
        Acronym = AL["CoT3"];
        MapName = "CoTMountHyjal";
        Reputation = AL["The Scale of the Sands"];
        [1] = {
        { AL["Battle for Mount Hyjal"], SubZone = true };
        { AL["Alliance Base"], cords = {10.6,63.7} };
        { AL["Lady Jaina Proudmoore"] };
        { AL["Rage Winterchill"], cords = {9,70}, pinType = boss };
        { AL["Anetheron"] };
        { AL["Horde Encampment"], cords = {48,41.7} };
        { AL["Thrall <Warchief>"] };
        { AL["Night Elf Village"], cords = {74.3,57.7} };
        { AL["Tyrande Whisperwind\n<High Priestess of Elune>"] };
        { AL["Kaz'rogal"], cords = {43,36}, pinType = boss };
        { AL["Azgalor"] };
        { AL["Archimonde"], cords = {77,28}, pinType = boss };
        };
    };

    AtlasLoot_MapData["BlackTemple"] = {
        ZoneName = { BabbleZone["Black Temple"].." [A] ("..AL["Start"]..")", 3959 };
        Location = { BabbleZone["Shadowmoon Valley"], 3520 };
        LevelRange = "70";
        MinLevel = "70";
        PlayerLimit = "10-25";
        Acronym = AL["BT"];
        MapName = "BlackTemple";
        Reputation = AL["Ashtongue Deathsworn"];
        [1] = {
            { BabbleSubZone["Karabor Sewers"], SubZone = true };
            { AL["High Warlord Naj'entus"], cords = {42.9,19.2}, pinType = boss };
            { AL["Spirit of Olum"] };
            { AL["Supremus"] };
        };
        [2] = {
            { BabbleSubZone["Sanctuary of Shadows"], SubZone = true };
            { AL["Spirit of Udalo"], cords = {62,50} };
            { AL["Aluyen <Reagents>"] };
            { AL["Okuno <Ashtongue Deathsworn Quartermaster>"] };
            { AL["Seer Kanai"] };
            { AL["Shade of Akama"], cords = {40,89}, pinType = boss };
        };
        [3] = {
            { BabbleSubZone["Halls of Anguish"], SubZone = true };
            { AL["Gurtogg Bloodboil"], cords = {53,47}, pinType = boss };
            { AL["Reliquary of Souls"], cords = {62,84}, pinType = boss };
            { AL["Essence of Suffering"] };
            { AL["Essence of Desire"] };
            { AL["Essence of Anger"] };
        };
        [4] = {
            { BabbleSubZone["Gorefiend's Vigil"], SubZone = true };
            { AL["Teron Gorefiend"], cords = {40,12}, pinType = boss }; 
        };
        [5] = {
            { BabbleSubZone["Den of Mortal Delights"], SubZone = true };
            { AL["Mother Shahraz"], cords = {67,38}, pinType = boss };
        };
        [6] = {
            { BabbleSubZone["Chamber of Command"], SubZone = true };
            { AL["The Illidari Council"], cords = {48,43}, pinType = boss };
            { AL["Lady Malande"].." ("..AL["Priest"]..")" };
            { AL["High Nethermancer Zerevor"].." ("..AL["Mage"]..")" };
            { AL["Veras Darkshadow"].." ("..AL["Rogue"]..")" };
        };
        [7] = {
            { BabbleSubZone["Temple Summit"], SubZone = true };
            { AL["Illidan Stormrage <The Betrayer>"], cords = {53,71}, pinType = boss };
        };
        [8] = {
            { BabbleSubZone["Illidari Training Grounds"], SubZone = true };
            { AL["Gathios the Shatterer"].." ("..AL["Paladin"]..")", cords = {67,47}, pinType = boss };
        };

    };

    AtlasLoot_MapData["SunwellPlateau"] = {
        ZoneName = { BabbleZone["Sunwell Plateau"], 4075 };
        Location = { BabbleZone["Isle of Quel'Danas"], 4080 };
        LevelRange = "70";
        MinLevel = "70";
        PlayerLimit = "10-25";
        Acronym = AL["SuP"];
        MapName = "SunwellPlateau";
        [2] = {
            { BabbleSubZone["Shrine of the Eclipse"], SubZone = true };
            { AL["Kalecgos"], cords = {30,51}, pinType = boss };
            { AL["Sathrovarr the Corruptor"] };
            { AL["Madrigosa"], cords = {67,87}, pinType = boss };
            { AL["Brutallus"] };
            { AL["Felmyst"] };
            { AL["Kil'jaeden <The Deceiver>"], cords = {64,33}, pinType = boss };
        };
        [1] = {
            { BabbleSubZone["Sunwell Plateau"], SubZone = true };
            { AL["Eredar Twins"].." ("..AL["Lower"]..")", cords = {46,24}, pinType = boss };
            { AL["Grand Warlock Alythess"].." ("..AL["Lower"]..")" };
            { AL["Lady Sacrolash"].." ("..AL["Lower"]..")" };
            { AL["M'uru"].." ("..AL["Upper"]..")" };
            { AL["Entropius"].." ("..AL["Upper"]..")" };
            { AL["Kil'jaeden <The Deceiver>"], cords = {46,64}, pinType = boss };
        };
    };

    -- Dungeons

    AtlasLoot_MapData["HCHellfireRamparts"] = {
        ZoneName = { BabbleZone["Hellfire Ramparts"], 3562 };
        Location = { BabbleZone["Hellfire Peninsula"], 3483 };
        LevelRange = "59-67";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = AL["Ramp"];
        MapName = "HellfireRamparts";
        Reputation = { Horde = AL["Thrallmar"], Alliance = AL["Honor Hold"] };
        [1] = {
            { BabbleZone["Hellfire Ramparts"], SubZone = true };
            { AL["Watchkeeper Gargolmar"], cords = {73,32}, pinType = boss };
            { AL["Omor the Unscarred"], cords = {40,20}, pinType = boss };
            { AL["Vazruden"] , cords = {36,82}, pinType = boss};
            { AL["Nazan <Vazruden's Mount>"] };
            { AL["Reinforced Fel Iron Chest"], cords = {33,87} };
        };
    };

    AtlasLoot_MapData["HCTheShatteredHalls"] = {
        ZoneName = { BabbleZone["The Shattered Halls"], 3714 };
        Location = { BabbleZone["Hellfire Peninsula"], 3483 };
        LevelRange = "69-70";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = AL["SH"];
        MapName = "TheShatteredHalls";
        Reputation = { Horde = AL["Thrallmar"], Alliance = AL["Honor Hold"] };
        [1] = {
            { BabbleZone["The Shattered Halls"], SubZone = true };
            { AL["Randy Whizzlesprocket"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")", cords = {35,71}, pinType = boss };
            { AL["Drisella"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
            { AL["Grand Warlock Nethekurse"], cords = {33,62}, pinType = boss };
            { AL["Blood Guard Porung"].." ("..AL["Heroic"]..")", cords = {30,14}, pinType = boss };
            { AL["Warbringer O'mrogg"], cords = {54,35}, pinType = boss };
            { AL["Warchief Kargath Bladefist"], cords = {68,50}, pinType = boss };
            { AL["Shattered Hand Executioner"].." ("..AL["Heroic"]..")" };
            { AL["Private Jacint"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
            { AL["Rifleman Brownbeard"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
            { AL["Captain Alina"].." ("..AL["Alliance"]..", "..AL["Heroic"]..")" };
            { AL["Scout Orgarr"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
            { AL["Korag Proudmane"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
            { AL["Captain Boneshatter"].." ("..AL["Horde"]..", "..AL["Heroic"]..")" };
        };
    };

    AtlasLoot_MapData["HCBloodFurnace"] = {
        ZoneName = { BabbleZone["The Blood Furnace"], 3713 };
        Location = { BabbleZone["Hellfire Peninsula"], 3483 };
        LevelRange = "60-68";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = AL["BF"];
        MapName = "TheBloodFurnace";
        Reputation = { Horde = AL["Thrallmar"], Alliance = AL["Honor Hold"] };
        [1] = {
            { BabbleZone["The Blood Furnace"], SubZone = true };
            { AL["The Maker"], cords = {39,41}, pinType = boss };
            { AL["Broggok"], cords = {42,22}, pinType = boss };
            { AL["Keli'dan the Breaker"], cords = {58,41}, pinType = boss };
        };
    };

    AtlasLoot_MapData["TempestKeepBotanica"] = {
        ZoneName = { BabbleZone["The Botanica"], 3847 };
        Location = { BabbleZone["Netherstorm"], 3523 };
        LevelRange = "69-70";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = AL["Bota"];
        MapName = "TheBotanica";
        Reputation = AL["The Sha'tar"];
        [1] = {
            { BabbleZone["The Botanica"], SubZone = true };
            { AL["Commander Sarannis"], cords = {45,23}, pinType = boss };
            { AL["High Botanist Freywinn"], cords = {24,23}, pinType = boss };
            { AL["Thorngrin the Tender"], cords = {8,48}, pinType = boss };
            { AL["Laj"], cords = {34,86}, pinType = boss };
            { AL["Warp Splinter"], cords = {34,36}, pinType = boss };
        };
    };

    AtlasLoot_MapData["TempestKeepArcatraz"] = {
        ZoneName = {BabbleZone["The Arcatraz"], 3846 };
        Location = { BabbleZone["Netherstorm"], 3523 };
        LevelRange = "69-70";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = AL["Arca"];
        MapName = "TheArcatraz";
        Reputation = AL["The Sha'tar"];
        [1] = {
            { BabbleSubZone["Stasis Block: Trion"], SubZone = true };
            { AL["Zereketh the Unbound"], cords = {60,25}, pinType = boss };
        };
        [2] = {
            { BabbleSubZone["Stasis Block: Maximus"], SubZone = true };
            { AL["Arcane Container"], cords = {59,27} };
            { AL["Third Fragment Guardian"] };
            { AL["Dalliah the Doomsayer"], cords = {37,79}, pinType = boss };
            { AL["Wrath-Scryer Soccothrates"], cords = {21,79}, pinType = boss };
        };
        [3] = {
            { BabbleSubZone["Containment Core"], SubZone = true };
            { AL["Udalo"], cords = {29,28}, pinType = boss };
            { AL["Harbinger Skyriss"], cords = {62,30}, pinType = boss };
            { AL["Warden Mellichar"] };
            { AL["Millhouse Manastorm"] };
        };
    };

    AtlasLoot_MapData["TempestKeepMechanar"] = {
        ZoneName = { BabbleZone["The Mechanar"], 3849 };
        Location = { BabbleZone["Netherstorm"], 3523 };
        LevelRange = "68-70";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = AL["Mech"];
        MapName = "TheMechanar";
        Reputation = AL["The Sha'tar"];
        [1] = {
            { BabbleSubZone["The Mechanar"], SubZone = true };
            { AL["Gatewatcher Gyro-Kill"], cords = {47,58}, pinType = boss };
            { AL["Gatewatcher Iron-Hand"], cords = {61,53}, pinType = boss };
            { AL["Cache of the Legion"] };
            { AL["Mechano-Lord Capacitus"], cords = {52,32}, pinType = boss };
            { AL["Overcharged Manacell"] };
        };
        [2] = {
            { AL["Calculation Chamber"], SubZone = true };
            { AL["Nethermancer Sepethrea"], cords = {48,20}, pinType = boss };
            { AL["Pathaleon the Calculator"], cords = {28,62}, pinType = boss };
        };
    };

    AtlasLoot_MapData["AuchAuchenaiCrypts"] = {
        ZoneName = { BabbleZone["Auchenai Crypts"], 3790 };
        Location = { BabbleZone["Terokkar Forest"], 3519 };
        LevelRange = "64-70";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = AL["AC"];
        MapName = "AuchenaiCrypts";
        Reputation = AL["Lower City"];
        [1] = {
            { BabbleSubZone["Halls of the Hereafter"], SubZone = true };
        };
        [2] = {
            { BabbleSubZone["Bridge of Souls"], SubZone = true };
            { AL["Shirrak the Dead Watcher"], cords = {47,67}, pinType = boss };
            { AL["Exarch Maladaar"], cords = {74,50}, pinType = boss };
            { AL["Avatar of the Martyred"] };
            { AL["D'ore"] };
        };
    };

    AtlasLoot_MapData["AuchManaTombs"] = {
        ZoneName = { BabbleZone["Mana-Tombs"], 3792 };
        Location = { BabbleZone["Terokkar Forest"], 3519 };
        LevelRange = "63-70";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = AL["MT"];
        MapName = "ManaTombs";
        Reputation = AL["The Consortium"];
        [1] = {
            { BabbleZone["Mana-Tombs"], SubZone = true };
            { AL["Pandemonius"], cords = {49,29}, pinType = boss };
            { AL["Shadow Lord Xiraxis"] };
            { AL["Ambassador Pax'ivi"].." ("..AL["Heroic"]..")", cords = {61,15}, pinType = boss };
            { AL["Tavarok"], cords = {61,74}, pinType = boss };
            { AL["Cryo-Engineer Sha'heen"], cords = {43,84}, pinType = boss };
            { AL["Ethereal Transporter Control Panel"] };
            { AL["Nexus-Prince Shaffar"], cords = {33,49}, pinType = boss };
            { AL["Yor <Void Hound of Shaffar>"].." ("..AL["Summon"]..")" };
        };
    };

    AtlasLoot_MapData["AuchSethekkHalls"] = {
        ZoneName = {BabbleZone["Sethekk Halls"], 3791 };
        Location = { BabbleZone["Terokkar Forest"], 3519 };
        LevelRange = "66-70";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = AL["Seth"];
        MapName = "SethekkHalls";
        Reputation = AL["Lower City"];
        [1] = {
            { BabbleSubZone["Veil Sethekk"], SubZone = true };
            { AL["Darkweaver Syth"], cords = {49,68}, pinType = boss };
            { AL["Lakka"] };

        };
        [2] = {
            { BabbleSubZone["Halls of Mourning"], SubZone = true };
            { AL["The Saga of Terokk"], cords = {33,55}, pinType = boss };
            { AL["Anzu"].." ("..AL["Summon"]..")" };
            { AL["Talon King Ikiss"], cords = {33,27}, pinType = boss };
        };
    };

    AtlasLoot_MapData["AuchShadowLabyrinth"] = {
        ZoneName = { BabbleZone["Shadow Labyrinth"], 3789 };
        Location = { BabbleZone["Terokkar Forest"], 3519 };
        LevelRange = "69-70";
        MinLevel = "65";
        PlayerLimit = "5";
        Acronym = AL["SL"];
        MapName = "ShadowLabyrinth";
        Reputation = AL["Lower City"];
        [1] = {
            { BabbleZone["Shadow Labyrinth"], SubZone = true };
            { AL["Spy To'gun"], cords = {17,24} };
            { AL["Ambassador Hellmaw"], cords = {23,39}, pinType = boss };
            { AL["Blackheart the Inciter"], cords = {27,71}, pinType = boss };
            { AL["Grandmaster Vorpil"], cords = {54,54}, pinType = boss };
            { AL["The Codex of Blood"] };
            { AL["Murmur"], cords = {81,39}, pinType = boss };
            { AL["Arcane Container"], cords = {83,32} };
            { AL["First Fragment Guardian"] };
        };
    };

    AtlasLoot_MapData["CoTOldHillsbrad"] = {
        ZoneName = { BabbleZone["Old Hillsbrad Foothills"], 2367 };
        Location = { BabbleZone["Tanaris"], 440 };
        LevelRange = "66-70";
        MinLevel = "66";
        PlayerLimit = "5";
        Acronym = AL["CoT1"];
        MapName = "CoTHillsbradFoothills";
        Reputation = AL["Keepers of Time"];
        [1] = {
            { BabbleZone["Old Hillsbrad Foothills"], SubZone = true };
            { AL["Lieutenant Drake"], cords = {76,66}, pinType = boss };
            { AL["Thrall"].." ("..AL["Lower"]..")", cords = {74,59} };
            { AL["Captain Skarloc"], cords = {69,70}, pinType = boss };
            { AL["Thrall"].." ("..AL["Second Stop"]..")" };
            { AL["Thrall"].." ("..AL["Third Stop"]..")", cords = {53,44} };
            { AL["Epoch Hunter"], cords = {51,32}, pinType = boss };
            { AL["Thrall"].." ("..AL["Fourth Stop"]..", "..AL["Upper"]..")" };
            { AL["Taretha"].." ("..AL["Upper"]..")" };
            { AL["Jonathan Revah"], cords = {41,53} };
            { AL["Jerry Carter"] };
        };
    };

    AtlasLoot_MapData["CoTBlackMorass"] = {
        ZoneName = { BabbleZone["The Black Morass"], 2366 };
        Location = { BabbleZone["Tanaris"], 440 };
        LevelRange = "68-70";
        MinLevel = "66";
        PlayerLimit = "5";
        Acronym = AL["CoT2"];
        MapName = "CoTTheBlackMorass";
        Reputation = AL["Keepers of Time"];
        [1] = {
            {BabbleZone["The Black Morass"], SubZone = true }; 
            { AL["Sa'at <Keepers of Time>"], cords = {51,18} };
            { AL["Portal"].." ("..AL["Spawn Point"]..")", cords = {51,52}, pinType = boss };
            { AL["Portal"].." ("..AL["Spawn Point"]..")", cords = {60,62}, pinType = boss };
            { AL["Portal"].." ("..AL["Spawn Point"]..")", cords = {46,61}, pinType = boss };
            { AL["Portal"].." ("..AL["Spawn Point"]..")", cords = {59,70}, pinType = boss };
            { AL["Wave 6"]..": "..AL["Chrono Lord Deja"] };
            { AL["Wave 12"]..": "..AL["Temporus"] };
            { AL["Wave 18"]..": "..AL["Aeonus"] };
            { AL["The Dark Portal"], cords = {48,74} };
            { AL["Medivh"] };
        };
    };

    AtlasLoot_MapData["CFRTheSlavePens"] = {
        ZoneName = { BabbleZone["The Slave Pens"], 3717 };
        Location = { BabbleZone["Zangarmarsh"], 3521 };
        LevelRange = "61-69";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = AL["SP"];
        MapName = "TheSlavePens";
        Reputation = AL["Cenarion Expedition"];
        [1] = {
            { BabbleZone["The Slave Pens"], SubZone = true };
            { AL["Ahune <The Frost Lord>"].." ("..AL["Midsummer Festival"]..")", cords = {33,51}, pinType = boss };
            { AL["Mennu the Betrayer"], cords = {49,27}, pinType = boss };
            { AL["Weeder Greenthumb"], cords = {49,83}, pinType = boss };
            { AL["Skar'this the Heretic"].." ("..AL["Heroic"]..")", cords = {58,85}, pinType = boss };
            { AL["Rokmar the Crackler"], cords = {58,41}, pinType = boss };
            { AL["Naturalist Bite"], cords = {95,67}, pinType = boss };
            { AL["Quagmirran"], cords = {82,77}, pinType = boss };
        };
    };

    AtlasLoot_MapData["CFRTheSteamvault"] = {
        ZoneName = { BabbleZone["The Steamvault"], 3715 };
        Location = { BabbleZone["Zangarmarsh"], 3521 };
        LevelRange = "69-70";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = AL["SV"];
        MapName = "TheSteamvault";
        Reputation = AL["Cenarion Expedition"];
        [1] = {
            { BabbleZone["The Steamvault"], SubZone = true };
            { AL["Hydromancer Thespia"], cords = {54,14}, pinType = boss };
            { AL["Main Chambers Access Panel"] };
            { AL["Arcane Container"], cords = {55,23} };
            { AL["Second Fragment Guardian"] };
            { AL["Mekgineer Steamrigger"], cords = {34,82}, pinType = boss };
            { AL["Main Chambers Access Panel"] };
            { AL["Warlord Kalithresh"], cords = {76,44}, pinType = boss };
        };
    };

    AtlasLoot_MapData["CFRTheUnderbog"] = {
        ZoneName = { BabbleZone["The Underbog"], 3716 };
        Location = { BabbleZone["Zangarmarsh"], 3521 };
        LevelRange = "62-70";
        MinLevel = "55";
        PlayerLimit = "5";
        Acronym = AL["UB"];
        MapName = "TheUnderbog";
        Reputation = AL["Cenarion Expedition"];
        [1] = {
            { BabbleZone["The Steamvault"], SubZone = true };
            { AL["Hungarfen"], cords = {70,90}, pinType = boss };
            { AL["The Underspore"] };
            { AL["Ghaz'an"], cords = {79,29}, pinType = boss };
            { AL["Earthbinder Rayge"], cords = {69,27} };
            { AL["Swamplord Musel'ek"], cords = {42,25}, pinType = boss };
            { AL["Claw <Swamplord Musel'ek's Pet>"] };
            { AL["The Black Stalker"], cords = {25,46}, pinType = boss };
        };
    };

    AtlasLoot_MapData["MagistersTerrace"] = {
        ZoneName = { BabbleZone["Magisters' Terrace"], 4095 };
        Location = { BabbleZone["Isle of Quel'Danas"], 4080 };
        LevelRange = "70";
        MinLevel = "68";
        PlayerLimit = "5";
        Acronym = AL["MaT"];
        MapName = "MagistersTerrace";
        Reputation = AL["Shattered Sun Offensive"];
        [1] = {
            { BabbleZone["Magisters' Terrace"], SubZone = true };
            { AL["Priestess Delrissa"].." ("..AL["Lower"]..")", cords = {40,56}, pinType = boss };
            { AL["Apoko"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Shaman"]..")" };
            { AL["Eramas Brightblaze"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Monk"]..")" };
            { AL["Ellrys Duskhallow"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Warlock"]..")" };
            { AL["Fizzle"].." ("..AL["Lower"]..", "..AL["Random"]..")" };
            { AL["Garaxxas"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Hunter"]..")" };
            { AL["Sliver <Garaxxas' Pet>"].." ("..AL["Lower"]..", "..AL["Random"]..")" };
            { AL["Kagani Nightstrike"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Rogue"]..")" };
            { AL["Warlord Salaris"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Warrior"]..")" };
            { AL["Yazzai"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Mage"]..")" };
            { AL["Zelfan"].." ("..AL["Lower"]..", "..AL["Random"]..", "..AL["Engineer"]..")" };
            { AL["Kael'thas Sunstrider <Lord of the Blood Elves>"], cords = {9,50}, pinType = boss };
        };
        [2] = {
            { BabbleZone["Magisters' Terrace"], SubZone = true };
            { AL["Selin Fireheart"], cords = {43,23}, pinType = boss };
            { AL["Fel Crystals"] };
            { AL["Tyrith"], cords = {63,27}, pinType = boss };
            { AL["Vexallus"], cords = {84,27}, pinType = boss };
            { AL["Scrying Orb"], cords = {95,27} };
            { AL["Kalecgos"] };
        };
    };