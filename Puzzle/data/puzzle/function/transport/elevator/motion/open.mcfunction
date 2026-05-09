$tag @e[nbt={data:{puzzle:"elevator"}},scores={puzzle.value=$(elevator),puzzle.value.indicator=$(floor)}] add puz.STR.$(elevator)
$execute at @e[nbt={data:{puzzle:"elevator"}},scores={puzzle.value=$(elevator),puzzle.value.indicator=$(floor)}] run playsound puzzle:puz.elevator.land block @a ~ ~ ~ 0.2 1
$schedule function puzzle:transport/elevator/motion/open/$(elevator) 40t
$schedule function puzzle:transport/elevator/motion/unlock/$(elevator) 40t
$execute as @e[tag=puzzle.elevator.panel,scores={puzzle.value.indicator=$(elevator)}] run data merge entity @s {item:{id:"minecraft:orange_dye",count:1,components:{"minecraft:item_model":"puzzle:lobby/elevator_panel_untouched"}}}