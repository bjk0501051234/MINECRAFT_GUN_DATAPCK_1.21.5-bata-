tp @a ~ ~10 ~
effect clear @s slowness
scoreboard players set #isgetgun_ak dummy 1
scoreboard players set #ak_remain_bullet dummy 20
scoreboard players set #ak_remain_mag dummy 60
scoreboard players set #zoom dummy 0
scoreboard players set #shooting dummy 0
scoreboard players set #reloading dummy 0
scoreboard players set #hold_weapon dummy 2
scoreboard players set #holded_weapon dummy 2
scoreboard players set #swap_cool dummy 6

# 마운트 없으면 소환
function guns:mount_summon
ride @s mount @e[tag=layer0,sort=nearest,limit=1]

# 탑승

kill @e[tag=weapon_entity,distance=..5]
kill @e[tag=tanpi,distance=..5]

function guns:ak/summon
execute as @e[tag=ak_entity,distance=..3] run function guns:ak/frames/ak_animation_frame_1
execute as @e[tag=ak_entity,distance=..3] run data merge entity @s {interpolation_duration:0,start_interpolation:0}
execute as @e[tag=weapon_entity,distance=..3] run ride @s mount @e[tag=layer2,sort=nearest,limit=1]

attribute @s minecraft:entity_interaction_range base set 3
attribute @s minecraft:block_interaction_range base set 3
execute as @e[tag=weapon,distance=..5,limit=1] run data merge entity @s {width:1,height:2}

item replace entity @s hotbar.1 with minecraft:weathered_copper_door[item_name=AK,item_model=air,lore=['더 강해진 전설의 무기']]
data merge storage guninfo {text0:"AK",text1:"강해진 전설의 무기"}
function guns:info_ui
schedule function guns:ak/schedule/swap 1t
