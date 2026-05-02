execute store result score #currentZ prime.mirror.tmp_tp run data get entity @s Pos[2]
scoreboard players operation #newZ prime.mirror.tmp_tp = #mirrorZ prime.mirror.tmp_tp
scoreboard players operation #newZ prime.mirror.tmp_tp -= #currentZ prime.mirror.tmp_tp
scoreboard players operation #newZ prime.mirror.tmp_tp *= #2 prime.mirror.tmp_tp
scoreboard players operation #newZ prime.mirror.tmp_tp += #mirrorZ prime.mirror.tmp_tp
execute store result storage p2ime:tp newZ int 1 run scoreboard players get #newZ prime.mirror.tmp_tp
function  puzzle:rooms/mirrored_actions/tp with storage p2ime:tp