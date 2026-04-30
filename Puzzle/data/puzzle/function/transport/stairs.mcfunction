scoreboard players operation @s puzzle.value.temp = @n[type=marker,nbt={data:{puzzle_item:"stairs_teleport"}}] puzzle.value
scoreboard players operation @s puzzle.currentfloor += @n[type=marker,nbt={data:{puzzle_item:"stairs_teleport"}}] puzzle.value


## Going Up (puzzle.value.temp)
execute if score @s[scores={puzzle.value.temp=1}] puzzle.currentfloor matches 3.. run tp @s ~ ~-4 ~500 ~ ~
execute unless score @s[scores={puzzle.value.temp=1}] puzzle.currentfloor matches 2 run tp @s ~ ~-8 ~500 ~ ~

## Going down (puzzle.value.temp)
execute if score @s[scores={puzzle.value.temp=-1}] puzzle.currentfloor matches 2.. run tp @s ~ ~4 ~-500 ~ ~
execute unless score @s[scores={puzzle.value.temp=-1}] puzzle.currentfloor matches 1 run tp @s ~ ~8 ~-500 ~ ~

