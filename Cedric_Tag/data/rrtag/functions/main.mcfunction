
# permanent effects
#effect give @a strength 20 255
#effect give @a[scores={tag_On=1,tag_Tag=1}] glowing 20

# detect death and give respawn kit
execute as @a[scores={tag_DeathCount=5}] at @s run function rrtag:giverespawnset

# detect death of runner and select new runner
execute as @a[scores={tag_DeathCount=5,tag_Tag=1}] run scoreboard players set @s tag_Tag 2
execute as @a[scores={tag_Tag=2}] at @s run execute as @r[scores={tag_Tag=0}] at @s run function tag:newrunner

# detect win
execute as @a[scores={tag_On=1,tag_Time=24000..}] at @s run function tag:win 


