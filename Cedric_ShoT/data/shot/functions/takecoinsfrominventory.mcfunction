
# note: make sure that the player is not on the platform
#       this is handled by another function

scoreboard objectives remove shot_OnPlatform
scoreboard objectives add shot_OnPlatform dummy
scoreboard players set @a shot_OnPlatform 0

# identify whether the players are on the platform
execute at @e[type=armor_stand,name=tower_platform] as @a[distance=..3] if block ~ ~-1 ~ obsidian run scoreboard players set @s shot_OnPlatform 1
execute at @e[type=armor_stand,name=tower_platform] as @a[distance=..3] if block ~ ~-2 ~ obsidian run scoreboard players set @s shot_OnPlatform 1

# take shards from players NOT on the platform and increment their score
scoreboard players set @a shot_temp 0
execute as @a[scores={shot_OnPlatform=0}] store success score @s shot_temp run clear @s emerald{display:{Lore:["\"Coin\""]}} 1
execute as @a[scores={shot_temp=1}] run scoreboard players add @s shot_Score 1

# take shards from players on the platform and increment common basket
scoreboard players set @a shot_temp 0
execute as @a[scores={shot_OnPlatform=1}] store success score @s shot_temp run clear @s emerald{display:{Lore:["\"Coin\""]}} 1
execute as @a[scores={shot_temp=1}] run scoreboard players add @a shot_Common 1

# give content of common basket to players on the platform
scoreboard players add @a[scores={shot_OnPlatform=1,shot_Common=1..}] shot_Score 1
scoreboard players remove @a[scores={shot_OnPlatform=1,shot_Common=1..}] shot_Common 1

