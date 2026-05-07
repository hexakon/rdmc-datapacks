# This function is run every tick for every entity in the 
# world, at that entity's position. It is used as an
# alternative to @e selectors in functions, reducing the load
# significantly.
# For specifically player entities, use the function 
# `core:global/tick_all_players` instead, as an alternative to @a.
#
# When hooking your functions into this, be sure to include
# the namespace it is associated with.
#
#   Example: 
#   ====================================================
#     # Core
#     function core:example/tickallentities
#   ====================================================

# Core
execute if entity @s[type=player] run function core:global/tick_all_players

