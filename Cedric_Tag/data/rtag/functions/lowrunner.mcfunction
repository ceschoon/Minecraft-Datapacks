## Find player with lowest score and make him the new runner.
## This function must be executed every tick.
## It works be progressively reducing the scores until it finds a player
## close to zero.

execute as @r[scores={score2=..59}] run function rtag:newrunner
scoreboard players remove @a score2 60
