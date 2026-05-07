data modify entity @s item set from entity @p[tag=core.totemPop] equipment.offhand
$item replace entity @p[tag=core.totemPop] weapon.offhand with $(blockType)[death_protection={death_effects:[]}]
damage @p[tag=core.totemPop] 400 starve
item replace entity @p[tag=core.totemPop] weapon.offhand from entity @s contents
kill @s