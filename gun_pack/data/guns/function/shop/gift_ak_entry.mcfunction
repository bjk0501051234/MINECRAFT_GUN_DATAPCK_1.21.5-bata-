# @s = 선물 대상 후보 (gift_ak_list에서 as @a 루프)
# 구매자는 @a[tag=shop_buyer]로 따로 태깅 필요 → 간단화: 전체 채팅 구매자에게만 표시
data modify storage guns:temp name set from entity @s Name
execute store result storage guns:temp uuid[0] int 1 run data get entity @s UUID[0]
function guns:shop/gift_ak_entry_send with storage guns:temp
