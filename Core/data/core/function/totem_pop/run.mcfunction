# Plays the animation of a totem popping on player: @s
# Note: The animation does not play for players in creative mode
# Triggering more than once within 2 ticks will not play the second animation, but will not break anything.
tag @s add core.totemPop
item replace entity @s armor.body with stone[equippable={slot:"body"},container=[]]
execute at @s run execute summon item_display run function core:totem_pop/store_and_pop with storage woolfoundcolors
tag @s remove core.totemPop
effect give @s instant_health 1 100 true
scoreboard players set @s core.woolAnimationFrame 0