data modify storage gunpack:riding p1.apos set from entity @s Pos
execute store result score #x riding run data get storage gunpack:riding p1.bpos[0]
execute store result score #z riding run data get storage gunpack:riding p1.bpos[2]
execute store result score #x_after riding run data get storage gunpack:riding p1.apos[0] 1000
execute store result score #z_after riding run data get storage gunpack:riding p1.apos[2] 1000

scoreboard players set #x_min riding 300
scoreboard players set #z_min riding 300
scoreboard players set #x_max riding 700
scoreboard players set #z_max riding 700

scoreboard players operation #x riding *= #1000 cal
scoreboard players operation #y riding *= #1000 cal
scoreboard players operation #z riding *= #1000 cal

scoreboard players operation #x_min riding += #x riding
scoreboard players operation #z_min riding += #z riding
scoreboard players operation #x_max riding += #x riding
scoreboard players operation #z_max riding += #z riding

execute store result score #xna riding run data get storage gunpack:riding p1.bpos[0] 1000
scoreboard players operation #xna riding %= #1000 cal

execute if score #x_max riding < #x_after riding if score #xna riding matches 300..700 align x positioned ~0.7 ~ ~ run function riding:stuck
execute if score #stuck riding matches 0 if score #xna riding matches 300..700 align x run return run tp ~0.7 ~ ~
execute if score #x_min riding > #x_after riding if score #xna riding matches 300..700 align x positioned ~0.3 ~ ~ run function riding:stuck
execute if score #stuck riding matches 0 if score #xna riding matches 300..700 align x run return run tp ~0.3 ~ ~
execute if score #z_max riding < #z_after riding align z positioned ~ ~ ~0.7 run function riding:stuck
execute if score #stuck riding matches 0 align z run return run tp ~ ~ ~0.7
execute if score #z_min riding > #z_after riding align z positioned ~ ~ ~0.3 run function riding:stuck
execute if score #stuck riding matches 0 align z run return run tp ~ ~ ~0.3

execute if score #x_max riding < #x_after riding if score #z_max riding < #z_after riding align xz run return run tp ~0.7 ~ ~0.7
execute if score #x_max riding < #x_after riding if score #z_min riding > #z_after riding align xz run return run tp ~0.7 ~ ~0.3
execute if score #x_min riding > #x_after riding if score #z_max riding < #z_after riding align xz run return run tp ~0.3 ~ ~0.7
execute if score #x_min riding > #x_after riding if score #z_min riding > #z_after riding align xz run return run tp ~0.3 ~ ~0.3
