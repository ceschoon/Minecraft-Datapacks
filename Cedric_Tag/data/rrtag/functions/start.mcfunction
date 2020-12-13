# Start of rrtag game (variant of base tag)

function tag:start

# indicate that we are playing this game
scoreboard players set @a tag_rrtag 1
tellraw @a [{"text":"rrtag: First player who is tagged for more than 1200 seconds (20 min) wins the game!","color":"gold"}]

execute as @a at @s run function rrtag:giverespawnset


