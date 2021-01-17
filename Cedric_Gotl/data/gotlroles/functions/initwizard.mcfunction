#### Initialisation function for the wizard

title @s[team=team1] actionbar [{"text":"You are a wizard Harry!","color":"green"}]
title @s[team=team2] actionbar [{"text":"You are a wizard Harry!","color":"red"}]

tellraw @s[team=team1] [{"text":"You are a wizard! The wizard can hold wands that give him special abilities. Other wands can be found in dungeons spread on the map below y=64.","color":"green"}]
tellraw @s[team=team2] [{"text":"You are a wizard! The wizard can hold wands that give him special abilities. Other wands can be found in dungeons spread on the map below y=64.","color":"red"}]

execute if entity @s[team=team1] run replaceitem entity @s armor.head leather_helmet{display:{color:8439583}, Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}
execute if entity @s[team=team2] run replaceitem entity @s armor.head leather_helmet{display:{color:11546150},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}

execute if entity @s[team=team1] run replaceitem entity @s armor.chest leather_chestplate{display:{color:8439583}, Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}
execute if entity @s[team=team2] run replaceitem entity @s armor.chest leather_chestplate{display:{color:11546150},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}

execute if entity @s[team=team1] run replaceitem entity @s armor.legs leather_leggings{display:{color:8439583}, Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}
execute if entity @s[team=team2] run replaceitem entity @s armor.legs leather_leggings{display:{color:11546150},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}

execute if entity @s[team=team1] run replaceitem entity @s armor.feet leather_boots{display:{color:8439583}, Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}
execute if entity @s[team=team2] run replaceitem entity @s armor.feet leather_boots{display:{color:11546150},Enchantments:[{lvl:1s,id:"minecraft:vanishing_curse"}]}

# give wand according to rng2
execute if entity @s[scores={gotl_rng2=0..9}] run give @s stick{display:{Lore:["\"Levitation Wand\""]},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}]}
execute if entity @s[scores={gotl_rng2=10..19}] run give @s stick{display:{Lore:["\"Invisibility Wand\""]},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}]}
execute if entity @s[scores={gotl_rng2=20..29}] run give @s stick{display:{Lore:["\"Fire Wand\""]},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:3s,id:"minecraft:fire_aspect"}]}
execute if entity @s[scores={gotl_rng2=30..39}] run give @s stick{display:{Lore:["\"Swiftness Wand\""]},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}]}
execute if entity @s[scores={gotl_rng2=40..49}] run give @s stick{display:{Lore:["\"Water Wand\""]},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}]}
execute if entity @s[scores={gotl_rng2=50..59}] run give @s stick{display:{Lore:["\"Blindness Wand\""]},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}]}
execute if entity @s[scores={gotl_rng2=60..69}] run give @s stick{display:{Lore:["\"Poison Wand\""]},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}]}

give @s shield
give @s iron_sword
give @s iron_axe
