scoreboard players set @n[tag=puzzle_elevator,tag=!puz.locked,scores={puzzle.value.locked=2}] puzzle.value.indicator 1
scoreboard players set @n[tag=puzzle_elevator,tag=!puz.locked,scores={puzzle.value.locked=2}] puzzle.value.temp 201
tag @n[tag=puzzle_elevator,tag=!puz.locked,scores={puzzle.value.locked=2}] add puz.locked
scoreboard players set @n[tag=puzzle_elevator] puzzle.value.locked 1
playsound puzzle:puz.elevator.open block @a ~ ~ ~ 0.3 0
playsound puzzle:puz.elevator.arrive block @a ~ ~ ~ 0.11 1