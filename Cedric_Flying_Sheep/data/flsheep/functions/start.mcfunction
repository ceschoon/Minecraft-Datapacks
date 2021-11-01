
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
execute if entity @r[scores={flsheep_NumTeams=2}] run function flsheep:generatemap2
execute if entity @r[scores={flsheep_NumTeams=4}] run function flsheep:generatemap4

# Fill teams randomly if teams have not been manually set up
# This is called only if all teams are empty
execute if entity @r[scores={flsheep_NumTeams=2}] unless entity @r[team=flsheep_team1] unless entity @r[team=flsheep_team2] run function flsheep:dorandomteams2
execute if entity @r[scores={flsheep_NumTeams=4}] unless entity @r[team=flsheep_team1] unless entity @r[team=flsheep_team2] unless entity @r[team=flsheep_team3] unless entity @r[team=flsheep_team4] run function flsheep:dorandomteams4

# Tp players on their platform
execute at @e[type=armor_stand,name=team1] run tp @a[team=flsheep_team1] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run tp @a[team=flsheep_team2] ~ ~ ~
execute at @e[type=armor_stand,name=team3] run tp @a[team=flsheep_team3] ~ ~ ~
execute at @e[type=armor_stand,name=team4] run tp @a[team=flsheep_team4] ~ ~ ~

# Set player spawn on platforms
execute at @e[type=armor_stand,name=team1] run spawnpoint @a[team=flsheep_team1] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run spawnpoint @a[team=flsheep_team2] ~ ~ ~
execute at @e[type=armor_stand,name=team3] run spawnpoint @a[team=flsheep_team3] ~ ~ ~
execute at @e[type=armor_stand,name=team4] run spawnpoint @a[team=flsheep_team4] ~ ~ ~

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
tellraw @a {"text":"Flying Sheep: Bring 20 sheep to your base to win.","color":"gold"}
tellraw @a {"text":"Flying Sheep: Game starts now!","color":"gold"}


