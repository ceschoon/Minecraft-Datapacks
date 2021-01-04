#### Start of Lodestones game

# Init scoreboard variables
scoreboard players set @a ls_On 1

# Kill all armorstands
kill @e[type=armor_stand]

# World Properties
worldborder center ~ ~
worldborder set 400
setworldspawn ~ ~ ~
time set 0

# Temporary team for player not assigned in teams to fill
team remove noteam
team add noteam
team join noteam @a

# Fill teams (up to 10 players)
execute as @r[team=noteam] run team join team1 @s
execute as @r[team=noteam] run team join team2 @s
execute as @r[team=noteam] run team join team1 @s
execute as @r[team=noteam] run team join team2 @s
execute as @r[team=noteam] run team join team1 @s
execute as @r[team=noteam] run team join team2 @s
execute as @r[team=noteam] run team join team1 @s
execute as @r[team=noteam] run team join team2 @s
execute as @r[team=noteam] run team join team1 @s
execute as @r[team=noteam] run team join team2 @s

# Spread Players in teams
spreadplayers ~ ~ 150 150 true @a
execute as @a at @s run spawnpoint @s ~ ~ ~

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

# Message
tellraw @a [{"text":"Lodestones: Each team must destroy the other team's lodestone.","color":"gold"}]
