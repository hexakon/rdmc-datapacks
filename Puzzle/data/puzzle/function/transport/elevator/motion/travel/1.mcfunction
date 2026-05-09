execute if score ..1 puzzle.value > currentFloor.1 puzzle.value run scoreboard players add currentFloor.1 puzzle.value 1  
execute if score ..1 puzzle.value < currentFloor.1 puzzle.value run scoreboard players remove currentFloor.1 puzzle.value 1  
say elevator ding
execute as @e[tag=puzzle.elevator.num,scores={puzzle.value=1}] run data modify entity @s text set value [{"score":{"name":"currentFloor.1","objective":"puzzle.value"},"color":"green"}]
execute if score ..1 puzzle.value = currentFloor.1 puzzle.value run schedule function puzzle:transport/elevator/motion/finish/1 2s
execute unless score ..1 puzzle.value = currentFloor.1 puzzle.value run schedule function puzzle:transport/elevator/motion/travel/1 2s