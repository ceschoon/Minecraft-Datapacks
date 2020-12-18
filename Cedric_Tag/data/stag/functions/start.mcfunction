# Start of rrtag game (variant of base tag)

function tag:start

# indicate that we are playing this game
scoreboard players set @a tag_stag 1
tellraw @a [{"text":"stag: The player whith the lower tagged time after 20 minutes wins the game!","color":"gold"}]

scoreboard players set @a tag_kbrunner 0

execute as @r at @s run function stag:newrunner
execute as @a at @s run function stag:giverespawnset


