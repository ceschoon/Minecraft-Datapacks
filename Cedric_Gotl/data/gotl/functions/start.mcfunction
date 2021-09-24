
function lodestones:start
execute as @a run function gotlroles:assignrandomly

# Generate structures with loot chest
execute as @r[team=ls_team1] run function gotldungeons:generate
execute as @r[team=ls_team1] run function gotldungeons:generate
execute as @r[team=ls_team1] run function gotldungeons:generate
execute as @r[team=ls_team2] run function gotldungeons:generate
execute as @r[team=ls_team2] run function gotldungeons:generate
execute as @r[team=ls_team2] run function gotldungeons:generate

# Message
tellraw @a [" "]
tellraw @a [{"text":"Guardians of the Lodestones: Start!","color":"gold"}]
tellraw @a [{"text":"Rules/Info: Each team must destroy the other team lodestone. Every player has a role giving him special items/abilities.","color":"gold"}]
tellraw @a [" "]
