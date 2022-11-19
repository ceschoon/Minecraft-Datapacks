
# Scoreboards
#scoreboard objectives setdisplay sidebar duels_TimeSec
scoreboard objectives setdisplay sidebar duels_Score

# Gamerules
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
gamerule naturalRegeneration true

gamemode spectator @a

# Tp all players to bring them in the correct dimension
tp @a @s

# World
#execute in minecraft:overworld run worldborder center ~ ~
#execute in minecraft:overworld run worldborder set 1000000
time set 0

# Set spawn (world spawn too, should not be close to platform)
execute as @a at @s run spawnpoint @s ~ ~ ~
execute at @r run setworldspawn ~ ~ ~

schedule function duels:prepareduelists 1s
schedule function duels:delayedstart 6s


