execute at @e[nbt={data:{puzzle:"elevator"}},scores={puzzle.value=1,puzzle.value.indicator=1}] as @a[distance=..2] at @s run tp @s ~ ~37 ~ ~ ~
execute at @e[nbt={data:{puzzle:"elevator"}},scores={puzzle.value=1,puzzle.value.indicator=2}] as @a[distance=..2] at @s run tp @s ~ ~32 ~-500
execute at @e[nbt={data:{puzzle:"elevator"}},scores={puzzle.value=1,puzzle.value.indicator=3}] as @a[distance=..2] at @s run tp @s ~ ~32 ~-1000
execute at @e[nbt={data:{puzzle:"elevator"}},scores={puzzle.value=1,puzzle.value.indicator=4}] as @a[distance=..2] at @s run tp @s ~ ~32 ~-1500
execute at @e[nbt={data:{puzzle:"elevator"}},scores={puzzle.value=1,puzzle.value.indicator=5}] as @a[distance=..2] at @s run tp @s ~ ~32 ~-2000
function puzzle:transport/elevator/motion/travel/1