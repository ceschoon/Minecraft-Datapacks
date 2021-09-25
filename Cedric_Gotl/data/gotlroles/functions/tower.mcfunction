#### Activation function for the tower

effect give @s slowness 1

execute if entity @s[team=ls_team1] run effect give @a[team=team1,distance=..10] resistance 1
execute if entity @s[team=ls_team1] run effect give @a[team=team2,distance=..10] weakness 1

execute if entity @s[team=ls_team2] run effect give @a[team=team2,distance=..10] resistance 1
execute if entity @s[team=ls_team2] run effect give @a[team=team1,distance=..10] weakness 1

execute if entity @s[team=ls_team1] run item replace entity @s armor.chest with leather_chestplate{display:{color:8439583},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:2s,id:"minecraft:protection"}]}
execute if entity @s[team=ls_team2] run item replace entity @s armor.chest with leather_chestplate{display:{color:11546150},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:2s,id:"minecraft:protection"}]}
