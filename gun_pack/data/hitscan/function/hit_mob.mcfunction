# 현재 위치(총알 위치) 기준으로 엔티티 찾고 데미지
# 헤드샷: 총알이 엔티티 발보다 1.3블럭 이상 위 (머리 위치)
# 몸샷: 그 아래

# ── 플레이어 헤드샷/몸샷
execute positioned ~ ~-1.4 ~ as @a[limit=1,distance=..0.9,tag=!shooter] run tag @s add headshot
execute unless entity @a[tag=headshot] positioned ~ ~-0.2 ~ as @a[limit=1,distance=..0.9,tag=!shooter] run tag @s add bodyshot

# ── 몹/엔티티 헤드샷/몸샷
execute unless entity @e[tag=headshot] unless entity @e[tag=bodyshot] positioned ~ ~-1.4 ~ as @e[limit=1,distance=..0.9,type=!player,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!armor_stand,type=!marker] run tag @s add headshot
execute unless entity @e[tag=headshot] unless entity @e[tag=bodyshot] positioned ~ ~-0.2 ~ as @e[limit=1,distance=..0.9,type=!player,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!armor_stand,type=!marker] run tag @s add bodyshot

# headshot도 bodyshot도 없으면 그냥 bodyshot으로
execute unless entity @e[tag=headshot] unless entity @e[tag=bodyshot] unless entity @a[tag=headshot,tag=!shooter] unless entity @a[tag=bodyshot,tag=!shooter] as @e[limit=1,distance=..0.9,type=!player,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!armor_stand,type=!marker] run tag @s add bodyshot
execute unless entity @e[tag=headshot] unless entity @e[tag=bodyshot] unless entity @a[tag=headshot,tag=!shooter] unless entity @a[tag=bodyshot,tag=!shooter] as @a[limit=1,distance=..0.9,tag=!shooter] run tag @s add bodyshot

function hitscan:tagdmg
