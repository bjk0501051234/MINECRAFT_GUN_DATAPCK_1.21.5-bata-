tp @a ~ ~10 ~
# 모든 무기 지급 - 모델은 AK만 소환 (슬롯2에서 시작)
execute as @a at @s run function guns:give/all_single
tellraw @a {text:'전체 지급 완료! AK(슬롯2) + 권총(슬롯1) | 슬롯 바꾸면 모델 교체됨',color:'gold'}
