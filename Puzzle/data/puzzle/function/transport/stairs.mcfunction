scoreboard players set @s puzzle.teleporting 1
scoreboard players operation @s puzzle.value = @n[nbt={data:{puzzle_item:"stairs_teleport"}}] puzzle.value
scoreboard players operation @s puzzle.value.temp = @n[nbt={data:{puzzle_item:"stairs_teleport"}}] puzzle.value.temp

summon armor_stand ~ ~ ~ {Silent:1,Marker:1,NoGravity:1,Tags:["puzzle.clearspace"],Invisible:1}

execute as @s[scores={puzzle.value=1,puzzle.value.temp=1}] run tp @n[tag=puzzle.clearspace] ~ ~-8 ~500
execute as @s[scores={puzzle.value=-1,puzzle.value.temp=1}] run tp @n[tag=puzzle.clearspace] ~ ~8 ~-500
execute as @s[scores={puzzle.value=1,puzzle.value.temp=0}] run tp @n[tag=puzzle.clearspace] ~ ~-12 ~500
execute as @s[scores={puzzle.value=-1,puzzle.value.temp=0}] run tp @n[tag=puzzle.clearspace] ~ ~12 ~-500

tag @s[scores={puzzle.value=1,puzzle.value.temp=1}] add puz.transfer.1
tag @s[scores={puzzle.value=-1,puzzle.value.temp=1}] add puz.transfer.2
tag @s[scores={puzzle.value=1,puzzle.value.temp=0}] add puz.transfer.3
tag @s[scores={puzzle.value=-1,puzzle.value.temp=0}] add puz.transfer.4

schedule function puzzle:transport/stairs/after 4t




