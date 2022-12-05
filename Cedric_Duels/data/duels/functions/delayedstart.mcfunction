
scoreboard players set @a duels_On 1
scoreboard players set @a duels_TimeTicks 0
scoreboard players set @a duels_TimeSec 0
scoreboard players set @a duels_TimeTotal 0

title @a[team=!noteam] title {"text":"Fight!","color":"gold"}
tellraw @a {"text":"Duel starts Now!","color":"gold"}

