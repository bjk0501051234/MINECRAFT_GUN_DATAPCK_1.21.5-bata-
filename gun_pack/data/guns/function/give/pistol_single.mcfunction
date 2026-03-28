tp @a ~ ~10 ~
effect clear @s slowness
scoreboard players set #isgetgun_pistol dummy 1
scoreboard players set #pistol_remain_bullet dummy 18
scoreboard players set #zoom dummy 0
scoreboard players set #shooting dummy 0
scoreboard players set #reloading dummy 0
scoreboard players set #hold_weapon dummy 1
scoreboard players set #holded_weapon dummy 1
scoreboard players set #swap_cool dummy 6

function guns:mount_summon
ride @s mount @e[tag=layer0,sort=nearest,limit=1]

kill @e[tag=weapon_entity,distance=..5]
kill @e[tag=tanpi,distance=..5]

function guns:pistol/summon
execute as @e[tag=pistol_entity,distance=..3] run function guns:pistol/frames/pistol_animation_frame_1
execute as @e[tag=pistol_entity,distance=..3] run data merge entity @s {interpolation_duration:0,start_interpolation:0}
execute as @e[tag=weapon_entity,distance=..3] run ride @s mount @e[tag=layer2,sort=nearest,limit=1]

attribute @s minecraft:entity_interaction_range base set 3
attribute @s minecraft:block_interaction_range base set 3
execute as @e[tag=weapon,distance=..5,limit=1] run data merge entity @s {width:1,height:2}

item replace entity @s hotbar.0 with exposed_copper_door[item_model=air,item_name="권총",lore=['전설의 무기']]
data merge storage guninfo {text0:"권총",text1:"전설의 무기"}
function guns:info_ui
schedule function guns:pistol/schedule/swap 1t
