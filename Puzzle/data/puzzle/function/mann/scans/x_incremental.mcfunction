execute store result storage puzzle:mannstats playerindex int 1 run scoreboard players get @s puzzle.mann.playerindex
execute store result storage puzzle:mannstats index int 1 run scoreboard players get @s puzzle.mann.index
execute store result storage puzzle:mannstats offsetX int 1 run scoreboard players get @s puzzle.mann.offsetX
execute store result storage puzzle:mannstats offsetZ int 1 run scoreboard players get @s puzzle.mann.offsetZ
execute store result storage puzzle:mannstats radius int 1 run scoreboard players get @s puzzle.mann.radius
execute store result storage puzzle:mannstats yaw float 1 run data get entity @s Rotation[0]


execute store result score $xIncremental puzzle.value.temp run data get entity @s Pos[0] 10
scoreboard players operation $xIncremental puzzle.value.temp *= $xIncremental puzzle.value
scoreboard players operation $xIncremental puzzle.value.temp -= @s puzzle.mann.incremental
execute as @s[scores={puzzle.mann.jump=1..}] run scoreboard players operation $xIncremental puzzle.value.temp -= $xIncrementalC puzzle.value

execute store result score $xIncrementalPitch puzzle.value run data get entity @s Rotation[1]
scoreboard players operation $xIncrementalPitch puzzle.value *= $xIncremental puzzle.value





execute as @s[scores={puzzle.mann.jump=1..}] run scoreboard players add @s puzzle.mann.jump.temp 1
execute as @s[scores={puzzle.mann.jump.temp=7..}] run scoreboard players set @s puzzle.mann.jump 0
execute as @s[scores={puzzle.mann.jump.temp=7..}] run scoreboard players set @s puzzle.mann.jump.temp 0


execute store result storage puzzle:mannstats offsetX double 0.1 run scoreboard players get $xIncremental puzzle.value.temp
execute store result storage puzzle:mannstats pitch float 1 run scoreboard players get $xIncrementalPitch puzzle.value


execute as @s at @s run function puzzle:mann/teleport with storage puzzle:mannstats
execute unless entity @e[type=marker,nbt={data:{puzzle:"mannequin_indicator"}},distance=..10] at @s run function puzzle:mann/disable