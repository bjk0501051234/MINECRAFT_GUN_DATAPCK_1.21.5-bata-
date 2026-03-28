execute if score #pistol_remain_bullet dummy matches 1.. as @e[tag=pistol_entity] run function guns:pistol/frames/pistol_animation_frame_1
execute if score #pistol_remain_bullet dummy matches 0 as @e[tag=pistol_entity] run function guns:pistol/frames/pistol_animation_frame_5
execute as @e[tag=pistol_entity] run data merge entity @s {interpolation_duration:4}
schedule function guns:pistol/schedule/asco 4t