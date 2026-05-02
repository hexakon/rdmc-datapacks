execute store result storage puzzle:mannstats playerindex int 1 run scoreboard players get @s puzzle.mann.playerindex
execute store result storage puzzle:mannstats index int 1 run scoreboard players get @s puzzle.mann.index
execute store result storage puzzle:mannstats offsetX int 1 run scoreboard players get @s puzzle.mann.offsetX
execute store result storage puzzle:mannstats offsetZ int 1 run scoreboard players get @s puzzle.mann.offsetZ
execute store result storage puzzle:mannstats radius int 1 run scoreboard players get @s puzzle.mann.radius

execute store result score $yIncremental puzzle.value.temp run data get entity @s Pos[1] 10
scoreboard players operation $yIncremental puzzle.value.temp *= $yIncremental puzzle.value
scoreboard players operation $yIncremental puzzle.value.temp -= $yIncrementalB puzzle.value
execute store result storage puzzle:mannstats offsetY double 0.1 run scoreboard players get $yIncremental puzzle.value.temp





execute as @s at @s run function puzzle:mann/teleport with storage puzzle:mannstats
execute unless entity @e[type=marker,nbt={data:{puzzle:"mannequin_indicator"}},distance=..10] at @s run function puzzle:mann/disable