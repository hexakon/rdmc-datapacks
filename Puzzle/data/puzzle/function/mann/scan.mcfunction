execute store result storage puzzle:mannstats playerindex int 1 run scoreboard players get @s puzzle.mann.playerindex
execute store result storage puzzle:mannstats index int 1 run scoreboard players get @s puzzle.mann.index
execute as @s at @s run function puzzle:mann/teleport with storage puzzle:mannstats
execute unless entity @e[type=marker,nbt={data:{puzzle:"mannequin_indicator"}},distance=..25] at @s run function puzzle:mann/disable