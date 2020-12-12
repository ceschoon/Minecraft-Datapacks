# Compass Module reload
# Credits to the author of the huntpack-e1750 datapack

scoreboard objectives remove drop
scoreboard objectives remove target
scoreboard objectives remove X
scoreboard objectives remove Y
scoreboard objectives remove Z

scoreboard objectives add drop minecraft.dropped:minecraft.compass
scoreboard objectives add target dummy
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy

say "Cedric Tag: reloaded compass module"
