
## Build little structure
setblock ~ ~ ~ emerald_block
setblock ~1 ~1 ~ emerald_block
setblock ~-1 ~1 ~ emerald_block
setblock ~ ~1 ~1 emerald_block
setblock ~ ~1 ~-1 emerald_block
fill ~-1 ~2 ~-1 ~1 ~2 ~1 emerald_block
setblock ~ ~3 ~ beacon{Lock:"minecraft:netherite_block"}

## Optional ladders to access it
fill ~2 ~1 ~ ~2 ~2 ~ ladder[facing=east] replace air
fill ~-2 ~1 ~ ~-2 ~2 ~ ladder[facing=west] replace air
fill ~ ~1 ~2 ~ ~2 ~2 ladder[facing=south] replace air
fill ~ ~1 ~-2 ~ ~2 ~-2 ladder[facing=north] replace air

## Chests with loot
setblock ~1 ~3 ~ chest[facing=east]{LootTable:"hgames:chests/tier1_melee"}
setblock ~-1 ~3 ~ chest[facing=west]{LootTable:"hgames:chests/tier1_melee"}
setblock ~ ~3 ~1 chest[facing=south]{LootTable:"hgames:chests/tier1_melee"}
setblock ~ ~3 ~-1 chest[facing=north]{LootTable:"hgames:chests/tier1_melee"}

## Summon invisible armorstand for targeting in commands
#summon armor_stand ~ ~4 ~ {Invisible:1,Marker:1,CustomName:"\"lootdrop\"",CustomNameVisible:0}

