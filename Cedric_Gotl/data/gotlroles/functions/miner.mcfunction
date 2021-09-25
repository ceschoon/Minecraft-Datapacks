#### Activation function for the miner

effect give @s haste 1
effect give @s night_vision 20

execute if entity @s[team=ls_team1] run item replace entity @s armor.head with leather_helmet{display:{color:8439583},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:2s,id:"minecraft:blast_protection"}]}
execute if entity @s[team=ls_team2] run item replace entity @s armor.head with leather_helmet{display:{color:11546150},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:2s,id:"minecraft:blast_protection"}]}

