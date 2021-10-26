Sauhaufen.queue = {}
Sauhaufen.DungeonList = {
    [nFG1] = 0,
    [nFG2] = 1,
}

local DungeonIndex={
    --Normal
    [2]	={id=294},	--Fungal Grotto I
    [3]	={id=301},	--Spindleclutch I
    [4]	={id=325},	--Banished Cells I
    [5]	={id=78},	--Darkshade Caverns I
    [6]	={id=79},	--Wayrest Sewers I
    [7]	={id=11},	--Elden Hollow I
    [8]	={id=272},	--Arx Corinium
    [9]	={id=80},	--Crypt of Hearts I
    [10]	={id=551},	--City of Ash I
    [11]	={id=357},	--Direfrost Keep
    [12]	={id=391},	--Volenfell
    [13]	={id=81},	--Tempest Island
    [14]	={id=393},	--Blessed Crucible
    [15]	={id=410},	--Blackheart Haven
    [16]	={id=417},	--Selene's Web
    [17]	={id=570},	--Vaults of Madness
    [18]	={id=1562},	--Fungal Grotto II
    [22]	={id=1595},	--Wayrest Sewers II
    [288]	={id=1346},	--White-Gold Tower
    [289]	={id=1345},	--Imperial City Prison
    [293]	={id=1504},	--Ruins of Mazzatun
    [295]	={id=1522},	--Cradle of Shadows
    [300]	={id=1555},	--Banished Cells II
    [303]	={id=1579},	--Elden Hollow II
    [308]	={id=1587},	--Darkshade Caverns II
    [316]	={id=1571},	--Spindleclutch II
    [317]	={id=1616},	--Crypt of Hearts II
    [322]	={id=1603},	--City of Ash II
    [324]	={id=1690},	--Bloodroot Forge
    [368]	={id=1698},	--Falkreath Hold
    [420]	={id=1959},	--Fang Lair
    [418]	={id=1975},	--Scalecaller Peak
    [428]	={id=2162},	--March of Sacrifices
    [426]	={id=2152},	--Moon Hunter Keep
    [433]	={id=2260},	--Frostvault
    [435]	={id=2270},	--Depths of Malatar
    [496]	={id=2425},	--Lair of Maarselok
    [494]	={id=2415},	--Moongrave Fane
    [503]	={id=2539},	--Icereach
    [505]	={id=2549},	--Unhallowed Grave
    [507]	={id=2694},	--Stone Garden
    [509]	={id=2704},	--Castle Thorn
    [591]	={id=2831},	--Black Drake Villa
    [593]	={id=2841},	--Cauldron
    --Veteran
    [19]	={id=421,	hm=448,	tt=446,	nd=1572},	--Spindleclutch II
    [20]	={id=1549,	hm=1554,	tt=1552,	nd=1553},	--Banished Cells I
    [21]	={id=464,	hm=467,	tt=465,	nd=1588},	--Darkshade Caverns II
    [23]	={id=1573,	hm=1578,	tt=1576,	nd=1577},	--Elden Hollow I
    [261]	={id=1610,	hm=1615,	tt=1613,	nd=1614},	--Crypt of Hearts I
    [267]	={id=878,	hm=1114,	tt=1108,	nd=1107},	--City of Ash II
    [268]	={id=880,	hm=1303,	tt=1128,	nd=1129},	--Imperial City Prison
    [287]	={id=1120,	hm=1279,	tt=1275,	nd=1276},	--White-Gold Tower
    [294]	={id=1505,	hm=1506,	tt=1507,	nd=1508},	--Ruins of Mazzatun
    [296]	={id=1523,	hm=1524,	tt=1525,	nd=1526},	--Cradle of Shadows
    [299]	={id=1556,	hm=1561,	tt=1559,	nd=1560},	--Fungal Grotto I
    [301]	={id=545,	hm=451,	tt=449,	nd=1564},	--Banished Cells II
    [302]	={id=459,	hm=463,	tt=461,	nd=1580},	--Elden Hollow II
    [304]	={id=1629,	hm=1634,	tt=1632,	nd=1633},	--Volenfell
    [305]	={id=1604,	hm=1609,	tt=1607,	nd=1608},	--Arx Corinium
    [306]	={id=1589,	hm=1594,	tt=1592,	nd=1593},	--Wayrest Sewers I
    [307]	={id=678,	hm=681,	tt=679,	nd=1596},	--Wayrest Sewers II
    [309]	={id=1581,	hm=1586,	tt=1584,	nd=1585},	--Darkshade Caverns I
    [310]	={id=1597,	hm=1602,	tt=1600,	nd=1601},	--City of Ash I
    [311]	={id=1617,	hm=1622,	tt=1620,	nd=1621},	--Tempest Island
    [312]	={id=343,	hm=342,	tt=340,	nd=1563},	--Fungal Grotto II
    [313]	={id=1635,	hm=1640,	tt=1638,	nd=1639},	--Selene's Web
    [314]	={id=1653,	hm=1658,	tt=1656,	nd=1657},	--Vaults of Madness
    [315]	={id=1565,	hm=1570,	tt=1568,	nd=1569},	--Spindleclutch I
    [318]	={id=876,	hm=1084,	tt=941,	nd=942},	--Crypt of Hearts II
    [319]	={id=1623,	hm=1628,	tt=1626,	nd=1627},	--Direfrost Keep
    [320]	={id=1641,	hm=1646,	tt=1644,	nd=1645},	--Blessed Crucible
    [321]	={id=1647,	hm=1652,	tt=1650,	nd=1651},	--Blackheart Haven
    [325]	={id=1691,	hm=1696,	tt=1694,	nd=1695},	--Bloodroot Forge
    [369]	={id=1699,	hm=1704,	tt=1702,	nd=1703},	--Falkreath Hold
    [421]	={id=1960,	hm=1965,	tt=1963,	nd=1964},	--Fang Lair
    [419]	={id=1976,	hm=1981,	tt=1979,	nd=1980},	--Scalecaller Peak
    [429]	={id=2163,	hm=2164,	tt=2165,	nd=2166},	--March of Sacrifices
    [427]	={id=2153,	hm=2154,	tt=2155,	nd=2156},	--Moon Hunter Keep
    [434]	={id=2261,	hm=2262,	tt=2263,	nd=2264},	--Frostvault
    [436]	={id=2271,	hm=2272,	tt=2273,	nd=2274},	--Depths of Malatar
    [497]	={id=2426,	hm=2427,	tt=2428,	nd=2429},	--Lair of Maarselok
    [495]	={id=2416,	hm=2417,	tt=2418,	nd=2419},	--Moongrave Fane
    [504]	={id=2540,	hm=2541,	tt=2542,	nd=2543},	--Icereach
    [506]	={id=2550,	hm=2551,	tt=2552,	nd=2553},	--Unhallowed Grave
    [508]	={id=2695,	hm=2755,	tt=2697,	nd=2698},	--Stone Garden
    [510]	={id=2705,	hm=2706,	tt=2707,	nd=2708},	--Castle Thorn
    [592]	={id=2832,	hm=2833,	tt=2834,	nd=2835},	--Black Drake Villa
    [594]	={id=2842,	hm=2843,	tt=2844,	nd=2845},	--Cauldron
    }
    

local function GetDungeonName(id)

    AddActivityFinderSpecificSearchEntry()

end

local function QueueDungeons()


    ClearGroupFinderSearch()
end