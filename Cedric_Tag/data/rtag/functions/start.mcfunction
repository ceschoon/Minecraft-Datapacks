# Start of rtag game (variant of base tag)

function tag:start

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

worldborder center ~ ~
worldborder set 400
setworldspawn ~ ~ ~

spreadplayers ~ ~ 150 150 false @a
execute as @a at @s run spawnpoint @s ~ ~ ~

scoreboard players set @a tag_rtag 1
tellraw @a [{"text":"rtag: First player who is tagged for more than 1200 seconds (20 min) wins the game!","color":"gold"}]


