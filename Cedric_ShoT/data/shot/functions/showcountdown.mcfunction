
# Countdown warnings in chat
execute if score @s shot_Countdown matches 60 run tellraw @s [{"text":"Warning: Coins taken from inventory in ","color":"gold"},{"score":{"name":"@s","objective":"shot_Countdown"},"color":"gold"},{"text":" seconds","color":"gold"}]
execute if score @s shot_Countdown matches 30 run tellraw @s [{"text":"Warning: Coins taken from inventory in ","color":"gold"},{"score":{"name":"@s","objective":"shot_Countdown"},"color":"gold"},{"text":" seconds","color":"gold"}]

# Countdown in title position
execute if score @s shot_Countdown matches 1..10 run title @s title [{"score":{"name":"@s","objective":"shot_Countdown"},"color":"gold"},{"text":"...","color":"gold"}]

# Go title + sound
execute if score @s shot_Countdown matches 0 run title @s title [{"text":"Share or Take!","color":"gold"}]
execute if score @s shot_Countdown matches 0 at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

# Decrement counter
scoreboard players remove @s shot_Countdown 1

