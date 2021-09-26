# Start of rtagxs game (variant of base tag)

function tag:start

gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle true
gamerule naturalRegeneration true

time set 0

gamemode survival @a

effect clear @a
effect give @a resistance 10 255
effect give @a regeneration 10 10
effect give @a saturation 10 10

clear @a
give @a compass
function tag:giverespawnset

worldborder center ~ ~
worldborder set 100
setworldspawn ~ ~ ~

spreadplayers ~ ~ 50 50 false @a
execute as @a at @s run spawnpoint @s ~ ~ ~

scoreboard players set @a tag_rtagxs 1
tellraw @a [{"text":"rtagxs: First player who is tagged for more than 600 seconds (10 min) wins the game!","color":"gold"}]


