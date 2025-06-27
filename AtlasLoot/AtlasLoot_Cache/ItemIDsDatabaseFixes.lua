ItemIDManuelCorrections = {}
--ItemIDManuelCorrections[30312] = { Bloodforged, Heroic Bloodforged, Normal(is always nil), HeroicID, MythicID, AscendedID }

--T3
ItemIDManuelCorrections[22491] = { nil, nil, nil, 322491, 1322491, 222491 }
ItemIDManuelCorrections[22493] = { nil, nil, nil, 322493, 1322493, 222493 }
ItemIDManuelCorrections[22489] = { nil, nil, nil, 322489, 1322489, 222489 }
ItemIDManuelCorrections[1507043] = { nil, nil, nil, 1807043, 2807043, 1707043 }
ItemIDManuelCorrections[1523064] = { nil, nil, nil, 1823064, 2823064, 1723064 }

ItemIDManuelCorrections[16900] = { nil, nil, nil, 316921, 1316921, 216921 }

--T2 helms
ItemIDManuelCorrections[16939] = { nil, nil, nil, 316939, 1316939, 216939 }
ItemIDManuelCorrections[16914] = { nil, nil, nil, 316914, 1316914, 216914 }
ItemIDManuelCorrections[16955] = { nil, nil, nil, 316955, 1316955, 216955 }
ItemIDManuelCorrections[16921] = { nil, nil, nil, 316921, 1316921, 216921 }
ItemIDManuelCorrections[16908] = { nil, nil, nil, 316908, 1316908, 216908 }
ItemIDManuelCorrections[16947] = { nil, nil, nil, 316947, 1316947, 216947 }
ItemIDManuelCorrections[10962] = { nil, nil, nil, 310962, 1310962, 210962 }
ItemIDManuelCorrections[16929] = { nil, nil, nil, 316929, 1316929, 216929 }
ItemIDManuelCorrections[10904] = { nil, nil, nil, 310904, 1310904, 210904 }
ItemIDManuelCorrections[16963] = { nil, nil, nil, 316963, 1316963, 216963 }
ItemIDManuelCorrections[1516955] = { nil, nil, nil, 1816955, 2816955, 1716955 }
ItemIDManuelCorrections[1516921] = { nil, nil, nil, 1816921, 2816921, 1716921 }
ItemIDManuelCorrections[1516947] = { nil, nil, nil, 1816947, 2816947, 1716947 }
ItemIDManuelCorrections[1516963] = { nil, nil, nil, 1816963, 2816963, 1716963 }
ItemIDManuelCorrections[1516900] = { nil, nil, nil, 1816900, 2816900, 1716900 }
ItemIDManuelCorrections[1516892] = { nil, nil, nil, 1816892, 2816892, 1716892 }


--ZA Bears
ItemIDManuelCorrections[1333809] = { nil, nil, nil, 1433809, nil, 1233809 }

--intact vial of kael'thas sunstrider
ItemIDManuelCorrections[450001] = { nil, nil, nil, 450003, 1450003, 450005 }
ItemIDManuelCorrections[450000] = { nil, nil, nil, 450002, 1450002, 450004 }

ItemIDManuelCorrections[450009] = {nil, nil, nil, 450011, 450013, 450015 }; --The String of Time

--Atiesh, Greatstaff of the Guardian
ItemIDManuelCorrections[22589] = { 6022589, 6322589, nil, 322589, 1322589, 222589 }
ItemIDManuelCorrections[22632] = { 6022632, 6322632, nil, 322632, 1322632, 222632 }
ItemIDManuelCorrections[22631] = { 6022631, 6322631, nil, 322631, 1322631, 222631 }
ItemIDManuelCorrections[22630] = { 6022630, 6322630, nil, 322630, 1322630, 222630 }

--Mark of the Champion
ItemIDManuelCorrections[23207] = { nil, nil, nil, 323207, 1323207, 223207 }
ItemIDManuelCorrections[23206] = { nil, nil, nil, 323206, 1323206, 223206 }

ItemIDManuelCorrections[30889] = { nil, nil, nil, 330889, 1330889, 230889 } --Kaz'rogal's Hardened Heart

--Frozen Reach

ItemIDManuelCorrections[1529392] = { 7529392, nil, nil, 1539392, 1549392 } --Frigid Bow of the Bonded Souls
ItemIDManuelCorrections[1529391] = { 7529391, nil, nil, 1539391, 1549391 } --Reclaimed Blade of the Frozen Sepulcher
ItemIDManuelCorrections[1529390] = { 7529390, nil, nil, 1539390, 1549390 } --Arktos' Resillience
ItemIDManuelCorrections[1529389] = { 7529389, nil, nil, 1539389, 1549389 } --Call of the Sepulcher
ItemIDManuelCorrections[1529388] = { 7529388, nil, nil, 1539388, 1549388 } --Frozen Vengeance
ItemIDManuelCorrections[1529387] = { 7529387, nil, nil, 1539387, 1549387 } --Frozen Forgiveness
ItemIDManuelCorrections[1529386] = { 7529386, nil, nil, 1539386, 1549386 } --Alva's Kinship Ring
ItemIDManuelCorrections[1529385] = { 7529385, nil, nil, 1539385, 1549385 } --Signet of Arktos
ItemIDManuelCorrections[1529384] = { 7529384, nil, nil, 1539384, 1549384 } --Ring of Bonded Souls
ItemIDManuelCorrections[1529383] = { 7529383, nil, nil, 1539383, 1549383 } --Ring of the Frozen Sepulcher
ItemIDManuelCorrections[1529382] = { 7529382, nil, nil, 1539382, 1549382 } --Alva's Gift
ItemIDManuelCorrections[1529381] = { 7529381, nil, nil, 1539381, 1549381 } --Beartooth Pendant
ItemIDManuelCorrections[1529380] = { 7529380, nil, nil, 1539380, 1549380 } --Necklace of Frozen Reach
ItemIDManuelCorrections[1529379] = { 7529379, nil, nil, 1539379, 1549379 } --Amulet of the Bonded Souls

ItemIDManuelCorrections[228836] = { 75228836, nil, nil, [5] = 228836, [35] = 229836 } --Soul Cage Reliquary
--[[ 
    /atlasloot updatecache startID stopID
    scans every id from 1 to 10 mil unless you set the startID and stopID
    startID is the first itemid it will check stopID is the last itemid it will check

    /atlasloot clearcache
    clears variables cache
 ]]