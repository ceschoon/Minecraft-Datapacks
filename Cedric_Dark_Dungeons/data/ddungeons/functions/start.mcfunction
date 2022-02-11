
## Scoreboards
scoreboard players set @a ddungeons_On 1
#scoreboard objectives setdisplay sidebar ddungeons_Countdown
scoreboard players set @a ddungeons_Countdown 300
scoreboard players set @a ddungeons_TicksInSec 0
scoreboard players set @a ddungeons_DeathCount 0
scoreboard players set @a ddungeons_Mole 0

## Temporary variable
scoreboard objectives remove ddungeons_temp
scoreboard objectives add ddungeons_temp dummy

## Gamerules
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule naturalRegeneration true
gamerule mobGriefing false

## Players
gamemode adventure @a
execute at @e[type=armor_stand,name=prison] run tp @a ~ ~3 ~
execute at @e[type=armor_stand,name=prison] run spawnpoint @a ~ ~ ~
effect give @a regeneration 5 5

## Inventory
clear @a
give @a wooden_sword

## Select a mole (only if more than 3 players)
scoreboard players set @a ddungeons_temp 0
execute as @a run scoreboard players add @a ddungeons_temp 1
execute as @e[name=debug_player] run scoreboard players add @a ddungeons_temp 1
execute if entity @a[scores={ddungeons_temp=3..}] run scoreboard players set @r ddungeons_Mole 1

## World
execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 1000000
time set 0

## Map
execute at @e[type=armor_stand,name=rslamp] run setblock ~ ~ ~ redstone_lamp[lit=false] replace
kill @e[type=!player,distance=..200]
kill @e[type=item,distance=..200]

## Game starts message
title @a title {"text":"Go!","color":"gold"}
title @a[scores={ddungeons_Mole=0}] subtitle {"text":"Lit all the lamps to win. You have limited time!","color":"gold"}
title @a[scores={ddungeons_Mole=1}] subtitle {"text":"You must prevent others from turning all the lamps on!","color":"red"}
tellraw @a[scores={ddungeons_Mole=0}] {"text":"Dark Dungeon: Lit up all the lamps before the time limit to win the game.","color":"gold"}
tellraw @a[scores={ddungeons_Mole=1}] {"text":"Dark Dungeon: You must prevent others from turning all the lamps on!","color":"gold"}
tellraw @a {"text":"Dark Dungeons: Game starts now!","color":"gold"}

