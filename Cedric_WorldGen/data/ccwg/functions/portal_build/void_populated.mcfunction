
## Build
execute at @e[type=armor_stand,name=ccwg_portal,distance=..100] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 crying_obsidian
execute at @e[type=armor_stand,name=ccwg_portal,distance=..100] run setblock ~ ~-1 ~ repeating_command_block[conditional=false,facing=up]{Command:"execute as @p[distance=..1] run function ccwg:portal_tp/void_populated",CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b}

## Portal for particle effects, etc.
execute at @e[type=armor_stand,name=ccwg_portal,distance=..100] run kill @e[type=armor_stand,name=ccwg_portal_void_populated,distance=..1]
execute at @e[type=armor_stand,name=ccwg_portal,distance=..100] run summon armor_stand ~ ~0.5 ~ {Invisible:1,Marker:1,CustomName:"\"ccwg_portal_void_populated\"",CustomNameVisible:0}

## Tp player to exact coordinates and kill temporary armor stand
execute at @s run execute at @e[type=armor_stand,name=ccwg_portal,distance=..100] run tp @s ~ ~ ~
execute at @s run kill @e[type=armor_stand,name=ccwg_portal,distance=..100]

