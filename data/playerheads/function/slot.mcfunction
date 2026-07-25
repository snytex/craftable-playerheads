# Macro. If THIS slot holds a renamed blank head (custom_name, no profile), process it.
$execute if items entity @s $(ref) minecraft:player_head[minecraft:custom_name,!minecraft:profile] run function playerheads:read {ref:"$(ref)",s:"$(s)"}
