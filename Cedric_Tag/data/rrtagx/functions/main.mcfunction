
# permanent effects
effect give @a[scores={tag_Tag=0}] strength 20 255

# detect death and give respawn kit
execute as @a[scores={tag_DeathCount=5}] at @s run function rrtagx:giverespawnset

# detect death of runner and select new runner
execute as @a[scores={tag_DeathCount=5,tag_Tag=1}] run scoreboard players set @s tag_Tag 2
execute as @a[scores={tag_Tag=2}] at @s run execute as @r[scores={tag_Tag=0}] at @s run function tag:newrunner

# detect win
execute as @a[scores={tag_On=1,tag_TimeSec=600..}] at @s run function tag:win 


