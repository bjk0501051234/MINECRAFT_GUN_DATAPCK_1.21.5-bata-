execute as @e[tag=pistol_entity] run function guns:pistol/frames/pistol_animation_frame_1
execute as @e[tag=pistol_entity] run data merge entity @s {interpolation_duration:2}
schedule function guns:pistol/schedule/reload/slr5 2t
execute as @a at @s run playsound minecraft:entity.leash_knot.break ambient @s ~ ~ ~ 1 2