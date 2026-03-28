# @s = 드롭된 shop 아이템 엔티티, at @s = 아이템 위치
# 발 위치(Y)에 총상점 소환
summon block_display ~ ~ ~ {Tags:["gun_shop","gun_shop_block"],block_state:{Name:"minecraft:gilded_blackstone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[-0.5f,0f,-0.5f]}}
summon text_display ~ ~1.3 ~ {Tags:["gun_shop","gun_shop_label"],text:'{"text":"총 상점","color":"gold","bold":true}',billboard:"center",shadow:1b,background:0}
summon interaction ~ ~ ~ {Tags:["gun_shop","gun_shop_click"],width:1f,height:1.5f}
kill @s
