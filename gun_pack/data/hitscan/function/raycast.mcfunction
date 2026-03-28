# @s = 플레이어, 위치 = 현재 총알 위치

# 엔티티 데미지 (본인 제외, 가장 가까운 1마리)
execute as @e[type=!player,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!armor_stand,type=!marker,distance=..1,limit=1,sort=nearest] run function hitscan:hit_entity
execute if score #forward dummy matches ..99 as @a[distance=..1,limit=1,sort=nearest,tag=!shooter] run function hitscan:hit_entity

# 벽에 막힘
execute unless block ~ ~ ~ #dummy:penetrable run return 1

# 맞췄으면 멈춤
execute if entity @e[type=!player,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!armor_stand,type=!marker,distance=..1] run return 1
execute if entity @a[distance=..1,tag=!shooter] run return 1

# 사거리 제한 + 전진
scoreboard players add #forward dummy 1
execute if score #forward dummy matches ..80 positioned ^ ^ ^0.5 run function hitscan:raycast
