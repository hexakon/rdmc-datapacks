execute if score ..2 puzzle.value > currentFloor.2 puzzle.value run scoreboard players add currentFloor.2 puzzle.value 1  
execute if score ..2 puzzle.value < currentFloor.2 puzzle.value run scoreboard players remove currentFloor.2 puzzle.value 1  
execute as @e[tag=puzzle.elevator.num,scores={puzzle.value=2}] run data modify entity @s text set value [{"score":{"name":"currentFloor.2","objective":"puzzle.value"},"color":"green"}]
execute at @e[tag=puzzle.elevator.num,scores={puzzle.value=2}] run playsound puzzle:puz.elevator.presence block @a ~ ~ ~ 0.01 1
execute if score ..2 puzzle.value = currentFloor.2 puzzle.value run schedule function puzzle:transport/elevator/motion/finish/2 2s
execute unless score ..2 puzzle.value = currentFloor.2 puzzle.value run schedule function puzzle:transport/elevator/motion/travel/2 2s
execute positioned 950024 39 -10 run playsound puzzle:puz.elevator.presence block @a[distance=..3] ~ ~ ~ 0.03 1