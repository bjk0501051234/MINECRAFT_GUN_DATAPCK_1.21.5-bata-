# 총상점 아이템이 바닥에 드롭돼 있으면 설치
execute as @e[type=item,nbt={Item:{id:"minecraft:gilded_blackstone",components:{"minecraft:custom_data":{gun_shop_item:true}}}}] at @s run function guns:shop/summon
