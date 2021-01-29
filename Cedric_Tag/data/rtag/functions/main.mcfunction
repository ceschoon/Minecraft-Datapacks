
# permanent effects
#effect give @a strength 20 255
#effect give @a[scores={tag_On=1,tag_Tag=1}] glowing 20

# detect death and give respawn kit
execute as @a[scores={tag_DeathCount=5}] at @s run function rtag:giverespawnset

# detect death of runner and select new runner
execute as @a[scores={tag_On=1,tag_Tag=1,tag_kbhunter1=1}] run execute as @a[team=hunter1] run function rtag:newrunner
execute as @a[scores={tag_On=1,tag_Tag=1,tag_kbhunter2=1}] run execute as @a[team=hunter2] run function rtag:newrunner
execute as @a[scores={tag_On=1,tag_Tag=1,tag_kbhunter3=1}] run execute as @a[team=hunter3] run function rtag:newrunner
execute as @a[scores={tag_On=1,tag_Tag=1,tag_kbhunter4=1}] run execute as @a[team=hunter4] run function rtag:newrunner

# player with lowest score becomes runner in case of death from pve
execute as @a[scores={tag_On=1,tag_Tag=1,tag_DeathCount=5}] run function rtag:copyscores
execute if entity @a[scores={score2=0..}] run function rtag:lowrunner

# detect win
execute as @a[scores={tag_On=1,tag_TimeSec=1200..}] at @s run function tag:win 


