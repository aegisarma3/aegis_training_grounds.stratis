area01 = true;
area02 = true;
area03 = true;
area04 = true;
area05 = true;
area06 = true;
area07 = true;
area08 = true;
area09 = true;
area10 = true;
area11 = true;
area12 = true;

publicVariable "area01";
publicVariable "area02";
publicVariable "area03";
publicVariable "area04";
publicVariable "area05";
publicVariable "area06";
publicVariable "area07";
publicVariable "area08";
publicVariable "area09";
publicVariable "area10";
publicVariable "area11";
publicVariable "area12";




_targets = [sh,sh1,sh2,sh3,sh4,sh5,sh6,sh7,sh8,sh9,sh10,sh11,sh12,sh13,sh14,sh15,sh16,sh17,sh18,sh19,sh20,sh21,sh22,sh23,sh24,sh25,sh26,sh27,sh28,sh29,sh30,sh31,sh32,sh33,sh34,sh35,sh36,sh37,sh38,sh39,sh40,sh41,sh42,sh43,sh44,sh45,sh46,sh47,sh48,sh49,sh50,sh51,sh52,sh53,shnew01,shnew02,shnew03,shnew04,shnew05,shnew06,casa01,casa02,casa03,casa04,casa05,casa06,casa07,casa08,casa09,casa10,casa11,casa12,casa13,casa14,casa15,casa16,casa17,casa18,casa19,casa20,casa21];

nopop=true;

{_x  animate["terc",0]} forEach _targets;