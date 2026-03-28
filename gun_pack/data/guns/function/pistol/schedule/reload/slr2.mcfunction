execute as @e[tag=pistol_entity] run function guns:pistol/frames/pistol_animation_frame_7
execute as @e[tag=pistol_entity] run data merge entity @s {interpolation_duration:6}
data modify entity @e[tag=magg_cube,limit=1,type=block_display] block_state set value {Name:"gold_block"}
data modify entity @e[tag=magc_cube,limit=1,type=block_display] block_state set value {Name:"copper_block"}
schedule function guns:pistol/schedule/reload/slr3 9t
execute as @a at @s run playsound item.armor.equip_chain weather @s ~ ~ ~ 1 2