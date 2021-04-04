
# detect death and give respawn kit (implemented in derived games)

# detect death of runner and select new runner (implemented in derived game)

# delay and reset death detection
scoreboard players set @a[scores={tag_DeathCount=5}] tag_DeathCount 0
scoreboard players set @a[scores={tag_DeathCount=4}] tag_DeathCount 5
scoreboard players set @a[scores={tag_DeathCount=3}] tag_DeathCount 4
scoreboard players set @a[scores={tag_DeathCount=2}] tag_DeathCount 3
scoreboard players set @a[scores={tag_DeathCount=1}] tag_DeathCount 2

# increment time
scoreboard players add @a[scores={tag_On=1,tag_Tag=1}] tag_TimeTicks 1
scoreboard players add @a[scores={tag_On=1,tag_Tag=1}] tag_TimeTotal 1
execute as @a[scores={tag_On=1,tag_Tag=1,tag_TimeTicks=20..}] run scoreboard players add @s tag_TimeSec 1
execute as @a[scores={tag_On=1,tag_Tag=1,tag_TimeTicks=20..}] run scoreboard players set @s tag_TimeTicks 0

# detect win (implemented in derived games)

# run main function form derived games
execute as @r[scores={tag_htag=1}] run function htag:main
execute as @r[scores={tag_rtag=1}] run function rtag:main
execute as @r[scores={tag_rtagx=1}] run function rtagx:main
execute as @r[scores={tag_rtagxs=1}] run function rtagxs:main
execute as @r[scores={tag_rrtag=1}] run function rrtag:main
execute as @r[scores={tag_rrtagx=1}] run function rrtagx:main
execute as @r[scores={tag_stag=1}] run function stag:main

execute as @a[scores={tag_On=1}] at @s run function tagrules:main
