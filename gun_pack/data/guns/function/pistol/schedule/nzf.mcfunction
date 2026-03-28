execute as @e[tag=pistol_entity] run function guns:pistol/frames/pistol_animation_frame_2
schedule function guns:pistol/schedule/nzaf 1t
schedule function guns:pistol/schedule/nztanpi 1t

execute as @e[tag=pistol_entity] run data merge entity @s {interpolation_duration:1}