execute positioned ~ ~1 ~2 run scoreboard players set @n[distance=..2,tag=puzzle_elevator,tag=!puz.locked,scores={puzzle.value.locked=1}] puzzle.value.indicator 2
execute positioned ~ ~1 ~2 run scoreboard players set @n[distance=..2,tag=puzzle_elevator,tag=!puz.locked,scores={puzzle.value.locked=1}] puzzle.value.temp 201
execute positioned ~ ~1 ~2 run tag @n[distance=..2,tag=puzzle_elevator,tag=!puz.locked,scores={puzzle.value.locked=1}] add puz.locked
execute positioned ~ ~1 ~2 run scoreboard players set @n[distance=..2,tag=puzzle_elevator] puzzle.value.locked 2
execute positioned ~ ~1 ~2 run playsound puzzle:puz.elevator.close block @a ~ ~ ~ 0.3 0.844