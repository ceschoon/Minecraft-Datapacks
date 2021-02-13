#### Start of Lodestones game

# Gamerules 
gamerule keepInventory true
gamerule doImmediateRespawn true

# Init scoreboard variables
scoreboard players set @a ls_On 1

# Kill all armorstands
kill @e[type=armor_stand]

# World Properties
worldborder center ~ ~
worldborder set 400
setworldspawn ~ ~ ~
time set 0

# Fill teams randomly if teams have not been manually set up
# This is called only if both teams are empty
execute unless entity @r[team=team1] unless entity @r[team=team2] run function lodestones:dorandomteams

# Spread Players in teams
spreadplayers ~ ~ 200 200 true @a
execute as @a[team=team1] at @s run spawnpoint @a[team=team1] ~ ~2 ~
execute as @a[team=team2] at @s run spawnpoint @a[team=team2] ~ ~2 ~

# Place lodestone at the feet of a random player in each team
execute as @r[team=team1] at @s run function lodestones:placelodestone1
execute as @r[team=team2] at @s run function lodestones:placelodestone2

# Effects
effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10
effect give @a saturation 10 10

# Starter Items
clear @a
execute as @a at @s run function lodestones:givestarterset

