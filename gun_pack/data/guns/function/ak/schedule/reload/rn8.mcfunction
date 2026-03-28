execute as @e[tag=ak_entity] run function guns:ak/frames/ak_animation_frame_1
execute as @e[tag=ak_entity] run data merge entity @s {interpolation_duration:5}
schedule function guns:ak/schedule/reload/rf 5t