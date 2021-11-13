
scoreboard players set @a[scores={tag_gamemode=0}] tag_gamemode 10
scoreboard players set @a[scores={tag_gamemode=1}] tag_gamemode 11
scoreboard players set @a[scores={tag_gamemode=10}] tag_gamemode 1
scoreboard players set @a[scores={tag_gamemode=11}] tag_gamemode 0

tellraw @a[scores={tag_gamemode=0}] [{"text":"Tag: Your gamemode is now \"reverse tag\" (rtag)","color":"gold"}]
tellraw @a[scores={tag_gamemode=1}] [{"text":"Tag: Your gamemode is now \"simple tag\"  (stag)","color":"gold"}]

