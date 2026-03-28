execute if score p1_og riding matches 1 run data modify storage gunpack:riding p1.y_velocity set value 0.42d
execute if score p1_og riding matches 1 run scoreboard players set p1_og riding 0
execute store result score p1_yv riding run data get storage gunpack:riding p1.y_velocity 1000
execute as @e[tag=gp_mount_p1,limit=1] at @s run function riding:y_velo_p1 with storage gunpack:riding p1
