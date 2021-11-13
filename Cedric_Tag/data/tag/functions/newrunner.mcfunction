# Executed by to-become new runner

scoreboard players set @a tag_kbhunter1 0
scoreboard players set @a tag_kbhunter2 0
scoreboard players set @a tag_kbhunter3 0
scoreboard players set @a tag_kbhunter4 0
scoreboard players set @a tag_kbhunter5 0
scoreboard players set @a tag_kbhunter6 0
scoreboard players set @a tag_kbhunter7 0
scoreboard players set @a tag_kbhunter8 0

team empty tag_runner
team empty tag_hunter1
team empty tag_hunter2
team empty tag_hunter3
team empty tag_hunter4
team empty tag_hunter5
team empty tag_hunter6
team empty tag_hunter7
team empty tag_hunter8

# temporary variable to place players in teams
scoreboard objectives remove temp_innoteam
scoreboard objectives add temp_innoteam dummy
scoreboard players set @a temp_innoteam 1

# make current player the new runner (only in gamemode 0 -- rtag)
team join tag_runner @s[scores={tag_gamemode=0}]
scoreboard players set @s[scores={tag_gamemode=0}] temp_innoteam 0

# define hunter1
execute as @r[scores={temp_innoteam=1}] run scoreboard players set @s temp_innoteam 2
execute as @r[scores={temp_innoteam=2}] run team join tag_hunter1 @s
execute as @a[scores={temp_innoteam=2}] run scoreboard players set @s temp_innoteam 0

# define hunter2
execute as @r[scores={temp_innoteam=1}] run scoreboard players set @s temp_innoteam 2
execute as @r[scores={temp_innoteam=2}] run team join tag_hunter2 @s
execute as @a[scores={temp_innoteam=2}] run scoreboard players set @s temp_innoteam 0

# define hunter3
execute as @r[scores={temp_innoteam=1}] run scoreboard players set @s temp_innoteam 2
execute as @r[scores={temp_innoteam=2}] run team join tag_hunter3 @s
execute as @a[scores={temp_innoteam=2}] run scoreboard players set @s temp_innoteam 0

# define hunter4
execute as @r[scores={temp_innoteam=1}] run scoreboard players set @s temp_innoteam 2
execute as @r[scores={temp_innoteam=2}] run team join tag_hunter4 @s
execute as @a[scores={temp_innoteam=2}] run scoreboard players set @s temp_innoteam 0

# define hunter5
execute as @r[scores={temp_innoteam=1}] run scoreboard players set @s temp_innoteam 2
execute as @r[scores={temp_innoteam=2}] run team join tag_hunter5 @s
execute as @a[scores={temp_innoteam=2}] run scoreboard players set @s temp_innoteam 0

# define hunter6
execute as @r[scores={temp_innoteam=1}] run scoreboard players set @s temp_innoteam 2
execute as @r[scores={temp_innoteam=2}] run team join tag_hunter6 @s
execute as @a[scores={temp_innoteam=2}] run scoreboard players set @s temp_innoteam 0

# define hunter7
execute as @r[scores={temp_innoteam=1}] run scoreboard players set @s temp_innoteam 2
execute as @r[scores={temp_innoteam=2}] run team join tag_hunter7 @s
execute as @a[scores={temp_innoteam=2}] run scoreboard players set @s temp_innoteam 0

# define hunter8
execute as @r[scores={temp_innoteam=1}] run scoreboard players set @s temp_innoteam 2
execute as @r[scores={temp_innoteam=2}] run team join tag_hunter8 @s
execute as @a[scores={temp_innoteam=2}] run scoreboard players set @s temp_innoteam 0

# avoid bug
scoreboard players set @a tag_ScoreCopy -1

scoreboard players set @a tag_Tag 0
scoreboard players set @s tag_Tag 1

execute if entity @s[scores={tag_gamemode=0}] run function compass:trackme

