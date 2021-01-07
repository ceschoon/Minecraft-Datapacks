# Executed by to-become new runner

scoreboard players set @a tag_kbrunner 0

scoreboard players set @a tag_Tag 0
scoreboard players set @s tag_Tag 1

function compass:trackme

team empty runner
team join runner @s

