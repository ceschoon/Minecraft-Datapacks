# Start of rrtag game (variant of base tag)

function tag:start

# indicate that we are playing this game
scoreboard players set @a tag_rrtagx 1

worldborder set 200 
spreadplayers ~ ~ 75 75 false @a
execute as @a at @s run spawnpoint @s ~ ~ ~

execute as @a at @s run function rrtagx:giverespawnset

say @a "rrtagx: first to hold the tag for 600 seconds wins the game"

