$execute as @a[name=$(player)] at @s run function guns:give/ak_single
$execute as @a[name=$(player)] at @s run function guns:give/pistol_single
$execute unless entity @a[name=$(player)] run tellraw @a {text:'[총기팩] 플레이어가 없습니다!',color:'red'}
$execute if entity @a[name=$(player)] run tellraw @a [{"text":"[총기팩] "},{"selector":"@a[name=$(player)]"},{"text":" 에게 지급 완료!"}]
