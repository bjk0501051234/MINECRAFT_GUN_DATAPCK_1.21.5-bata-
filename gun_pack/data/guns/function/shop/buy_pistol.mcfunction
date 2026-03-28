# 철 10개 보유 확인
execute store result score #check_iron dummy run clear @s minecraft:iron_ingot 0
execute if score #check_iron dummy matches ..9 run tellraw @s {"text":"철 주괴가 부족합니다! (필요: 10개)","color":"red","bold":true}
execute if score #check_iron dummy matches ..9 run return fail
# 차감
clear @s minecraft:iron_ingot 10
# 지급
function guns:give/pistol_single
tellraw @s {"text":"✅ 권총 구매 완료!","color":"green","bold":true}
