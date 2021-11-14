# Scoreboard variable to store roles
# 0 = no role
# 1 = scout
# 2 = knight
# 3 = tower
# 4 = miner
# 5 = wizard

scoreboard objectives remove gotl_role
scoreboard objectives add gotl_role dummy

# Scoreboard variables for random number generation
# Note that the rng will be truly random only is players disconnect once
# after the execution of this function.
# Similarly, the rng2 will be truly random only is players disconnect once
# after the execution of this function.

scoreboard objectives remove gotl_rng
scoreboard objectives add gotl_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a gotl_rng 0

scoreboard objectives remove gotl_rng2
scoreboard objectives add gotl_rng2 minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a gotl_rng2 0

# Messages 
#say "Cedric Gotl: reloaded roles module!"
