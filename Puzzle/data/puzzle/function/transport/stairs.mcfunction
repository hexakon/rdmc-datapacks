scoreboard players operation @s puzzle.currentfloor += @e[type=marker,nbt={data:{puzzle_item:"stairs_teleport"}},sort=nearest,limit=1] puzzle.value
execute if score @s puzzle.value matches 2 run tp @s ~ ~-4 ~500 ~ ~
execute unless score @s puzzle.value matches 2 run tp @s ~ ~-8 ~500 ~ ~
