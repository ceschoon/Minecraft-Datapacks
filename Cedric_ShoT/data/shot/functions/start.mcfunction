
scoreboard players set @a shot_Score 0
scoreboard players set @a shot_ScoreCopy 0
scoreboard players set @a shot_Common 0
scoreboard players set @a shot_Phase 0
scoreboard players set @a shot_NumCycles 0
scoreboard players set @a shot_LastCycle 0
scoreboard players set @a shot_CoinDelay 0
scoreboard players set @a shot_Countdown 0
scoreboard players set @a shot_TicksInSec 0
scoreboard players set @a shot_DeathCount 0
scoreboard players set @a shot_KillCount 0
scoreboard players set @a shot_Winner 0
scoreboard players set @a shot_On 1

scoreboard objectives setdisplay sidebar shot_Score
scoreboard objectives setdisplay list shot_NumCycles

execute at @e[type=armor_stand,name=map_centre] run tp @s ~ ~ ~
setworldspawn ~ ~ ~

execute in minecraft:overworld run worldborder center ~ ~
execute in minecraft:overworld run worldborder set 400

# Tp all players to bring them in the correct dimension
tp @a @s

gamerule keepInventory false
gamerule mobGriefing false
gamerule doImmediateRespawn true
gamerule doDaylightCycle true

time set 0
clear @a
gamemode survival @a
effect give @a saturation 10 10
effect give @a regeneration 10 10

spreadplayers ~ ~ 200 200 false @a 
execute as @a at @s run spawnpoint @s ~ ~ ~ 
execute as @a at @s run function shot:giverespawnset

tellraw @a {"text":"ShoT: Game starts now!","color":"gold"}


