execute as @e[tag=ak_entity] run function guns:ak/frames/ak_animation_frame_7
execute as @e[tag=ak_entity] run data merge entity @s {interpolation_duration:1}
execute as @a at @s run playsound minecraft:entity.leash_knot.break ambient @s ~ ~ ~ 1 2
schedule function guns:ak/schedule/reload/rn8 8t