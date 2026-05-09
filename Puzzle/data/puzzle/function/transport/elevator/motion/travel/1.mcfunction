execute if score ..1 puzzle.value > currentFloor.1 puzzle.value run scoreboard players add currentFloor.1 puzzle.value 1  
execute if score ..1 puzzle.value < currentFloor.1 puzzle.value run scoreboard players remove currentFloor.1 puzzle.value 1  
execute as @e[tag=puzzle.elevator.num,scores={puzzle.value=1}] run data modify entity @s text set value [{"score":{"name":"currentFloor.1","objective":"puzzle.value"},"color":"green"}]
execute at @e[tag=puzzle.elevator.num,scores={puzzle.value=1}] run playsound puzzle:puz.elevator.presence block @a ~ ~ ~ 0.01 1
execute store result storage puzzle:elevatorlight floor int 1 run scoreboard players get currentFloor.1 puzzle.value
data modify storage puzzle:elevatorlight elevator set value 1
execute as @e[tag=puzzle.light.1] run function puzzle:transport/elevator/light with storage puzzle:elevatorlight
execute if score ..1 puzzle.value = currentFloor.1 puzzle.value run schedule function puzzle:transport/elevator/motion/finish/1 2s
execute unless score ..1 puzzle.value = currentFloor.1 puzzle.value run schedule function puzzle:transport/elevator/motion/travel/1 2s
execute positioned 950020 39 -10 run playsound puzzle:puz.elevator.presence block @a[distance=..3] ~ ~ ~ 0.03 1