execute if score ..2 puzzle.value > currentFloor.2 puzzle.value run scoreboard players add currentFloor.2 puzzle.value 1  
execute if score ..2 puzzle.value < currentFloor.2 puzzle.value run scoreboard players remove currentFloor.2 puzzle.value 1  
say elevator ding
execute as @e[tag=puzzle.elevator.num,scores={puzzle.value=2}] run data modify entity @s text set value [{"score":{"name":"currentFloor.2","objective":"puzzle.value"},"color":"green"}]
execute if score ..2 puzzle.value = currentFloor.2 puzzle.value run schedule function puzzle:transport/elevator/motion/finish/2 2s
execute unless score ..2 puzzle.value = currentFloor.2 puzzle.value run schedule function puzzle:transport/elevator/motion/travel/2 2s