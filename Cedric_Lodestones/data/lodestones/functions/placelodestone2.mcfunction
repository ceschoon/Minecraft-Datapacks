#### Lodestones game: place lodestone of team 2
#### To be executed by a player of team 2

# Place lodestone
setblock ~ ~-1 ~ lodestone

# Save position in scoreboard for the compasses to point to
execute store result score @a[team=team2] X run data get entity @s Pos[0] 1
execute store result score @a[team=team2] Y run data get entity @s Pos[1] 1
execute store result score @a[team=team2] Z run data get entity @s Pos[2] 1

