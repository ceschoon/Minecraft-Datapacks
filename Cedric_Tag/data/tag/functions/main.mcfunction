# compass
function tag:compassdetect

# detect death and give respawn kit (implemented in derived games)

# detect death of runner and select new runner (implemented in derived game)

# delay and reset death detection
scoreboard players set @a[scores={tag_DeathCount=5}] tag_DeathCount 0
scoreboard players set @a[scores={tag_DeathCount=4}] tag_DeathCount 5
scoreboard players set @a[scores={tag_DeathCount=3}] tag_DeathCount 4
scoreboard players set @a[scores={tag_DeathCount=2}] tag_DeathCount 3
scoreboard players set @a[scores={tag_DeathCount=1}] tag_DeathCount 2

# increment time for tagged player
scoreboard players add @a[scores={tag_On=1,tag_Tag=1}] tag_TimeTicksCount 1
execute if @a[scores={tag_On=1,tag_Tag=1,tag_TimeTicksCount=20..}] run scoreboard players add @s tag_TimeSec 1
execute if @a[scores={tag_On=1,tag_Tag=1,tag_TimeTicksCount=20..}] run scoreboard players set @s tag_TimeTicksCount 0

# detect win (implemented in derived games)

