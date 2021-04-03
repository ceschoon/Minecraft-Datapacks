
# Place armor stands

execute if entity @s[scores={laby_maze=0}] run function laby:mazes/example
execute if entity @s[scores={laby_maze=1}] run function laby:mazes/maze1
execute if entity @s[scores={laby_maze=2}] run function laby:mazes/maze2
execute if entity @s[scores={laby_maze=3}] run function laby:mazes/maze3
execute if entity @s[scores={laby_maze=4}] run function laby:mazes/maze4
execute if entity @s[scores={laby_maze=5}] run function laby:mazes/maze5
execute if entity @s[scores={laby_maze=6}] run function laby:mazes/maze6
execute if entity @s[scores={laby_maze=7}] run function laby:mazes/maze7
execute if entity @s[scores={laby_maze=8}] run function laby:mazes/maze8
execute if entity @s[scores={laby_maze=9}] run function laby:mazes/maze9


# Build structure

execute if entity @s[scores={laby_palette=0}] run function laby:build/example
execute if entity @s[scores={laby_palette=1}] run function laby:build/build1
execute if entity @s[scores={laby_palette=2}] run function laby:build/build2
execute if entity @s[scores={laby_palette=3}] run function laby:build/build3
execute if entity @s[scores={laby_palette=4}] run function laby:build/build4
execute if entity @s[scores={laby_palette=5}] run function laby:build/build5
execute if entity @s[scores={laby_palette=6}] run function laby:build/build6
execute if entity @s[scores={laby_palette=7}] run function laby:build/build7
execute if entity @s[scores={laby_palette=8}] run function laby:build/build8
execute if entity @s[scores={laby_palette=9}] run function laby:build/build9


# Clean (kill armor stands)

kill @e[type=armor_stand,name="mazeunit400"]
kill @e[type=armor_stand,name="mazeunit330"]
kill @e[type=armor_stand,name="mazeunit320"]
kill @e[type=armor_stand,name="mazeunit310"]
kill @e[type=armor_stand,name="mazeunit300"]
kill @e[type=armor_stand,name="mazeunit230"]
kill @e[type=armor_stand,name="mazeunit220"]
kill @e[type=armor_stand,name="mazeunit210"]
kill @e[type=armor_stand,name="mazeunit200"]
kill @e[type=armor_stand,name="mazeunit110"]
kill @e[type=armor_stand,name="mazeunit100"]
kill @e[type=armor_stand,name="mazeunit40"]
kill @e[type=armor_stand,name="mazeunit30"]
kill @e[type=armor_stand,name="mazeunit20"]
kill @e[type=armor_stand,name="mazeunit10"]
kill @e[type=armor_stand,name="mazeunit0"]

