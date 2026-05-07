title @s times 0 50 0

# Title Animation
$execute if score @s core.woolAnimationFrame matches 1 run title @s title {"text":"$(title)!","color":"$(color1)","bold":true}
$execute if score @s core.woolAnimationFrame matches 3 run title @s title {"text":"$(title)!","color":"$(color2)","bold":true}
$execute if score @s core.woolAnimationFrame matches 5 run title @s title {"text":"$(title)!","color":"$(color1)","bold":true}
$execute if score @s core.woolAnimationFrame matches 7 run title @s title {"text":"$(title)!","color":"$(color2)","bold":true}
$execute if score @s core.woolAnimationFrame matches 9 run title @s title {"text":"$(title)!","color":"$(color1)","bold":true}
$execute if score @s core.woolAnimationFrame matches 11 run title @s title {"text":"$(title)!","color":"$(color2)","bold":true}
$execute if score @s core.woolAnimationFrame matches 13 run title @s title {"text":"$(title)!","color":"$(color1)","bold":true}
$execute if score @s core.woolAnimationFrame matches 15 run title @s title {"text":"$(title)!","color":"$(color2)","bold":true}
$execute if score @s core.woolAnimationFrame matches 17 run title @s title {"text":"$(title)!","color":"$(color1)","bold":true}
$execute if score @s core.woolAnimationFrame matches 19 run title @s title {"text":"$(title)!","color":"$(color2)","bold":true}
$execute if score @s core.woolAnimationFrame matches 21 run title @s title {"text":"$(title)!","color":"$(color1)","bold":true}

# Subtitle
$execute if score @s core.woolAnimationFrame matches 1..28 run title @s subtitle [{"text":"$(branch) Branch Completed!","color":"white","bold":false}]

execute if score @s core.woolAnimationFrame matches 29 run title @s subtitle {"text":""}
execute if score @s core.woolAnimationFrame matches 29 run title @s title {"text":""}
execute if score @s core.woolAnimationFrame matches 29 run function core:wool_found/clear_wool_storage