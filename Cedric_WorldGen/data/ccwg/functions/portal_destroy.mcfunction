
scoreboard objectives remove temp
scoreboard objectives add temp dummy
scoreboard players set @s temp -1

## Detect portal frame
execute unless block ~-1 ~-1 ~-1 crying_obsidian run scoreboard players set @s temp 0
execute unless block ~-1 ~-1 ~ crying_obsidian run scoreboard players set @s temp 0
execute unless block ~-1 ~-1 ~1 crying_obsidian run scoreboard players set @s temp 0
execute unless block ~ ~-1 ~-1 crying_obsidian run scoreboard players set @s temp 0
execute unless block ~ ~-1 ~1 crying_obsidian run scoreboard players set @s temp 0
execute unless block ~1 ~-1 ~-1 crying_obsidian run scoreboard players set @s temp 0
execute unless block ~1 ~-1 ~ crying_obsidian run scoreboard players set @s temp 0
execute unless block ~1 ~-1 ~1 crying_obsidian run scoreboard players set @s temp 0

## Detect portal (command block)
execute unless block ~ ~-1 ~ repeating_command_block run scoreboard players set @s temp 0

execute if entity @s[scores={temp=-1}] run kill @e[type=armor_stand,name=ccwg_portal_overworld,distance=..1]
execute if entity @s[scores={temp=-1}] run setblock ~ ~-1 ~ crying_obsidian
execute if entity @s[scores={temp=-1}] run playsound minecraft:block.glass.break block @s ~ ~ ~

