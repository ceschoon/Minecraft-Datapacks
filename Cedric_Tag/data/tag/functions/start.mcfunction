scoreboard players set @a tag_rrtag 0
scoreboard players set @a tag_rrtagx 0

scoreboard players set @a tag_On 1
scoreboard players set @a tag_TimeTicks 0
scoreboard players set @a tag_TimeSec 0
scoreboard players set @a tag_Tag 0

time set 0

worldborder center ~ ~
worldborder set 400
setworldspawn ~ ~ ~

spreadplayers ~ ~ 150 150 false @a
execute as @a at @s run spawnpoint @s ~ ~ ~

effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10
effect give @a saturation 10 10

clear @a
give @a compass

execute as @r[scores={tag_Tag=0}] at @s run function tag:newrunner

title @a title {"text":"Tag Game Starts Now!","color":"gold"}

