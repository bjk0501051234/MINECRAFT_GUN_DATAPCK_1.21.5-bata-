execute if score p2_og riding matches 1 run data modify storage gunpack:riding p2.y_velocity set value 0.42d
execute if score p2_og riding matches 1 run scoreboard players set p2_og riding 0
execute store result score p2_yv riding run data get storage gunpack:riding p2.y_velocity 1000
execute as @e[tag=gp_mount_p2,limit=1] at @s run function riding:y_velo_p2 with storage gunpack:riding p2
