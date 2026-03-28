tp @a ~ ~10 ~
effect clear @s slowness
scoreboard players set #isgetgun_pistol dummy 1
scoreboard players set #isgetgun_ak dummy 1
scoreboard players set #pistol_remain_bullet dummy 18
scoreboard players set #ak_remain_bullet dummy 20
scoreboard players set #ak_remain_mag dummy 60
scoreboard players set #zoom dummy 0
scoreboard players set #shooting dummy 0
scoreboard players set #reloading dummy 0
scoreboard players set #swap_cool dummy 6

item replace entity @s hotbar.0 with exposed_copper_door[item_model=air,item_name="권총",lore=['전설의 무기']]
item replace entity @s hotbar.1 with minecraft:weathered_copper_door[item_name=AK,item_model=air,lore=['더 강해진 전설의 무기']]

execute unless entity @e[tag=weapon,distance=..5,limit=1] run function guns:mount_summon
kill @e[tag=weapon_entity,distance=..5]
kill @e[tag=tanpi,distance=..5]

# 현재 들고있는 슬롯에 맞게 세팅
function guns:choose_weapon
execute if score #hold_weapon dummy matches 0 run scoreboard players set #hold_weapon dummy 2
scoreboard players operation #holded_weapon dummy = #hold_weapon dummy

execute if score #hold_weapon dummy matches 1 run function guns:pistol/summon
execute if score #hold_weapon dummy matches 2 run function guns:ak/summon
scoreboard players set #swap_cool dummy 6

execute if score #hold_weapon dummy matches 1 as @e[tag=pistol_entity,distance=..3] run function guns:pistol/frames/pistol_animation_frame_1
execute if score #hold_weapon dummy matches 1 as @e[tag=pistol_entity,distance=..3] run data merge entity @s {interpolation_duration:0,start_interpolation:0}
execute if score #hold_weapon dummy matches 2 as @e[tag=ak_entity,distance=..3] run function guns:ak/frames/ak_animation_frame_1
execute if score #hold_weapon dummy matches 2 as @e[tag=ak_entity,distance=..3] run data merge entity @s {interpolation_duration:0,start_interpolation:0}

execute as @e[tag=weapon_entity,distance=..3] run ride @s mount @e[tag=layer2,sort=nearest,limit=1]

attribute @s entity_interaction_range base set 3
attribute @s block_interaction_range base set 3
execute as @e[tag=weapon,distance=..5,limit=1] run data merge entity @s {width:1,height:2}

execute if score #hold_weapon dummy matches 1 run data merge storage guninfo {text0:"권총",text1:"권총"}
execute if score #hold_weapon dummy matches 2 run data merge storage guninfo {text0:"AK",text1:"ak47"}
function guns:info_ui

execute if score #hold_weapon dummy matches 1 run schedule function guns:pistol/schedule/swap 1t
execute if score #hold_weapon dummy matches 2 run schedule function guns:ak/schedule/swap 1t