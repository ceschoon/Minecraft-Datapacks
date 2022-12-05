
# display menu (non-existent yet)
#tellraw @a[scores={cmenu_show=1..}] [{"text":"[Show menu: Dark Dungeons]","color":"aqua", "clickEvent":{"action":"run_command","value":"/function ddungeons:menu"}}]

execute if entity @a[scores={ddungeons_On=1}] run function ddungeons:main2

#execute in ccwg:void run function ddungeons:0_1000_200/main
#execute in ccwg:void run function ddungeons:0_2000_200/main
#execute in ccwg:void run function ddungeons:0_3000_200/main
#execute in ccwg:void run function ddungeons:0_4000_200/main
#execute in ccwg:void run function ddungeons:0_5000_200/main
#execute in ccwg:void run function ddungeons:0_6000_200/main
#execute in ccwg:void run function ddungeons:0_7000_200/main
#execute in ccwg:void run function ddungeons:0_8000_200/main
