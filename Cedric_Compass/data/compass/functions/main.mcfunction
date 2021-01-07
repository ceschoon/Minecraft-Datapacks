
execute if entity @p[scores={target=1},nbt={Dimension:"minecraft:overworld"}] run function hunt:compassdetectoverworld
execute if entity @p[scores={target=1},nbt={Dimension:"minecraft:the_nether"}] run function hunt:compassdetectnether
execute if entity @p[scores={target=1},nbt={Dimension:"minecraft:the_end"}] run function hunt:compassdetectend

