tp @a ~ ~10 ~
execute as @a at @s run function guns:give/ak_single
execute as @a at @s run function guns:give/pistol_single
tellraw @a {text:'[총기팩] 전원 지급 완료!',color:'gold'}
