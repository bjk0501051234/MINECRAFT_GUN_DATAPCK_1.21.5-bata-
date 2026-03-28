# @s = 맞은 엔티티, 실행위치 = 총알(눈높이)
# 총알위치에서 엔티티발로 ~ ~0 ~ positioned 후 엔티티 발Y = ~ 그 위치
# 더 단순하게: 총알Y > 엔티티발Y + 1.3 이면 헤드샷
# positioned ~ ~-1.3 ~ 로 이동 후 엔티티 발이 그 아래면 헤드샷
execute positioned ~ ~-1.3 ~ if entity @s[distance=..2] run function hitscan:do_headshot
execute unless score #forward dummy matches 100 run function hitscan:do_bodyshot
