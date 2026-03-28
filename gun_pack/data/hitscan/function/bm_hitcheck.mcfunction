# @s = 서버 컨텍스트, 가장 가까운 마커 기준으로 실행
execute as @e[tag=bullet_marker,sort=nearest,limit=1] at @s run function hitscan:bm_at_marker
