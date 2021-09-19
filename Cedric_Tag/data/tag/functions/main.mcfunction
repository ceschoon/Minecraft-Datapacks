
# permanent effects
effect give @a[scores={tag_On=1,tag_rtagxs=1}] strength 20 255

# death mechanics
execute if entity @a[scores={tag_On=1}] run function tag:deathmechanics

# increment time
scoreboard players add @a[scores={tag_On=1,tag_Tag=1}] tag_TimeTicks 1
scoreboard players add @a[scores={tag_On=1,tag_Tag=1}] tag_TimeTotal 1
execute as @a[scores={tag_On=1,tag_Tag=1,tag_TimeTicks=20..}] run scoreboard players add @s tag_TimeSec 1
execute as @a[scores={tag_On=1,tag_Tag=1,tag_TimeTicks=20..}] run scoreboard players set @s tag_TimeTicks 0

# detect win (depend on game variant!)
execute as @a[scores={tag_On=1,tag_rtag=1,tag_TimeSec=1200..}] at @s run function tag:win
execute as @a[scores={tag_On=1,tag_rtagxs=1,tag_TimeSec=600..}] at @s run function tag:win

# enforce additional rules
execute as @a[scores={tag_On=1}] at @s run function tagrules:main

