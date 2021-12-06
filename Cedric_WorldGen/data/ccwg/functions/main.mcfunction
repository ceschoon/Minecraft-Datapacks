
# Player effects
#effect give @a[nbt={Dimension:"ccwg:floating_islands"}] night_vision 12
#effect give @a[nbt={Dimension:"ccwg:slime"}] night_vision 12
#effect give @a[nbt={Dimension:"ccwg:void"}] night_vision 12
#effect give @a[nbt={Dimension:"ccwg:void_populated"}] night_vision 12

# Permanent items
item replace entity @a[nbt={Dimension:"ccwg:void_populated"}] armor.chest with elytra
item replace entity @a[nbt={Dimension:"ccwg:void_populated"}] hotbar.0 with firework_rocket

# Extension of compass datapack to make it work with new dimensions
function ccwg:compass/main

