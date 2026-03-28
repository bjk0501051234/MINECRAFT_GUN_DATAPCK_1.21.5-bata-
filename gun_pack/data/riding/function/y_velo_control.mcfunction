execute if score #on_ground riding matches 1 run data modify storage minecraft:riding y_velocity set value 0.42d
execute if score #on_ground riding matches 1 run scoreboard players set #on_ground riding 0
execute store result score #y_velocity riding run data get storage minecraft:riding y_velocity 1000
execute as 0-0-0-0-0 at @s run function riding:y_velo with storage riding