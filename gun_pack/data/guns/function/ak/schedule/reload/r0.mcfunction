execute if score #ak_remain_bullet dummy matches 0..1 run data remove entity @e[tag=mg_cube,limit=1,type=block_display] block_state
execute if score #ak_remain_bullet dummy matches 0..1 run data remove entity @e[tag=mc_cube,limit=1,type=block_display] block_state

execute as @e[tag=ak_entity] run function guns:ak/frames/ak_animation_frame_5
execute as @e[tag=ak_entity] run data merge entity @s {interpolation_duration:3}
schedule function guns:ak/schedule/reload/r1 5t