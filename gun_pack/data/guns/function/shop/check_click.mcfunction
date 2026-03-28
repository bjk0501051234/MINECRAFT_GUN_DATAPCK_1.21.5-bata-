# gun_shop_click interaction entity 중 interaction 데이터 있는 것 처리
execute as @e[tag=gun_shop_click,limit=1] at @s if data entity @s interaction run function guns:shop/find_clicker
execute as @e[tag=gun_shop_click,limit=1] run data remove entity @s interaction
