scoreboard players remove @s puzzle.value.temp 1

## This will be fixed and minimalized by me in the future -flcme 
## but for right now its fine.


$execute as @s[scores={puzzle.value.temp=150..200}] as @n[tag=puzzle_increment_1,tag=puz_door_L,scores={puzzle.value=$(index)}] at @s run tp @s ~ ~ ~0.01
$execute as @s[scores={puzzle.value.temp=150..200}] as @n[tag=puzzle_increment_1,tag=puz_door_R,scores={puzzle.value=$(index)}] at @s run tp @s ~ ~ ~-0.01

$execute as @s[scores={puzzle.value.temp=100..150}] as @n[tag=puzzle_increment_2,tag=puz_door_L,scores={puzzle.value=$(index)}] at @s run tp @s ~ ~ ~0.01
$execute as @s[scores={puzzle.value.temp=100..150}] as @n[tag=puzzle_increment_2,tag=puz_door_R,scores={puzzle.value=$(index)}] at @s run tp @s ~ ~ ~-0.01

$execute as @s[scores={puzzle.value.temp=50..100}] as @n[tag=puzzle_increment_3,tag=puz_door_L,scores={puzzle.value=$(index)}] at @s run tp @s ~ ~ ~0.01
$execute as @s[scores={puzzle.value.temp=50..100}] as @n[tag=puzzle_increment_3,tag=puz_door_R,scores={puzzle.value=$(index)}] at @s run tp @s ~ ~ ~-0.01
