# copy scores (tag_TimeSec) in new score2 variable
# this will serve to find the player with lowest score in function "lowrunner"

scoreboard objectives remove score2
scoreboard objectives add score2 dummy
execute as @a store result score @s score2 run scoreboard players get @s tag_TimeSec
