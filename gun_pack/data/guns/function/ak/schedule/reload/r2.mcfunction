execute as @e[tag=ak_entity] run function guns:ak/frames/ak_animation_frame_5
execute as @e[tag=ak_entity] run data merge entity @s {interpolation_duration:6}
execute unless score #ak_remain_mag dummy matches 0 run data modify entity @e[tag=mg_cube,limit=1,type=block_display] block_state set value {Name:"gold_block"}
execute unless score #ak_remain_mag dummy matches 0 run data modify entity @e[tag=mc_cube,limit=1,type=block_display] block_state set value {Name:"copper_block"}
schedule function guns:ak/schedule/reload/r3 9t
execute as @a at @s run playsound item.armor.equip_chain weather @s ~ ~ ~ 1 2