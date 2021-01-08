
# permanent effects
effect give @a[scores={tag_Tag=0}] strength 20 255

# detect death and give respawn kit
execute as @a[scores={tag_DeathCount=5}] at @s run function rtagx:giverespawnset

# detect death of runner and select new runner
execute as @a[scores={tag_On=1,tag_Tag=1,tag_kbhunter1=1}] run execute as @a[team=hunter1] run function rtagx:newrunner
execute as @a[scores={tag_On=1,tag_Tag=1,tag_kbhunter2=1}] run execute as @a[team=hunter2] run function rtagx:newrunner
execute as @a[scores={tag_On=1,tag_Tag=1,tag_kbhunter3=1}] run execute as @a[team=hunter3] run function rtagx:newrunner
execute as @a[scores={tag_On=1,tag_Tag=1,tag_kbhunter4=1}] run execute as @a[team=hunter4] run function rtagx:newrunner

# select runner randomly in case of death from pve
execute as @a[scores={tag_On=1,tag_Tag=1,tag_DeathCount=5}] run execute as @r[scores={tag_Tag=0}] at @s run function rtagx:newrunner

# detect win
execute as @a[scores={tag_On=1,tag_TimeSec=1200..}] at @s run function tag:win 


