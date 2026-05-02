$scoreboard players set @a[scores={puzzle.mann.playerindex=$(pIndex)}] puzzle.mann.playerindex -1
$scoreboard players set @a[scores={puzzle.mann.playerindex=$(pIndex)}] puzzle.mann.active 0
$scoreboard players set @a[scores={puzzle.mann.playerindex=$(pIndex)}] puzzle.mann.index -20
$tp @e[type=mannequin,scores={puzzle.mann.playerindex=$(pIndex)}] 0 -30 0
$kill @e[type=mannequin,scores={puzzle.mann.playerindex=$(pIndex)}]