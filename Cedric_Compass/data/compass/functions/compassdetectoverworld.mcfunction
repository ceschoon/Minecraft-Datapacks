# Compass Module main detection function
# Credits to the author of the huntpack-e1750 datapack

execute if entity @p[scores={target=1},nbt={Dimension:"minecraft:overworld"}] store result score @p[scores={target=1}] X run data get entity @p[scores={target=1}] Pos[0] 1
execute if entity @p[scores={target=1},nbt={Dimension:"minecraft:overworld"}] store result score @p[scores={target=1}] Y run data get entity @p[scores={target=1}] Pos[1] 1
execute if entity @p[scores={target=1},nbt={Dimension:"minecraft:overworld"}] store result score @p[scores={target=1}] Z run data get entity @p[scores={target=1}] Pos[2] 1

kill @e[type=item,nbt={Item:{id:"minecraft:compass",Count:1b},PickupDelay:40s}]
execute at @a[scores={drop=1..}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:compass",Count:1b,tag:{display:{Lore:["\"Dimension: Overworld\""]}}}}
#execute at @a[scores={drop=1..}] run give @s compass
execute if entity @a[scores={drop=1..}] run scoreboard players set @a drop 0

data merge entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] {Item:{tag:{LodestoneDimension:"minecraft:overworld", LodestoneTracked:0b}}}
execute store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.X int 1 run scoreboard players get @p[scores={target=1}] X
execute store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.Y int 1 run scoreboard players get @p[scores={target=1}] Y
execute store result entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.Z int 1 run scoreboard players get @p[scores={target=1}] Z

