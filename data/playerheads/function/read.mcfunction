# Macro. Copy the typed username (the item's custom_name) and this slot's ref into storage,
# then build the finished head from those two values.
$data modify storage playerheads:args name set from entity @s Inventory[{Slot:$(s)b}].components."minecraft:custom_name"
$data modify storage playerheads:args ref set value "$(ref)"
function playerheads:build with storage playerheads:args
