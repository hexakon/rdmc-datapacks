data remove entity @s interaction
scoreboard players set $bypass puzzle.value.temp 1
execute if score @s puzzle.value matches 1 if score elevator.lock.1 puzzle.value matches 1 run scoreboard players set $bypass puzzle.value.temp 0
execute if score @s puzzle.value matches 2 if score elevator.lock.2 puzzle.value matches 1 run scoreboard players set $bypass puzzle.value.temp 0
execute if score $bypass puzzle.value.temp matches 1 run function puzzle:transport/elevator/button


