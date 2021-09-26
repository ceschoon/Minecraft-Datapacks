
###### clean
kill @e[type=armor_stand]

####### record current position
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"map_centre\"",CustomNameVisible:0}

###### mark current player as reference player for the generation of structures
scoreboard players set @a shot_genmaster 0
scoreboard players set @s shot_genmaster 1

###### set max number of attempts at generation
scoreboard players set @s shot_gentrials 100

###### trigger building of the following structures
scoreboard players set @s shot_genhouse1 1
scoreboard players set @s shot_genhouse2 1
scoreboard players set @s shot_genhouse3 1
scoreboard players set @s shot_gentower1 1
scoreboard players set @s shot_gentower2 1
scoreboard players set @s shot_genhidden 10

