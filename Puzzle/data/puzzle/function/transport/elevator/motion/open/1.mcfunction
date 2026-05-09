execute at @e[tag=puz.STR.1] run function puzzle:transport/elevator/open
execute at @e[tag=puz.STR.1] run playsound puzzle:puz.elevator.land block @a ~ ~ ~ 0.2 1
tag @e[tag=puz.STR.1] remove puz.STR.1