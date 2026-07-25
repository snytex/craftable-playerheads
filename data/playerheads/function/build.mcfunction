# Macro. Replace the blank head in its slot with a dynamic head that resolves $(name)'s skin
# from Mojang. Wrapping $(name) in literal quotes turns the plain string into {name:"Username"}.
$item replace entity @s $(ref) with minecraft:player_head[minecraft:profile={name:"$(name)"}] 1
