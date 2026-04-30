scoreboard players operation @s puzzle.value.temp = @n[type=marker,nbt={data:{puzzle_item:"stairs_teleport"}}] puzzle.value
scoreboard players operation @s puzzle.currentfloor += @n[type=marker,nbt={data:{puzzle_item:"stairs_teleport"}}] puzzle.value

## Going Up
execute if score @s puzzle.value.temp matches 1 if score @s puzzle.currentfloor matches 3.. run tp @s ~ ~-4 ~500 ~ ~
execute if score @s puzzle.value.temp matches 1 if score @s puzzle.currentfloor matches ..2 run tp @s ~ ~-8 ~500 ~ ~

## Going Down
execute if score @s puzzle.value.temp matches -1 if score @s puzzle.currentfloor matches 2.. run tp @s ~ ~4 ~-500 ~ ~
execute if score @s puzzle.value.temp matches -1 if score @s puzzle.currentfloor matches ..1 run tp @s ~ ~8 ~-500 ~ ~