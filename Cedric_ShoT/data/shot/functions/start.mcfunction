
scoreboard players set @a shot_On 1

execute at @s run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"map_centre\"",CustomNameVisible:0}
setworldspawn ~ ~ ~

worldborder center ~ ~
worldborder set 400

gamerule keepInventory false
gamerule mobGriefing false
gamerule doImmediateRespawn true
gamerule doDayNightCycle true

time set 0
clear @a
gamemode survival @a

spreadplayers ~ ~ 200 200 false @a 
execute as @a at @s run spawnpoint @s ~ ~ ~ 
execute as @a at @s run function shot:giverespawnset

