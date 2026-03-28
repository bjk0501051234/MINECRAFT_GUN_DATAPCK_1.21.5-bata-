# 헤드샷 (빨간 x마크)
execute if score #hold_weapon dummy matches 1 as @e[tag=hit_target,tag=headshot_hit] run damage @s 8 minecraft:player_attack
execute if score #hold_weapon dummy matches 2 as @e[tag=hit_target,tag=headshot_hit] run damage @s 16 minecraft:player_attack
execute if score #hold_weapon dummy matches 1 as @a[tag=hit_target,tag=headshot_hit] run damage @s 8 minecraft:player_attack
execute if score #hold_weapon dummy matches 2 as @a[tag=hit_target,tag=headshot_hit] run damage @s 16 minecraft:player_attack

# 바디샷 (흰색 x마크)
execute if score #hold_weapon dummy matches 1 as @e[tag=hit_target,tag=!headshot_hit] run damage @s 4 minecraft:player_attack
execute if score #hold_weapon dummy matches 2 as @e[tag=hit_target,tag=!headshot_hit] run damage @s 8 minecraft:player_attack
execute if score #hold_weapon dummy matches 1 as @a[tag=hit_target,tag=!headshot_hit] run damage @s 4 minecraft:player_attack
execute if score #hold_weapon dummy matches 2 as @a[tag=hit_target,tag=!headshot_hit] run damage @s 8 minecraft:player_attack

# x마크 표시
execute if entity @e[tag=headshot_hit] as @e[tag=layer3] run data modify entity @s background set value -65536
execute if entity @a[tag=headshot_hit] as @e[tag=layer3] run data modify entity @s background set value -65536
execute unless entity @e[tag=headshot_hit] unless entity @a[tag=headshot_hit] as @e[tag=layer3] run data modify entity @s background set value -1

schedule function hitscan:xmark 2t

tag @e remove hit_target
tag @e remove headshot_hit
tag @a remove hit_target
tag @a remove headshot_hit
scoreboard players set #forward dummy 100
