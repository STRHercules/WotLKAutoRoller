local AtlasLoot = LibStub("AceAddon-3.0"):GetAddon("AtlasLoot")
   -- table of difficulties and there itemID references

AtlasLoot.Difficulties = {
    Default = {},
    ClassicDungeon = {
        {"Normal", 3},
        {"Heroic", 4},
        {"Mythic", 5},
        Max = 5
    },
    PVP = {
        {"Normal", 3},
        {"Bloodforged", 1},
        Max = 3
    },
    Manastorm = {
        {"Normal", 3},
        {"Bloodforged", 1},
        Max = 3
    },
    ManastormTBC = {
        {"Tier 4", 3},
        {"Tier 5", 4},
        {"Tier 6", 5},
        {"Bloodforged", 1},
        Max = 5
    },
    ClassicDungeonExt = {
        {"Bloodforged", 1},
        {"Normal", 3},
        {"Heroic", 4},
        {"Mythic", 5},
        {"Mythic 1", 6 },  {"Mythic 2", 7 },  {"Mythic 3", 8 },  {"Mythic 4", 9 },  {"Mythic 5", 10 },
        {"Mythic 6", 11 }, {"Mythic 7", 12 }, {"Mythic 8", 13 }, {"Mythic 9", 14 }, {"Mythic 10", 15 },
        {"Mythic 11", 16 }, {"Mythic 12", 17 }, {"Mythic 13", 18 }, {"Mythic 14", 19 }, {"Mythic 15", 20 },
        {"Mythic 16", 21 }, {"Mythic 17", 22 }, {"Mythic 18", 23 }, {"Mythic 19", 24 }, {"Mythic 20", 25 },
        {"Mythic 21", 26 }, {"Mythic 22", 27 }, {"Mythic 23", 28 }, {"Mythic 24", 29 }, {"Mythic 25", 30 },
        {"Mythic 26", 31 }, {"Mythic 27", 32 }, {"Mythic 28", 33 }, {"Mythic 29", 34 }, {"Mythic 30", 35 },
        {"Mythic 31", 36 }, {"Mythic 32", 37 }, {"Mythic 33", 38 }, {"Mythic 34", 39 }, {"Mythic 35", 40 },
        {"Mythic 36", 41 }, {"Mythic 37", 42 }, {"Mythic 38", 43 }, {"Mythic 39", 44 }, {"Mythic 40", 45 },
        Max = 45
    },
    ClassicRaid = {
        {"Normal Raid", 3},
        {"Heroic Raid", 4},
        {"Mythic Raid", 5},
        {"Ascended Raid", 6},
        {"Bloodforged", 1},
        {"Heroic Bloodforged", 2},
        Max = 6
    },
    BCDungeon = {
        {"Bloodforged", 1},
        {"Normal", 3},
        {"Heroic", 4},
        {"Mythic", 5},
        {"Mythic 1", 6 },  {"Mythic 2", 7 },  {"Mythic 3", 8 },  {"Mythic 4", 9 },  {"Mythic 5", 10 },
        {"Mythic 6", 11 }, {"Mythic 7", 12 }, {"Mythic 8", 13 }, {"Mythic 9", 14 }, {"Mythic 10", 15 },
        {"Mythic 11", 16 }, {"Mythic 12", 17 }, {"Mythic 13", 18 }, {"Mythic 14", 19 }, {"Mythic 15", 20 },
        {"Mythic 16", 21 }, {"Mythic 17", 22 }, {"Mythic 18", 23 }, {"Mythic 19", 24 }, {"Mythic 20", 25 },
        {"Mythic 21", 26 }, {"Mythic 22", 27 }, {"Mythic 23", 28 }, {"Mythic 24", 29 }, {"Mythic 25", 30 },
        {"Mythic 26", 31 }, {"Mythic 27", 32 }, {"Mythic 28", 33 }, {"Mythic 29", 34 }, {"Mythic 30", 35 },
        {"Mythic 31", 36 }, {"Mythic 32", 37 }, {"Mythic 33", 38 }, {"Mythic 34", 39 }, {"Mythic 35", 40 },
        {"Mythic 36", 41 }, {"Mythic 37", 42 }, {"Mythic 38", 43 }, {"Mythic 39", 44 }, {"Mythic 40", 45 },
        Max = 45
    },
    BCRaid = {
        {"Normal Raid", 3},
        {"Heroic Raid", 4},
        {"Mythic Raid", 5},
        {"Ascended Raid", 6},
        {"Bloodforged", 1},
        {"Heroic Bloodforged", 2},
        Max = 6
    },
    BCkarazhanCrypts = {
        {"Mythic Phase 1", 5},
        {"Mythic Phase 2", 35},
        {"Bloodforged", 1},
        Max = 35
    },
    WrathDungeon = {
        {"Bloodforged", 1},
        {"Normal", 3},
        {"Heroic", 4},
        {"Mythic", 5},
        {"Mythic 1", 6 },  {"Mythic 2", 7 },  {"Mythic 3", 8 },  {"Mythic 4", 9 },  {"Mythic 5", 10 },
        {"Mythic 6", 11 }, {"Mythic 7", 12 }, {"Mythic 8", 13 }, {"Mythic 9", 14 }, {"Mythic 10", 15 },
        {"Mythic 11", 16 }, {"Mythic 12", 17 }, {"Mythic 13", 18 }, {"Mythic 14", 19 }, {"Mythic 15", 20 },
        {"Mythic 16", 21 }, {"Mythic 17", 22 }, {"Mythic 18", 23 }, {"Mythic 19", 24 }, {"Mythic 20", 25 },
        {"Mythic 21", 26 }, {"Mythic 22", 27 }, {"Mythic 23", 28 }, {"Mythic 24", 29 }, {"Mythic 25", 30 },
        {"Mythic 26", 31 }, {"Mythic 27", 32 }, {"Mythic 28", 33 }, {"Mythic 29", 34 }, {"Mythic 30", 35 },
        {"Mythic 31", 36 }, {"Mythic 32", 37 }, {"Mythic 33", 38 }, {"Mythic 34", 39 }, {"Mythic 35", 40 },
        {"Mythic 36", 41 }, {"Mythic 37", 42 }, {"Mythic 38", 43 }, {"Mythic 39", 44 }, {"Mythic 40", 45 },
        Max = 45
    },
    WrathRaid = {
        {"Normal Raid", 3},
        {"Heroic Raid", 4},
        {"Mythic Raid", 5},
        {"Ascended Raid", 6},
        {"Bloodforged", 1},
        {"Heroic Bloodforged", 2},
        Max = 6
    },
    ClassicCrafting = {
        {"Normal", 3 },
        Max = 3
    },
    BCCrafting = {
        {"Normal", 3 },
        Max = 3
    },
    WrathCrafting = {
        {"Normal", 3 },
        Max = 3
    },
    Search = {
        {"Bloodforged", 1},
        {"Heroic Bloodforged", 2},
        {"Normal", 3},
        {"Heroic", 4},
        {"Mythic", 5},
        {"Mythic 1/Ascended Raid", 6 },  {"Mythic 2", 7 },  {"Mythic 3", 8 },  {"Mythic 4", 9 },  {"Mythic 5", 10 },
        {"Mythic 6", 11 }, {"Mythic 7", 12 }, {"Mythic 8", 13 }, {"Mythic 9", 14 }, {"Mythic 10", 15 },
        {"Mythic 11", 16 }, {"Mythic 12", 17 }, {"Mythic 13", 18 }, {"Mythic 14", 19 }, {"Mythic 15", 20 },
        {"Mythic 16", 21 }, {"Mythic 17", 22 }, {"Mythic 18", 23 }, {"Mythic 19", 24 }, {"Mythic 20", 25 },
        {"Mythic 21", 26 }, {"Mythic 22", 27 }, {"Mythic 23", 28 }, {"Mythic 24", 29 }, {"Mythic 25", 30 },
        {"Mythic 26", 31 }, {"Mythic 27", 32 }, {"Mythic 28", 33 }, {"Mythic 29", 34 }, {"Mythic 30", 35 },
        {"Mythic 31", 36 }, {"Mythic 32", 37 }, {"Mythic 33", 38 }, {"Mythic 34", 39 }, {"Mythic 35", 40 },
        {"Mythic 36", 41 }, {"Mythic 37", 42 }, {"Mythic 38", 43 }, {"Mythic 39", 44 }, {"Mythic 40", 45 },
        Max = 45
    },
    --Enums for comparisons in code
    Bloodforged = 1,
    ["Heroic Bloodforged"] = 2,
    Normal = 3,
    Heroic = 4,
    Mythic = 5,
    Ascended = 6,
    MythicPlus = {
        6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
        7, 18, 19, 20, 21, 22, 23, 24, 25, 26,
        27, 28, 29, 30, 31, 32, 33, 34, 35, 36,
        37, 38, 39, 40, 41, 42, 43, 44, 45
    }, --Usage AtlasLoot_Difficulty.MythicPlus[1-40]
    DIF_SEARCH = 17,
    MIN_DIF = 19,
    MAX_DIF = 20,
}
function AtlasLoot:GetMaxDifficulty(instanceType)
    if not instanceType or not self.Difficulties[instanceType] and not self.Difficulties[instanceType].Max then return 0 end
    return self.Difficulties[instanceType].Max
end