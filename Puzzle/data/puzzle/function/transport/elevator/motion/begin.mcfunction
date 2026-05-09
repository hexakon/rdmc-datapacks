$execute at @e[nbt={data:{puzzle:"elevator"}},scores={puzzle.value=$(elevator),puzzle.value.indicator=$(floor)}] run function puzzle:transport/elevator/close
$scoreboard players set ..$(elevator) puzzle.value $(floor)
$schedule function puzzle:transport/elevator/motion/teleport/$(elevator) 88t