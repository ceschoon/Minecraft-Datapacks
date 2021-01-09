#### Activation function for the wizard

# variable for detecting player holding object

scoreboard objectives remove gotl_holding
scoreboard objectives add gotl_holding dummy

# detect wizard holding levitation wand

scoreboard players set @a gotl_holding 0
scoreboard players set @a[scores={gotl_role=5},nbt={SelectedItem:{tag:{display:{Lore:['"Levitation Wand"']}}}}] gotl_holding 1
execute if entity @s[scores={gotl_holding=1}] run effect give @s levitation 1 3
execute if entity @s[scores={gotl_holding=1}] run effect give @s slow_falling 5

# detect wizard holding invisibility wand

scoreboard players set @a gotl_holding 0
scoreboard players set @a[scores={gotl_role=5},nbt={SelectedItem:{tag:{display:{Lore:['"Invisibility Wand"']}}}}] gotl_holding 1
execute if entity @s[scores={gotl_holding=1}] run effect give @s invisibility 1

# detect wizard holding fire wand

scoreboard players set @a gotl_holding 0
scoreboard players set @a[scores={gotl_role=5},nbt={SelectedItem:{tag:{display:{Lore:['"Fire Wand"']}}}}] gotl_holding 1
execute if entity @s[scores={gotl_holding=1}] run effect give @s fire_resistance 1

# detect wizard holding swiftness wand

scoreboard players set @a gotl_holding 0
scoreboard players set @a[scores={gotl_role=5},nbt={SelectedItem:{tag:{display:{Lore:['"Swiftness Wand"']}}}}] gotl_holding 1
execute if entity @s[scores={gotl_holding=1}] run effect give @s speed 1
execute if entity @s[scores={gotl_holding=1}] run effect give @s jump_boost 1 2

# detect wizard holding water wand

scoreboard players set @a gotl_holding 0
scoreboard players set @a[scores={gotl_role=5},nbt={SelectedItem:{tag:{display:{Lore:['"Water Wand"']}}}}] gotl_holding 1
execute if entity @s[scores={gotl_holding=1}] run effect give @s water_breathing 1

# detect wizard holding blindness wand

scoreboard players set @a gotl_holding 0
scoreboard players set @a[scores={gotl_role=5},nbt={SelectedItem:{tag:{display:{Lore:['"Blindness Wand"']}}}}] gotl_holding 1
execute if entity @s[team=team1,scores={gotl_holding=1}] run execute at @s as @a[team=team2,distance=..10] run effect give @s blindness 1
execute if entity @s[team=team2,scores={gotl_holding=1}] run execute at @s as @a[team=team1,distance=..10] run effect give @s blindness 1

# detect wizard holding poison wand

scoreboard players set @a gotl_holding 0
scoreboard players set @a[scores={gotl_role=5},nbt={SelectedItem:{tag:{display:{Lore:['"Poison Wand"']}}}}] gotl_holding 1
execute if entity @s[team=team1,scores={gotl_holding=1}] run execute at @s as @a[team=team2,distance=..10] run effect give @s poison 5
execute if entity @s[team=team2,scores={gotl_holding=1}] run execute at @s as @a[team=team1,distance=..10] run effect give @s poison 5



