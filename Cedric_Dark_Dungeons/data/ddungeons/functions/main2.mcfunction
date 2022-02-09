
## Temporary variable
scoreboard objectives remove ddungeons_temp
scoreboard objectives add ddungeons_temp dummy

## Countdown
scoreboard players set @a ddungeons_temp 0
execute at @e[type=armor_stand,name=rslamp] unless block ~ ~ ~ redstone_lamp[lit=true] run scoreboard players set @a ddungeons_temp 1
execute if entity @a[scores={ddungeons_temp=1,ddungeons_TicksInSec=0}] run scoreboard players remove @a[scores={ddungeons_Countdown=1..}] ddungeons_Countdown 1

## Time increment
scoreboard players add @a ddungeons_TicksInSec 1
scoreboard players set @a[scores={ddungeons_TicksInSec=20..}] ddungeons_TicksInSec 0

## Delay respawn
scoreboard players set @a[scores={ddungeons_DeathCount=601..}] ddungeons_DeathCount 0
scoreboard players add @a[scores={ddungeons_DeathCount=1..}] ddungeons_DeathCount 1

## Handle dead players
execute at @e[type=armor_stand,name=prison] run tp @a[scores={ddungeons_DeathCount=2}] ~ ~0.5 ~
title @a[scores={ddungeons_DeathCount=2}] title [{"text":"You died!","color":"red"}]
title @a[scores={ddungeons_DeathCount=2}] subtitle [{"text":"You will be set free in 30 seconds...","color":"red"}]
title @a[scores={ddungeons_DeathCount=540}] title [{"text":"Back in 3","color":"red"}]
title @a[scores={ddungeons_DeathCount=560}] title [{"text":"Back in 2","color":"red"}]
title @a[scores={ddungeons_DeathCount=580}] title [{"text":"Back in 1","color":"red"}]
title @a[scores={ddungeons_DeathCount=600}] title [{"text":" ","color":"red"}]
execute at @e[type=armor_stand,name=prison] run tp @a[scores={ddungeons_DeathCount=600}] ~ ~3 ~

## Effects
effect give @a saturation 20
effect give @a[scores={ddungeons_Mole=0}] blindness 20
#effect give @a[scores={ddungeons_Mole=1}] weakness 20

## End game detection
scoreboard players set @a ddungeons_temp 0
execute at @e[type=armor_stand,name=rslamp] if block ~ ~ ~ redstone_lamp[lit=false] run scoreboard players set @a ddungeons_temp 1
execute if entity @a[scores={ddungeons_Countdown=1..,ddungeons_temp=0,ddungeons_TicksInSec=2..}] run function ddungeons:players_win
execute if entity @a[scores={ddungeons_Countdown=..0,ddungeons_temp=1,ddungeons_TicksInSec=2..}] run function ddungeons:players_loose

