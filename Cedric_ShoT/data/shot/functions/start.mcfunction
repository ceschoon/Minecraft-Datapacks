
scoreboard players set @a shot_On 1

scoreboard objectives setdisplay sidebar shot_Score
scoreboard objectives setdisplay list shot_NumCycles

execute at @s run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"map_centre\"",CustomNameVisible:0}
setworldspawn ~ ~ ~

worldborder center ~ ~
worldborder set 400

gamerule keepInventory false
gamerule mobGriefing false
gamerule doImmediateRespawn true
gamerule doDaylightCycle true

time set 0
clear @a
gamemode survival @a
effect give @a saturation 10 10
effect give @a regeneration 10 10

spreadplayers ~ ~ 200 200 false @a 
execute as @a at @s run spawnpoint @s ~ ~ ~ 
execute as @a at @s run function shot:giverespawnset


