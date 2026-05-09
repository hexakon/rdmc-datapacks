$execute at @e[nbt={data:{puzzle:"elevator"}},scores={puzzle.value=$(elevator)}] run function puzzle:transport/elevator/close
$scoreboard players set ..$(elevator) puzzle.value $(floor)
$scoreboard players set elevator.lock.$(elevator) puzzle.value 1
$execute as @e[tag=puzzle.elevator.panel,scores={puzzle.value.indicator=$(elevator)}] run data merge entity @s {item:{id:"minecraft:orange_dye",count:1,components:{"minecraft:item_model":"puzzle:lobby/elevator_panel_$(floor)"}}}
$schedule function puzzle:transport/elevator/motion/teleport/$(elevator) 88t