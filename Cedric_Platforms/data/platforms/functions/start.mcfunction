
# Scoreboards
scoreboard objectives setdisplay sidebar pltf_Score

scoreboard players set @a pltf_On 1
scoreboard players set @a pltf_Score 0
scoreboard players set @a pltf_DelayEmrld 0
scoreboard players set @a pltf_DelayDiamd 0
scoreboard players set @a pltf_DelayWool 0
scoreboard players set @a pltf_DeathCount 0

# Gamerules
gamerule keepInventory false
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
gamerule naturalRegeneration false

# World
worldborder center ~ ~
worldborder set 1000000
setworldspawn ~ 0 ~
time set 0
weather clear 999999

# Build central diamond platform
kill @e[type=armor_stand]
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1,Marker:1,CustomName:"\"diamond\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=diamond] run function platforms:builddiamond

# Build emerald platform 1
spreadplayers ~30 ~30 0 10 false @s
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1,Marker:1,CustomName:"\"emerald1\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=emerald1] run function platforms:buildemerald
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build emerald platform 2
spreadplayers ~-30 ~-30 0 10 false @s
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1,Marker:1,CustomName:"\"emerald2\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=emerald2] run function platforms:buildemerald
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build villager platform 1
spreadplayers ~-30 ~30 0 10 false @s
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1,Marker:1,CustomName:"\"villager1\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=villager1] run function platforms:summonvillager
execute at @e[type=armor_stand,name=villager1] run function platforms:buildvillager
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build villager platform 2
spreadplayers ~30 ~-30 0 10 false @s
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1,Marker:1,CustomName:"\"villager2\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=villager1] run function platforms:summonvillager
execute at @e[type=armor_stand,name=villager2] run function platforms:buildvillager
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build team1 platform
spreadplayers ~-30 ~ 0 10 false @s
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1,Marker:1,CustomName:"\"team1\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=team1] run function platforms:buildteam1
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build team2 platform
spreadplayers ~30 ~ 0 10 false @s
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1,Marker:1,CustomName:"\"team2\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=team2] run function platforms:buildteam2
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build team3 platform
spreadplayers ~ ~-30 0 10 false @s
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1,Marker:1,CustomName:"\"team3\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=team3] run function platforms:buildteam3
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Build team4 platform
spreadplayers ~ ~30 0 10 false @s
execute at @s run summon armor_stand ~ 200 ~ {Invisible:1,Marker:1,CustomName:"\"team4\"",CustomNameVisible:0}
execute at @e[type=armor_stand,name=team4] run function platforms:buildteam4
execute at @e[type=armor_stand,name=diamond] run tp @s ~ ~ ~

# Fill teams randomly if teams have not been manually set up
# This is called only if all teams are empty
execute unless entity @r[team=team1] unless entity @r[team=team2] unless entity @r[team=team3] unless entity @r[team=team4] run function platforms:dorandomteams

# Tp players on their platform
execute at @e[type=armor_stand,name=team1] run tp @a[team=team1] ~ ~ ~
execute at @e[type=armor_stand,name=team2] run tp @a[team=team2] ~ ~ ~
execute at @e[type=armor_stand,name=team3] run tp @a[team=team3] ~ ~ ~
execute at @e[type=armor_stand,name=team4] run tp @a[team=team4] ~ ~ ~

# Effects
effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10
effect give @a saturation 10 10

# Inventory and gamemode
clear @a
gamemode survival @a

# Game starts message
execute as @a[scores={pltf_On=1}] at @s run title @s title {"text":"Go!","color":"gold"}
execute as @a[scores={pltf_On=1}] at @s run tellraw @s {"text":"Platforms game starts Now!","color":"gold"}


