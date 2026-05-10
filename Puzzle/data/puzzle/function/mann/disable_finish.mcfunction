$scoreboard players set @a[scores={puzzle.mann.playerindex=$(pIndex)}] puzzle.mann.playerindex -1
$scoreboard players set @a[scores={puzzle.mann.playerindex=$(pIndex)}] puzzle.mann.active 0
$scoreboard players set @a[scores={puzzle.mann.playerindex=$(pIndex)}] puzzle.mann.index -20
forceload add 900444 900444
$tp @e[type=mannequin,scores={puzzle.mann.playerindex=$(pIndex)}] 900444 44 900444
$kill @e[type=mannequin,scores={puzzle.mann.playerindex=$(pIndex)}]
schedule function puzzle:mann/disable_clearspace 40t replace