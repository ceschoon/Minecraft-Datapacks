# Start of rrtag game (variant of base tag)

function tag:start

# indicate that we are playing this game
scoreboard players set @a tag_rrtagx 1
tellraw @a [{"text":"rrtagx: First player who is tagged for more than 600 seconds (10 min) wins the game!","color":"gold"}]

worldborder set 200 
spreadplayers ~ ~ 75 75 false @a
execute as @a at @s run spawnpoint @s ~ ~ ~

execute as @a at @s run function rrtagx:giverespawnset
