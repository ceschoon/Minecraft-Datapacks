

# Build little structure (TODO: do it with structure blocks)

fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 cobblestone
setblock ~1 ~-1 ~ mossy_cobblestone
setblock ~1 ~-1 ~1 mossy_cobblestone
setblock ~ ~-1 ~-1 mossy_cobblestone_slab
setblock ~-1 ~-1 ~ mossy_cobblestone

setblock ~-2 ~ ~-2 mossy_cobblestone
setblock ~-2 ~-1 ~-2 mossy_cobblestone
setblock ~-2 ~ ~ mossy_cobblestone

setblock ~2 ~ ~-1 cobblestone
setblock ~2 ~-1 ~-1 cobblestone
setblock ~2 ~ ~1 mossy_cobblestone
setblock ~2 ~-1 ~1 cobblestone

setblock ~-1 ~ ~-2 cobblestone_slab
setblock ~-1 ~-1 ~-2 cobblestone
setblock ~ ~ ~-2 mossy_cobblestone
setblock ~ ~-1 ~-2 mossy_cobblestone
setblock ~1 ~ ~-2 mossy_cobblestone

setblock ~ ~ ~2 mossy_cobblestone_slab
setblock ~ ~-1 ~2 mossy_cobblestone
setblock ~1 ~ ~2 cobblestone
setblock ~1 ~-1 ~2 cobblestone


# Place chest with loot

setblock ~ ~ ~ chest{LootTable:"gotldungeons:chests/wands1"}


# Summon invisible armorstand for targeting in commands

summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"dungeon\"",CustomNameVisible:0}



