# 앞(W)
execute if score @p[tag=player1] slide_ws matches 1 rotated ~ 0 run tp @s ^ ^ ^0.8
# 뒤(S)
execute if score @p[tag=player1] slide_ws matches -1 rotated ~ 0 run tp @s ^ ^ ^-0.8
# 우(D)
execute if score @p[tag=player1] slide_da matches 1 rotated ~ 0 run tp @s ^0.8 ^ ^
# 좌(A)
execute if score @p[tag=player1] slide_da matches -1 rotated ~ 0 run tp @s ^-0.8 ^ ^

# 아무것도 안 눌렀을 때 (기본 전진)
execute if score @p[tag=player1] slide_ws matches 0 if score @p[tag=player1] slide_da matches 0 rotated ~ 0 run tp @s ^ ^ ^0.8