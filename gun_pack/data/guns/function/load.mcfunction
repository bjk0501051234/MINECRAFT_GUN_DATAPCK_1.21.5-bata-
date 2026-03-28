scoreboard objectives add dummy dummy
scoreboard objectives add cal dummy
scoreboard objectives add riding dummy
scoreboard objectives add health health
scoreboard objectives add timer dummy
# BUG FIX: logic / distance objective 누락 → vkswjd.mcfunction 등에서 에러
scoreboard objectives add logic dummy
scoreboard objectives add distance dummy
scoreboard objectives add slide_timer dummy
scoreboard objectives add slide_running dummy
data merge storage gunpack:riding {p1:{y_velocity:0d},p2:{y_velocity:0d}}
scoreboard players set #2 cal 2
scoreboard players set #4 cal 4
scoreboard players set #10 cal 10
scoreboard players set #20 cal 20
scoreboard players set #80 cal 80
team add enemy
# 기존 마운트에서 모두 내리기
execute as @a run ride @s dismount
execute as @a run function guns:score_init
tellraw @a {text:'[총기팩] /function guns:give/ak | guns:give/pistol | guns:give/ammo | guns:give/all',color:'green'}
scoreboard players set #1000 cal 1000
# 총상점 제작법 안내
tellraw @a {"text":"[총기팩] 총상점 제작: 금괴4+철4+다이아1 → Q로 드롭하면 설치 | 금조각2 → 탄약","color":"yellow"}
