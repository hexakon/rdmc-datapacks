execute store result storage puzzle:mannstats playerindex int 1 run scoreboard players get @s puzzle.mann.playerindex
execute store result storage puzzle:mannstats index int 1 run scoreboard players get @s puzzle.mann.index
execute store result storage puzzle:mannstats offsetX int 1 run scoreboard players get @s puzzle.mann.offsetX
execute store result storage puzzle:mannstats offsetY int 1 run scoreboard players get @s puzzle.mann.offsetY
execute store result storage puzzle:mannstats offsetZ int 1 run scoreboard players get @s puzzle.mann.offsetZ
execute store result storage puzzle:mannstats radius int 1 run scoreboard players get @s puzzle.mann.radius

execute as @s at @s run function puzzle:mann/teleports/basic with storage puzzle:mannstats
execute unless entity @e[type=marker,nbt={data:{puzzle:"mannequin_indicator"}},distance=..10] at @s run function puzzle:mann/disable