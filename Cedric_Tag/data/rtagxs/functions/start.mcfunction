# Start of rtagxs game (variant of base tag)

function tag:start

worldborder center ~ ~
worldborder set 100
setworldspawn ~ ~ ~

spreadplayers ~ ~ 50 50 false @a
execute as @a at @s run spawnpoint @s ~ ~ ~

# indicate that we are playing this game
scoreboard players set @a tag_rtagxs 1
tellraw @a [{"text":"rtagxs: First player who is tagged for more than 300 seconds (5 min) wins the game!","color":"gold"}]

execute as @r at @s run function rtagxs:newrunner
execute as @a at @s run function rtagxs:giverespawnset


