# 마커 기반 레이캐스트 (100블럭)
scoreboard players set #bstep dummy 0
scoreboard players set #bhit dummy 0
# 눈 높이 1.62 고정 (앉아도 서있는 눈 기준 발사)
execute as @a[tag=shooter,limit=1] at @s positioned ~ ~1.62 ~ run function hitscan:bm_spawn
# shooter 위치 기준으로 가장 가까운 마커부터 체크
function hitscan:bm_check
# 남은 마커 전부 제거
kill @e[tag=bullet_marker]
