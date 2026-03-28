execute if score #forward dummy matches 100.. run return fail
execute unless block ~ ~ ~ #dummy:penetrable positioned ^ ^ ^-0.5 run return run function hitscan:inblockb0

# 총알(눈높이)에서 아래로 이동해서 엔티티 발 높이와 맞춤
# 헤드샷: ~-1.3 (발+1.3 이상 위 = 머리)
execute positioned ~ ~-1.3 ~ as @e[distance=..1,limit=1,type=!player,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!armor_stand,type=!marker] run function hitscan:headshot
execute if score #forward dummy matches ..99 positioned ~ ~-1.3 ~ as @a[distance=..1,limit=1,tag=!shooter] run function hitscan:headshot

# 바디샷: ~-0.7 (발+0.7 = 몸통 중심)
execute if score #forward dummy matches ..99 positioned ~ ~-0.7 ~ as @e[distance=..1,limit=1,type=!player,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!armor_stand,type=!marker] run function hitscan:bodyshot
execute if score #forward dummy matches ..99 positioned ~ ~-0.7 ~ as @a[distance=..1,limit=1,tag=!shooter] run function hitscan:bodyshot

# 발 근처도 커버 (~-0.2)
execute if score #forward dummy matches ..99 positioned ~ ~-0.2 ~ as @e[distance=..1,limit=1,type=!player,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!armor_stand,type=!marker] run function hitscan:bodyshot
execute if score #forward dummy matches ..99 positioned ~ ~-0.2 ~ as @a[distance=..1,limit=1,tag=!shooter] run function hitscan:bodyshot

scoreboard players add #forward dummy 1
execute positioned ^ ^ ^0.5 run function hitscan:forward
