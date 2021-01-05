#### Assign role to player who executes this function

# default to 0 (no role)
scoreboard players set @s gotl_role 0

# assign randomly
execute if entity @s[scores={gotl_rng=0..9}] run scoreboard players set @s gotl_role 1
execute if entity @s[scores={gotl_rng=10..19}] run scoreboard players set @s gotl_role 2
execute if entity @s[scores={gotl_rng=20..29}] run scoreboard players set @s gotl_role 3
execute if entity @s[scores={gotl_rng=30..39}] run scoreboard players set @s gotl_role 4
execute if entity @s[scores={gotl_rng=40..49}] run scoreboard players set @s gotl_role 5



