execute store result storage puzzle:mannstats playerindex int 1 run scoreboard players get @s puzzle.mann.playerindex
execute store result storage puzzle:mannstats index int 1 run scoreboard players get @s puzzle.mann.index
execute store result storage puzzle:mannstats offsetY int 1 run scoreboard players get @s puzzle.mann.offsetY
execute store result storage puzzle:mannstats offsetZ int 1 run scoreboard players get @s puzzle.mann.offsetZ
execute store result storage puzzle:mannstats radius int 1 run scoreboard players get @s puzzle.mann.radius
execute store result storage puzzle:mannstats yaw float 1 run data get entity @s Rotation[0]

execute store result score $puzzleStyling3Scan puzzle.value run data get entity @s Pos[0] 10
scoreboard players operation $puzzleStyling3Scan puzzle.value -= @s puzzle.mann.origin
scoreboard players operation $puzzleStyling3Scan puzzle.value *= $-2 puzzle.value
scoreboard players operation $puzzleStyling3Scan puzzle.value /= $10 puzzle.value
execute store result storage puzzle:mannstats offsetX int 1 run scoreboard players get $puzzleStyling3Scan puzzle.value

execute store result score $xIncrementalPitch puzzle.value run data get entity @s Rotation[1]
scoreboard players operation $xIncrementalPitch puzzle.value *= $-1 puzzle.value
execute store result storage puzzle:mannstats pitch float 1 run scoreboard players get $xIncrementalPitch puzzle.value





execute as @s at @s run function puzzle:mann/teleport with storage puzzle:mannstats
execute unless entity @e[type=marker,nbt={data:{puzzle:"mannequin_indicator"}},distance=..10] at @s run function puzzle:mann/disable