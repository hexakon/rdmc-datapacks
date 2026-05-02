
## Copy offset values for mannequin teleports.
scoreboard players operation @s puzzle.mann.index = @n[type=marker,nbt={data:{puzzle:"mannequin_indicator"}}] puzzle.mann.index
scoreboard players operation @s puzzle.mann.styling = @n[type=marker,nbt={data:{puzzle:"mannequin_indicator"}}] puzzle.mann.styling
scoreboard players operation @s puzzle.mann.offsetX = @n[type=marker,nbt={data:{puzzle:"mannequin_indicator"}}] puzzle.mann.offsetX
scoreboard players operation @s puzzle.mann.offsetY = @n[type=marker,nbt={data:{puzzle:"mannequin_indicator"}}] puzzle.mann.offsetY
scoreboard players operation @s puzzle.mann.offsetZ = @n[type=marker,nbt={data:{puzzle:"mannequin_indicator"}}] puzzle.mann.offsetZ
scoreboard players operation @s puzzle.mann.radius = @n[type=marker,nbt={data:{puzzle:"mannequin_indicator"}}] puzzle.mann.radius
scoreboard players set @s puzzle.mann.active 1

## Give our player and their mannequin a unique index.
scoreboard players add $pzlManIndexOffset puzzle.value 1
scoreboard players operation @s puzzle.mann.playerindex = $pzlManIndexOffset puzzle.value

## Mannequon summoning
execute positioned ~ ~-2 ~ unless entity @s[scores={puzzle.mann.styling=2}] run summon mannequin ~ ~ ~ {Tags:["puzzle.mann.creation","puzzle.flcme.clone"],Invulnerable:1,Silent:1,NoGravity:1}
execute positioned ~ ~-2 ~ as @s[scores={puzzle.mann.styling=2}] run summon mannequin ~ ~ ~ {CustomName:"Dinnerbone",Tags:["puzzle.mann.creation","puzzle.flcme.clone"],Invulnerable:1,Silent:1,NoGravity:1}
execute positioned ~ ~-2 ~ as @s[scores={puzzle.mann.styling=3}] run summon mannequin ~ ~ ~ {CustomName:"Dinnerbone",Tags:["puzzle.mann.creation","puzzle.flcme.clone"],Invulnerable:1,Silent:1,NoGravity:1}
execute positioned ~ ~-2 ~ run data modify entity @n[tag=puzzle.mann.creation] profile."id" set from entity @s UUID
execute positioned ~ ~-2 ~ run scoreboard players operation @n[tag=puzzle.mann.creation] puzzle.mann.playerindex = @s puzzle.mann.playerindex