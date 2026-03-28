execute as @e[tag=gp_mount_p1,limit=1] run data modify storage gunpack:riding p1.bpos set from entity @s Pos
scoreboard players set #ws riding 0
scoreboard players set #da riding 0
execute as @e[tag=gp_mount_p1,limit=1] at @s run summon marker ~ ~ ~ {Tags:[map,gp_map_p1]}

execute as @a[tag=player1] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"forward":true}}}} run scoreboard players add #ws riding 1
execute as @a[tag=player1] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"backward":true}}}} run scoreboard players remove #ws riding 1
execute as @a[tag=player1] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"right":true}}}} run scoreboard players add #da riding 1
execute as @a[tag=player1] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"left":true}}}} run scoreboard players remove #da riding 1


execute if score #zoom dummy matches 0 if score #ws riding matches 1 if score #da riding matches 0 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~ 0 run tp ^ ^ ^0.29
execute if score #zoom dummy matches 0 if score #ws riding matches -1 if score #da riding matches 0 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~180 0 run tp ^ ^ ^0.29
execute if score #zoom dummy matches 0 if score #ws riding matches 0 if score #da riding matches 1 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~90 0 run tp ^ ^ ^0.29
execute if score #zoom dummy matches 0 if score #ws riding matches 0 if score #da riding matches -1 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~-90 0 run tp ^ ^ ^0.29

execute if score #zoom dummy matches 0 if score #ws riding matches 1 if score #da riding matches -1 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~-45 0 run tp ^ ^ ^0.29
execute if score #zoom dummy matches 0 if score #ws riding matches 1 if score #da riding matches 1 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~45 0 run tp ^ ^ ^0.29
execute if score #zoom dummy matches 0 if score #ws riding matches -1 if score #da riding matches -1 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~-135 0 run tp ^ ^ ^0.29
execute if score #zoom dummy matches 0 if score #ws riding matches -1 if score #da riding matches 1 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~135 0 run tp ^ ^ ^0.29

execute if score #zoom dummy matches 1 if score #ws riding matches 1 if score #da riding matches 0 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~ 0 run tp ^ ^ ^0.15
execute if score #zoom dummy matches 1 if score #ws riding matches -1 if score #da riding matches 0 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~180 0 run tp ^ ^ ^0.15
execute if score #zoom dummy matches 1 if score #ws riding matches 0 if score #da riding matches 1 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~90 0 run tp ^ ^ ^0.15
execute if score #zoom dummy matches 1 if score #ws riding matches 0 if score #da riding matches -1 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~-90 0 run tp ^ ^ ^0.15

execute if score #zoom dummy matches 1 if score #ws riding matches 1 if score #da riding matches -1 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~-45 0 run tp ^ ^ ^0.15
execute if score #zoom dummy matches 1 if score #ws riding matches 1 if score #da riding matches 1 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~45 0 run tp ^ ^ ^0.15
execute if score #zoom dummy matches 1 if score #ws riding matches -1 if score #da riding matches -1 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~-135 0 run tp ^ ^ ^0.15
execute if score #zoom dummy matches 1 if score #ws riding matches -1 if score #da riding matches 1 as @a[tag=player1] unless score @s slide_running matches 1 at @s run execute as @e[tag=gp_mount_p1,limit=1] at @s rotated as @a[tag=player1] rotated ~135 0 run tp ^ ^ ^0.15

execute as @e[tag=gp_mount_p1,limit=1] at @s run function riding:stuck
execute if score #stuck riding matches 1 as @e[tag=gp_mount_p1,limit=1] at @s run function riding:backtrack_p1

execute if score p1_og riding matches 1 as @a[tag=player1] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"jump":true}}}} run function riding:y_velo_control_p1
execute if score p1_og riding matches 1 as @e[tag=gp_mount_p1,limit=1] at @s if block ~-0.299 ~-0.601 ~-0.299 #dummy:penetrable if block ~0.299 ~-0.601 ~-0.299 #dummy:penetrable if block ~-0.299 ~-0.601 ~0.299 #dummy:penetrable if block ~0.299 ~-0.601 ~0.299 #dummy:penetrable run function riding:falling_p1

execute as @e[tag=gp_mount_p1,limit=1] at @s run function riding:stuck
execute if score #stuck riding matches 1 as @e[tag=gp_mount_p1,limit=1] at @s run tp @s ~ ~0.5 ~

execute as @a[tag=player1] store success score #altf4 dummy run ride @s mount @e[tag=gp_mount_p1,limit=1]
execute if score #altf4 dummy matches 1 run schedule function maps:mapbase/gameover 1t
