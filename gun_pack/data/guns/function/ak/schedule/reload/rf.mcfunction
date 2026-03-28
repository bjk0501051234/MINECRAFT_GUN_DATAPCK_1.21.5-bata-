# 탄약 채우기 (최대 20발, 원본은 30발이었음)
scoreboard players set #ak_cal dummy 21
scoreboard players operation #ak_cal dummy -= #ak_remain_bullet dummy
execute if score #ak_remain_bullet dummy matches 0 run scoreboard players set #ak_cal dummy 20
scoreboard players operation #ak_cal dummy < #ak_remain_mag dummy
scoreboard players operation #ak_remain_bullet dummy += #ak_cal dummy
scoreboard players operation #ak_remain_mag dummy -= #ak_cal dummy
function guns:after_reload
