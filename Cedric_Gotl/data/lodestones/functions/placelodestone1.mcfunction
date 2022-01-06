#### Lodestones game: place lodestone of team 1
#### To be executed by a player of team 1

# Place lodestone
setblock ~ ~-1 ~ lodestone

# Set team spawn here
spawnpoint @a[team=team1] ~ ~2 ~

# Save position in scoreboard for the compasses to point to
execute store result score @a[team=team2] X run data get entity @s Pos[0] 1
execute store result score @a[team=team2] Y run data get entity @s Pos[1] 1
execute store result score @a[team=team2] Z run data get entity @s Pos[2] 1

# Summon armorstand on top of lodestone (for targeting position)
summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"team1\"",CustomNameVisible:0}



