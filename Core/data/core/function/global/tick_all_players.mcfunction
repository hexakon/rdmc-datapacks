# This function is run every tick for every online player in the 
# world, at that player's position. It is used as an
# alternative to @a selectors in functions, reducing the load
# significantly.
# For all entities, use the function `core:global/tick_all_entities`
# instead, as an alternative to @e.
#
# When hooking your functions into this, be sure to include
# the namespace it is associated with.
#
#   Example: 
#   ====================================================
#     # Core
#     function core:example/tickallplayers
#   ====================================================

# Core
function core:wool_found/tickallplayers