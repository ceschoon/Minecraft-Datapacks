
scoreboard players set @a tag_rtag 0
scoreboard players set @a tag_rtagxs 0

scoreboard objectives setdisplay sidebar tag_TimeSec

scoreboard players set @a tag_On 1
scoreboard players set @a tag_TimeTicks 0
scoreboard players set @a tag_TimeSec 0
scoreboard players set @a tag_TimeTotal 0
scoreboard players set @a tag_Tag 0

gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

time set 0

gamemode survival @a

effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10
effect give @a saturation 10 10

clear @a
give @a compass

execute as @r at @s run function tag:newrunner

title @a title {"text":"Tag Game Starts Now!","color":"gold"}

