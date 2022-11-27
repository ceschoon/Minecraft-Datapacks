
# permanent effects
effect give @a[scores={tag_rtagxs=1}] strength 20 255
effect give @a night_vision 20 255
effect give @a[scores={tag_gamemode=1,tag_Tag=0}] glowing 1 255

# death mechanics
execute if entity @a run function tag:deathmechanics

# increment time
scoreboard players add @a[scores={tag_Tag=1}] tag_TimeTicks 1
scoreboard players add @a[scores={tag_Tag=1}] tag_TimeTotal 1
execute as @a[scores={tag_Tag=1,tag_TimeTicks=20..}] run scoreboard players add @s tag_TimeSec 1
execute as @a[scores={tag_Tag=1,tag_TimeTicks=20..}] run scoreboard players set @s tag_TimeTicks 0

# detect win
execute as @a[scores={tag_gamemode=0}] run function tag:detectwin0
execute as @a[scores={tag_gamemode=1}] run function tag:detectwin1

# enforce additional rules
execute as @a at @s run function tagrules:main

