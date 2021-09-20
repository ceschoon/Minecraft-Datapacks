
####### record current position
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,CustomName:"\"temp\"",CustomNameVisible:0}


####### build villager house (hut)
execute if entity @s[scores={shot_genhouse1=1}] at @s run spreadplayers ~ ~ 180 180 false @s
execute if entity @s[scores={shot_genhouse1=1}] at @s if block ~ ~-1 ~ grass_block run scoreboard players set @a shot_genhouse1 2
execute if entity @s[scores={shot_genhouse1=2}] at @s run setblock ~ ~-2 ~ structure_block[mode=load]{author:"?",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"shot:villager_house_1",posX:-4,posY:-10,posZ:-4,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b}
execute if entity @s[scores={shot_genhouse1=2}] at @s run setblock ~ ~-1 ~ redstone_block
execute if entity @s[scores={shot_genhouse1=1..2}] at @e[type=armor_stand,name=temp] run tp @s ~ ~ ~


####### build villager house (armorer)
execute if entity @s[scores={shot_genhouse2=1}] at @s run spreadplayers ~ ~ 180 180 false @s
execute if entity @s[scores={shot_genhouse2=1}] at @s if block ~ ~-1 ~ grass_block run scoreboard players set @a shot_genhouse2 2
execute if entity @s[scores={shot_genhouse2=2}] at @s run setblock ~ ~-2 ~ structure_block[mode=load]{author:"?",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"shot:villager_house_2",posX:-8,posY:-9,posZ:-7,powered:0b,rotation:"CLOCKWISE_270",seed:0L,showair:0b,showboundingbox:0b}
execute if entity @s[scores={shot_genhouse2=2}] at @s run setblock ~ ~-1 ~ redstone_block
execute if entity @s[scores={shot_genhouse2=1..2}] at @e[type=armor_stand,name=temp] run tp @s ~ ~ ~


####### build villager house (wooden)
execute if entity @s[scores={shot_genhouse3=1}] at @s run spreadplayers ~ ~ 180 180 false @s
execute if entity @s[scores={shot_genhouse3=1}] at @s if block ~ ~-1 ~ grass_block run scoreboard players set @a shot_genhouse3 2
execute if entity @s[scores={shot_genhouse3=2}] at @s run setblock ~ ~-2 ~ structure_block[mode=load]{author:"?",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"shot:villager_house_3",posX:-9,posY:-8,posZ:-8,powered:0b,rotation:"CLOCKWISE_90",seed:0L,showair:0b,showboundingbox:0b}
execute if entity @s[scores={shot_genhouse3=2}] at @s run setblock ~ ~-1 ~ redstone_block
execute if entity @s[scores={shot_genhouse3=1..2}] at @e[type=armor_stand,name=temp] run tp @s ~ ~ ~


# Note: build towers last so that it cannot be built over

####### build platform tower
execute if entity @s[scores={shot_gentower1=1}] at @s run spreadplayers ~-80 ~ 30 30 false @s
execute if entity @s[scores={shot_gentower1=1}] at @s if block ~ ~-1 ~ grass_block run scoreboard players set @a shot_gentower1 2
execute if entity @s[scores={shot_gentower1=2}] at @s run setblock ~ ~-2 ~ structure_block[mode=load]{author:"?",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"shot:tower_platform",posX:-5,posY:-11,posZ:-5,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b}
execute if entity @s[scores={shot_gentower1=2}] at @s run setblock ~ ~-1 ~ redstone_block
execute if entity @s[scores={shot_gentower1=1..2}] at @e[type=armor_stand,name=temp] run tp @s ~ ~ ~


####### build generator tower
execute if entity @s[scores={shot_gentower2=1}] at @s run spreadplayers ~80 ~ 30 30 false @s
execute if entity @s[scores={shot_gentower2=1}] at @s if block ~ ~-1 ~ grass_block run scoreboard players set @a shot_gentower2 2
execute if entity @s[scores={shot_gentower2=2}] at @s run setblock ~ ~-2 ~ structure_block[mode=load]{author:"?",ignoreEntities:0b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"shot:tower_generator",posX:-5,posY:-11,posZ:-5,powered:0b,rotation:"CLOCKWISE_180",seed:0L,showair:0b,showboundingbox:0b}
execute if entity @s[scores={shot_gentower2=2}] at @s run setblock ~ ~-1 ~ redstone_block
execute if entity @s[scores={shot_gentower2=1..2}] at @e[type=armor_stand,name=temp] run tp @s ~ ~ ~


####### clean
kill @e[type=armor_stand,name=temp]
