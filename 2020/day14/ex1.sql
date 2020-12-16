begin;
WITH vals AS (VALUES
('mask = XX001001X10X110X0001111001110X110101'),('mem[3250] = 4436'),('mem[48892] = 14455'),('mem[25137] = 1097'),('mem[57377] = 5760'),('mem[25785] = 20344'),('mem[54660] = 1936'),('mask = 100110X00X0X11010101110110X00001XX0X'),('mem[20413] = 182815763'),('mem[49549] = 9522935'),('mem[29920] = 32420282'),('mem[63511] = 9773'),('mem[59685] = 980'),('mask = 1110000111001X0100001011000X10X00X10'),('mem[28709] = 2381953'),('mem[53254] = 100644575'),('mem[20622] = 1013234'),('mem[46518] = 7512916'),('mem[49118] = 39485'),('mem[50666] = 8298665'),('mem[58287] = 107999'),('mask = 111000000110X1010010011XX100X0000001'),('mem[12805] = 6015'),('mem[20190] = 106469491'),('mem[11123] = 8571'),('mem[16350] = 3024'),('mem[37958] = 29213622'),('mask = 11000000011011010X01011011XX100011XX'),('mem[29717] = 194765'),('mem[40119] = 1357487'),('mask = 1X1000100X10X1000X01XX11000101011011'),('mem[53311] = 5028191'),('mem[38550] = 30559161'),('mem[37724] = 446421839'),('mem[27658] = 656376'),('mem[36878] = 491'),('mem[2514] = 711969106'),('mem[8425] = 25352'),('mask = 10101000X110X1X1000101X1000100011001'),('mem[57587] = 156077909'),('mem[8983] = 5589'),('mem[21832] = 16170971'),('mem[40748] = 14124'),('mem[18993] = 3053'),('mem[16438] = 2330074'),('mask = 11100X000XX11X110001100000X0010111XX'),('mem[48379] = 719'),('mem[8903] = 345168600'),('mem[50733] = 6133'),('mem[41283] = 24831'),('mem[65183] = 84558'),('mem[54817] = 98834'),('mask = 1X10000X01X0110100X0X111000X00XX000X'),('mem[3941] = 450868'),('mem[6069] = 2088'),('mem[40200] = 2865'),('mem[46518] = 5389'),('mem[48814] = 19396'),('mask = 01X0100X11111100100XX10X110110X0X001'),('mem[20385] = 15270930'),('mem[15395] = 13898910'),('mem[19502] = 2459689'),('mem[5270] = 61362490'),('mask = 0100100111XXX100X0010100X111X0100X0X'),('mem[58709] = 17455712'),('mem[14865] = 176745'),('mem[2952] = 54766095'),('mask = 111000X0X1001100010X11X0X01X00XX1011'),('mem[39517] = 38586'),('mem[38266] = 1003448'),('mem[54660] = 154097'),('mask = 1X0X00X00110110100011111100X01010111'),('mem[4521] = 360234'),('mem[10967] = 699075'),('mem[34096] = 89'),('mem[21340] = 3018'),('mem[12820] = 24007'),('mem[46518] = 1732'),('mask = 010X10XX0110111XX0000X0X10111000011X'),('mem[37473] = 213255'),('mem[17466] = 126749'),('mask = 11XX0010110X1X0001X11001X11001001X11'),('mem[34419] = 4401033'),('mem[51972] = 547595351'),('mem[29267] = 2460627'),('mem[39192] = 15067'),('mask = 11X0X0000110111XXXX1011010X000X11101'),('mem[51442] = 31937'),('mem[16518] = 7405326'),('mem[63834] = 1488732'),('mem[26265] = 1190'),('mask = 01001X01110110X110XX0X010X100X110X00'),('mem[8150] = 41274'),('mem[9998] = 26361'),('mem[2495] = 198393'),('mem[25041] = 6310180'),('mem[5890] = 20465'),('mask = 1XXX00100110110000011X0101XX0100XX10'),('mem[26607] = 1384959'),('mem[58709] = 31743'),('mem[8993] = 56827'),('mem[53062] = 258857'),('mem[21305] = 672194'),('mask = 10XX100X01101X11X0X1001001X01X110X10'),('mem[55577] = 128659409'),('mem[19002] = 845525'),('mem[14584] = 8317876'),('mask = 11X0X00X010011XX000X1X100X110X010101'),('mem[9998] = 494334359'),('mem[592] = 950827'),('mem[13221] = 8704'),('mem[23131] = 29048231'),('mask = 1110X0X10100110100X0100X01010010000X'),('mem[18567] = 243296'),('mem[27202] = 304731'),('mem[24869] = 25916650'),('mem[57135] = 23996'),('mask = 110001XX11001101100001XX00X111110010'),('mem[34304] = 84360'),('mem[31615] = 3771'),('mem[34225] = 3477'),('mem[58931] = 2972'),('mask = 010X100XX1001X0111001000X011X1000100'),('mem[27987] = 8009299'),('mem[1668] = 99817'),('mem[55978] = 39150409'),('mem[26420] = 236757'),('mask = 1X1000XX01011011X0X111X0010000101100'),('mem[1117] = 280'),('mem[4280] = 406684'),('mem[31615] = 461997'),('mem[17710] = 656126'),('mem[19869] = 6759059'),('mem[29930] = 25157555'),('mask = 1XX01000011011110X0110011XX0XX1X1100'),('mem[9998] = 158930980'),('mem[56595] = 290347'),('mem[62495] = 2154029'),('mem[13139] = 240824'),('mem[37955] = 1962062'),('mem[59685] = 23811'),('mask = 111000100X1X110100010100XX0X11X11001'),('mem[61927] = 3404'),('mem[53925] = 1029'),('mem[4604] = 2697020'),('mask = 10XXXXX0010X11010101110X1X0100X10011'),('mem[36423] = 187983079'),('mem[35715] = 28051066'),('mem[60426] = 2732'),('mem[13855] = 1771'),('mem[31615] = 4663854'),('mask = 1110X100X1111111X000X00000X010000001'),('mem[4522] = 630'),('mem[10122] = 1023763273'),('mem[43180] = 53901'),('mask = 010010110X0XX111100X00X000X00110X001'),('mem[55120] = 9489901'),('mem[44935] = 74420893'),('mem[46825] = 517159'),('mem[28078] = 312928319'),('mem[15205] = 129861'),('mem[4958] = 925787'),('mem[3152] = 269'),('mask = 11100X00110X1100010X1X1101011010X001'),('mem[13451] = 3404810'),('mem[27534] = 8632174'),('mem[14401] = 3040'),('mem[8542] = 3926892'),('mask = X010000101001101000010110X00010X1X01'),('mem[9740] = 117232'),('mem[53779] = 32144'),('mem[14267] = 62550'),('mem[31615] = 1580737'),('mem[8195] = 212112887'),('mem[26629] = 300'),('mask = 111001X10X0001000000X11001000X1010X1'),('mem[36441] = 709'),('mem[30737] = 11941'),('mem[25335] = 184614'),('mem[36260] = 901'),('mask = 1001011001X0X10101011X0010000X000101'),('mem[52419] = 1941048'),('mem[50006] = 2164'),('mask = 11100101010XX1X1101100101010X0001111'),('mem[59199] = 40929064'),('mem[45560] = 6749'),('mem[16449] = 535'),('mask = 01001001X11011XXX00X01X10111X01101X0'),('mem[27668] = 115726141'),('mem[34331] = 2819615'),('mem[4631] = 1432'),('mem[50121] = 101482650'),('mem[27656] = 2138214'),('mem[25426] = 491626'),('mask = 010010X1X1XXXXX1100100000011X1100100'),('mem[14401] = 92822'),('mem[33872] = 479638'),('mem[54211] = 32497707'),('mem[61337] = 98669'),('mem[50724] = 111542'),('mask = XX0X1001111X11001X010000000X00101000'),('mem[15715] = 1986'),('mem[20256] = 81993455'),('mask = 010X10011X011001100101X0X00101X0010X'),('mem[14131] = 6366'),('mem[11512] = 119948'),('mem[27055] = 2537'),('mem[53483] = 4819251'),('mem[43180] = 513'),('mem[50965] = 28334'),('mask = 100X100011001X0X0101X10X1X000X000110'),('mem[34393] = 32931383'),('mem[27316] = 22411579'),('mem[9842] = 39791616'),('mask = X101001001101XXX000X1101111101101011'),('mem[39194] = 1039606'),('mem[1043] = 19870767'),('mem[43519] = 12559302'),('mask = 1X000000010X1101X101111XX0X001XX0X11'),('mem[32350] = 799729'),('mem[16251] = 144705569'),('mem[29478] = 252441'),('mem[34509] = 132421118'),('mem[38139] = 205501387'),('mem[41867] = 1221'),('mask = 1X1000010100X10X0000111110XXX0X01XX0'),('mem[50371] = 55426'),('mem[46715] = 237008'),('mem[49071] = 29175'),('mem[21421] = 301905'),('mem[14865] = 182450'),('mem[4521] = 431828838'),('mask = X10X101111101011XX010XX0100100X000X1'),('mem[16125] = 16228'),('mem[29267] = 896900'),('mem[33394] = 492137129'),('mem[13125] = 29576953'),('mem[15725] = 7205'),('mem[14584] = 204223954'),('mask = 11100001011X11010XX00111010X100X01X1'),('mem[61082] = 450817865'),('mem[26585] = 4330327'),('mem[10154] = 17401'),('mem[2580] = 204'),('mask = 1X1XXX0101001X1000000010100101000011'),('mem[33232] = 366048141'),('mem[32350] = 262845291'),('mem[11566] = 1065195'),('mem[2881] = 4069871'),('mem[50230] = 15284'),('mask = 111X000101001100X11001X111110X00X0X0'),('mem[4769] = 124213132'),('mem[39679] = 31372778'),('mem[49788] = 397'),('mem[37380] = 125852'),('mem[12731] = 1652900'),('mem[50954] = 126510477'),('mask = 101XX0000X0X11000101X10X110101X0011X'),('mem[42090] = 862'),('mem[16720] = 830'),('mem[54268] = 1964148'),('mem[47479] = 43971'),('mem[39495] = 242510335'),('mask = 1X0000010100X11100X11101011111X1X101'),('mem[53660] = 7408'),('mem[59155] = 912'),('mem[41194] = 3873'),('mem[45140] = 150741374'),('mem[2517] = 34604969'),('mask = 1X011001111011001X01X1X0X011001X10X0'),('mem[49361] = 1299'),('mem[3338] = 250'),('mem[19712] = 901211202'),('mask = 10X100X101X0X101011011X1X1100XX0X001'),('mem[17360] = 21666'),('mem[12874] = 5813'),('mem[29072] = 190751470'),('mem[5281] = 107765'),('mem[35992] = 10587613'),('mem[27723] = 14464308'),('mask = 1110X10001001111000X1010001001XX0011'),('mem[37958] = 4007715'),('mem[48168] = 1633'),('mem[33037] = 1157056'),('mem[51789] = 57397'),('mem[15715] = 1173117'),('mem[48835] = 147582'),('mem[36664] = 16384131'),('mask = X1100X000110110X0X0101X1100011010101'),('mem[46968] = 5167575'),('mem[19400] = 68398'),('mem[22943] = 290141'),('mem[33183] = 6398'),('mask = 11000010X10X11000X0101010111100001X0'),('mem[34426] = 1044218'),('mem[23605] = 22524637'),('mem[46715] = 90353789'),('mem[47901] = 31588865'),('mem[51647] = 5864'),('mem[7817] = 5435304'),('mem[51837] = 786823673'),('mask = 11X010000XX01111XX011001X001X01011X1'),('mem[57040] = 31166252'),('mem[9242] = 8336389'),('mem[27098] = 1346'),('mem[59253] = 233889'),('mem[18975] = 2608708'),('mem[32618] = 186139'),('mask = 010011XX110110001101X000X1110101010X'),('mem[7283] = 474'),('mem[65183] = 17576835'),('mem[15496] = 917'),('mem[61222] = 354'),('mem[17141] = 130253'),('mem[36668] = 1713209'),('mask = 11X00001011011010110XX1011X0X00000X1'),('mem[7492] = 5456594'),('mem[5028] = 5940'),('mask = 010010110111000110001100X0X0011XX100'),('mem[34509] = 317267839'),('mem[11256] = 29196358'),('mem[16438] = 695'),('mem[37251] = 240270619'),('mask = 1011X00101XX101100X1X01110XX1X011100'),('mem[13870] = 10134037'),('mem[19869] = 14129'),('mem[40162] = 37930'),('mask = 1X1000X001001100010111X1100X00001000'),('mem[58709] = 11947856'),('mem[35950] = 885104'),('mem[34703] = 228034631'),('mask = 11000X0X11101X0X1XX010X0011111100101'),('mem[47331] = 14465'),('mem[5333] = 257444'),('mem[45140] = 482719'),('mem[52463] = 2886'),('mem[865] = 5635911'),('mem[50116] = 1828'),('mask = 1110X00101001101001X01X10101001XX101'),('mem[1952] = 88398932'),('mem[19656] = 542717423'),('mem[37210] = 56544559'),('mask = 101X000X0100X10000000011100X00011011'),('mem[51972] = 174486661'),('mem[54660] = 1063144'),('mem[38089] = 103346160'),('mask = 01X010010110111X1X0XX1X101XXX1110110'),('mem[37724] = 554486'),('mem[26754] = 184956326'),('mem[29860] = 1351'),('mem[992] = 36303'),('mask = 111X010101001111X0X1XX100X1X11X00011'),('mem[27208] = 4254'),('mem[35726] = 9530'),('mem[33400] = 54939'),('mem[57377] = 36404'),('mask = 1XX100X00101X101010111X0000110110011'),('mem[19330] = 95529570'),('mem[55888] = 7245735'),('mem[13178] = 210652128'),('mem[37957] = 8777'),('mem[27055] = 4557'),('mask = 11X0X0000X00X10100X010000X1X00X11001'),('mem[28997] = 7527074'),('mem[58911] = 3749437'),('mask = 1010000101001XX000X0111X01111011XX01'),('mem[50800] = 3045'),('mem[8405] = 778'),('mask = 10X1100XX10X110X0101110X10XX00X10111'),('mem[8118] = 44193690'),('mem[31080] = 6253993'),('mem[51058] = 98518676'),('mem[26420] = 444510'),('mem[52332] = 773'),('mem[43569] = 12978747'),('mask = 110X00XX0101X1000001110X1110X0011011'),('mem[40259] = 29595'),('mem[27022] = 1047145'),('mem[39212] = 1022111'),('mem[44256] = 827'),('mask = X0X0100X01101XX1000100100X1000X0XX00'),('mem[46808] = 16282111'),('mem[39194] = 17358'),('mem[30519] = 15329'),('mem[20210] = 89741114'),('mem[43471] = 209821'),('mem[26479] = 51192892'),('mask = 01X01XX1010101X1X00X0X0110X000X00000'),('mem[610] = 66868634'),('mem[14693] = 1561'),('mask = 01XX1X1101100001000XX001011111001X1X'),('mem[55624] = 1153'),('mem[42873] = 95238952'),('mem[52863] = 49132161'),('mem[47893] = 4835'),('mask = 11100X0X01XX1111000XX0000011000X1011'),('mem[12004] = 371040455'),('mem[8773] = 1811'),('mem[24918] = 1494696'),('mem[40159] = 423055'),('mem[53311] = 8179367'),('mem[4769] = 62185497'),('mask = 10100010010X1101X10X11101100X000111X'),('mem[1028] = 1420'),('mem[55933] = 939'),('mem[52023] = 787'),('mem[44935] = 31931'),('mask = 101XX00X010111XX010XX11011000010X111'),('mem[41496] = 35439'),('mem[10603] = 5594'),('mask = 0X0XX0011101010110X100111011XX00X101'),('mem[20002] = 178'),('mem[52106] = 14251319'),('mem[39635] = 772'),('mem[4453] = 14389'),('mem[38406] = 61303502'),('mask = XX0XX10111X0110110001XX00011010X0001'),('mem[46208] = 200581589'),('mem[17134] = 19364192'),('mem[13554] = 180'),('mem[1525] = 16657222'),('mem[29930] = 88470'),('mem[20027] = 26218'),('mem[33212] = 3420'),('mask = 100X000X01XX11X10X01X11100101XX11101'),('mem[42427] = 3148'),('mem[31191] = 34227921'),('mem[5332] = 6209'),('mask = 100000X00101X1011101011XX10001101011'),('mem[588] = 105317709'),('mem[58944] = 49932'),('mem[41156] = 5686'),('mem[52429] = 79254'),('mem[39164] = 125502'),('mem[58384] = 9863'),('mask = 11XX100001001101010111X010X100XX001X'),('mem[55325] = 532371'),('mem[10714] = 945'),('mem[40811] = 831'),('mem[52429] = 825'),('mem[29287] = 871309'),('mask = X1101001X11111001X00110011010011X01X'),('mem[5694] = 159997822'),('mem[19902] = 7576'),('mem[36358] = 23397'),('mem[25700] = 8539929'),('mem[3736] = 46206727'),('mem[39212] = 59153'),('mem[2356] = 1111'),('mask = 1X1010XXX10011000000X100001101010101'),('mem[47918] = 1863009'),('mem[26437] = 2046435'),('mem[24918] = 29543865'),('mask = 1XXX0001011011010XX001100110100XXXX0'),('mem[59155] = 12119'),('mem[52] = 257262763'),('mem[5137] = 620'),('mem[14069] = 510285'),('mem[45621] = 7565142'),('mask = 110010X1010011010X01111X00X00X00011X'),('mem[19157] = 105432818'),('mem[30121] = 19003'),('mem[42427] = 14622666'),('mem[17182] = 404866351'),('mask = 0X001X11X0001X1110000100010011100101'),('mem[50733] = 259882372'),('mem[26223] = 36'),('mem[24717] = 82286'),('mem[27043] = 59822'),('mask = 1X10X0X1010011X0000001110011101X0X01'),('mem[6273] = 14023'),('mem[60272] = 1284478'),('mem[15323] = 181763'),('mem[10258] = 48496693'),('mem[4604] = 1283'),('mem[59253] = 1501'),('mask = 1X10X00001X011X101X111X11X0XX0011111'),('mem[52632] = 827829147'),('mem[61514] = 896166427'),('mem[39212] = 7083'),('mask = 0100X011011000011XX1010100X101000110'),('mem[46696] = 3938'),('mem[30717] = 486164'),('mem[50113] = 1183'),('mem[55797] = 7813'),('mem[35980] = 2864'),('mem[42957] = 1731'),('mem[12885] = 5877830'),('mask = 111X00X1XXX011010X0001100X0100100110'),('mem[53412] = 1122'),('mem[3544] = 1936'),('mask = 010010X1011X00X1XX0X100100X01XX00011'),('mem[26404] = 129912657'),('mem[42427] = 8283676'),('mem[49540] = 225057700'),('mask = 111000000X10111101111101X000XX01100X'),('mem[6581] = 15005'),('mem[34987] = 1525'),('mem[53399] = 4281310'),('mask = 01001X01110X1X0X1X0X1XX00101X0110000'),('mem[23101] = 1016018'),('mem[8773] = 15572'),('mem[41940] = 86213860'),('mask = 1XX000X001X0110X0X011111XX010X011111'),('mem[12004] = 4210'),('mem[57042] = 18456'),('mem[4521] = 345391317'),('mem[59155] = 2065415'),('mem[55543] = 832584'),('mem[25785] = 358916'),('mem[30737] = 3867770'),('mask = 0100100X0110110X000101100X1101X11001'),('mem[7028] = 1311'),('mem[26146] = 15688934'),('mem[45948] = 11724085'),('mem[24060] = 7928'),('mem[47218] = 6801'),('mem[3544] = 1164'),('mask = 010XX011011000110X0010X1010X10011001'),('mem[27498] = 49'),('mem[46338] = 7293'),('mem[63695] = 2760'),('mem[26607] = 570024'),('mem[386] = 305561631'),('mask = 11100X01X100010000X01110111XX10110X1'),('mem[5811] = 21737791'),('mem[64396] = 31213894'),('mem[3250] = 73337'),('mem[61337] = 54481'),('mem[36423] = 25022'),('mem[25426] = 14959'),('mem[4801] = 1704'),('mask = 1110000101X0X10X0X1011XX0101X00001X0'),('mem[3844] = 952254'),('mem[60487] = 6495'),('mem[42029] = 18562446'),('mem[7631] = 6846'),('mem[9377] = 93575'),('mask = 1110000001X01XX10001X110000X1X101101'),('mem[10374] = 550602'),('mem[5332] = 339'),('mem[38039] = 1028545'),('mask = 1101001001X0110XX001X1XX101101011011'),('mem[58473] = 143'),('mem[47893] = 122'),('mem[64544] = 6555692'),('mem[22943] = 23337528'),('mem[55147] = 889075'),('mem[35980] = 24521'),('mask = 101X0001010X111000001XXX01X00111X101'),('mem[23886] = 248921'),('mem[29588] = 352528'),('mem[48835] = 518717801'),('mem[51363] = 892')),
-- WITH vals AS (values('mask = XXXXXXXXXXXXXXXXXXXXXXXXXXXXX1XXXX0X'),('mem[8] = 11'),('mem[7] = 101'),('mem[8] = 0')),
vals2 AS (
    SELECT regexp_split_to_array(column1::varchar,' = ') as data,
           row_number() over() as id
      FROM vals
),
vals_split AS (
    SELECT data[1] as type,
           data[2] as value,
           id
      FROM vals2
)
    SELECT CASE WHEN v.type='mask' THEN 'mask' ELSE 'mem' END as type,
           CASE WHEN v.type='mask' THEN NULL ELSE split_part(split_part(v.type, '[', 2),']',1) END as address,
           v.value,
           v.id,
           m.mask_id
      INTO TEMPORARY TABLE vals_with_mask
      FROM vals_split v
 LEFT JOIN LATERAL (SELECT max(id) as mask_id FROM vals_split s WHERE s.id<v.id AND s.type='mask') m ON TRUE;

WITH RECURSIVE binary_data AS(
    SELECT id,
           value::bigint as reminder,
           37::bigint as position,
           0::bigint as value
      FROM vals_with_mask
     WHERE type ilike 'mem%'

     UNION ALL

     SELECT id,
            reminder%(2^(position-1))::bigint,
            position-1,
            reminder/(2^(position-1))::bigint
       FROM binary_data
      WHERE position>0

)
SELECT id,
       position,
       value
INTO TEMPORARY TABLE binary_figures
  FROM binary_data;

WITH datas AS (
SELECT unnest(regexp_split_to_array(value, '')) as mask,
       id
  FROM vals_with_mask
 WHERE type='mask'
),
datas2 AS(
SELECT mask,
       row_number() over() as tmp_id,
       id
  FROM datas
),
datas3 AS (
SELECT mask,
       id,
       36-row_number() over(PARTITION BY id ORDER BY tmp_id) AS position
  FROM datas2
)
  SELECT mask,
         id,
         position
    INTO TEMPORARY TABLE masks
    FROM datas3
   WHERE mask in ('0', '1')
ORDER BY id, position;

SELECT b.id,
       b.position,
       COALESCE(m.mask::int,b.value::int) as value
  INTO TEMPORARY TABLE applicable_figures
  FROM binary_figures b
  JOIN vals_with_mask v ON b.id=v.id
  LEFT JOIN masks m ON m.id=v.mask_id AND m.position=b.position;

SELECT count(*) FROM applicable_figures;

WITH RECURSIVE write_values AS(
    SELECT v.address as address,
           min(v.id) as id,
           s as position,
           COALESCE(f.value, '0') as data,
           1 as turn
      FROM vals_with_mask v JOIN generate_series(0,36) s ON TRUE
 LEFT JOIN applicable_figures f ON v.id=f.id AND s=f.position
     WHERE v.type='mem'
  GROUP BY 1, 3, 4, 5

     UNION

    SELECT wv.address,
           vm.id,
           wv.position,
           COALESCE(new_vals.value, wv.data),
           turn+1
      FROM write_values wv
      JOIN LATERAL (SELECT min(vwm.id) as id,vwm.address FROM vals_with_mask vwm WHERE vwm.id>wv.id AND vwm.address=wv.address group by vwm.address) vm ON TRUE
 LEFT JOIN LATERAL ( SELECT value FROM applicable_figures f WHERE f.id=vm.id AND f.position=wv.position) as new_vals ON TRUE
 WHERE turn<10

),
max_turn AS(
    SELECT max(turn) as turn,
           address
      FROM write_values
  GROUP BY address
),
memory_content AS (
SELECT v.address,sum((2^position::int)*data::int) as dt,v.turn
  FROM write_values v
  JOIN max_turn t ON t.turn=v.turn AND v.address=t.address
  GROUP BY v.address,v.turn
  ORDER BY v.address
)
SELECT sum(dt) FROM memory_content;

rollback;
