
# Scoreboards
scoreboard objectives setdisplay sidebar pltf_Score

scoreboard players set @a pltf_On 1
scoreboard players set @a pltf_Score 0
scoreboard players set @a pltf_DelayEmrld 0
scoreboard players set @a pltf_DelayDiamd 0
scoreboard players set @a pltf_DelayWool 0
scoreboard players set @a pltf_DelayFire1 0
scoreboard players set @a pltf_DelayFire2 0
scoreboard players set @a pltf_CountFire1 0
scoreboard players set @a pltf_CountFire2 0
scoreboard players set @a pltf_DeathCount 0

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
time set 0
weather clear 999999

# Generate map
#function platforms:generatemap1
#function platforms:generatemap2

# Fill teams randomly if teams have not been manually set up
# This is called only if all teams are empty
execute unless entity @r[team=pltf_team1] unless entity @r[team=pltf_team2] unless entity @r[team=pltf_team3] unless entity @r[team=pltf_team4] run function platforms:dorandomteams

# Tp players on their platform
execute at @e[type=armor_stand,name=team1] run tp @a[team=pltf_team1] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run tp @a[team=pltf_team2] ~ ~ ~
execute at @e[type=armor_stand,name=team3] run tp @a[team=pltf_team3] ~ ~ ~
execute at @e[type=armor_stand,name=team4] run tp @a[team=pltf_team4] ~ ~ ~

# Set player spawn on platforms
execute at @e[type=armor_stand,name=team1] run spawnpoint @a[team=pltf_team1] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run spawnpoint @a[team=pltf_team2] ~ ~ ~
execute at @e[type=armor_stand,name=team3] run spawnpoint @a[team=pltf_team3] ~ ~ ~
execute at @e[type=armor_stand,name=team4] run spawnpoint @a[team=pltf_team4] ~ ~ ~

# Effects
effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10 10
effect give @a saturation 10 10

# Inventory and gamemode
clear @a
execute as @a run function platforms:clearenderchest 
gamemode survival @a

# Game starts message
title @a title {"text":"Go!","color":"gold"}
tellraw @a {"text":"Platforms: Bring 30 diamonds to your base to win.","color":"gold"}
tellraw @a {"text":"Platforms: Game starts now!","color":"gold"}


