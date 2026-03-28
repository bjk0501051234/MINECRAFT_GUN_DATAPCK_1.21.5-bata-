execute store result score #morebullet dummy run clear @s waxed_oxidized_copper_bulb
scoreboard players operation #ak_remain_mag dummy += #morebullet dummy
execute if score #ak_remain_mag dummy matches 91.. run scoreboard players set #ak_remain_mag dummy 90
