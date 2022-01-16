
title @a title [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]
tellraw @a [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~

scoreboard players set @a hgames_On 0
