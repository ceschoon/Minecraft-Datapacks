
# Scoreboards
scoreboard objectives setdisplay sidebar flsheep_Score

scoreboard players set @a flsheep_On 1
scoreboard players set @a flsheep_Score 0
scoreboard players set @a flsheep_Delay 0
scoreboard players set @a flsheep_DeathCnt 0

# Gamerules
gamerule keepInventory false
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
gamerule naturalRegeneration false
gamerule mobGriefing true

# World
worldborder center ~ ~
worldborder set 1000000
setworldspawn ~ 0 ~
time set 18000
weather clear 999999

# Generate map
#function flsheep:generatemap

# Fill teams randomly if teams have not been manually set up
# This is called only if all teams are empty
execute unless entity @r[team=flsheep_team1] unless entity @r[team=flsheep_team2] run function flsheep:dorandomteams

# Tp players on their platform
execute at @e[type=armor_stand,name=team1] run tp @a[team=flsheep_team1] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run tp @a[team=flsheep_team2] ~ ~ ~

# Set player spawn on platforms
execute at @e[type=armor_stand,name=team1] run spawnpoint @a[team=flsheep_team1] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run spawnpoint @a[team=flsheep_team2] ~ ~ ~

# Effects
effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10 10
effect give @a saturation 10 10

# Inventory and gamemode
clear @a
gamemode adventure @a

# Game starts message
title @a title {"text":"Go!","color":"gold"}
tellraw @a {"text":"Flying Sheep: Bring 10 sheep to your base to win.","color":"gold"}
tellraw @a {"text":"Flying Sheep: Game starts now!","color":"gold"}


