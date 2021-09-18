
scoreboard objectives remove foh_AddScore
scoreboard objectives add foh_AddScore dummy
scoreboard players set @a foh_AddScore 0

execute at @e[type=armor_stand,name="village_centre"] as @a[team=farmers,distance=..2] store success score @s foh_AddScore run clear @s amethyst_shard{display:{Lore:["\"Coin\""]}} 1
execute at @e[type=armor_stand,name="village_centre"] as @a[team=hunters,distance=..2] store success score @s foh_AddScore run clear @s amethyst_shard{display:{Lore:["\"Coin\""]}} 1

execute as @a[scores={foh_AddScore=1},team=farmers] run scoreboard players add @a[team=farmers] foh_Score 1
execute as @a[scores={foh_AddScore=1},team=hunters] run scoreboard players add @s foh_Score 1

scoreboard objectives remove foh_AddScore
