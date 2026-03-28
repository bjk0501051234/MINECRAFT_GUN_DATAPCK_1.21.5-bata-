# @s = 플레이어

execute unless entity @e[tag=weapon,limit=1] run return fail

# 장전 중: 클릭 소비 후 종료
execute if score #reloading dummy matches 1 as @e[tag=weapon,limit=1] run data remove entity @s attack
execute if score #reloading dummy matches 1 as @e[tag=weapon,limit=1] run data remove entity @s interaction
execute if score #reloading dummy matches 1 run return fail

# 슬롯 감지
scoreboard players operation #holded_weapon dummy = #hold_weapon dummy
function guns:choose_weapon

# swap 쿨타임
execute unless score #swap_cool dummy matches 0 as @e[tag=weapon,limit=1] run data remove entity @s attack
execute unless score #swap_cool dummy matches 0 as @e[tag=weapon,limit=1] run data remove entity @s interaction
execute unless score #swap_cool dummy matches 0 run scoreboard players remove #swap_cool dummy 1
execute unless score #swap_cool dummy matches 0 run scoreboard players operation #holded_weapon dummy = #hold_weapon dummy
execute unless score #swap_cool dummy matches 0 run return fail

# 무기 교체
execute unless score #hold_weapon dummy = #holded_weapon dummy run function guns:weaponswap

# ==== 좌클릭: interaction attack 데이터 존재 여부로 감지 ====
execute if score #shooting dummy matches 0 if score #hold_weapon dummy matches 1 if data entity @e[tag=weapon,limit=1] attack run function guns:pistol/shoot
execute if score #shooting dummy matches 0 if score #hold_weapon dummy matches 2 if data entity @e[tag=weapon,limit=1] attack run function guns:ak/shoot
# attack 소비
execute as @e[tag=weapon,limit=1] if data entity @s attack run data remove entity @s attack

# ==== 우클릭: interaction 데이터 ====
execute if score #hold_weapon dummy matches 1 if data entity @e[tag=weapon,limit=1] interaction run function guns:pistol/zoom
execute if score #hold_weapon dummy matches 2 if data entity @e[tag=weapon,limit=1] interaction run function guns:ak/zoom
execute as @e[tag=weapon,limit=1] if data entity @s interaction run data remove entity @s interaction

function guns:info_ui
