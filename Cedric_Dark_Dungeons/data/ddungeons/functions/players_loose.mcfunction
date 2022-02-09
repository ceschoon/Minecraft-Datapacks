
title @a[scores={ddungeons_Mole=1}] title [{"text":"You won the game!","color":"green"}]
title @a[scores={ddungeons_Mole=0}] title [{"text":"You lost the game!","color":"red"}]

execute unless entity @a[scores={ddungeons_Mole=1}] run tellraw @a [{"text":"Game over! You weren't fast enough.","color":"gold"}]
execute if entity @a[scores={ddungeons_Mole=1}] run tellraw @a [{"text":"Game over! The mole won the game.","color":"gold"}]

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~

scoreboard players set @a ddungeons_On 0

