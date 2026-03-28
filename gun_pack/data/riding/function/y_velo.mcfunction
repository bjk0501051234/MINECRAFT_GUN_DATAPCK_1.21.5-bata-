#천장 판정
scoreboard players set #headache riding 1
$execute if score #y_velocity riding matches 0.. positioned ~ ~1.2 ~ positioned ~ ~$(y_velocity) ~ if block ~0.299 ~ ~0.299 #dummy:penetrable if block ~-0.299 ~ ~0.299 #dummy:penetrable if block ~0.299 ~ ~-0.299 #dummy:penetrable if block ~-0.299 ~ ~-0.299 #dummy:penetrable run scoreboard players set #headache riding 0
execute if score #headache riding matches 1 if score #y_velocity riding matches 0.. align y run tp ~ ~0.799 ~
execute if score #headache riding matches 1 if score #y_velocity riding matches 0.. run scoreboard players set #y_velocity riding 0

#바닥 판정
scoreboard players set #floor riding 1
$execute if score #y_velocity riding matches -1000..-1 positioned ~ ~-0.6 ~ positioned ~ ~$(y_velocity) ~ if block ~0.299 ~ ~0.299 #dummy:penetrable if block ~-0.299 ~ ~0.299 #dummy:penetrable if block ~0.299 ~ ~-0.299 #dummy:penetrable if block ~-0.299 ~ ~-0.299 #dummy:penetrable run scoreboard players set #floor riding 0
execute if score #floor riding matches 1 if score #y_velocity riding matches -1000..-1 run scoreboard players set #on_ground riding 1

#위치 계산
$execute unless score #y_velocity riding matches 0 run tp ~ ~$(y_velocity) ~
#바닥에 붙이기
execute if score #on_ground riding matches 1 if score #y_velocity riding matches -1000..-1 positioned ~ ~-0.6 ~ align y run tp ~ ~0.6 ~

#다음 값 계산
scoreboard players operation #y_velocity riding -= #80 cal
execute if score #y_velocity riding matches ..-1001 run scoreboard players set #y_velocity riding -1000
execute store result storage minecraft:riding y_velocity double 0.00098 run scoreboard players get #y_velocity riding

#반복
#execute if score #on_ground riding matches 1
execute if score #on_ground riding matches 0 run schedule function riding:y_velo_control 1t
#버그가 더럽게 많지만 고치는 법 원인도 모르니까 버그가 안 일어나게 맵을 만들어야함 일단 속도를 1000 이하로 제한해
#이게 무슨 역할들을 하고 무슨 일이 일어나는 거죠? 젆ㅕ 모르겠어요