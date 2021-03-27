# Executed by to-become new runner

scoreboard players set @a tag_kbhunter1 0
scoreboard players set @a tag_kbhunter2 0
scoreboard players set @a tag_kbhunter3 0
scoreboard players set @a tag_kbhunter4 0

team empty runner
team empty hunter1
team empty hunter2
team empty hunter3
team empty hunter4

# temporary variable to place players in teams
scoreboard objectives remove temp_innoteam
scoreboard objectives add temp_innoteam dummy
scoreboard players set @a temp_innoteam 1

# define runner
team join runner @s
scoreboard players set @s temp_innoteam 0

# define hunter1
execute as @r[scores={temp_innoteam=1}] run scoreboard players set @s temp_innoteam 2
execute as @r[scores={temp_innoteam=2}] run team join hunter1 @s
execute as @a[scores={temp_innoteam=2}] run scoreboard players set @s temp_innoteam 0

# define hunter2
execute as @r[scores={temp_innoteam=1}] run scoreboard players set @s temp_innoteam 2
execute as @r[scores={temp_innoteam=2}] run team join hunter2 @s
execute as @a[scores={temp_innoteam=2}] run scoreboard players set @s temp_innoteam 0

# define hunter3
execute as @r[scores={temp_innoteam=1}] run scoreboard players set @s temp_innoteam 2
execute as @r[scores={temp_innoteam=2}] run team join hunter3 @s
execute as @a[scores={temp_innoteam=2}] run scoreboard players set @s temp_innoteam 0

# define hunter4
execute as @r[scores={temp_innoteam=1}] run scoreboard players set @s temp_innoteam 2
execute as @r[scores={temp_innoteam=2}] run team join hunter4 @s
execute as @a[scores={temp_innoteam=2}] run scoreboard players set @s temp_innoteam 0

# avoid bug in low runner
scoreboard players set @a score2 -1

scoreboard players set @a tag_Tag 0
scoreboard players set @s tag_Tag 1

function compass:trackme

