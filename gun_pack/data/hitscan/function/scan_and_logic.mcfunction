# 1. [초기화] 지난 틱에 붙었던 태그들을 가장 먼저 제거 (1틱 유지를 위해)
tag @e[tag=akwdma] remove akwdma
tag @e[tag=HIT] remove HIT
tag @e[tag=nohit] remove nohit

# 2. [레이캐스트 초기값] 스코어보드로 100블록(200회 반복) 제한 설정
scoreboard players set #dist distance 0

# 3. [루프 실행] 실제 감지 및 판정 로직 (재귀 호출)
# 아래 'execute' 줄이 100블록 스캔을 수행함
execute as @a[tag=player1] at @s anchored eyes positioned ^ ^ ^ run function hitscan:raycast_core