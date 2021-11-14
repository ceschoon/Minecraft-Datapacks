#### Start of Lodestones game

# Gamerules 
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

gamemode survival @a

# Init scoreboard variables
# Note: 6000 ticks of prep time = 5 minutes
scoreboard players set @a ls_On 1
scoreboard players set @a ls_PrepTime 6000

# Kill all armorstands
kill @e[type=armor_stand]

# World Properties
worldborder center ~ ~
worldborder set 400
setworldspawn ~ ~ ~
time set 0

# Fill teams randomly if teams have not been manually set up
# This is called only if both teams are empty
execute unless entity @r[team=team1] unless entity @r[team=team2] run function teams:dorandomteams2

# Spread Players in teams
spreadplayers ~ ~ 200 200 true @a

# Effects
effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10 10
effect give @a saturation 10 10

# Starter Items
clear @a
execute as @a at @s run function lodestones:givestarterset

