# 1. 거리 카운트 증가
scoreboard players add #dist distance 1

# 2. 현재 지점에서 엔티티 감지 (반경 1블록 내 가장 가까운 엔티티)
execute as @e[type=!player,distance=..1,limit=1,sort=nearest] at @s run tag @s add akwdma

# 3. [히트박스 상단 판정] 엔티티가 감지되었을 때만 실행
# dy=0.1(높이), dx/dz(가로폭)를 사용하여 엔티티 크기에 맞춘 상단 박스 검사
execute as @e[tag=akwdma,tag=!HIT,tag=!nohit] at @s if entity @s[dy=0.1] run tag @s add HIT
execute as @e[tag=akwdma,tag=!HIT,tag=!nohit] run tag @s add nohit

# 4. [재귀] 100블록(200번) 안 넘었으면 0.5블록 전진해서 다시 실행
execute if score #dist distance matches ..200 positioned ^ ^ ^0.5 run function hitscan:scan_and_logic