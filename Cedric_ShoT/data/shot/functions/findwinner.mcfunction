
execute unless entity @a[scores={shot_ScoreCopy=1..}] as @r[scores={shot_ScoreCopy=0}] run scoreboard players set @s shot_Winner -1
scoreboard players remove @a shot_ScoreCopy 1

execute as @r[scores={shot_Winner=-1}] run title @a title [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]
execute as @r[scores={shot_Winner=-1}] run tellraw @a [{"selector":"@s","color":"gold"},{"text":" won the game!","color":"gold"}]

scoreboard players set @a[scores={shot_Winner=-1}] shot_Winner 1

