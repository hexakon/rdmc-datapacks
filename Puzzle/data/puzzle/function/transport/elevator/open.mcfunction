execute positioned ~ ~1 ~2 run scoreboard players set @n[distance=..2,tag=puzzle_elevator,tag=!puz.locked,scores={puzzle.value.locked=2}] puzzle.value.indicator 1
execute positioned ~ ~1 ~2 run scoreboard players set @n[distance=..2,tag=puzzle_elevator,tag=!puz.locked,scores={puzzle.value.locked=2}] puzzle.value.temp 201
execute positioned ~ ~1 ~2 run tag @n[distance=..2,tag=puzzle_elevator,tag=!puz.locked,scores={puzzle.value.locked=2}] add puz.locked
execute positioned ~ ~1 ~2 run scoreboard players set @n[distance=..2,tag=puzzle_elevator] puzzle.value.locked 1
execute positioned ~ ~1 ~2 run playsound puzzle:puz.elevator.open block @a ~ ~ ~ 0.3 0
execute positioned ~ ~1 ~2 run playsound puzzle:puz.elevator.arrive block @a ~ ~ ~ 0.11 1
execute positioned ~ ~1 ~2 run fill ~-1 ~-1 ~ ~1 ~1 ~ air replace barrier
