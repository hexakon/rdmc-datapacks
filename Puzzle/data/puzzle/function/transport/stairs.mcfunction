scoreboard players operation @s puzzle.value.temp = @n[type=marker,nbt={data:{puzzle_item:"stairs_teleport"}}] puzzle.value
scoreboard players operation @s puzzle.currentfloor += @n[type=marker,nbt={data:{puzzle_item:"stairs_teleport"}}] puzzle.value

execute if score @s[scores={puzzle.value.temp=1}] puzzle.value matches 2 run tp @s ~ ~-4 ~500 ~ ~
execute unless score @s[scores={puzzle.value.temp=1}] puzzle.value matches 2 run tp @s ~ ~-8 ~500 ~ ~

execute if score @s[scores={puzzle.value.temp=-1}] puzzle.value matches 1 run tp @s ~ ~4 ~500 ~ ~
execute unless score @s[scores={puzzle.value.temp=-1}] puzzle.value matches 2 run tp @s ~ ~8 ~500 ~ ~

