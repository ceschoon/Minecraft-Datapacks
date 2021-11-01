#### Activation function for the scout

effect give @s speed 1
effect give @s jump_boost 1 2

execute if entity @s[team=team1] run item replace entity @s armor.feet with leather_boots{display:{color:8439583},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:2s,id:"minecraft:feather_falling"}]}
execute if entity @s[team=team2] run item replace entity @s armor.feet with leather_boots{display:{color:11546150},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"},{lvl:2s,id:"minecraft:feather_falling"}]}

