execute if score #hold_weapon dummy matches 1 run damage @s 8 minecraft:player_attack
execute if score #hold_weapon dummy matches 2 run damage @s 16 minecraft:player_attack
execute as @e[tag=layer3] run data modify entity @s background set value -65536
schedule function hitscan:xmark 2t
scoreboard players set #bhit dummy 1
