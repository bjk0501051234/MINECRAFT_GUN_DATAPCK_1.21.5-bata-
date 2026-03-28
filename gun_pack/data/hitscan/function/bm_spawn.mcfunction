scoreboard players add #bstep dummy 1
# 현재 위치에 마커 소환 (^1 전진 후 소환, 최대 100블럭)
execute if score #bstep dummy matches ..100 positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["bullet_marker"]}
execute if score #bstep dummy matches ..100 positioned ^ ^ ^1 run function hitscan:bm_spawn
