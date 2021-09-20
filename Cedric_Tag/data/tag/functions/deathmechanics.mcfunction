
# detect death and give respawn kit (depending on variants)
execute as @a[scores={tag_rtag=1,tag_DeathCount=5}] at @s run function tag:giverespawnset
execute as @a[scores={tag_rtagxs=1,tag_DeathCount=5}] at @s run function tag:giverespawnset

# detect death of runner and select new runner
execute as @a[scores={tag_Tag=1,tag_kbhunter1=1}] run execute as @a[team=tag_hunter1] run function tag:newrunner
execute as @a[scores={tag_Tag=1,tag_kbhunter2=1}] run execute as @a[team=tag_hunter2] run function tag:newrunner
execute as @a[scores={tag_Tag=1,tag_kbhunter3=1}] run execute as @a[team=tag_hunter3] run function tag:newrunner
execute as @a[scores={tag_Tag=1,tag_kbhunter4=1}] run execute as @a[team=tag_hunter4] run function tag:newrunner
execute as @a[scores={tag_Tag=1,tag_kbhunter5=1}] run execute as @a[team=tag_hunter5] run function tag:newrunner
execute as @a[scores={tag_Tag=1,tag_kbhunter6=1}] run execute as @a[team=tag_hunter6] run function tag:newrunner
execute as @a[scores={tag_Tag=1,tag_kbhunter7=1}] run execute as @a[team=tag_hunter7] run function tag:newrunner
execute as @a[scores={tag_Tag=1,tag_kbhunter8=1}] run execute as @a[team=tag_hunter8] run function tag:newrunner

# delay and reset death detection
scoreboard players set @a[scores={tag_DeathCount=5}] tag_DeathCount 0
scoreboard players set @a[scores={tag_DeathCount=4}] tag_DeathCount 5
scoreboard players set @a[scores={tag_DeathCount=3}] tag_DeathCount 4
scoreboard players set @a[scores={tag_DeathCount=2}] tag_DeathCount 3
scoreboard players set @a[scores={tag_DeathCount=1}] tag_DeathCount 2

# player with lowest score becomes runner in case of death from pve
execute as @a[scores={tag_Tag=1,tag_DeathCount=5}] run function tag:copyscores
execute if entity @a[scores={score2=0..}] run function tag:lowrunner
