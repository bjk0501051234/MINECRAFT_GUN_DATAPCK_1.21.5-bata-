# 다이아 30개 보유 확인
execute store result score #check_dia dummy run clear @s minecraft:diamond 0
execute if score #check_dia dummy matches ..29 run tellraw @s {"text":"다이아몬드가 부족합니다! (필요: 30개)","color":"red","bold":true}
execute if score #check_dia dummy matches ..29 run return fail
# 차감
clear @s minecraft:diamond 30
# 지급
function guns:give/ak_single
tellraw @s {"text":"✅ AK47 구매 완료!","color":"green","bold":true}
