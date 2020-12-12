# Start of rrtag game (variant of base tag)

function tag:start

# indicate that we are playing this game
scoreboard players set @a tag_rrtag 1

execute as @a at @s run function rrtag:giverespawnset


