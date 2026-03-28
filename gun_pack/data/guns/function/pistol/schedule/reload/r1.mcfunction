execute as @e[tag=pistol_entity] run function guns:pistol/frames/pistol_animation_frame_10
execute as @e[tag=pistol_entity] run data merge entity @s {interpolation_duration:6}
schedule function guns:pistol/schedule/reload/r2 14t
execute as @a at @s run playsound item.armor.equip_chain weather @s ~ ~ ~ 1 2