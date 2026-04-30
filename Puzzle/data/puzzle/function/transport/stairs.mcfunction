scoreboard players operation @s puzzle.value = @n[nbt={data:{puzzle_item:"stairs_teleport"}}] puzzle.value
scoreboard players operation @s puzzle.value.temp = @n[nbt={data:{puzzle_item:"stairs_teleport"}}] puzzle.value.temp

tp ZmKvoiiA887240ZM ~ ~-8 ~500
execute as @s[scores={puzzle.value=1,puzzle.value.temp=1}] run tp flcmeflcmeZflcme ~ ~-8 ~500
execute as @s[scores={puzzle.value=-1,puzzle.value.temp=1}] run tp flcmeflcmeZflcme ~ ~8 ~-500
execute as @s[scores={puzzle.value=1,puzzle.value.temp=0}] run tp flcmeflcmeZflcme ~ ~-12 ~500
execute as @s[scores={puzzle.value=-1,puzzle.value.temp=0}] run tp flcmeflcmeZflcme ~ ~12 ~-500

tag @s[scores={puzzle.value=1,puzzle.value.temp=1}] add puz.transfer.1
tag @s[scores={puzzle.value=-1,puzzle.value.temp=1}] add puz.transfer.2
tag @s[scores={puzzle.value=1,puzzle.value.temp=0}] add puz.transfer.3
tag @s[scores={puzzle.value=-1,puzzle.value.temp=0}] add puz.transfer.4

schedule function puzzle:transport/stairs/after 16t




