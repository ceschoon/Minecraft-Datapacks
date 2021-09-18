
scoreboard objectives remove shot_AddScore
scoreboard objectives add shot_AddScore dummy
scoreboard players set @a shot_AddScore 0

#execute as @a store success score @s shot_AddScore run replaceitem entity @s amethyst_shard{display:{Lore:["\"Coin\""]}} 1

#execute as @a[scores={shot_AddScore=1},team=farmers] run scoreboard players add @a[team=farmers] shot_Score 1
#execute as @a[scores={shot_AddScore=1},team=hunters] run scoreboard players add @s shot_Score 1

scoreboard objectives remove shot_AddScore
