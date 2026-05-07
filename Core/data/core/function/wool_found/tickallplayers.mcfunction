execute if score @s core.woolAnimationFrame matches 0.. run scoreboard players add @s core.woolAnimationFrame 1
execute if score @s core.woolAnimationFrame matches 30.. run scoreboard players reset @s core.woolAnimationFrame
execute if score @s core.pickedUpRedWool matches 1.. run function core:wool_found/unique_wools/red_wool
execute if score @s core.pickedUpYellowWool matches 1.. run function core:wool_found/unique_wools/yellow_wool
execute if score @s core.woolAnimationFrame matches 1..29 run function core:wool_found/wool_found_animation with storage woolfoundcolors