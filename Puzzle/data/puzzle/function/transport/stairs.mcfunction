scoreboard players operation @s puzzle.value = @n[nbt={data:{puzzle_item:"stairs_teleport"}}] puzzle.value
scoreboard players operation @s puzzle.value.temp = @n[nbt={data:{puzzle_item:"stairs_teleport"}}] puzzle.value.temp

tp @s[scores={puzzle.value=1,puzzle.value.temp=1}] ~ ~-8 ~500
tp @s[scores={puzzle.value=-1,puzzle.value.temp=1}] ~ ~8 ~-500
tp @s[scores={puzzle.value=1,puzzle.value.temp=0}] ~ ~-12 ~500
tp @s[scores={puzzle.value=-1,puzzle.value.temp=0}] ~ ~12 ~-500

scoreboard players set @s puzzle.value 0
scoreboard players set @s puzzle.value.temp 0