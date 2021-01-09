#### Activation function for the wizard

# variable for detecting player holding object

scoreboard objectives remove gotl_holding
scoreboard objectives add gotl_holding dummy

# detect wizard holding levitation stick

scoreboard players set @a gotl_holding 0
scoreboard players set @a[scores={gotl_role=5},nbt={SelectedItem:{tag:{display:{Lore:['"Levitation Wand"']}}}}] gotl_holding 1
execute if entity @s[scores={gotl_holding=1}] run effect give @s levitation 1 3
execute if entity @s[scores={gotl_holding=1}] run effect give @s slow_falling 5

