summon marker ~ ~ ~ {Tags:["puzzle_elevator","puz_elevator_setup_index"]}

summon minecraft:item_display ~-0.25 ~ ~ {brightness:{block:15,sky:15},Tags:["puz_door_L","puz_door_setup_L","puz_elevator_setup_index","puzzle_increment_1","puzzle_increment_2","puzzle_increment_3"],item: {components: {"minecraft:item_model": "puzzle:lobby/elevator_door"}, count: 1, id: "minecraft:orange_dye"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 1.0f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:item_display ~-0.75 ~ ~ {brightness:{block:15,sky:15},Tags:["puz_door_L","puz_door_setup_L","puz_elevator_setup_index","puzzle_increment_1","puzzle_increment_2"],item: {components: {"minecraft:item_model": "puzzle:lobby/elevator_door"}, count: 1, id: "minecraft:orange_dye"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 1.0f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:item_display ~-1.25 ~ ~ {brightness:{block:15,sky:15},Tags:["puz_door_L","puz_door_setup_L","puz_elevator_setup_index","puzzle_increment_1"],item: {components: {"minecraft:item_model": "puzzle:lobby/elevator_door"}, count: 1, id: "minecraft:orange_dye"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 1.0f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}

summon minecraft:item_display ~0.25 ~ ~ {brightness:{block:15,sky:15},Tags:["puz_door_R","puz_door_setup_R","puz_elevator_setup_index","puzzle_increment_1","puzzle_increment_2","puzzle_increment_3"],item: {components: {"minecraft:item_model": "puzzle:lobby/elevator_door"}, count: 1, id: "minecraft:orange_dye"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 1.0f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:item_display ~0.75 ~ ~ {brightness:{block:15,sky:15},Tags:["puz_door_R","puz_door_setup_R","puz_elevator_setup_index","puzzle_increment_1","puzzle_increment_2"],item: {components: {"minecraft:item_model": "puzzle:lobby/elevator_door"}, count: 1, id: "minecraft:orange_dye"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 1.0f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:item_display ~1.25 ~ ~ {brightness:{block:15,sky:15},Tags:["puz_door_R","puz_door_setup_R","puz_elevator_setup_index","puzzle_increment_1"],item: {components: {"minecraft:item_model": "puzzle:lobby/elevator_door"}, count: 1, id: "minecraft:orange_dye"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 1.0f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}}

scoreboard players add $elevatorDoorIndex puzzle.value 1
scoreboard players operation @e[tag=puz_elevator_setup_index] puzzle.value = $elevatorDoorIndex puzzle.value
scoreboard players set @e[tag=puz_door_setup_L] puzzle.value.indicator -1
scoreboard players set @e[tag=puz_door_setup_R] puzzle.value.indicator 1
scoreboard players set @n[tag=puzzle_elevator] puzzle.value.locked 2
tag @e remove puz_elevator_setup_index
tag @e remove puz_door_setup_L
tag @e remove puz_door_setup_R
