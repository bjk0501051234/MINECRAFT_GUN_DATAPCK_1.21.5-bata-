# @s = 구매자(선물자)
# 대상 존재 확인
$execute unless entity @a[name=$(target),limit=1] run tellraw @s {"text":"해당 플레이어가 없습니다.","color":"red"}
$execute unless entity @a[name=$(target),limit=1] run return fail
# 다이아 30개 확인
execute store result score #check_dia dummy run clear @s minecraft:diamond 0
execute if score #check_dia dummy matches ..29 run tellraw @s {"text":"다이아몬드가 부족합니다! (필요: 30개)","color":"red","bold":true}
execute if score #check_dia dummy matches ..29 run return fail
# 차감
clear @s minecraft:diamond 30
# 대상에게 지급
$execute as @a[name=$(target),limit=1] run function guns:give/ak_single
$tellraw @s {"text":"✅ AK47를 $(target)님께 선물했습니다!","color":"green","bold":true}
$tellraw @a[name=$(target),limit=1] {"text":"🎁 AK47를 선물받았습니다!","color":"gold","bold":true}
