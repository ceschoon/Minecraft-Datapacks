
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

## Detect portal type
execute if entity @s[scores={temp=-1}] if block ~ ~-1 ~ grass_block run scoreboard players set @s temp 1
execute if entity @s[scores={temp=-1}] if block ~ ~-1 ~ netherrack run scoreboard players set @s temp 2
execute if entity @s[scores={temp=-1}] if block ~ ~-1 ~ end_stone run scoreboard players set @s temp 3
execute if entity @s[scores={temp=-1}] if block ~ ~-1 ~ glass if predicate ccwg:is_wearing_elytra run scoreboard players set @s temp 5
execute if entity @s[scores={temp=-1}] if block ~ ~-1 ~ glass run scoreboard players set @s temp 4
execute if entity @s[scores={temp=-1}] if block ~ ~-1 ~ netherite_block run scoreboard players set @s temp 6
execute if entity @s[scores={temp=-1}] if block ~ ~-1 ~ slime_block run scoreboard players set @s temp 7
execute if entity @s[scores={temp=-1}] if block ~ ~-1 ~ spawner{SpawnData:{entity:{id:"minecraft:cave_spider"}}} run scoreboard players set @s temp 8
execute if entity @s[scores={temp=-1}] if block ~ ~-1 ~ ancient_debris run scoreboard players set @s temp 9

## Summon armor stand and set score to trigger portal building
execute if entity @s[scores={temp=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"ccwg_portal\"",CustomNameVisible:0}
execute if entity @s[scores={temp=1}] run scoreboard players set @s ccwg_setup_portal 1
execute if entity @s[scores={temp=2}] run scoreboard players set @s ccwg_setup_portal 2
execute if entity @s[scores={temp=3}] run scoreboard players set @s ccwg_setup_portal 3
execute if entity @s[scores={temp=4}] run scoreboard players set @s ccwg_setup_portal 4
execute if entity @s[scores={temp=5}] run scoreboard players set @s ccwg_setup_portal 5
execute if entity @s[scores={temp=6}] run scoreboard players set @s ccwg_setup_portal 6
execute if entity @s[scores={temp=7}] run scoreboard players set @s ccwg_setup_portal 7
execute if entity @s[scores={temp=8}] run scoreboard players set @s ccwg_setup_portal 8
execute if entity @s[scores={temp=9}] run scoreboard players set @s ccwg_setup_portal 9

