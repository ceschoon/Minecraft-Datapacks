# Start of htag game (variant of base tag)

function tag:start

# indicate that we are playing this game
scoreboard players set @a tag_htag 1
tellraw @a [{"text":"htag: Tagged player must survive as long as possible...","color":"gold"}]

function tag:newrunner

execute as @a at @s run function htag:givestarterset


