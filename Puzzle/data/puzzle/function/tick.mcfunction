execute at @e[type=marker,nbt={data:{puzzle_item:"ash_fall"}}] run particle ash ~ ~ ~ 0.7 0.11 0.7 0.24 4 force
execute at @e[type=marker,nbt={data:{puzzle_item:"stairs_teleport"}}] as @a[distance=..2.85,scores={puzzle.teleporting=0}] at @s run function puzzle:transport/stairs
execute at @e[type=marker,nbt={data:{puzzle:"mannequin_indicator"}}] as @a[distance=..5] unless score @s puzzle.mann.index = @e[type=marker,nbt={data:{puzzle:"mannequin_indicator"}},distance=..5,limit=1] puzzle.mann.index run function puzzle:mann/initiate
execute as @a[scores={puzzle.mann.active=1}] at @s run function puzzle:mann/scan




scoreboard players add @e[type=armor_stand,tag=puzzle.clearspace] puzzle.value 1
kill @e[type=armor_stand,tag=puzzle.clearspace,scores={puzzle.value=35..}]