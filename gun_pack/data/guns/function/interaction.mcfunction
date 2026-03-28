scoreboard players operation #holded_weapon dummy = #hold_weapon dummy
function guns:choose_weapon
# BUG FIX: "at @p" → "as @a at @s"
# at @p는 위치만 이동, @s = 서버(null) → weaponswap 내 attribute @s / item replace entity @s 모두 실패
# as @a at @s로 플레이어 컨텍스트 완전히 전달
execute unless score #hold_weapon dummy = #holded_weapon dummy as @a at @s run function guns:weaponswap

# swap 쿨타임: on attacker/on target 제거 → 직접 weapon entity에서 data remove
execute unless score #swap_cool dummy matches 0 as @e[tag=weapon,limit=1] run data remove entity @s attack
execute unless score #swap_cool dummy matches 0 as @e[tag=weapon,limit=1] run data remove entity @s interaction
execute unless score #swap_cool dummy matches 0 run return run scoreboard players remove #swap_cool dummy 1

# ==== 좌클릭: interaction attack NBT 존재 여부로 감지 ====
# BUG FIX: on attacker는 interaction entity에서 작동 안 함 (전투 공격과 다른 개념)
# interaction entity는 클릭 시 attack NBT를 기록하므로 if data로 체크해야 함
execute if score #hold_weapon dummy matches 1 if score #shooting dummy matches 0 if score #reloading dummy matches 0 if data entity @e[tag=weapon,limit=1] attack as @a at @s run function guns:pistol/shoot
execute if score #hold_weapon dummy matches 2 if score #shooting dummy matches 0 if score #reloading dummy matches 0 if data entity @e[tag=weapon,limit=1] attack as @a at @s run function guns:ak/shoot

# ==== 우클릭: interaction NBT 존재 여부로 감지 ====
execute if score #hold_weapon dummy matches 1 if data entity @e[tag=weapon,limit=1] interaction as @a at @s run function guns:pistol/zoom
execute if score #hold_weapon dummy matches 2 if data entity @e[tag=weapon,limit=1] interaction as @a at @s run function guns:ak/zoom

function guns:info_ui

# attack / interaction 데이터 소비
execute as @e[tag=weapon,limit=1] if data entity @s attack run data remove entity @s attack
execute as @e[tag=weapon,limit=1] if data entity @s interaction run data remove entity @s interaction
