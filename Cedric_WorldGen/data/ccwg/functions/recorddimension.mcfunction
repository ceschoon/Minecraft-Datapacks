
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s ccwg_setup_portal 1
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s ccwg_setup_portal 2
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s ccwg_setup_portal 3
execute if entity @s[nbt={Dimension:"ccwg:void"}] run scoreboard players set @s ccwg_setup_portal 4
execute if entity @s[nbt={Dimension:"ccwg:void_populated"}] run scoreboard players set @s ccwg_setup_portal 5
execute if entity @s[nbt={Dimension:"ccwg:space"}] run scoreboard players set @s ccwg_setup_portal 6
execute if entity @s[nbt={Dimension:"ccwg:slime"}] run scoreboard players set @s ccwg_setup_portal 7
execute if entity @s[nbt={Dimension:"ccwg:floating_islands"}] run scoreboard players set @s ccwg_setup_portal 8
execute if entity @s[nbt={Dimension:"ccwg:floating_nether"}] run scoreboard players set @s ccwg_setup_portal 9

say "Recorded dimension!"
