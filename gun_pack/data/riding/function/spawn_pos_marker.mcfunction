# --- W (앞) ---
execute if score @p[tag=player1] slide_ws matches 1 if score @p[tag=player1] slide_da matches 0 rotated ~ 0 run data merge entity @s {interpolation_duration:1,transformation:{translation:[0f,0f,0.8f]}}
execute if score @p[tag=player1] slide_ws matches 1 if score @p[tag=player1] slide_da matches 0 rotated ~ 0 run tp @s ^ ^ ^0.8

# --- D (우) ---
# translation X축 -0.8과 tp의 우측 이동(^0.8 ^ ^)을 동기화
execute if score @p[tag=player1] slide_da matches 1 if score @p[tag=player1] slide_ws matches 0 rotated ~ 0 run data merge entity @s {interpolation_duration:1,transformation:{translation:[-0.8f,0f,0f]}}
execute if score @p[tag=player1] slide_da matches 1 if score @p[tag=player1] slide_ws matches 0 rotated ~ 0 run tp @s ^0.8 ^ ^

# --- A (좌) ---
execute if score @p[tag=player1] slide_da matches -1 if score @p[tag=player1] slide_ws matches 0 rotated ~ 0 run data merge entity @s {interpolation_duration:1,transformation:{translation:[0.8f,0f,0f]}}
execute if score @p[tag=player1] slide_da matches -1 if score @p[tag=player1] slide_ws matches 0 rotated ~ 0 run tp @s ^-0.8 ^ ^

# --- S (뒤) ---
execute if score @p[tag=player1] slide_ws matches -1 if score @p[tag=player1] slide_da matches 0 rotated ~ 0 run data merge entity @s {interpolation_duration:1,transformation:{translation:[0f,0f,-0.8f]}}
execute if score @p[tag=player1] slide_ws matches -1 if score @p[tag=player1] slide_da matches 0 rotated ~ 0 run tp @s ^ ^ ^-0.8

# --- 입력 없을 때 (기본 정면) ---
execute if score @p[tag=player1] slide_ws matches 0 if score @p[tag=player1] slide_da matches 0 rotated ~ 0 run data merge entity @s {interpolation_duration:1,transformation:{translation:[0f,0f,0.8f]}}
execute if score @p[tag=player1] slide_ws matches 0 if score @p[tag=player1] slide_da matches 0 rotated ~ 0 run tp @s ^ ^ ^0.8
