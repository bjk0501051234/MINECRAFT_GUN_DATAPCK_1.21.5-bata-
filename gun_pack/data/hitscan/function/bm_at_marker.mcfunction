# @s = bullet_marker (마커 Y = 총알 높이)
# distance는 실행점→엔티티 발 거리이므로 오프셋으로 발 위치 추정

# ── 헤드샷 ──────────────────────────────────────────────────────
# 마커에서 1.6 내려가면 발 근처 → 마커가 발+1.6 위 = 머리 구간
execute if score #bhit dummy matches 0 positioned ~ ~-1.6 ~ as @e[distance=..0.35,limit=1,type=!player,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!armor_stand,type=!marker] run function hitscan:headshot
execute if score #bhit dummy matches 0 positioned ~ ~-1.6 ~ as @a[distance=..0.35,limit=1,tag=!shooter] run function hitscan:headshot

# ── 바디샷 (상체) ────────────────────────────────────────────────
# 마커에서 0.9 내려가면 발 근처 → 마커가 발+0.9 위 = 상체
execute if score #bhit dummy matches 0 positioned ~ ~-0.9 ~ as @e[distance=..0.6,limit=1,type=!player,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!armor_stand,type=!marker] run function hitscan:bodyshot
execute if score #bhit dummy matches 0 positioned ~ ~-0.9 ~ as @a[distance=..0.6,limit=1,tag=!shooter] run function hitscan:bodyshot

# ── 바디샷 (하체) ────────────────────────────────────────────────
# 마커에서 0.3 내려가면 발 근처 → 마커가 발+0.3 위 = 하체/발
execute if score #bhit dummy matches 0 positioned ~ ~-0.3 ~ as @e[distance=..0.5,limit=1,type=!player,type=!item,type=!item_display,type=!block_display,type=!text_display,type=!interaction,type=!area_effect_cloud,type=!armor_stand,type=!marker] run function hitscan:bodyshot
execute if score #bhit dummy matches 0 positioned ~ ~-0.3 ~ as @a[distance=..0.5,limit=1,tag=!shooter] run function hitscan:bodyshot

# ── 벽 체크 ─────────────────────────────────────────────────────
execute if score #bhit dummy matches 0 unless block ~ ~ ~ #dummy:penetrable run scoreboard players set #bhit dummy 1

# 이 마커 제거 후 다음 마커로
kill @s
execute if score #bhit dummy matches 0 run function hitscan:bm_check
