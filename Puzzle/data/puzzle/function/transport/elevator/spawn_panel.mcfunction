summon minecraft:item_display ~-0.001 ~1 ~ {item: {components: {"minecraft:item_model": "puzzle:lobby/elevator_panel_untouched"}, count: 1, id: "minecraft:orange_dye"}, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.99999994f, 1.0000001f, 0.99999994f], translation: [0.0f, 0.0f, 0.0f]}}

summon minecraft:interaction ~0.575 ~0.653 ~0.1255 {Tags:["puzzle_elevator_button","puz_el_assign_floor_1"],width:0.3125f,height:0.25f}
summon minecraft:interaction ~0.575 ~0.9053 ~0.1255 {Tags:["puzzle_elevator_button","puz_el_assign_floor_2"],width:0.3125f,height:0.25f}
summon minecraft:interaction ~0.575 ~1.1576 ~0.1255 {Tags:["puzzle_elevator_button","puz_el_assign_floor_3"],width:0.3125f,height:0.25f}
summon minecraft:interaction ~0.575 ~1.4099 ~0.1255 {Tags:["puzzle_elevator_button","puz_el_assign_floor_4"],width:0.3125f,height:0.25f}
summon minecraft:interaction ~0.575 ~1.6622 ~0.1255 {Tags:["puzzle_elevator_button","puz_el_assign_floor_5"],width:0.3125f,height:0.25f}
summon minecraft:text_display ~0.47 ~0.685 ~-0.13444 {Tags:["pzl_tmp_1","plzspawner"],alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {color: "green", text: "1"}, text_opacity: -1b, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.68f, 0.68000007f, 0.68f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:text_display ~0.47 ~0.936 ~-0.13444 {Tags:["pzl_tmp_2","plzspawner"],alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {color: "green", text: "2"}, text_opacity: -1b, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.68f, 0.68000007f, 0.68f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:text_display ~0.47 ~1.187 ~-0.13444 {Tags:["pzl_tmp_3","plzspawner"],alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {color: "green", text: "3"}, text_opacity: -1b, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.68f, 0.68000007f, 0.68f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:text_display ~0.47 ~1.438 ~-0.13444 {Tags:["pzl_tmp_4","plzspawner"],alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {color: "green", text: "4"}, text_opacity: -1b, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.68f, 0.68000007f, 0.68f], translation: [0.0f, 0.0f, 0.0f]}}
summon minecraft:text_display ~0.47 ~1.689 ~-0.13444 {Tags:["pzl_tmp_5","plzspawner"],alignment: "center", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: {color: "green", text: "5"}, text_opacity: -1b, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.68f, 0.68000007f, 0.68f], translation: [0.0f, 0.0f, 0.0f]}}
scoreboard players set @e[tag=pzl_tmp_1] puzzle.value.indicator 1
scoreboard players set @e[tag=pzl_tmp_2] puzzle.value.indicator 2
scoreboard players set @e[tag=pzl_tmp_3] puzzle.value.indicator 3
scoreboard players set @e[tag=pzl_tmp_4] puzzle.value.indicator 4
scoreboard players set @e[tag=pzl_tmp_5] puzzle.value.indicator 5
scoreboard players operation @n[tag=puzzle_elevator_button,limit=5] puzzle.value = $dev puzzle.value
scoreboard players operation @e[tag=plzspawner] puzzle.value = $dev puzzle.value
scoreboard players set @n[tag=puz_el_assign_floor_1] puzzle.value.indicator 1
scoreboard players set @n[tag=puz_el_assign_floor_2] puzzle.value.indicator 2
scoreboard players set @n[tag=puz_el_assign_floor_3] puzzle.value.indicator 3
scoreboard players set @n[tag=puz_el_assign_floor_4] puzzle.value.indicator 4
scoreboard players set @n[tag=puz_el_assign_floor_5] puzzle.value.indicator 5
tag @n[tag=puz_el_assign_floor_5] remove puz_el_assign_floor_5
tag @n[tag=puz_el_assign_floor_4] remove puz_el_assign_floor_4
tag @n[tag=puz_el_assign_floor_3] remove puz_el_assign_floor_3
tag @n[tag=puz_el_assign_floor_2] remove puz_el_assign_floor_2
tag @n[tag=puz_el_assign_floor_1] remove puz_el_assign_floor_1
tag @e remove plzspawner
tag @e remove pzl_tmp_1
tag @e remove pzl_tmp_2
tag @e remove pzl_tmp_3
tag @e remove pzl_tmp_4
tag @e remove pzl_tmp_5

