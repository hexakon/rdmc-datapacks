scoreboard players remove @s puzzle.value.temp 1

## This will be fixed and minimalized by me in the future -flcme 
## but for right now its fine.


$execute as @s[scores={puzzle.value.temp=175..200}] as @e[tag=puzzle_increment_1,tag=puz_door_L,scores={puzzle.value=$(index)}] at @s run tp @s ~-0.02 ~ ~
$execute as @s[scores={puzzle.value.temp=175..200}] as @e[tag=puzzle_increment_1,tag=puz_door_R,scores={puzzle.value=$(index)}] at @s run tp @s ~0.02 ~ ~

$execute as @s[scores={puzzle.value.temp=150..175}] as @e[tag=puzzle_increment_2,tag=puz_door_L,scores={puzzle.value=$(index)}] at @s run tp @s ~-0.02 ~ ~
$execute as @s[scores={puzzle.value.temp=150..175}] as @e[tag=puzzle_increment_2,tag=puz_door_R,scores={puzzle.value=$(index)}] at @s run tp @s ~0.02 ~ ~

$execute as @s[scores={puzzle.value.temp=125..150}] as @e[tag=puzzle_increment_3,tag=puz_door_L,scores={puzzle.value=$(index)}] at @s run tp @s ~-0.02 ~ ~
$execute as @s[scores={puzzle.value.temp=125..150}] as @e[tag=puzzle_increment_3,tag=puz_door_R,scores={puzzle.value=$(index)}] at @s run tp @s ~0.02 ~ ~


$execute as @s[scores={puzzle.value.temp=195}] as @e[tag=puzzle_increment_2,scores={puzzle.value=$(index)}] at @s run tp @s ~ ~0.001 ~0.001
$execute as @s[scores={puzzle.value.temp=195}] as @e[tag=puzzle_increment_3,scores={puzzle.value=$(index)}] at @s run tp @s ~ ~0.002 ~0.001

$execute as @s[scores={puzzle.value.temp=66}] as @e[tag=puzzle_increment_2,scores={puzzle.value=$(index)}] at @s run tp @s ~ ~-0.001 ~-0.001
$execute as @s[scores={puzzle.value.temp=66}] as @e[tag=puzzle_increment_3,scores={puzzle.value=$(index)}] at @s run tp @s ~ ~-0.002 ~-0.001



execute as @s[scores={puzzle.value.temp=1..5}] run tag @s remove puz.locked