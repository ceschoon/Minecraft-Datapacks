#### Initialisation function for the tower

title @s[team=ls_team1] actionbar [{"text":"You are a tower!","color":"green"}]
title @s[team=ls_team2] actionbar [{"text":"You are a tower!","color":"red"}]

tellraw @s[team=ls_team1] [{"text":"You are a tower! The tower moves slowly but can apply effects to nearby players. It is a good role for defence.","color":"green"}]
tellraw @s[team=ls_team2] [{"text":"You are a tower! The tower moves slowly but can apply effects to nearby players. It is a good role for defence.","color":"red"}]

give @s iron_axe
give @s shield
#give @s stick{Enchantments:[{lvl:5s,id:"minecraft:knockback"}]}
give @s cobblestone 576
