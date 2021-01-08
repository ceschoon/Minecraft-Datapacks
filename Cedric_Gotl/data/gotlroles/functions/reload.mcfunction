# scoreboard variable to store roles
# 0 = no role
# 1 = scout
# 2 = knight
# 3 = tower
# 4 = miner
# 5 = wizard

scoreboard objectives remove gotl_role
scoreboard objectives add gotl_role dummy

# scoreboard variable for random number generation
# note that the rng will be truly random only is players disconnect once
# after the execution of this function

scoreboard objectives remove gotl_rng 
scoreboard objectives add gotl_rng minecraft.custom:minecraft.play_one_minute

# Messages 
say "Cedric Gotl: reloaded roles module!"
