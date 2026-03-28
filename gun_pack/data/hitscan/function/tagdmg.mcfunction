execute if entity @e[tag=bodyshot] as @e[tag=layer3] run data modify entity @s background set value -1
execute if entity @e[tag=headshot] as @e[tag=layer3] run data modify entity @s background set value -65536
execute if entity @a[tag=bodyshot] as @e[tag=layer3] run data modify entity @s background set value -1
execute if entity @a[tag=headshot] as @e[tag=layer3] run data modify entity @s background set value -65536

execute if entity @e[tag=bodyshot] run schedule function hitscan:xmark 1t
execute if entity @e[tag=headshot] run schedule function hitscan:xmark 1t

execute if score #hold_weapon dummy matches 1 as @e[tag=bodyshot] run damage @s 4 minecraft:player_attack
execute if score #hold_weapon dummy matches 1 as @e[tag=headshot] run damage @s 8 minecraft:player_attack
execute if score #hold_weapon dummy matches 2 as @e[tag=bodyshot] run damage @s 8 minecraft:player_attack
execute if score #hold_weapon dummy matches 2 as @e[tag=headshot] run damage @s 16 minecraft:player_attack

execute if score #hold_weapon dummy matches 1 as @a[tag=bodyshot] run damage @s 4 minecraft:player_attack
execute if score #hold_weapon dummy matches 1 as @a[tag=headshot] run damage @s 8 minecraft:player_attack
execute if score #hold_weapon dummy matches 2 as @a[tag=bodyshot] run damage @s 8 minecraft:player_attack
execute if score #hold_weapon dummy matches 2 as @a[tag=headshot] run damage @s 16 minecraft:player_attack

tag @e remove headshot
tag @e remove bodyshot
tag @a remove headshot
tag @a remove bodyshot
scoreboard players set #forward dummy 100
