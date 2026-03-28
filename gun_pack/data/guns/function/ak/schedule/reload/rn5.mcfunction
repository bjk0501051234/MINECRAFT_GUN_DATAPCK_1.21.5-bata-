execute as @e[tag=ak_entity] run function guns:ak/frames/ak_animation_frame_7
execute as @e[tag=ak_entity] run data merge entity @s {interpolation_duration:4}
schedule function guns:ak/schedule/reload/rn6 5t