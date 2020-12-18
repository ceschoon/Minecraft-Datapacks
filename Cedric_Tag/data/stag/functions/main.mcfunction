
# permanent effects
#effect give @a strength 20 255
#effect give @a[scores={tag_On=1,tag_Tag=1}] glowing 20

# detect death and give respawn kit
execute as @a[scores={tag_DeathCount=5}] at @s run function stag:giverespawnset

# detect death by runner and select new runner
execute as @a[scores={tag_kbrunner=1}] run function stag:newrunner

# detect end
execute as @a[scores={tag_On=1,tag_TimeTotal=24000..}] run function stag:end 


