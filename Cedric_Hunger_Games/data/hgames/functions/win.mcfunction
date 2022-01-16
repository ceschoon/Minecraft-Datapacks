
title @a title [{"text":"Game over!","color":"red"}]
tellraw @a [{"text":"Game over!","color":"red"}]

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~

scoreboard players set @a hgames_On 0
