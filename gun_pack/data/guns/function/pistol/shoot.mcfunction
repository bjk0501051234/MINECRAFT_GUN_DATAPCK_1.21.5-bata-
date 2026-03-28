#시작: 스코어 조건 만족 후 0-0-0-0-2가 run function guns:pistol/shoot 로 시작

tag @p add shooter
execute unless score #pistol_remain_bullet dummy matches 0 run function hitscan:start
execute unless score #pistol_remain_bullet dummy matches 0 if score #zoom dummy matches 0 as @a at @s run rotate @s ~ ~-2
execute unless score #pistol_remain_bullet dummy matches 0 if score #zoom dummy matches 1 as @a at @s run rotate @s ~ ~-0.7
execute unless score #pistol_remain_bullet dummy matches 0 as @a at @s run playsound entity.creeper.hurt weather @s ~ ~ ~ 1 1.7
execute unless score #pistol_remain_bullet dummy matches 0 as @a at @s run playsound entity.creeper.death weather @s ~ ~ ~ 1 1.3

execute if score #pistol_remain_bullet dummy matches 0 as @a at @s run playsound minecraft:block.note_block.hat weather @s ~ ~ ~ 1 1.5
execute if score #pistol_remain_bullet dummy matches 0 run return fail

scoreboard players remove #pistol_remain_bullet dummy 1

execute if score #pistol_remain_bullet dummy matches 1 run data remove entity @e[tag=magg_cube,limit=1,type=block_display] block_state
execute if score #pistol_remain_bullet dummy matches 1 run data remove entity @e[tag=magc_cube,limit=1,type=block_display] block_state

#애니메이션 및 쿨타임
#지향
execute if score #zoom dummy matches 0 run function guns:pistol/schedule/nzf
execute if score #zoom dummy matches 0 run scoreboard players set #shooting dummy 1
#조준
execute if score #zoom dummy matches 1 run function guns:pistol/schedule/zf
execute if score #zoom dummy matches 1 run scoreboard players set #shooting dummy 1
tag @p remove shooter
