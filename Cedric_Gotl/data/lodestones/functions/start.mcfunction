#### Start of Lodestones game

# Gamerules 
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

gamemode survival @a

# Init scoreboard variables
# Note: 12000 ticks of prep time = 10 minutes
scoreboard players set @a ls_On 1
scoreboard players set @a ls_PrepTime 12000
scoreboard players set @a ls_LsPlaced 0
scoreboard players set @a ls_Kills 0
scoreboard players set @a ls_KilledBy1 0
scoreboard players set @a ls_KilledBy2 0
scoreboard players set @a ls_DeathCount 0

# Kill all armorstands
kill @e[type=armor_stand]

# World Properties
worldborder center ~ ~
worldborder set 400
setworldspawn ~ ~ ~
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"mapcentre\"",CustomNameVisible:0}
time set 0

# Fill teams randomly if teams have not been manually set up
# This is called only if both teams are empty
execute unless entity @r[team=team1] unless entity @r[team=team2] run function teams:dorandomteams2

# Spread Players in teams
spreadplayers ~ ~ 200 200 true @a[team=team1]
spreadplayers ~ ~ 200 200 true @a[team=team2]
execute at @r[team=team1] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"initteam1\"",CustomNameVisible:0}
execute at @r[team=team2] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"initteam2\"",CustomNameVisible:0}
execute at @r[team=team1] run spawnpoint @a[team=team1] ~ ~ ~
execute at @r[team=team2] run spawnpoint @a[team=team2] ~ ~ ~

# Effects
effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10 10
effect give @a saturation 10 10

# Starter Items
clear @a
give @r[team=team1] lime_banner{display:{Name:"\"Place the banner on the block where you want your lodestone and stand on it!\""}}
give @r[team=team2] red_banner{display:{Name:"\"Place the banner on the block where you want your lodestone and stand on it!\""}}
execute as @a at @s run function lodestones:givestarterset

