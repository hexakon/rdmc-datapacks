scoreboard players add @s[tag=flcme.shrink.1] flcme 1
execute if score @s[tag=flcme.shrink.1] flcme matches 15 run tag @s add flcme.shrink.2
execute if score @s[tag=flcme.shrink.1] flcme matches 15 run tag @s remove flcme.shrink.1

scoreboard players remove @s[tag=flcme.shrink.2] flcme 1
execute if score @s[tag=flcme.shrink.2] flcme matches 0 run tag @s add flcme.shrink.1
execute if score @s[tag=flcme.shrink.2] flcme matches 0 run tag @s remove flcme.shrink.2

execute store result storage puzzle:disablemann flcme int 1 run scoreboard players get @s flcme

tag @s add flcme.2.shrink
execute as @s run function puzzle:dev/size2 with storage puzzle:mannstats