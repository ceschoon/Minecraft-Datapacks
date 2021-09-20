#### Initialisation function for the miner

title @s[team=ls_team1] actionbar [{"text":"You are a miner!","color":"green"}]
title @s[team=ls_team2] actionbar [{"text":"You are a miner!","color":"red"}]

tellraw @s[team=ls_team1] [{"text":"You are a miner! The miner can mine faster than other players. It is a good role for underground attacks.","color":"green"}]
tellraw @s[team=ls_team2] [{"text":"You are a miner! The miner can mine faster than other players. It is a good role for underground attacks.","color":"red"}]

#give @s iron_pickaxe{Enchantments:[{lvl:3s,id:"minecraft:unbreaking"}]}
give @s iron_pickaxe
give @s flint_and_steel
give @s torch 16
