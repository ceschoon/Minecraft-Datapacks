
scoreboard objectives remove permeffects_glowing
scoreboard objectives remove permeffects_darkness
scoreboard objectives remove permeffects_invisibility
scoreboard objectives remove permeffects_night_vision
scoreboard objectives remove permeffects_saturation
scoreboard objectives remove permeffects_water_breathing

scoreboard objectives add permeffects_glowing dummy
scoreboard objectives add permeffects_darkness dummy
scoreboard objectives add permeffects_invisibility dummy
scoreboard objectives add permeffects_night_vision dummy
scoreboard objectives add permeffects_saturation dummy
scoreboard objectives add permeffects_water_breathing dummy

scoreboard players set @a permeffects_glowing 0
scoreboard players set @a permeffects_darkness 0
scoreboard players set @a permeffects_invisibility 0
scoreboard players set @a permeffects_night_vision 0
scoreboard players set @a permeffects_saturation 0
scoreboard players set @a permeffects_water_breathing 0

tellraw @a [" "]
tellraw @a [{"text":"=== Permanent Effects ===","color":"gold","bold":true}]
tellraw @a [{"text":"[Manage effects]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function permeffects:manage"}}]
tellraw @a [" "]

