execute as @e[tag=pistol_entity] run function guns:pistol/frames/pistol_animation_frame_1
execute as @e[tag=pistol_entity] run data merge entity @s {interpolation_duration:3}
schedule function guns:pistol/schedule/reload/r4 3t