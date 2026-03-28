execute as @e[tag=ak_entity] run function guns:ak/frames/ak_animation_frame_8
execute as @e[tag=ak_entity] run data merge entity @s {interpolation_duration:5}
execute as @a at @s run playsound minecraft:entity.leash_knot.break ambient @s ~ ~ ~ 0.3 1.5
schedule function guns:ak/schedule/reload/rn7 7t