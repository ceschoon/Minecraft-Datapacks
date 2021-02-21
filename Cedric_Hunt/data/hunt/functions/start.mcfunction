
scoreboard objectives setdisplay sidebar hunt_TimeSec

scoreboard players set @a hunt_On 0
scoreboard players set @a hunt_TimeTicks 0
scoreboard players set @a hunt_TimeSec 0
scoreboard players set @a hunt_TimeTotal 0
scoreboard players set @a hunt_Hunted 0

gamerule keepInventory false
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

time set 0

worldborder center ~ ~
worldborder set 1000000
setworldspawn ~ ~ ~

execute as @a at @s run spawnpoint @s ~ ~ ~

effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10
effect give @a saturation 10 10
#effect give @a slowness 10 10

clear @a
give @a compass

function hunt:newrunner

