# Start of rtag game (variant of base tag)

function tag:start

# indicate that we are playing this game
scoreboard players set @a tag_rtag 1
tellraw @a [{"text":"rtag: First player who is tagged for more than 1200 seconds (20 min) wins the game!","color":"gold"}]

execute as @r at @s run function rtag:newrunner
execute as @a at @s run function rtag:giverespawnset


