tag @s add puz.temp.snktf
execute as @e[tag=puzzle.mann.creation] if score @s puzzle.mann.playerindex = @p[tag=puz.temp.snktf] puzzle.mann.playerindex run data merge entity @s {pose:"crouching"}
scoreboard players set @s puzzle.mann.sneaking.temp 1
tag @s remove puz.temp.snktf