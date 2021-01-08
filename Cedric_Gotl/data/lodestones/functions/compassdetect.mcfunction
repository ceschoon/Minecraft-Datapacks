# Compass Module main detection function
# Credits to the author of the huntpack-e1750 datapack

# Detect compass drop and summon new compass -> is it really necessary ??
kill @e[type=item,nbt={Item:{id:"minecraft:compass",Count:1b},PickupDelay:40s}]
execute at @a[scores={drop=1..}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:compass",Count:1b}}
execute if entity @a[scores={drop=1..}] run scoreboard players set @a drop 0
data merge entity @e[type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] {Item:{tag:{LodestoneDimension:"minecraft:overworld", LodestoneTracked:0b}}}

# Make team1's compasses point to team2's lodestone
execute at @a[team=team1] store result entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.X int 1 run scoreboard players get @r[team=team2] X
execute at @a[team=team1] store result entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.Y int 1 run scoreboard players get @r[team=team2] Y
execute at @a[team=team1] store result entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.Z int 1 run scoreboard players get @r[team=team2] Z

# Make team2's compasses point to team1's lodestone
execute at @a[team=team2] store result entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.X int 1 run scoreboard players get @r[team=team1] X
execute at @a[team=team2] store result entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.Y int 1 run scoreboard players get @r[team=team1] Y
execute at @a[team=team2] store result entity @e[distance=..2,type=item,nbt={Item:{id:"minecraft:compass"}},limit=1] Item.tag.LodestonePos.Z int 1 run scoreboard players get @r[team=team1] Z
