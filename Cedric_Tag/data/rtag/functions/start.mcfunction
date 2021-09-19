# Start of rtag game (variant of base tag)

function tag:start

worldborder center ~ ~
worldborder set 400
setworldspawn ~ ~ ~

spreadplayers ~ ~ 150 150 false @a
execute as @a at @s run spawnpoint @s ~ ~ ~

scoreboard players set @a tag_rtag 1
tellraw @a [{"text":"rtag: First player who is tagged for more than 1200 seconds (20 min) wins the game!","color":"gold"}]


