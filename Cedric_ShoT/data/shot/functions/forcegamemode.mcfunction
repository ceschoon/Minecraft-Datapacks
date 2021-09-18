
# Temporary scoreboard
scoreboard objectives remove shot_Survival
scoreboard objectives add shot_Survival dummy

# World in survival/adventure during building/collection phases (0/1)
scoreboard players set @s[scores={shot_Phase=0}] shot_Survival 1
scoreboard players set @s[scores={shot_Phase=1}] shot_Survival 0

# Towers always in adventure mode (radius=16)
execute at @e[type=armor_stand,name="tower_platform"] as @s[distance=..16] run scoreboard players set @s shot_Survival 0
execute at @e[type=armor_stand,name="tower_generator"] as @s[distance=..16] run scoreboard players set @s shot_Survival 0

# Villager houses always in adventure mode (radius=16)
execute at @e[type=armor_stand,name="villager_house1"] as @s[distance=..16] run scoreboard players set @s shot_Survival 0
execute at @e[type=armor_stand,name="villager_house2"] as @s[distance=..16] run scoreboard players set @s shot_Survival 0
execute at @e[type=armor_stand,name="villager_house3"] as @s[distance=..16] run scoreboard players set @s shot_Survival 0

# Tell the player that his gamemode has been modified
execute as @s[gamemode=survival,scores={shot_Survival=0}] run title @s actionbar {"text":"You are now in adventure mode","color":"red"}
execute as @s[gamemode=adventure,scores={shot_Survival=1}] run title @s actionbar {"text":"You are now in survival mode","color":"red"}

# Enforce gamemode
execute as @s[gamemode=survival,scores={shot_Survival=0}] run gamemode adventure
execute as @s[gamemode=adventure,scores={shot_Survival=1}] run gamemode survival

# Clean
scoreboard objectives remove shot_Survival

