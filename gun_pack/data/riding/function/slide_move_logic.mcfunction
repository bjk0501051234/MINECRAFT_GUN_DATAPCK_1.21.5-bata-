# 수평 이동 강제 (rotated ~ 0)
# W 방향
execute if score @p[tag=player1] slide_ws matches 1 if score @p[tag=player1] slide_da matches 0 rotated ~ 0 run tp @s ^ ^ ^0.65

# D 방향 (오른쪽)
execute if score @p[tag=player1] slide_da matches 1 if score @p[tag=player1] slide_ws matches 0 rotated ~90 0 run tp @s ^ ^ ^0.65

# A 방향 (왼쪽)
execute if score @p[tag=player1] slide_da matches -1 if score @p[tag=player1] slide_ws matches 0 rotated ~-90 0 run tp @s ^ ^ ^0.65

# W+D 대각선
execute if score @p[tag=player1] slide_ws matches 1 if score @p[tag=player1] slide_da matches 1 rotated ~45 0 run tp @s ^ ^ ^0.65

# 입력이 없거나 S일 때도 기본 정면 이동 (원하는 대로 수정 가능)
execute if score @p[tag=player1] slide_ws matches 0 if score @p[tag=player1] slide_da matches 0 rotated ~ 0 run tp @s ^ ^ ^0.65
