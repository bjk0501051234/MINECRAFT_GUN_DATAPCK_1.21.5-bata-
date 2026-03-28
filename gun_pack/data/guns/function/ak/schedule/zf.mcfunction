execute as @e[tag=ak_entity] run function guns:ak/frames/ak_animation_frame_4
execute as @e[tag=ak_entity] run data merge entity @s {interpolation_duration:1}
schedule function guns:ak/schedule/zaf 1t
function guns:ak/schedule/ztanpi