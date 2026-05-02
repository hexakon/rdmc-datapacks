tag @s add puz.temp.snkta 
execute as @e[tag=puzzle.mann.creation] if score @s puzzle.mann.playerindex = @n[tag=puz.temp.snkta] puzzle.man.playerindex run data merge entity @s {pose:"standing"}
scoreboard players set @s puzzle.mann.sneaking.temp -20
tag @s remove puz.temp.snkta