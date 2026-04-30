execute as @a[tag=puz.transfer.1] at @s run tp @s ~ ~-8 ~500
execute as @a[tag=puz.transfer.2] at @s run tp @s ~ ~8 ~-500
execute as @a[tag=puz.transfer.3] at @s run tp @s ~ ~-12 ~500
execute as @a[tag=puz.transfer.4] at @s run tp @s ~ ~12 ~-500
tag @a remove puz.transfer.1
tag @a remove puz.transfer.2
tag @a remove puz.transfer.3
tag @a remove puz.transfer.4
scoreboard players set @a player.teleporting 0
kill @e[tag=puzzle.clearspace]