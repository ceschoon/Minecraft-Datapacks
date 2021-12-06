
# Detect targeted players in the same dimension

execute as @a[nbt={Dimension:"ccwg:floating_islands"}] if entity @a[scores={target=1},nbt={Dimension:"ccwg:floating_islands"}] run function compass:detect
execute as @a[nbt={Dimension:"ccwg:floating_nether"}] if entity @a[scores={target=1},nbt={Dimension:"ccwg:floating_nether"}] run function compass:detect
execute as @a[nbt={Dimension:"ccwg:slime"}] if entity @a[scores={target=1},nbt={Dimension:"ccwg:slime"}] run function compass:detect
execute as @a[nbt={Dimension:"ccwg:void"}] if entity @a[scores={target=1},nbt={Dimension:"ccwg:void"}] run function compass:detect
execute as @a[nbt={Dimension:"ccwg:void_populated"}] if entity @a[scores={target=1},nbt={Dimension:"ccwg:void_populated"}] run function compass:detect

# Point to targeted player if there is one
# Note: we can also set the target scoreboard to a higher number in order to use the 
# pointing functions without refreshing the target coordinates using a player's location

execute as @a[nbt={Dimension:"ccwg:floating_islands"}] if entity @a[scores={target=1..}] run function ccwg:compass/pointinfloatingislands
execute as @a[nbt={Dimension:"ccwg:floating_nether"}] if entity @a[scores={target=1..}] run function ccwg:compass/pointinfloatingnether
execute as @a[nbt={Dimension:"ccwg:slime"}] if entity @a[scores={target=1..}] run function ccwg:compass/pointinslime
execute as @a[nbt={Dimension:"ccwg:void"}] if entity @a[scores={target=1..}] run function ccwg:compass/pointinvoid
execute as @a[nbt={Dimension:"ccwg:void_populated"}] if entity @a[scores={target=1..}] run function ccwg:compass/pointinvoidpopulated

# Detect if the player is in a dimension with a roof (used to spreadplayers)

scoreboard players set @a[nbt={Dimension:"ccwg:floating_islands"}] dimroof 0
scoreboard players set @a[nbt={Dimension:"ccwg:floating_nether"}] dimroof 0
scoreboard players set @a[nbt={Dimension:"ccwg:slime"}] dimroof 0
scoreboard players set @a[nbt={Dimension:"ccwg:void"}] dimroof 0
scoreboard players set @a[nbt={Dimension:"ccwg:void_populated"}] dimroof 0

