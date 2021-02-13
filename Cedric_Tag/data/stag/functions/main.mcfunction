
# permanent effects
#effect give @a strength 20 255
effect give @a[scores={tag_On=1,tag_Tag=0}] glowing 20

# detect death and give respawn kit
execute as @a[scores={tag_DeathCount=5}] at @s run function stag:giverespawnset

# detect death of hunted and select new runner
#execute as @a[scores={tag_kbrunner=1}] run function stag:newrunner
execute as @a[scores={tag_Tag=0,tag_DeathCount=5}] run function stag:newrunner

# detect end
execute as @a[scores={tag_On=1,tag_TimeTotal=24000..}] run function stag:end 


