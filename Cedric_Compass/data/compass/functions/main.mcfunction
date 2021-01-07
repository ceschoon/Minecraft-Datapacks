
execute if entity @p[scores={target=1},nbt={Dimension:"minecraft:overworld"}] run function compass:compassdetectoverworld
execute if entity @p[scores={target=1},nbt={Dimension:"minecraft:the_nether"}] run function compass:compassdetectnether
execute if entity @p[scores={target=1},nbt={Dimension:"minecraft:the_end"}] run function compass:compassdetectend

