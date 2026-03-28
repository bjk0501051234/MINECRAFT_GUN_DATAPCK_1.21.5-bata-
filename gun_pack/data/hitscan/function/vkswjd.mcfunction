# hitbox interaction entity 기반 데미지 판정 (구버전 시스템, 현재 hitscan:forward로 대체됨)
# @s = hitbox interaction entity

# 1. 공격 위치(y) 저장 (100배 정수 변환)
execute store result score #hit_y logic run data get entity @s attack.location[1] 100
execute store result score #base_y logic run data get entity @s Pos[1] 100

# 2. 상대 높이 계산
scoreboard players operation #hit_y logic -= #base_y logic

# 3. 헤드샷 (높이 150 이상) - 빨간색 X
execute if score #hit_y logic matches 150.. if score #hold_weapon dummy matches 1 run damage @e[type=!player,distance=..1,limit=1] 8 minecraft:player_attack
execute if score #hit_y logic matches 150.. if score #hold_weapon dummy matches 2 run damage @e[type=!player,distance=..1,limit=1] 16 minecraft:player_attack

# 4. 바디샷 (높이 150 미만)
execute if score #hit_y logic matches ..149 if score #hold_weapon dummy matches 1 run damage @e[type=!player,distance=..1,limit=1] 4 minecraft:player_attack
execute if score #hit_y logic matches ..149 if score #hold_weapon dummy matches 2 run damage @e[type=!player,distance=..1,limit=1] 8 minecraft:player_attack

# 5. 히트마커
execute as @e[tag=layer3] run data modify entity @s background set value -65536
schedule function hitscan:xmark 2t
