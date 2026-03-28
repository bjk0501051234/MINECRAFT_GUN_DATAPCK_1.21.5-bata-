execute as @e[tag=ak_entity] run function guns:ak/frames/ak_animation_frame_6
execute as @e[tag=ak_entity] run data merge entity @s {interpolation_duration:6}
schedule function guns:ak/schedule/reload/r2 30t
execute as @a at @s run playsound item.armor.equip_chain weather @s ~ ~ ~ 1 2