
title @a[scores={ddungeons_Mole=0}] title [{"text":"You won the game!","color":"green"}]
title @a[scores={ddungeons_Mole=1}] title [{"text":"You lost the game!","color":"red"}]

tellraw @a [{"text":"Game over! Normal players won the game.","color":"gold"}]

execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~

scoreboard players set @a ddungeons_On 0

