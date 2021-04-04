
scoreboard objectives remove tag_temp
scoreboard objectives add tag_temp dummy

scoreboard players set @s tag_temp 1

execute if block ~ ~-1 ~ air run scoreboard players set @s tag_temp 0

execute unless block ~1 ~-1 ~ air run scoreboard players set @s tag_temp 0
execute unless block ~-1 ~-1 ~ air run scoreboard players set @s tag_temp 0
execute unless block ~ ~-1 ~1 air run scoreboard players set @s tag_temp 0
execute unless block ~ ~-1 ~-1 air run scoreboard players set @s tag_temp 0

execute unless block ~1 ~-2 ~ air run scoreboard players set @s tag_temp 0
execute unless block ~-1 ~-2 ~ air run scoreboard players set @s tag_temp 0
execute unless block ~ ~-1 ~2 air run scoreboard players set @s tag_temp 0
execute unless block ~ ~-1 ~-2 air run scoreboard players set @s tag_temp 0

execute unless block ~1 ~-3 ~ air run scoreboard players set @s tag_temp 0
execute unless block ~-1 ~-3 ~ air run scoreboard players set @s tag_temp 0
execute unless block ~ ~-1 ~3 air run scoreboard players set @s tag_temp 0
execute unless block ~ ~-1 ~-3 air run scoreboard players set @s tag_temp 0

execute unless block ~1 ~-4 ~ air run scoreboard players set @s tag_temp 0
execute unless block ~-1 ~-4 ~ air run scoreboard players set @s tag_temp 0
execute unless block ~ ~-1 ~4 air run scoreboard players set @s tag_temp 0
execute unless block ~ ~-1 ~-4 air run scoreboard players set @s tag_temp 0

execute if entity @s[scores={tag_temp=1}] run effect give @s poison 5
execute if entity @s[scores={tag_temp=1}] run title @s actionbar {"text":"You cannot tower up","color":"red"}
