#### Activation function for the knight

effect give @s strength 1

execute if entity @s[team=team1] unless entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] run item replace entity @s armor.legs with leather_leggings{display:{color:8439583},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}
execute if entity @s[team=team2] unless entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] run item replace entity @s armor.legs with leather_leggings{display:{color:11546150},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}

