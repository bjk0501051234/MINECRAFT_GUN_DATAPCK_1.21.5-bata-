# @s = 맞은 엔티티
execute if score #hold_weapon dummy matches 1 run damage @s 4 minecraft:player_attack
execute if score #hold_weapon dummy matches 2 run damage @s 8 minecraft:player_attack
execute as @e[tag=layer3] run data modify entity @s background set value -1
schedule function hitscan:xmark 1t
scoreboard players set #forward dummy 100
