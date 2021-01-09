
function lodestones:start
function gotlroles:assignrandomly

# Generate structures with loot chest
execute as @r[team=team1] at @s run function gotldungeons:generate
execute as @r[team=team1] at @s run function gotldungeons:generate
execute as @r[team=team1] at @s run function gotldungeons:generate
execute as @r[team=team2] at @s run function gotldungeons:generate
execute as @r[team=team2] at @s run function gotldungeons:generate
execute as @r[team=team2] at @s run function gotldungeons:generate

# Message
tellraw @a [{"text":"Guardians of the Lodestones: Start!","color":"gold"}]
tellraw @a [{"text":"Rules/Info: Each team must destroy the other team's lodestone. Every player has a role giving him a special items/abilities.","color":"gold"}]
