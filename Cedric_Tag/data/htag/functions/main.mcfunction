
# detect death and give respawn kit
execute as @a[scores={tag_DeathCount=5}] at @s run function htag:giverespawnset

# detect death of runner and untag him
execute as @a[scores={tag_DeathCount=5,tag_Tag=1}] run scoreboard players set @s tag_Tag 2
execute as @a[scores={tag_Tag=2}] run title @a title [{"text":"Game over!","color":"gold"}]
execute as @a[scores={tag_Tag=2}] run scoreboard players set @s tag_Tag 0

