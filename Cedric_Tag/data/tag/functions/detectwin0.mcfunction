# detect win (rtag mode, depends on game variant)

execute as @a[scores={tag_On=1,tag_rtag=1,tag_TimeSec=1200..}] at @s run function tag:win
execute as @a[scores={tag_On=1,tag_rtagxs=1,tag_TimeSec=600..}] at @s run function tag:win