function guns:pistol/schedule/cancel
function guns:ak/schedule/cancel
item replace entity @s weapon.offhand with air
scoreboard players set #reloading dummy 0
scoreboard players set #shooting dummy 0
scoreboard players set #zoom dummy 0
effect clear @s slowness

kill @e[tag=weapon_entity,distance=..5]
kill @e[tag=tanpi,distance=..5]

execute if score #isgetgun_pistol dummy matches 1 run item replace entity @s hotbar.0 with exposed_copper_door[item_model=air,item_name="권총",lore=['그 권총맞습니다 pistol']]
execute if score #isgetgun_ak dummy matches 1 run item replace entity @s hotbar.1 with minecraft:weathered_copper_door[item_name=AK,item_model=air,lore=['ak47맞고 사망한외할머니! RIP!']]

execute if score #hold_weapon dummy matches 1 run function guns:pistol/summon
execute if score #hold_weapon dummy matches 2 run function guns:ak/summon
scoreboard players set #swap_cool dummy 6

execute if score #hold_weapon dummy matches 1 as @e[tag=pistol_entity,distance=..3] run function guns:pistol/frames/pistol_animation_frame_1
execute if score #hold_weapon dummy matches 1 as @e[tag=pistol_entity,distance=..3] run data merge entity @s {interpolation_duration:0,start_interpolation:0}
execute if score #hold_weapon dummy matches 2 as @e[tag=ak_entity,distance=..3] run function guns:ak/frames/ak_animation_frame_1
execute if score #hold_weapon dummy matches 2 as @e[tag=ak_entity,distance=..3] run data merge entity @s {interpolation_duration:0,start_interpolation:0}

execute as @e[tag=weapon_entity,distance=..3] run ride @s mount @e[tag=layer2,sort=nearest,limit=1]

execute if score #hold_weapon dummy matches 1 run schedule function guns:pistol/schedule/swap 1t
execute if score #hold_weapon dummy matches 2 run schedule function guns:ak/schedule/swap 1t

execute if score #hold_weapon dummy matches 0 run attribute @s entity_interaction_range base reset
execute if score #hold_weapon dummy matches 0 run attribute @s block_interaction_range base reset
execute if score #hold_weapon dummy matches 0 as @e[tag=weapon,distance=..5,limit=1] run data merge entity @s {width:0,height:0}
execute if score #hold_weapon dummy matches 1.. run attribute @s entity_interaction_range base set 3
execute if score #hold_weapon dummy matches 1.. run attribute @s block_interaction_range base set 3
execute if score #hold_weapon dummy matches 1.. as @e[tag=weapon,distance=..5,limit=1] run data merge entity @s {width:1,height:2}

execute if score #hold_weapon dummy matches 0 run data merge storage guninfo {text0:"맨손",text1:"걍 맨손임"}
execute if score #hold_weapon dummy matches 1 run data merge storage guninfo {text0:"권총",text1:"pistol임"}
execute if score #hold_weapon dummy matches 2 run data merge storage guninfo {text0:"AK",text1:"AK47!"}
function guns:info_ui
scoreboard players operation #holded_weapon dummy = #hold_weapon dummy
