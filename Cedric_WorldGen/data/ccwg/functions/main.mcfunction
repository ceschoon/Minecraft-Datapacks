
# Player effects
#effect give @a[nbt={Dimension:"ccwg:space"}] slow_falling 12 1 true

# Mob effects (execute at player because cannot target mobs in specific dimension)
execute at @a[nbt={Dimension:"ccwg:floating_islands"}] run effect give @e[type=spider,distance=..128] jump_boost 12 5 true
execute at @a[nbt={Dimension:"ccwg:floating_islands"}] run effect give @e[type=horse,distance=..128] speed 12 1 true
execute at @a[nbt={Dimension:"ccwg:floating_islands"}] run effect give @e[type=skeleton_horse,distance=..128] speed 12 2 true
execute at @a[nbt={Dimension:"ccwg:floating_islands"}] run effect give @e[type=zombie_horse,distance=..128] speed 12 1 true
execute at @e[type=witch] unless entity @a[nbt={Dimension:"ccwg:floating_islands"},distance=..16] run effect give @e[type=witch,distance=..2] invisibility 1 1 true
execute at @a[nbt={Dimension:"ccwg:space"}] run effect give @e[distance=..128] slow_falling 12 1 true

# Permanent items
item replace entity @a[nbt={Dimension:"ccwg:void_populated"}] armor.chest with elytra
item replace entity @a[nbt={Dimension:"ccwg:void_populated"}] hotbar.0 with firework_rocket

# Platforms
execute in ccwg:void run fill -2 63 -2 2 63 2 obsidian
execute in ccwg:space run fill -2 63 -2 2 63 2 obsidian

# Portals
execute if entity @a[scores={ccwg_setup_portal=1..}] run function ccwg:portal_link

# Extension of compass datapack to make it work with new dimensions
function ccwg:compass/main

