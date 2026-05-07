function core:wool_found/set_wool_storage {color1:"#fac123", color2:"#ffe59c", title:"Yellow Wool", blockType:"yellow_wool", branch: "Arena"}
tag @s add core.foundRecentWool
execute as @a run function core:totem_pop/run with storage woolfoundcolors
scoreboard players reset @s core.pickedUpYellowWool