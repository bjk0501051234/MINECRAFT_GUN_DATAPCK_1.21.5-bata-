$execute unless entity @a[name=$(target),limit=1] run tellraw @s {"text":"해당 플레이어가 없습니다.","color":"red"}
$execute unless entity @a[name=$(target),limit=1] run return fail
execute store result score #check_iron dummy run clear @s minecraft:iron_ingot 0
execute if score #check_iron dummy matches ..9 run tellraw @s {"text":"철 주괴가 부족합니다! (필요: 10개)","color":"red","bold":true}
execute if score #check_iron dummy matches ..9 run return fail
clear @s minecraft:iron_ingot 10
$execute as @a[name=$(target),limit=1] run function guns:give/pistol_single
$tellraw @s {"text":"✅ 권총을 $(target)님께 선물했습니다!","color":"green","bold":true}
$tellraw @a[name=$(target),limit=1] {"text":"🎁 권총을 선물받았습니다!","color":"gold","bold":true}
