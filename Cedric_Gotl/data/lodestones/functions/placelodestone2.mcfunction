#### Lodestones game: place lodestone of team 2
#### To be executed by a player of team 2

# Place lodestone
setblock ~ ~-1 ~ lodestone

spawnpoint @a[team=team2] ~ ~2 ~

# Save position in scoreboard for the compasses to point to
execute store result score @a[team=team1] X run data get entity @s Pos[0] 1
execute store result score @a[team=team1] Y run data get entity @s Pos[1] 1
execute store result score @a[team=team1] Z run data get entity @s Pos[2] 1

# Summon armorstand on top of lodestone (for targeting position)
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"team2\"",CustomNameVisible:0}
