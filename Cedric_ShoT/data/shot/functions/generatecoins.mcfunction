# Generate loot every 5 second (20*5=100 ticks)

execute at @e[type=armor_stand,name="tower_generator"] if entity @a[scores={shot_Phase=1,shot_CoinDelay=0}] run loot spawn ~ ~ ~ loot shot:tower_generator
execute at @e[type=armor_stand,name="hidden_generator"] if entity @a[scores={shot_Phase=1,shot_CoinDelay=0}] run loot spawn ~ ~ ~ loot shot:hidden_generator

scoreboard players add @a shot_CoinDelay 1
scoreboard players set @a[scores={shot_CoinDelay=100..}] shot_CoinDelay 0

