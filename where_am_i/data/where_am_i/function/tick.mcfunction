execute as @a[scores={where_am_i.left_game=1..}] at @s run tag @s remove ok
execute as @a[scores={where_am_i.left_game=1..}] at @s run scoreboard players reset @s where_am_i.left_game

title @a[predicate=where_am_i:00] actionbar {"text":"Welcome! You're in the lobby. Don't build here. Run \"/function where_am_i:help\" for where to build."}

title @a[predicate=where_am_i:01,tag=!ok] actionbar {"text":"You're in the ADVENTURE branch. Run \"/function where_am_i:help\" if you're lost. Do \"/tag @s add ok\" to hide this."}
title @a[predicate=where_am_i:02,tag=!ok] actionbar {"text":"You're in the ARENA branch. Run \"/function where_am_i:help\" if you're lost. Do \"/tag @s add ok\" to hide this."}
title @a[predicate=where_am_i:03,tag=!ok] actionbar {"text":"You're in the TRIVIA branch. Run \"/function where_am_i:help\" if you're lost. Do \"/tag @s add ok\" to hide this."}
title @a[predicate=where_am_i:04,tag=!ok] actionbar {"text":"You're in the PARKOUR branch. Run \"/function where_am_i:help\" if you're lost. Do \"/tag @s add ok\" to hide this."}
title @a[predicate=where_am_i:05,tag=!ok] actionbar {"text":"You're in the ESCAPE branch. Run \"/function where_am_i:help\" if you're lost. Do \"/tag @s add ok\" to hide this."}
title @a[predicate=where_am_i:06,tag=!ok] actionbar {"text":"You're in the LABYRINTHIAN branch. Run \"/function where_am_i:help\" if you're lost. Do \"/tag @s add ok\" to hide this."}
title @a[predicate=where_am_i:07,tag=!ok] actionbar {"text":"You're in the DROPPER branch. Run \"/function where_am_i:help\" if you're lost. Do \"/tag @s add ok\" to hide this."}
title @a[predicate=where_am_i:08,tag=!ok] actionbar {"text":"You're in the SURVIVAL branch. Run \"/function where_am_i:help\" if you're lost. Do \"/tag @s add ok\" to hide this."}
title @a[predicate=where_am_i:09,tag=!ok] actionbar {"text":"You're in the PUZZLE branch. Run \"/function where_am_i:help\" if you're lost. Do \"/tag @s add ok\" to hide this."}
title @a[predicate=where_am_i:10,tag=!ok] actionbar {"text":"You're in the BOSS BATTLE branch. Run \"/function where_am_i:help\" if you're lost. Do \"/tag @s add ok\" to hide this."}