
scoreboard objectives remove pltf_DeathCount
scoreboard objectives remove pltf_AddScore
scoreboard objectives remove pltf_Score
scoreboard objectives remove pltf_DelayEmrld
scoreboard objectives remove pltf_DelayDiamd
scoreboard objectives remove pltf_DelayWool
scoreboard objectives remove pltf_DelayFire1
scoreboard objectives remove pltf_DelayFire2
scoreboard objectives remove pltf_CountFire1
scoreboard objectives remove pltf_CountFire2
scoreboard objectives remove pltf_SummonFire
scoreboard objectives remove pltf_On

scoreboard objectives add pltf_DeathCount deathCount
scoreboard objectives add pltf_AddScore dummy
scoreboard objectives add pltf_Score dummy "Diamonds"
scoreboard objectives add pltf_DelayEmrld dummy
scoreboard objectives add pltf_DelayDiamd dummy
scoreboard objectives add pltf_DelayWool dummy
scoreboard objectives add pltf_DelayFire1 dummy
scoreboard objectives add pltf_DelayFire2 dummy
scoreboard objectives add pltf_CountFire1 dummy
scoreboard objectives add pltf_CountFire2 dummy
scoreboard objectives add pltf_SummonFire dummy
scoreboard objectives add pltf_On dummy

scoreboard players set @a pltf_On 0

scoreboard objectives remove pltf_rng
scoreboard objectives add pltf_rng minecraft.custom:minecraft.walk_one_cm
scoreboard players set @a pltf_rng 0

scoreboard objectives remove pltf_nofireballs
scoreboard objectives add pltf_nofireballs dummy
scoreboard players set @a pltf_nofireballs 0

team remove pltf_team1
team remove pltf_team2
team remove pltf_team3
team remove pltf_team4

team add pltf_team1
team add pltf_team2
team add pltf_team3
team add pltf_team4

team modify pltf_team1 color green
team modify pltf_team2 color red
team modify pltf_team3 color blue
team modify pltf_team4 color yellow

say "Cedric Platforms: reloaded"
