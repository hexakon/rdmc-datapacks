function core:wool_found/set_wool_storage {color1:"#ff4848", color2:"#ffb3b3", title:"Red Wool", blockType:"red_wool", branch: "Puzzle"}
tag @s add core.foundRecentWool
function core:totem_pop/run with storage woolfoundcolors
scoreboard players reset @s core.pickedUpRedWool