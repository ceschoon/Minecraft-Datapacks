#### Initialisation function for the wizard

title @s[team=team1] actionbar [{"text":"You are a wizard!","color":"green"}]
title @s[team=team2] actionbar [{"text":"You are a wizard!","color":"red"}]

execute if entity @s[team=team1] run replaceitem entity @s armor.head leather_helmet{display:{color:8439583}, Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}
execute if entity @s[team=team2] run replaceitem entity @s armor.head leather_helmet{display:{color:11546150},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}

execute if entity @s[team=team1] run replaceitem entity @s armor.chest leather_chestplate{display:{color:8439583}, Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}
execute if entity @s[team=team2] run replaceitem entity @s armor.chest leather_chestplate{display:{color:11546150},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}

execute if entity @s[team=team1] run replaceitem entity @s armor.legs leather_leggings{display:{color:8439583}, Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}
execute if entity @s[team=team2] run replaceitem entity @s armor.legs leather_leggings{display:{color:11546150},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}

execute if entity @s[team=team1] run replaceitem entity @s armor.feet leather_boots{display:{color:8439583}, Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}
execute if entity @s[team=team2] run replaceitem entity @s armor.feet leather_boots{display:{color:11546150},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}

give @s stick{display:{Lore:["\"Levitation Wand\""]},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}]}
