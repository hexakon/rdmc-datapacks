execute if score currentFloor.2 puzzle.value matches 1 positioned 950024 37 -10 as @a[distance=..2] at @s run tp @s ~ ~-37 ~ ~ ~
execute if score currentFloor.2 puzzle.value matches 2 positioned 950024 37 -10 as @a[distance=..2] at @s run tp @s ~ ~-32 ~500
execute if score currentFloor.2 puzzle.value matches 3 positioned 950024 37 -10 as @a[distance=..2] at @s run tp @s ~ ~-32 ~1000
execute if score currentFloor.2 puzzle.value matches 4 positioned 950024 37 -10 as @a[distance=..2] at @s run tp @s ~ ~-32 ~1500
execute if score currentFloor.2 puzzle.value matches 5 positioned 950024 37 -10 as @a[distance=..2] at @s run tp @s ~ ~-32 ~2000
execute store result storage puzzle:elevatorland floor int 1 run scoreboard players get currentFloor.2 puzzle.value
data modify storage puzzle:elevatorland elevator set value 2
function puzzle:transport/elevator/motion/open with storage puzzle:elevatorland