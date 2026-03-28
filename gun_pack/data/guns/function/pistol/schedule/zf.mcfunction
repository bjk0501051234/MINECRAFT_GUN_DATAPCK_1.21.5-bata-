execute as @e[tag=pistol_entity] run function guns:pistol/frames/pistol_animation_frame_4
execute as @e[tag=pistol_entity] run data merge entity @s {interpolation_duration:1}
schedule function guns:pistol/schedule/zaf 1t
schedule function guns:pistol/schedule/ztanpi 1t