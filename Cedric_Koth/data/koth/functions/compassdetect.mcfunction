# Compass Module main detection function
# Credits to the author of the huntpack-e1750 datapack

# Detect compass drop and summon new compass -> is it really necessary ??
kill @e[type=item,nbt={Item:{id:"minecraft:compass",Count:1b},PickupDelay:40s}]
execute at @a[scores={drop=1..}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:compass",Count:1b}}
execute at @a[scores={drop=1..}] run give @s compass
execute if entity @a[scores={drop=1..}] run scoreboard players set @a drop 0
data merge entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] {Item:{tag:{LodestoneDimension:"minecraft:overworld", LodestoneTracked:0b}}}

# Make compasses point to hill location
execute as @a at @s store result entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.X int 1 run scoreboard players get @s X
execute as @a at @s store result entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.Y int 1 run scoreboard players get @s Y
execute as @a at @s store result entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.Z int 1 run scoreboard players get @s Z

