summon minecraft:item_display ~1 ~0.61 ~0.5001 {item: {components: {"minecraft:item_model": "puzzle:lobby/elevator_numberpanel"}, count: 1, id: "minecraft:orange_dye"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2,2,2], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:text_display ~1 ~-0.25 ~-0.50 {Tags:["puzzle.elevator.num"],alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {color: "green", text: "5"}, text_opacity: -1b, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
scoreboard players operation @n[tag=puzzle.elevator.num] puzzle.value = $dev puzzle.value


