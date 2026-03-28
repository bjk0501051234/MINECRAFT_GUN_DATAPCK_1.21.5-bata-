

execute if score @p[tag=player1] slide_timer matches ..0 run function riding:stop
execute if score @p[tag=player1] slide_timer matches ..0 run return 0
scoreboard players remove @p[tag=player1] slide_timer 1

# 2. 엔진 가속 (tp 대신 transformation 수정)
# 1틱(50ms) 동안 엔진을 0.8칸 앞으로 부드럽게 밀어냄
# 이 과정에서 플레이어는 ride 상태이므로 엔진을 따라 강제로 이동됨
data merge entity @e[tag=gp_mount_p1,limit=1] {interpolation_duration:1,transformation:{translation:[0f,0f,0.8f]}}

# 3. 1틱 뒤에 엔진의 실제 좌표(Pos)를 이동된 위치로 동기화
# (이 과정이 있어야 다음 틱에 다시 0에서 시작할 수 있음)
execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @p[tag=player1] run tp @s ^ ^ ^0.45

# 4. 루프 반복
schedule function riding:loop 0.5t
