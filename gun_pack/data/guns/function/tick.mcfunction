function guns:slide_tick
function guns:slide_try
function guns:fake_player_sync
function riding:riding
execute as @a[tag=player1] run effect give @s minecraft:invisibility infinite 0 true
execute as @a[tag=player2] run effect give @s minecraft:invisibility infinite 0 true
execute as @a at @s run function guns:ammo_pickup
function guns:interaction
execute as @a at @s if score #reloading dummy matches 0 if items entity @s weapon.offhand #dummy:reloadable run function guns:reload_controll

# NOTE: hitscan:raycast_core / hitscan:scan_and_logic 는 tick에서 제거됨
# 이유: 매 틱 위치 0,0,0에서 200회 재귀 실행 → 성능낭비, player1 태그 없어서 실질적으로 아무것도 안 함
# 실제 데미지는 hitscan:start → raycast → give_headshot/give_bodyshot 에서 직접 처리됨

# HIT/nohit 기반 구형 데미지 시스템 제거 (raycast_core가 작동 안 해서 이 태그들이 세팅 안 됨)
# 현재 데미지는 give_headshot.mcfunction / give_bodyshot.mcfunction 에서 처리

# player1 interaction 히트박스 시스템 (vkswjd - 오탈자 수정)
execute as @e[type=interaction, tag=hitbox] if data entity @s attack run function hitscan:vkswjd
execute as @e[type=interaction, tag=hitbox] run data remove entity @s attack

# 총상점 아이템 드롭 감지 → 설치

# 총상점 드롭 감지 & 클릭 감지
function guns:shop/detect_drop
function guns:shop/check_click

