# rng max value
scoreboard players set @a[scores={gotl_rng=50}] gotl_rng 0

# give powers to each role
execute as @a[scores={gotl_role=1}] at @s run function gotlroles:scout
execute as @a[scores={gotl_role=2}] at @s run function gotlroles:knight
execute as @a[scores={gotl_role=3}] at @s run function gotlroles:tower
execute as @a[scores={gotl_role=4}] at @s run function gotlroles:miner
execute as @a[scores={gotl_role=5}] at @s run function gotlroles:wizard


