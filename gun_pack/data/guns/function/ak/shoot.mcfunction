tag @p add shooter
execute unless score #ak_remain_bullet dummy matches 0 run function hitscan:start
execute unless score #ak_remain_bullet dummy matches 0 if score #zoom dummy matches 0 as @a at @s run rotate @s ~ ~-3
execute unless score #ak_remain_bullet dummy matches 0 if score #zoom dummy matches 1 as @a at @s run rotate @s ~ ~-1
execute unless score #ak_remain_bullet dummy matches 0 as @a at @s run playsound entity.creeper.hurt weather @s ~ ~ ~ 1 1.7
execute unless score #ak_remain_bullet dummy matches 0 as @a at @s run playsound entity.creeper.death weather @s ~ ~ ~ 1 1.3

execute if score #ak_remain_bullet dummy matches 0 as @a at @s run playsound minecraft:block.note_block.hat weather @s ~ ~ ~ 1 1.5
execute if score #ak_remain_bullet dummy matches 0 run return fail

scoreboard players remove #ak_remain_bullet dummy 1

execute if score #zoom dummy matches 0 run function guns:ak/schedule/nzf
execute if score #zoom dummy matches 0 run scoreboard players set #shooting dummy 1
execute if score #zoom dummy matches 1 run function guns:ak/schedule/zf
execute if score #zoom dummy matches 1 run scoreboard players set #shooting dummy 1
tag @p remove shooter
