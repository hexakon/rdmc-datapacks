execute as @s[scores={puzzle.mann.styling=1}] at @s run function puzzle:mann/scans/basic
execute as @s[scores={puzzle.mann.styling=2}] at @s run function puzzle:mann/scans/basic
execute as @s[scores={puzzle.mann.styling=3}] at @s run function puzzle:mann/scans/y_incremental
execute as @s[scores={puzzle.man.sneaking=1..,puzzle.mann.sneaking.temp=..1}] at @s run function puzzle:mann/actions/sneak
execute as @s[scores={puzzle.man.sneaking=..1,puzzle.mann.sneaking.temp=1..}] at @s run function puzzle:mann/actions/unsneak
scoreboard players set @s puzzle.mann.sneaking 0