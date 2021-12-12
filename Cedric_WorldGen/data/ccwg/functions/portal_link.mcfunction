
effect give @a[scores={ccwg_setup_portal=1..}] slow_falling 1 1 true
effect give @a[scores={ccwg_setup_portal=1..}] resistance 1 255 true

execute in minecraft:overworld as @a[nbt={Dimension:"minecraft:overworld"},scores={ccwg_setup_portal=1}] at @s run function ccwg:portal_build/overworld
execute in minecraft:overworld as @a[nbt={Dimension:"minecraft:overworld"},scores={ccwg_setup_portal=2}] at @s run function ccwg:portal_build/nether
execute in minecraft:overworld as @a[nbt={Dimension:"minecraft:overworld"},scores={ccwg_setup_portal=3}] at @s run function ccwg:portal_build/end
execute in minecraft:overworld as @a[nbt={Dimension:"minecraft:overworld"},scores={ccwg_setup_portal=4}] at @s run function ccwg:portal_build/void
execute in minecraft:overworld as @a[nbt={Dimension:"minecraft:overworld"},scores={ccwg_setup_portal=5}] at @s run function ccwg:portal_build/void_populated
execute in minecraft:overworld as @a[nbt={Dimension:"minecraft:overworld"},scores={ccwg_setup_portal=6}] at @s run function ccwg:portal_build/space
execute in minecraft:overworld as @a[nbt={Dimension:"minecraft:overworld"},scores={ccwg_setup_portal=7}] at @s run function ccwg:portal_build/slime
execute in minecraft:overworld as @a[nbt={Dimension:"minecraft:overworld"},scores={ccwg_setup_portal=8}] at @s run function ccwg:portal_build/floating_islands
execute in minecraft:overworld as @a[nbt={Dimension:"minecraft:overworld"},scores={ccwg_setup_portal=9}] at @s run function ccwg:portal_build/floating_nether

execute in minecraft:the_nether as @a[nbt={Dimension:"minecraft:the_nether"},scores={ccwg_setup_portal=1}] at @s run function ccwg:portal_build/overworld
execute in minecraft:the_nether as @a[nbt={Dimension:"minecraft:the_nether"},scores={ccwg_setup_portal=2}] at @s run function ccwg:portal_build/nether
execute in minecraft:the_nether as @a[nbt={Dimension:"minecraft:the_nether"},scores={ccwg_setup_portal=3}] at @s run function ccwg:portal_build/end
execute in minecraft:the_nether as @a[nbt={Dimension:"minecraft:the_nether"},scores={ccwg_setup_portal=4}] at @s run function ccwg:portal_build/void
execute in minecraft:the_nether as @a[nbt={Dimension:"minecraft:the_nether"},scores={ccwg_setup_portal=5}] at @s run function ccwg:portal_build/void_populated
execute in minecraft:the_nether as @a[nbt={Dimension:"minecraft:the_nether"},scores={ccwg_setup_portal=6}] at @s run function ccwg:portal_build/space
execute in minecraft:the_nether as @a[nbt={Dimension:"minecraft:the_nether"},scores={ccwg_setup_portal=7}] at @s run function ccwg:portal_build/slime
execute in minecraft:the_nether as @a[nbt={Dimension:"minecraft:the_nether"},scores={ccwg_setup_portal=8}] at @s run function ccwg:portal_build/floating_islands
execute in minecraft:the_nether as @a[nbt={Dimension:"minecraft:the_nether"},scores={ccwg_setup_portal=9}] at @s run function ccwg:portal_build/floating_nether

execute in minecraft:the_end as @a[nbt={Dimension:"minecraft:the_end"},scores={ccwg_setup_portal=1}] at @s run function ccwg:portal_build/overworld
execute in minecraft:the_end as @a[nbt={Dimension:"minecraft:the_end"},scores={ccwg_setup_portal=2}] at @s run function ccwg:portal_build/nether
execute in minecraft:the_end as @a[nbt={Dimension:"minecraft:the_end"},scores={ccwg_setup_portal=3}] at @s run function ccwg:portal_build/end
execute in minecraft:the_end as @a[nbt={Dimension:"minecraft:the_end"},scores={ccwg_setup_portal=4}] at @s run function ccwg:portal_build/void
execute in minecraft:the_end as @a[nbt={Dimension:"minecraft:the_end"},scores={ccwg_setup_portal=5}] at @s run function ccwg:portal_build/void_populated
execute in minecraft:the_end as @a[nbt={Dimension:"minecraft:the_end"},scores={ccwg_setup_portal=6}] at @s run function ccwg:portal_build/space
execute in minecraft:the_end as @a[nbt={Dimension:"minecraft:the_end"},scores={ccwg_setup_portal=7}] at @s run function ccwg:portal_build/slime
execute in minecraft:the_end as @a[nbt={Dimension:"minecraft:the_end"},scores={ccwg_setup_portal=8}] at @s run function ccwg:portal_build/floating_islands
execute in minecraft:the_end as @a[nbt={Dimension:"minecraft:the_end"},scores={ccwg_setup_portal=9}] at @s run function ccwg:portal_build/floating_nether

execute in ccwg:void as @a[nbt={Dimension:"ccwg:void"},scores={ccwg_setup_portal=1}] at @s run function ccwg:portal_build/overworld
execute in ccwg:void as @a[nbt={Dimension:"ccwg:void"},scores={ccwg_setup_portal=2}] at @s run function ccwg:portal_build/nether
execute in ccwg:void as @a[nbt={Dimension:"ccwg:void"},scores={ccwg_setup_portal=3}] at @s run function ccwg:portal_build/end
execute in ccwg:void as @a[nbt={Dimension:"ccwg:void"},scores={ccwg_setup_portal=4}] at @s run function ccwg:portal_build/void
execute in ccwg:void as @a[nbt={Dimension:"ccwg:void"},scores={ccwg_setup_portal=5}] at @s run function ccwg:portal_build/void_populated
execute in ccwg:void as @a[nbt={Dimension:"ccwg:void"},scores={ccwg_setup_portal=6}] at @s run function ccwg:portal_build/space
execute in ccwg:void as @a[nbt={Dimension:"ccwg:void"},scores={ccwg_setup_portal=7}] at @s run function ccwg:portal_build/slime
execute in ccwg:void as @a[nbt={Dimension:"ccwg:void"},scores={ccwg_setup_portal=8}] at @s run function ccwg:portal_build/floating_islands
execute in ccwg:void as @a[nbt={Dimension:"ccwg:void"},scores={ccwg_setup_portal=9}] at @s run function ccwg:portal_build/floating_nether

execute in ccwg:void_populated as @a[nbt={Dimension:"ccwg:void_populated"},scores={ccwg_setup_portal=1}] at @s run function ccwg:portal_build/overworld
execute in ccwg:void_populated as @a[nbt={Dimension:"ccwg:void_populated"},scores={ccwg_setup_portal=2}] at @s run function ccwg:portal_build/nether
execute in ccwg:void_populated as @a[nbt={Dimension:"ccwg:void_populated"},scores={ccwg_setup_portal=3}] at @s run function ccwg:portal_build/end
execute in ccwg:void_populated as @a[nbt={Dimension:"ccwg:void_populated"},scores={ccwg_setup_portal=4}] at @s run function ccwg:portal_build/void
execute in ccwg:void_populated as @a[nbt={Dimension:"ccwg:void_populated"},scores={ccwg_setup_portal=5}] at @s run function ccwg:portal_build/void_populated
execute in ccwg:void_populated as @a[nbt={Dimension:"ccwg:void_populated"},scores={ccwg_setup_portal=6}] at @s run function ccwg:portal_build/space
execute in ccwg:void_populated as @a[nbt={Dimension:"ccwg:void_populated"},scores={ccwg_setup_portal=7}] at @s run function ccwg:portal_build/slime
execute in ccwg:void_populated as @a[nbt={Dimension:"ccwg:void_populated"},scores={ccwg_setup_portal=8}] at @s run function ccwg:portal_build/floating_islands
execute in ccwg:void_populated as @a[nbt={Dimension:"ccwg:void_populated"},scores={ccwg_setup_portal=9}] at @s run function ccwg:portal_build/floating_nether

execute in ccwg:space as @a[nbt={Dimension:"ccwg:space"},scores={ccwg_setup_portal=1}] at @s run function ccwg:portal_build/overworld
execute in ccwg:space as @a[nbt={Dimension:"ccwg:space"},scores={ccwg_setup_portal=2}] at @s run function ccwg:portal_build/nether
execute in ccwg:space as @a[nbt={Dimension:"ccwg:space"},scores={ccwg_setup_portal=3}] at @s run function ccwg:portal_build/end
execute in ccwg:space as @a[nbt={Dimension:"ccwg:space"},scores={ccwg_setup_portal=4}] at @s run function ccwg:portal_build/void
execute in ccwg:space as @a[nbt={Dimension:"ccwg:space"},scores={ccwg_setup_portal=5}] at @s run function ccwg:portal_build/void_populated
execute in ccwg:space as @a[nbt={Dimension:"ccwg:space"},scores={ccwg_setup_portal=6}] at @s run function ccwg:portal_build/space
execute in ccwg:space as @a[nbt={Dimension:"ccwg:space"},scores={ccwg_setup_portal=7}] at @s run function ccwg:portal_build/slime
execute in ccwg:space as @a[nbt={Dimension:"ccwg:space"},scores={ccwg_setup_portal=8}] at @s run function ccwg:portal_build/floating_islands
execute in ccwg:space as @a[nbt={Dimension:"ccwg:space"},scores={ccwg_setup_portal=9}] at @s run function ccwg:portal_build/floating_nether

execute in ccwg:slime as @a[nbt={Dimension:"ccwg:slime"},scores={ccwg_setup_portal=1}] at @s run function ccwg:portal_build/overworld
execute in ccwg:slime as @a[nbt={Dimension:"ccwg:slime"},scores={ccwg_setup_portal=2}] at @s run function ccwg:portal_build/nether
execute in ccwg:slime as @a[nbt={Dimension:"ccwg:slime"},scores={ccwg_setup_portal=3}] at @s run function ccwg:portal_build/end
execute in ccwg:slime as @a[nbt={Dimension:"ccwg:slime"},scores={ccwg_setup_portal=4}] at @s run function ccwg:portal_build/void
execute in ccwg:slime as @a[nbt={Dimension:"ccwg:slime"},scores={ccwg_setup_portal=5}] at @s run function ccwg:portal_build/void_populated
execute in ccwg:slime as @a[nbt={Dimension:"ccwg:slime"},scores={ccwg_setup_portal=6}] at @s run function ccwg:portal_build/space
execute in ccwg:slime as @a[nbt={Dimension:"ccwg:slime"},scores={ccwg_setup_portal=7}] at @s run function ccwg:portal_build/slime
execute in ccwg:slime as @a[nbt={Dimension:"ccwg:slime"},scores={ccwg_setup_portal=8}] at @s run function ccwg:portal_build/floating_islands
execute in ccwg:slime as @a[nbt={Dimension:"ccwg:slime"},scores={ccwg_setup_portal=9}] at @s run function ccwg:portal_build/floating_nether

execute in ccwg:floating_islands as @a[nbt={Dimension:"ccwg:floating_islands"},scores={ccwg_setup_portal=1}] at @s run function ccwg:portal_build/overworld
execute in ccwg:floating_islands as @a[nbt={Dimension:"ccwg:floating_islands"},scores={ccwg_setup_portal=2}] at @s run function ccwg:portal_build/nether
execute in ccwg:floating_islands as @a[nbt={Dimension:"ccwg:floating_islands"},scores={ccwg_setup_portal=3}] at @s run function ccwg:portal_build/end
execute in ccwg:floating_islands as @a[nbt={Dimension:"ccwg:floating_islands"},scores={ccwg_setup_portal=4}] at @s run function ccwg:portal_build/void
execute in ccwg:floating_islands as @a[nbt={Dimension:"ccwg:floating_islands"},scores={ccwg_setup_portal=5}] at @s run function ccwg:portal_build/void_populated
execute in ccwg:floating_islands as @a[nbt={Dimension:"ccwg:floating_islands"},scores={ccwg_setup_portal=6}] at @s run function ccwg:portal_build/space
execute in ccwg:floating_islands as @a[nbt={Dimension:"ccwg:floating_islands"},scores={ccwg_setup_portal=7}] at @s run function ccwg:portal_build/slime
execute in ccwg:floating_islands as @a[nbt={Dimension:"ccwg:floating_islands"},scores={ccwg_setup_portal=8}] at @s run function ccwg:portal_build/floating_islands
execute in ccwg:floating_islands as @a[nbt={Dimension:"ccwg:floating_islands"},scores={ccwg_setup_portal=9}] at @s run function ccwg:portal_build/floating_nether

execute in ccwg:floating_nether as @a[nbt={Dimension:"ccwg:floating_nether"},scores={ccwg_setup_portal=1}] at @s run function ccwg:portal_build/overworld
execute in ccwg:floating_nether as @a[nbt={Dimension:"ccwg:floating_nether"},scores={ccwg_setup_portal=2}] at @s run function ccwg:portal_build/nether
execute in ccwg:floating_nether as @a[nbt={Dimension:"ccwg:floating_nether"},scores={ccwg_setup_portal=3}] at @s run function ccwg:portal_build/end
execute in ccwg:floating_nether as @a[nbt={Dimension:"ccwg:floating_nether"},scores={ccwg_setup_portal=4}] at @s run function ccwg:portal_build/void
execute in ccwg:floating_nether as @a[nbt={Dimension:"ccwg:floating_nether"},scores={ccwg_setup_portal=5}] at @s run function ccwg:portal_build/void_populated
execute in ccwg:floating_nether as @a[nbt={Dimension:"ccwg:floating_nether"},scores={ccwg_setup_portal=6}] at @s run function ccwg:portal_build/space
execute in ccwg:floating_nether as @a[nbt={Dimension:"ccwg:floating_nether"},scores={ccwg_setup_portal=7}] at @s run function ccwg:portal_build/slime
execute in ccwg:floating_nether as @a[nbt={Dimension:"ccwg:floating_nether"},scores={ccwg_setup_portal=8}] at @s run function ccwg:portal_build/floating_islands
execute in ccwg:floating_nether as @a[nbt={Dimension:"ccwg:floating_nether"},scores={ccwg_setup_portal=9}] at @s run function ccwg:portal_build/floating_nether

## Reset the scoreboard once the platform has been built
execute as @a[scores={ccwg_setup_portal=1..}] at @s if block ~ ~-1 ~ command_block run scoreboard players set @s ccwg_setup_portal 0

