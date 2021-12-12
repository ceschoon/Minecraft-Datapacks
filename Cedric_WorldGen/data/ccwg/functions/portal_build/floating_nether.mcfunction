
## Build
execute at @e[type=armor_stand,name=ccwg_portal,distance=..100] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 crying_obsidian
execute at @e[type=armor_stand,name=ccwg_portal,distance=..100] run setblock ~ ~-1 ~ command_block[conditional=false,facing=up]{Command:"execute as @p run function ccwg:portal_tp/floating_nether",CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:1b,powered:0b}

## Tp player to exact coordinates and kill temporary armor stand
execute at @s run execute at @e[type=armor_stand,name=ccwg_portal,distance=..100] run tp @s ~ ~ ~
kill @e[type=armor_stand,name=ccwg_portal,distance=..100]

