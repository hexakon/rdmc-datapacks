execute at @e[type=marker,nbt={data:{puzzle_item:"ash_fall"}}] run particle ash ~ ~ ~ 0.7 0.11 0.7 0.24 4 force
execute at @e[type=marker,nbt={data:{puzzle_item:"stairs_teleport"}}] as @a[distance=..2.85,tag=!flcme.dev,scores={puzzle.teleporting=0}] at @s run function puzzle:transport/stairs
execute at @e[type=marker,nbt={data:{puzzle:"mannequin_indicator"}}] as @a[distance=..5] unless score @s puzzle.mann.index = @e[type=marker,nbt={data:{puzzle:"mannequin_indicator"}},distance=..5,limit=1] puzzle.mann.index run function puzzle:mann/initiate
execute as @a[scores={puzzle.mann.active=1}] at @s run function puzzle:mann/scan
execute as @e[tag=puzzle_elevator,scores={puzzle.value.temp=1..,puzzle.value.indicator=1}] at @s run function puzzle:transport/elevator/preopen_tick
execute as @e[tag=puzzle_elevator,scores={puzzle.value.temp=1..,puzzle.value.indicator=2}] at @s run function puzzle:transport/elevator/preclose_tick


execute as @e[tag=puzzle_elevator_button,nbt={interaction:{}}] at @s run function puzzle:transport/elevator/hit_button
execute at @e[nbt={data:{puzzle:"lobby_mirror"}}] if entity @a[distance=..8] run function puzzle:dev/clone_lobby



scoreboard players add @e[type=armor_stand,tag=puzzle.clearspace] puzzle.value 1
kill @e[type=armor_stand,tag=puzzle.clearspace,scores={puzzle.value=35..}]



execute as @a[tag=flcme.dev.size] run function puzzle:dev/size