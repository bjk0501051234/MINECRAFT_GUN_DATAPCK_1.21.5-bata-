# W 슬라이딩 (앞으로 0.7)
execute if score @p[tag=player1] slide_ws matches 1 if score @p[tag=player1] slide_da matches 0 run summon marker ^ ^ ^0.7 {Tags:["gp_slide_pos"]}

# D 슬라이딩 (오른쪽으로 0.7)
execute if score @p[tag=player1] slide_da matches 1 if score @p[tag=player1] slide_ws matches 0 run summon marker ^0.7 ^ ^ {Tags:["gp_slide_pos"]}

# W+D 대각선 (앞+오른쪽)
execute if score @p[tag=player1] slide_ws matches 1 if score @p[tag=player1] slide_da matches 1 run summon marker ^0.5 ^ ^0.5 {Tags:["gp_slide_pos"]}
