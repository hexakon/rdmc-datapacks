scoreboard players set @a[scores={puzzle.mann.playerindex=$p}] puzzle.mann.playerindex -1
scoreboard players set @a[scores={puzzle.mann.playerindex=$p}] puzzle.mann.active 0
tp @e[type=mannequin,scores={puzzle.mann.playerindex=$p}] 0 -30 0
kill @e[type=mannequin,scores={puzzle.mann.playerindex=$p}]