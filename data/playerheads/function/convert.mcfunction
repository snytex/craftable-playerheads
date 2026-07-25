# Entry point, run by the "renamed" advancement whenever a player_head enters the inventory.
# Re-arm the detector immediately so it can fire again on the next change.
advancement revoke @s only playerheads:renamed

# A blank crafted head that was renamed in an anvil is the ONLY player_head that has a
# custom_name but no profile yet. Only scan the inventory when such an item actually exists.
execute if items entity @s container.* minecraft:player_head[minecraft:custom_name,!minecraft:profile] run function playerheads:scan
execute if items entity @s weapon.offhand minecraft:player_head[minecraft:custom_name,!minecraft:profile] run function playerheads:scan
