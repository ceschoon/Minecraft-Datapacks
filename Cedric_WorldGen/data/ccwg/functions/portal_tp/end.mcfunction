
execute if entity @s[scores={ccwg_setup_portal=0}] run function ccwg:recorddimension

execute in minecraft:the_end run summon armor_stand ~ ~0.5 ~ {Invisible:1,Marker:1,CustomName:"\"ccwg_portal\"",CustomNameVisible:0}
execute in minecraft:the_end run tp ~ ~ ~

