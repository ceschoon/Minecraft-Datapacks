
# platform and space above
fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 obsidian
fill ~-2 ~ ~-2 ~2 ~2 ~2 air

# ores in platform
setblock ~ ~-1 ~ furnace
setblock ~ ~-1 ~1 cobblestone
setblock ~-2 ~-1 ~1 cobblestone
setblock ~1 ~-1 ~-2 crafting_table

# ore layers under platform
fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 cobblestone
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 cobblestone

# details in ore layer -2
setblock ~-2 ~-2 ~ cobblestone
setblock ~-2 ~-2 ~1 furnace
setblock ~2 ~-2 ~1 cobblestone
setblock ~2 ~-2 ~ furnace
setblock ~ ~-2 ~2 furnace
setblock ~1 ~-2 ~2 cobblestone 
setblock ~2 ~-2 ~2 cobblestone
setblock ~1 ~-2 ~-2 furnace
setblock ~ ~-2 ~2 furnace

# details in ore layer -3
setblock ~1 ~-3 ~1 air
setblock ~ ~-3 ~-1 crafting_table
setblock ~-1 ~-3 ~-1 air
setblock ~ ~-3 ~1 furnace

# details in ore layers -4 and -5
setblock ~ ~-4 ~ furnace
setblock ~ ~-4 ~1 crafting_table
setblock ~ ~-5 ~ cobblestone
