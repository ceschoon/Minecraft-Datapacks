
# find location by teleporting a player
# blind the player for a while so that he does not see where the dungeon
# is generated -> not necessary ?

#effect give @s blindness 5
spreadplayers ~ ~ 100 100 under 64 false @s

# build structure

execute as @s at @s run function gotldungeons:build

# teleport player back to its original location (lodestone)

execute if entity @s[team=team1] at @e[type=armor_stand,name=team1] run tp @s ~ ~ ~



