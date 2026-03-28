# 애니메이션 및 상태 설정
execute as @e[type=item_display,tag=gp_rig_p1,limit=1] run function animated_java:player/animations/slide/play
scoreboard players set @a[tag=player1,limit=1] slide_timer 22
scoreboard players set @a[tag=player1,limit=1] slide_running 1

# 입력 방향 저장 (초기화 후 감지 방식)
scoreboard players set @a[tag=player1,limit=1] slide_ws 0
scoreboard players set @a[tag=player1,limit=1] slide_da 0

execute as @a[tag=player1,limit=1] if predicate riding:forward run scoreboard players set @s slide_ws 1
execute as @a[tag=player1,limit=1] if predicate riding:backward run scoreboard players set @s slide_ws -1
execute as @a[tag=player1,limit=1] if predicate riding:right run scoreboard players set @s slide_da 1
execute as @a[tag=player1,limit=1] if predicate riding:left run scoreboard players set @s slide_da -1


# 줌 상태 및 루프 활성화 점수
execute as @a[tag=player1,limit=1] run scoreboard players operation @s slide_zoom = #zoom dummy
scoreboard players set @a[tag=player1,limit=1] gp_moving 1

# 1. 상태 설정
execute as @e[tag=gp_rig_p1,limit=1] run function animated_java:player/animations/slide/play
scoreboard players set @a[tag=player1,limit=1] slide_timer 24
scoreboard players set @a[tag=player1,limit=1] slide_running 1

# 2. 방향 스냅샷 (WASD 감지) - 1.21.5 인라인 방식
scoreboard players set @a[tag=player1,limit=1] slide_ws 0
scoreboard players set @a[tag=player1,limit=1] slide_da 0

execute as @a[tag=player1,limit=1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:true}}}} run scoreboard players add @s slide_ws 1
execute as @a[tag=player1,limit=1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{backward:true}}}} run scoreboard players remove @s slide_ws 1
execute as @a[tag=player1,limit=1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{right:true}}}} run scoreboard players add @s slide_da 1
execute as @a[tag=player1,limit=1] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{left:true}}}} run scoreboard players remove @s slide_da 1

# 3. 루프 실행
function riding:loop
