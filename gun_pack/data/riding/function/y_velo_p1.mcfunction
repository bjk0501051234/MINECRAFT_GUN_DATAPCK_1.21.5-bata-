#천장 판정
scoreboard players set p1_ha riding 1
$execute if score p1_yv riding matches 0.. positioned ~ ~1.2 ~ positioned ~ ~$(y_velocity) ~ if block ~0.299 ~ ~0.299 #dummy:penetrable if block ~-0.299 ~ ~0.299 #dummy:penetrable if block ~0.299 ~ ~-0.299 #dummy:penetrable if block ~-0.299 ~ ~-0.299 #dummy:penetrable run scoreboard players set p1_ha riding 0
execute if score p1_ha riding matches 1 if score p1_yv riding matches 0.. align y run tp ~ ~0.799 ~
execute if score p1_ha riding matches 1 if score p1_yv riding matches 0.. run scoreboard players set p1_yv riding 0

#바닥 판정
scoreboard players set p1_fl riding 1
$execute if score p1_yv riding matches -1000..-1 positioned ~ ~-0.6 ~ positioned ~ ~$(y_velocity) ~ if block ~0.299 ~ ~0.299 #dummy:penetrable if block ~-0.299 ~ ~0.299 #dummy:penetrable if block ~0.299 ~ ~-0.299 #dummy:penetrable if block ~-0.299 ~ ~-0.299 #dummy:penetrable run scoreboard players set p1_fl riding 0
execute if score p1_fl riding matches 1 if score p1_yv riding matches -1000..-1 run scoreboard players set p1_og riding 1

#위치 계산
$execute unless score p1_yv riding matches 0 run tp ~ ~$(y_velocity) ~
#바닥에 붙이기
execute if score p1_og riding matches 1 if score p1_yv riding matches -1000..-1 positioned ~ ~-0.6 ~ align y run tp ~ ~0.6 ~

#다음 값 계산
scoreboard players operation p1_yv riding -= #80 cal
execute if score p1_yv riding matches ..-1001 run scoreboard players set p1_yv riding -1000
execute store result storage gunpack:riding p1.y_velocity double 0.00098 run scoreboard players get p1_yv riding

#반복
execute if score p1_og riding matches 0 run schedule function riding:y_velo_control_p1 1t
